<?php

class ViewgrupopaginaModel extends CI_Model
{

    protected $_table = 'view_grupo_pagina';

    public function __construct()
    {
        parent::__construct();
    }

    public function recuperaPermissaoPorIdGrupo($id)
    {

        $query = $this->db->get_where($this->_table, Array('id_grupo' => $id));
        return $query->result();
    }

    public function verificaPermissao($path = NULL)
    {

        if (!isset($path))
        {

            $modulo = $this->uri->segment('1');
            $controller = $this->uri->segment('2');
            $action = $this->uri->segment('3');
            $pagina = $modulo . '/' . $controller . '/' . $action;
        }
        
        $newpagina = $path ? $path : $pagina;
        $permissoes = $this->session->userdata('permissoes');
        foreach ($permissoes as $permissao)
        {
            
            if ($permissao->pagina == $newpagina)
            {
                
                return TRUE;
            }
        }
        return FALSE;
    }

}