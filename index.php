<?php

require_once 'functions.php';

$db = retrieveDb();
$vinyl = getVinylCollections($db);
$vinylHtml = displayVinyl($vinyl);

echo $vinylHtml;

?>

