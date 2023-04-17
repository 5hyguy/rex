<?php
include '../connections/Data.php';
include '../connections/DataGrid.php';

$data = new DataGrid();
echo '<table id="details">';
if (!empty($_POST['name'])) {
    $employee = $_POST['name'];
    $dataTable = $data->getEmployee($employee);
    if (!empty($dataTable)) {
        foreach ($dataTable as $row) {
            echo '<tr>
        <td>';
            echo $row['email'];
            echo '</td>';

            echo '<td>';
            echo $row['employee_name'];
            echo '</td>';
            echo '</tr>';
        }
        echo '<tr class="bg">
    <td>';
        echo 'Total : ' . $data->getParticipantEmail($row['email']);
        echo '</td></tr>';
    } else {
        echo 'Empty result';
    }

} elseif (!empty($_POST['event'])) {
    $eventname = $_POST['event'];
    $dataTable = $data->getEvent($eventname);
    if (!empty($dataTable)) {
        foreach ($dataTable as $row) {
            echo '<tr>
        <td>';
            echo $row['event_name'];
            echo '</td>';

            echo '<td>';
            echo $row['event_date'];
            echo '</td>';
            echo '</tr>';
        }
        echo '<tr class="bg">
    <td>';
        echo 'Total : ' . $data->getParticipant($row['event_id']);
        echo '</td></tr>';
    } else {
        echo 'Empty result';
    }

} elseif (!empty($_POST['date'])) {
    $eventdate = $_POST['date'];
    $dataTable = $data->getEventDate($eventdate);

    if (!empty($dataTable)) {

        foreach ($dataTable as $row) {
            echo '<tr>
        <td>';
            echo $row['event_name'];
            echo '</td>';

            echo '<td>';
            echo $row['event_date'];
            echo '</td>';
            echo '</tr>';
        }
        echo '<tr class="bg">
    <td>';
        echo 'Total : ' . $data->getParticipant($row['event_id']);
        echo '</td></tr>';
    } else {
        echo 'Empty result';
    }
} else {
    echo 'Criteria empty';
}
echo '</table>';
