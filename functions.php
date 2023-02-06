<?php
/**
 * @param PDO $db the db conn
 * @return string
 */

$servername = "localhost";
$username = "root";
$password = "password";
$db = "vinyl-collection";

function retrieveDb(): PDO
{
    $db = new PDO('mysql:host=db; dbname=vinyl-collection', 'root', 'password');
    $db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
    return $db;
}

$db = retrieveDb();

$query = "SELECT `image`, `artist`, `album`, `year`, `genre`, `label-released` FROM `vinyl-collection`;";


$stmnt = $db->prepare($query);

$stmnt->execute();

$result = $stmnt->fetchAll ();

echo '<pre>';
var_dump($result);
echo '</pre>';

?>