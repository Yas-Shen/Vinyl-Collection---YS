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
    $result = '<div class="container">';
    foreach ($vinylCollection as $vinyl) {
        $result .= '<div class="items">' .
            '<img src="' . $vinyl['image'] . '"/>'.'<br>' .
            '<h1>' . $vinyl['artist'] . '</h1>' . '<br>' .
            '<h3>' . $vinyl['album'] . '</h3>' . '<br>' .
            '<p class="year">' . $vinyl['year'] . '</p>' . '<br>' .
            '<p class="genre">' . $vinyl['genre'] . '</p>' . '<br>' .
            '<p class="label">' . $vinyl['label-released'] . '</p>' . '</div>';
    }
    $result .= "</div>";
    return $result;
}

?>

