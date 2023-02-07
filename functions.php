<?php
/**
 * creates and returns a mysql db PDO
 * @return PDO returns the database connection with assoc array fetch mode
 */

function retrieveDb(): PDO
{
    $db = new PDO('mysql:host=db; dbname=vinyl-collection', 'root', 'password');

    $db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);

    return $db;
}

?>