<?php

class Data
{
    private $data;
    public function __construct()
    {
        $json = file_get_contents('../storage/data.json');
        $json_data = json_decode($json, true);
        $this->data = $json_data;
    }

    public function getData()
    {
        return $this->data;
    }

}
