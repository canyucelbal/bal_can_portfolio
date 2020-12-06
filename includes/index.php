<?php
    include 'connect.php';
    include 'functions.php';

    if (isset($_GET['id'])) {
        $targetID = $_GET['id'];
        $result = getSingleportfolio($pdo, $targetID);

        return $result;
    } else {
        $allportfolios = getAllportfolios($pdo);

        return $allportfolios;
    }
