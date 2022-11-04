-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 04 nov. 2022 à 14:26
-- Version du serveur : 10.4.25-MariaDB
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `wf3_php_intermediaire_benjamin`
--

-- --------------------------------------------------------

--
-- Structure de la table `advert`
--

CREATE TABLE `advert` (
  `id` int(3) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(500) NOT NULL,
  `postal_code` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `type` enum('location','vente','','') NOT NULL,
  `price` varchar(255) NOT NULL,
  `reservation_message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `advert`
--

INSERT INTO `advert` (`id`, `title`, `description`, `postal_code`, `city`, `type`, `price`, `reservation_message`) VALUES
(1, 'Maison de Maitre', 'Florange grande maison de maitre de type F8 de plus de 200 m2 sur 10 ares de terrain Cette maison se compose au rdc d&#039;une entrée ,une chambre ,un salon, séjour, cuisine équipée donnant sur terrasse,salle de bain , toilette individuel A l&#039;étage : 4 chambres, salle de bain ,toilette Grenier aménagé en grande pièce de vie S/sol complet avec caves,buanderie et garage extèrieur Jardin 10 ares Libre de suite', '57190', 'Florange', 'vente', '519000', 'AAAAAH'),
(4, 'Château 70 pièces 4 000 m²', 'Joyau architectural avec installations équestres sur 132 ha (39  Une ancienne Baronnie du 16ème siècle, inscrite sur la liste des monuments historiques, est érigée au coeur d&#039;une propriété de 132 hectares clôturés par un mur d&#039;enceinte. Cette propriété a une surface de 4000 m2 habitable comportant pas moins de 70 pièces, dont 24 chambres, 43 cheminées et 27 salles de bains ou salles d&#039;eau.  Le château a été entièrement restauré en lui restituant son lustre d&#039;antan, selon les ', '39240', 'Cornod', 'vente', '30000000', ''),
(5, 'Location T3 moderne avec jardin Gemenos cœur de village', 'Dans une copropriété du 18e, située au centre de Gemenos et au calme, T3 très récent et propre. Cuisine équipée, chauffage et climatisation individualisés. 2 places de parking, 1 jardin et 1 espace extérieur privatifs .  NB: Une visite des lieux ne sera possible qu&#039;après l&#039;envoi de justificatifs de revenus correspondants à 3 fois le montant du loyer.', '13420', 'Gemenos', 'location', '1190', ''),
(6, 'Appartement 4 pièces 145 m²', 'Appartement 4 Pièces VUE IMPRENABLE ! 145m2 - Jardin 250m2', '01220', 'Divonne-Les-Bains', 'vente', '1100000', ''),
(7, 'Maison de ville 4 pièces 108 m²', 'Jolie maison de ville sur Armentières. Beaux volumes et luminosité sont les atouts de cette maison, qui offre un salon-séjour donnant sur la cuisine et une très agréable cour.', '59280 ', 'Armentières', 'vente', '149000', ''),
(8, 'Appartement 2 pièces 30 m²', 'Appartement 2 pièces 30 m²', '13010', 'Marseille', 'location', '650', ''),
(10, 'Semi plain pied - 155m2 + Possibilité cabinet indépendant', 'maison semi plain pied située sur la commune de Tourmignies en retrait de rue, dans une environnement calme. La maison se compose d&#039;une vaste pièce de vie ouverte avec cuisine équipée et poêle à pellets, un vaste chambre avec dressing, une salle de bain (baignoire, douche, vasque double) et un WC séparé. Une pièce avec accès indépendant et pièce d&#039;eau de 28m2 complète le Rez de chaussée, idéal pour une profession libéral ou un atelier. Au premier étage vous trouverez un palier interméd', '59710', 'Avelin', 'vente', '426500', ''),
(12, 'Location meublé t2 900 cc', '55m2 1000 cc tout compris (loyer + eau + électricité+ gaz)  Bail de trois ans !  Caution deux mois demandé 2000 euros + loyer en cours le premier mois  Pas éligible apl  TOUT DOSSIER ACCEPTÉ', '73100', 'Aix Les Bains', 'location', '1000', ''),
(13, 'Appartement 1 pièce 35 m²', 'Beau T1 lumineux de 35,59m2', '78480', 'Verneuil-Sur-Seine', 'location', '625', ''),
(14, 'Appartement meublé à louer Nice', '‏location meublée ,Beau 2 pièces de 35m², entièrement meublé et équip. ‏Lumineux ,vue dégagée et très calme, l&#039;appartement se compose d&#039;un spacieux séjour ouvert sur une joli terrasse, La chambre dispose d&#039;une fenêtre un dressing. ‏une salle de bains. ‏Il dispose d&#039;une cuisine meublée et équipée ouvrant également sur un salon. ‏Cet appartement est situé à 10 min à pied de l&#039;arrêt de tram Libération et 5 min à pied de l&#039;arrêt de bus Gambetta.', '06100', 'Nice', 'location', '890', ''),
(15, 'Maison 3 pièces 99 m²', ' Lumineuse et bien agencée', '56480', 'Cleguerec', 'vente', '262000', ''),
(16, 'Appartement 3 pièces 38 m²', 'Appartement 2/3 pièces 38.45m2, habitable en duplex entièrement rénovée et en excellent état.', '06420', 'Saint-Saveur-Sur-Tinee', 'vente', '67000', ''),
(17, 'Maison 21 pièces 475 m²', 'Venez découvrir l&#039;extraordinaire potentiel de cette propriété de 475m² environ qui vous est proposée entièrement meublée et équipée afin de démarrer votre activité immédiatement.', '35610', 'Roz-Sur-Couesnon', 'vente', '1546000', ''),
(18, 'Appartement T3 - Toulouse Lalande', 'Au sein d&#039;une résidence au calme et chaleureuse BBC , au cœur d&#039;un quartier pavillonnaire Lalande, construite en 2012 et sécurisée.', '31200', 'Toulouse', 'vente', '179000', ''),
(19, 'Appartement 2 pièces 43 m²', 'Très joli mais complètement vide', '81000', 'Albi', 'location', '460', ''),
(21, 'Appartement 3 pièces 63 m²', 'Secteur Hypercentre de Neuves-Maisons, proche mairie, commerces, transports, gare, appartement T3 duplex de 63m² carrez et de 75m² en surface au sol. L&#039;appartement se trouve au 1er et dernier étage du petite copropriété de 3 lots seulement et se compose : d&#039;une entrée avec espace rangement, cuisine équipée ouverte sur séjour, une chambre en bas et une en haut avec un bureau, une salle d&#039;eau et w.c séparé.', '54230', 'Neuves-Maisons', 'location', '550', ''),
(23, 'La maison de Mickey', 'Bonjour les amis vous voulez voir ma nouvelle maison ? C&#039;est vrai ? Ca me fait plaisir. Alors en avant! Oh Oh j’allais oublier le principal, pour faire apparaître ma maison il faut dire la bonne formule magique : Misca mosca mickey mouse Dites la avec moi Misca mosca mickey mouse...', '35150', 'Piré-Chancé', 'location', '200', '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `advert`
--
ALTER TABLE `advert`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `advert`
--
ALTER TABLE `advert`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
