<?php

class AuthModel extends CI_Model
{

    public function __construct()
    {

        parent::__construct();
        $this->load->model('usuarioModel');
    }

    public function logar($email, $senha)
    {

        $usuario = $this->usuarioModel->recuperaUsuarioPorEmail($email);
        if ($usuario)
        {
            $permissoes = $this->viewgrupopaginaModel->recuperaPermissaoPorIdGrupo($usuario->id_grupo);
            if ($usuario->senha == sha1($senha))
            {

                if ($usuario->ativo == '0')
                {

                    $this->authModel->logout();
                    $this->session->set_flashdata('noticia', 'Seu Usuário está '
                            . 'inativo, solicite ao administrador da rede que o reative!');
                    redirect('admin/serviceauth/index');
                }

                $this->session->set_userdata('usuario', $usuario);
                $this->session->set_userdata('permissoes', $permissoes);
                return TRUE;
            }
        }

        $this->authModel->logout();
        $this->session->set_flashdata('erro', 'Usuário ou senha incorretos!!!');
        redirect('admin/serviceauth/index');
    }

    public function logout()
    {

        if ($this->session->userdata('usuario'))
        {

            $this->session->unset_userdata('usuario');
            $this->session->unset_userdata('permissao');
            return TRUE;
        }

        return FALSE;
    }

    public function verificaLogin()
    {

        if ($this->session->userdata('usuario'))
        {

            return TRUE;
        }

        return FALSE;
    }

    public function getInfo($item)
    {

        if ($this->session->userdata($item))
        {

            return $this->session->userdata($item);
        }

        return FALSE;
    }

}
