<?php

class AbstractModel extends CI_Model
{

    protected $_table;

    public function __construct()
    {

        parent::__construct();
        $this->load->model('utilModel');
    }
    
    public function descreverTabela()
    {
        
        $resultado = $this->db->query('describe ' . $this->_table);
        $dados = $resultado->result_array();
        
        $colunas = Array();
        foreach ($dados as $dado)
        {
            
            array_push($colunas, $dado['Field']);
        }
        
        return $colunas;
    }

    public function recuperaTodos()
    {

        $query = $this->db->get($this->_table);
        return $query->result();
    }
    
    public function recuperaTodosPorParametro($valor = NULL, Array $colunas = NULL)
    {
        
        $query = $this->db->get_where($this->_table, $colunas);
    }

}
