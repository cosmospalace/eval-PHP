<?php 

// Connexion à la bdd

$pdo = new PDO('mysql:host=localhost;dbname=wf3_php_intermediaire_benjamin','root','',
array(
    PDO::ATTR_ERRMODE => PDO::ERRMODE_WARNING, 
    PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8'));

// var_dump($pdo);

// Déclaration d'une variable qui va afficher les messages

$content = '';

// je lance ma session

session_start();

// Déclaration d'une constante qui contient l'url du site

define('URL','http://localhost/evaluation/');

define('RACINE', $_SERVER['DOCUMENT_ROOT'] .'/evaluation/');
