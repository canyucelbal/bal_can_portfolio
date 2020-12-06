<?php
    // include the file we just wrote - connect
     // like a JS import statement

    $result = [];

    function getAllportfolios($conn)
    {
        $query = 'SELECT * FROM portfolios';

        $runQuery = $conn->query($query);

        while ($row = $runQuery->fetchAll(PDO::FETCH_ASSOC)) {
            $result[] = $row;
        }

        //return $result;
        echo(json_encode($result));
    }

    function getSingleportfolio($conn, $target)
    {
        $query = 'SELECT * FROM portfolios WHERE id=' . $target . '';

        $runQuery = $conn->query($query);

        while ($row = $runQuery->fetchAll(PDO::FETCH_ASSOC)) {
            $result[] = $row;
        }

        //return $result;
        echo(json_encode($result));
    }
