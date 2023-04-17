<?php

define('DB_HOST', 'localhost');
define('DB_USER', 'root');
define('DB_PASSWORD', 'famakin1-');
define('DB_DATABASE', 'rex');

class DataGrid
{
    public function __construct()
    {

        $conn = new mysqli(DB_HOST, DB_USER, DB_PASSWORD, DB_DATABASE);

        if ($conn->connect_error) {
            die("<h1>Database Connection Failed</h1>");
        }
        // echo "Database Connected Successfully";
        return $this->conn = $conn;

    }

    public function employee($employeename, $employemail)
    {
        global $last_id;
        $employee = "INSERT INTO employee (employee_name,email) VALUES ('$employeename','$employemail')";
        $result = $this->conn->query($employee);
        $last_id = $employemail;

        if ($result) {
            // echo 'sent';
            return true;
        } else {
            // echo'failed';
            return false;

        }

    }
    public function event($eventname, $eventid, $eventdate)
    {

        $event = "INSERT INTO events (event_name,event_id,event_date) VALUES ('$eventname','$eventid','$eventdate')";
        $result = $this->conn->query($event);
        if ($result) {
            // echo 'sent';
            return true;
        } else {
            // echo'failed';
            return false;

        }

    }
    public function participants($participation_id, $participation_fee, $event_id)
    {
        global $last_id;
        $participate = "INSERT INTO participants (participation_id,participation_fee,employee_id,eventid) VALUES ('$participation_id','$participation_fee','$last_id','$event_id')";
        $result = $this->conn->query($participate);
        if ($result) {
            // echo 'sent';
            return true;
        } else {
            // echo'failed';
            return false;

        }

    }

    public function getEmployee($employee)
    {
        $employer = "SELECT * FROM employee where employee_name = '$employee'";
        $result = $this->conn->query($employer);
        if ($result->num_rows > 0) {
            return $result;
        } else {
            return false;
        }
    }

    public function getEvent($eventname)
    {
        $event = "SELECT * FROM events where event_name = '$eventname'";
        $result = $this->conn->query($event);
        if ($result->num_rows > 0) {
            return $result;
        } else {
            return false;
        }
    }

    public function getEventDate($eventdate)
    {
        $event = "SELECT * FROM events where event_date = '$eventdate'";
        $result = $this->conn->query($event);
        if ($result->num_rows > 0) {
            return $result;
        } else {
            return false;
        }
    }

    public function getParticipant($eventid)
    {
        $event = "SELECT SUM(participation_fee) AS value_sum FROM participants where eventid = '$eventid'";
        $result = $this->conn->query($event);
        $row = mysqli_fetch_assoc($result);
        $sum = $row['value_sum'];

        if ($result->num_rows > 0) {
            return $sum;
        } else {
            return false;
        }
    }

    public function getParticipantEmail($email)
    {
        $event = "SELECT SUM(participation_fee) AS value_sum FROM participants where employee_id = '$email'";
        $result = $this->conn->query($event);
        $row = mysqli_fetch_assoc($result);
        $sum = $row['value_sum'];

        if ($result->num_rows > 0) {
            return $sum;
        } else {
            return false;
        }
    }

}
