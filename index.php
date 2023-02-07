<?php

require_once 'functions.php';

$servername = "localhost";
$username = "root";
$password = "password";
$db = "vinyl-collection";

$db = retrieveDb();

$query = "SELECT `image`, `artist`, `album`, `year`, `genre`, `label-released` FROM `vinyl-collection`";


$stmnt = $db->prepare($query);

$stmnt->execute();

$result = $stmnt->fetchAll();

foreach ($result as $vinylCollection) {
    echo $vinylCollection ['image'] . '<br>' .
        $vinylCollection ['artist'] . '<br>' .
        $vinylCollection['album'] . '<br>' .
        $vinylCollection ['year'] . '<br>' .
        $vinylCollection['genre'] . '<br>' .
        $vinylCollection ['label-released'] . '<br>' . '<br>';
};

?>

