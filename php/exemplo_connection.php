<?php

class DataBaseManager {
    // Properties
    public $db;
    private $query;

    function __construct() {
        $this->db = new SQLite3('data.db');
    }
    
    function insertClient($client) {
        $sql = "INSERT INTO cliente ( name, birthDate,adress,city,state,cep,tel,gender ) VALUES (
            '".$this->db->escapeString($client->nome)."',
            '".$this->db->escapeString($client->birthDate)."',
            '".$this->db->escapeString($client->adress)."',
            '".$this->db->escapeString($client->city)."',
            '".$this->db->escapeString($client->state)."',
            '".$this->db->escapeString($client->cep)."',
            '".$this->db->escapeString($client->tel)."',
            '".$this->db->escapeString($client->gender)."'
            )";
        $result = $this->db->exec($sql);
        return $result;
    }

    public function selectAllClient(){
        $sql = "SELECT * FROM cliente";
        $this->query = $this->db->query($sql);
        if ($this->query == null){
            echo "Client is empty";
        }
        return $this;
    }
    
    public function showTr() {
        $row_html = "";
        while($row = $this->query->fetchArray(SQLITE3_NUM)) {
            $row_html .= "<tr>";
            foreach($row as $value){
                $row_html .= "<td>".$value."</td>";
            }
            $row_html .= "</tr>";
        }
        echo $row_html;
    }
}
?>