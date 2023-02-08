<?php

require_once 'functions.php';

$db = retrieveDb();
$vinyl = getVinylCollections($db);
$vinylHtml = displayVinyl($vinyl);

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Vinyl Collection</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" type="text/css" href="normalize.css"/>
    <link rel="stylesheet" type="text/css" href="styles.css"/>
</head>
<body>
<div class="head"><header>Gnarly Vinyls</header></div>
<div class="container">
    <?php echo $vinylHtml; ?>
</div>
</body>
</html>
