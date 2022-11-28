<?php
$link = mysqli_connect('database-1.caissr7fv3x9.us-east-1.rds.amazonaws.com', 'admin', 'password');

if (!$link) {
    echo 'Could not connect';
}

echo 'Connected successfully';
mysqli_close($link);
