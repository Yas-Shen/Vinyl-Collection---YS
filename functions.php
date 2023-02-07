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

/**
 * @param PDO $db
 * @return array
 */
function getVinylCollections(PDO $db): array
{
    $stmnt = $db->prepare("SELECT `image`, `artist`, `album`, `year`, `genre`, `label-released` FROM `vinyl-collection`");
    $stmnt->execute();
    return $stmnt->fetchAll();
}

function displayVinyl(array $vinylCollection): string
{
    $result = '';
    foreach ($vinylCollection as $vinyl) {
        $result .= '<div>' . $vinyl['image'] . '<br>' .
            $vinyl['artist'] . '<br>' .
            $vinyl['album'] . '<br>' .
            $vinyl['year'] . '<br>' .
            $vinyl['genre'] . '<br>' .
            $vinyl['label-released'] . '</div>';
    }
    return $result;
}


?>