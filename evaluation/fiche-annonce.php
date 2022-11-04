<!-- PARTIE TRAITEMENT -->

<?php require_once './inc/init.php';

if (!isset($_GET['id'])) {
    header('location:index.php'); // Je renvoi le user vers index.php
    exit();
}

if (isset($_GET['id'])) { // S'il y a un id dans l'url , je fais une rq pour récupérer les data de ce id
    $data = $pdo->query("SELECT * FROM advert WHERE id = '$_GET[id]'");
}

if ($data->rowCount() <= 0) { //Si le rowCount() est <=0 c'est que je n'ai pas de produit qui a cet id
    header('location:index.php');
    exit();
}

$detail = $data->fetch(PDO::FETCH_ASSOC);


$content .= '<div class="container text-center">';
$content .= "<p class=\"lead\">" . $detail['title'] . "</p>";
$content .= "<p class=\"lead\">" . $detail['description'] . "</p>";
$content .= "<p class=\"lead\">Prix: " . $detail['price'] . "€" . "</p>";
$content .= "<p class=\"lead\">Ville: " . $detail['city'] . "</p>";
$content .= "<p class=\"lead\">Code postal: " . $detail['postal_code'] . "</p>";
$content .= "<p class=\"lead\">Type : " . $detail['type'] . "</p>";
$content .= "<form action=\"\" method=\"POST\">";
$content .= "<div class=\"mb-3\">
<label for=\"message\" class=\"form-label\">Votre message de réservation</label>
<textarea class=\"form-control\" id=\"textarea\" rows=\"3\"></textarea>
</div>";
$content .= "<input type=submit value=\"Réserver une visite\" class=\"btn btn-lg btn-warning mb-5\" name=\"reserver_bien\">";
$content .= "</form>";



?>


<!-- PARTIE AFFICHAGE -->

<?php require_once './inc/header.inc.php'; ?>

<h5 class="text-center">Détails de l'annonce</h5>

<?= $content; ?>

<?php require_once './inc/footer.inc.php'; ?>