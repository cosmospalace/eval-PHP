<!-- PARTIE TRAITEMENT -->
<?php 

require_once 'inc/init.php';

// Afficher les annonces de la base de données

$rep = $pdo->query("SELECT * FROM advert ORDER BY id ASC");

$content .= '<div class="container text-center">';
$content .= '<div class="row">';
while($annonce = $rep->fetch(PDO::FETCH_ASSOC)){
    $content .= '<div class="col-4">';
    $content .= '<div class="card">';
    $content .= '<div class="card-body">';
    $content .= '<h5 class="card-title text-uppercase">'.$annonce['title'].'</h5>';
    $content .= '<p class="card-text">'.$annonce['description'].'</p>';
    $content .= '<a href="fiche-annonce.php?id='.$annonce['id'].'" class="btn btn-warning">Consulter l\'annonce</a>';
    $content .= '</div>';
    $content .= '</div>';
    $content .= '</div>';
}




?>


<!-- PARTIE affichage -->

<?php require_once 'inc/header.inc.php'; ?>

<h1 class="text-center">Trouvez votre futur chez-vous parmi nos centaines d'annonces</h1>

<?= $content; ?>

<?php require_once 'inc/footer.inc.php'; ?>