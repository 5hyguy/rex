<?php
include '../connections/Data.php';
include '../connections/DataGrid.php';

$data = new Data();
$employee = new DataGrid();
$wole = $data->getData();

foreach ($wole as $data) {

    $employee->employee($data['employee_name'], $data['employee_mail']);
    $employee->event($data['event_name'], $data['event_id'], $data['event_date']);
    $employee->participants($data['participation_id'], $data['participation_fee'], $data['event_id']);
}

echo ('Imported!!');
