<!DOCTYPE>
<html>
    <head>
        <title><?= $titre ?></title>
        <meta charset="utf-8">
        <base href="<?= $racineWeb ?>">
      	<meta http-equiv="X-UA-Compatible" content="IE=edge">
      	<meta name="viewport" content="width=device-width, initial-scale=1">
      	<link href="lib/bootstrap-4.1/css/bootstrap.min.css" rel="stylesheet">
      	<script src="lib/bootstrap-4.1/js/bootstrap.min.js"></script>
      	<script src="lib/jquery-3.3.1.min.js"></script>
      	<script src="lib/bootstrap-4.1/js/bootstrap.bundle.min.js"></script>
      	<link href="lib/fontawesome-free-5.5.0-web/css/all.css" rel="stylesheet">
      	<script defer src="lib/fontawesome-free-5.5.0-web/js/all.js"></script>
        <link rel="stylesheet" href="css/master.css">
    </head>

    <body>
<!-- Le contenu est généré dans la class Vue, injecté ici, puis l'ensemble est stocké dans $vue, pour ensuite être appelé dans le controleur pour affichage   -->
    <?= $contenu ?>
    </body>
  </html>
