<?php

class serviceauth extends MY_Controller
{

    public function __construct()
    {

        parent::__construct();
        $this->load->model('grupoModel');
    }

    public function index()
    {
        $this->data['grupos'] = $this->grupoModel->recuperaTodosOsGrupos();

        //Avisos
        $this->data['sucesso'] = ($this->session->flashdata('sucesso')) ? $this->session->flashdata('sucesso') : FALSE;
        $this->data['noticia'] = ($this->session->flashdata('noticia')) ? $this->session->flashdata('noticia') : FALSE;
        $this->data['validacao'] = (validation_errors()) ? validation_errors() : FALSE;
        $this->data['erro'] = ($this->session->flashdata('erro')) ? $this->session->flashdata('erro') : FALSE;

        //Redirecionamento
        $this->load->view('admin/service_auth/index', $this->data);
    }

    public function logar(Array $dados = NULL)
    {
        if ($dados)
        {
            $login = $dados;
            if ($this->authModel->logar($login['email'], $login['senha']))
            {
                $this->session->set_flashdata('sucesso', 'Você foi logado com sucesso!!!');
                redirect('/admin/home/index');
            }
        }
        else
        {
            $this->form_validation->set_rules('email', 'E-mail', 'required|valid_email');
            $this->form_validation->set_rules('senha', 'Senha', 'required|min_length[4]|max_length[12]');
            $login = $this->_request;
            if ($this->form_validation->run())
            {
                if ($this->authModel->logar($login['email'], $login['senha']))
                {
                    $this->session->set_flashdata('sucesso', 'Você foi logado com sucesso!!!');
                    redirect('/admin/home/index');
                }
            }
            else
            {
                $this->index();
            }
        }
    }

    public function logout()
    {

        if ($this->authModel->logout())
        {

            return redirect('admin/serviceauth/index');
        }
    }

    public function inserirUsuario()
    {
        $dados = $this->_request;
        $this->form_validation->set_rules('nome', 'Nome', 'required');
        $this->form_validation->set_rules('id_grupo', 'Grupo de Usuário', 'is_natural_no_zero');
        $this->form_validation->set_message('is_natural_no_zero', 'Você deve selecionar um grupo de usuário valido!');
        $this->form_validation->set_rules('email', 'E-mail', 'required|valid_email|is_unique[usu_usuario.email]');
        $this->form_validation->set_message('is_unique', 'O E-mail informado já foi cadastrado');
        $this->form_validation->set_rules('password', 'Senha', 'required|min_length[4]|max_length[12]|matches[password2]');
        $this->form_validation->set_rules('password2', 'Repetir Senha', 'required|min_length[4]|max_length[12]');
        $this->form_validation->set_message('matches', 'As senhas não conferem!');
        if ($this->form_validation->run())
        {
            $dados['senha'] = sha1($dados['password']);
            $id = $this->usuarioModel->inserir($dados);
            if (isset($id))
            {
                $this->logar(Array('email' => $dados['email'], 'senha' => $dados['password']));
            }
            else
            {
                
                $this->session->set_flashdata(
                        'erro', 'Ops... Ocorreu um erro ao inserir o usuário '
                        . $dados['nome'] . ', por favor tente novamente!');
                redirect('admin/serviceauth/index');
            }
        }
        else
        {

            $this->index();
        }
    }

}
