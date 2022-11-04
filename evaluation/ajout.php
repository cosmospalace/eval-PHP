<?php require_once './inc/header.inc.php';

require_once './inc/init.php';

// PARTIE TRAITEMENT PHP

// Ajouter les annonces à la bdd

if($_POST) {
    foreach ($_POST as $key => $value) {
        $_POST[$key] = htmlspecialchars($value, ENT_QUOTES);
    }
    $rep= $pdo->query("INSERT INTO advert (title, description, postal_code, city, type, price, reservation_message) VALUES ('$_POST[title]', '$_POST[description]', '$_POST[postal_code]', '$_POST[city]', '$_POST[type]', '$_POST[price]', '$_POST[reservation_message]')");
}


?>



<!-- PARTIE AFFICHAGE -->

<form  action="" method="POST" enctype="multipart/form-data" class="vh-100 gradient-custom">
<div class="container py-5 h-100">
    <div class="row justify-content-center align-items-center h-100">
        <div class="col-12 col-lg-9 col-xl-7">
        <div class="card shadow-2-strong card-registration" style="border-radius: 15px;">
            <div class="card-body p-4 p-md-5">
            <h3 class="mb-4 pb-2 pb-md-0 mb-md-5">Ajouter une annonce</h3>
            <?php  $content; ?>
            <form>

            <div class="row">
                <div class="col-md-6 mb-4">

                <div class="form-outline">
                    <input type="text" id="reference" class="form-control form-control-lg" name="title"/>
                    <label class="form-label" for="reference">Titre</label>
                </div>

                </div>
                <div class="col-md-6 mb-4">
            </div>

            <div class="row">
                <div class="col-md-6 mb-4">
                <div class="form-outline">
                    <input type="text" class="form-control" id="description" name="description">
                    <label for="description" class="form-label">Description</label>
                </div>

                </div>
                <div class="col-md-6 mb-4">
                <div class="form-outline">
                    <input type="textarea" class="form-control" id="city" name="city">
                    <label for="city" class="form-label">Ville</label>
                </div>
                </div>

                <div class="col-md-6 mb-4">
                <div class="form-outline">
                    <input type="textarea" class="form-control" id="postal_code" name="postal_code">
                    <label for="postal_code" class="form-label">Code Postal</label>
                </div>
                </div>

                
            </div>

            <div class="row">
                </div>
                <div class="col-md-6 mb-4">
                <div class="form-outline">
                    <select type="form-select" class="form-control" id="type" name="type">
                        <option >Vente</option>
                        <option >Location</option>
                        </select>
                    <label for="taille" class="form-label">Type de vente</label>
                </div>
                
                </div>
            </div>

                <div class="row">
                <div class="col-md-6 mb-4 pb-2">

                <div class="form-outline">
                    <input type="text" id="price" class="form-control form-control-lg" name="price" />
                    <label class="form-label" for="price">Prix</label>
                </div>

                </div>
                <div class="col-md-6 mb-4 pb-2">
                <div class="col-md-6 mb-4">
                <div class="form-outline">
                    <input type="textarea" class="form-control" id="reservation_message" name="reservation_message">
                    <label for="reservation_message" class="form-label">Message</label>
                </div>
                </div>
                </div>
                </div>

            <div class="mt-4 pt-2">
                <input class="btn btn-success btn-lg" type="submit" value="Ajouter une annonce" />
            </div>

            </form>
        </div>
        </div>
    </div>
    </div>
</div>
</form>

<br>
<?php require_once './inc/footer.inc.php'; ?>