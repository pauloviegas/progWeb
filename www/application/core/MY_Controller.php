<?php

class MY_Controller extends MX_Controller
{

    protected $_request;
    public $data = array();

    public function __construct()
    {
        
        parent::__construct();
        $this->_request = $this->input->post() ? $this->input->post() : $this->input->get();
    }

}

class SiteController extends MY_Controller
{

    public function __construct()
    {
        
        parent::__construct();

        $this->data['header'] = $this->load->view('layout/header', $data, TRUE);
        $this->data['footer'] = $this->load->view('layout/footer', NULL, TRUE);
    }

}

class AdminController extends MY_Controller
{

    public function __construct()
    {
        
        parent::__construct();
        
        if (!$this->authModel->verificaLogin())
        {

            $this->session->set_flashdata('msg', 'Para acessar esta página primeiramente você deve logar!!!');
            redirect('admin/serviceauth/index');
        }
        if ($this->paginaModel->verificaPaginaNecessitaPermissao())
        {
            
            if (!$this->viewgrupopaginaModel->verificaPermissao())
            {

                $this->authModel->logout();
                $this->session->set_flashdata('msg', 'Você não tem permissão para acessar esta página!!!');
                redirect('admin/serviceauth/index');
            }
        }

        $this->data['auth_model'] = $this->viewgrupopaginaModel;
        $this->data['user'] = $this->session->userdata('usuario');
        $this->data['topo'] = $this->load->view('layout/topo', $this->data, TRUE);
        $this->data['menulateral'] = $this->load->view('layout/menulateral', $this->data, TRUE);
        $this->data['rodape'] = $this->load->view('layout/rodape', NULL, TRUE);
    }

}