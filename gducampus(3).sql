-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 19 fév. 2024 à 01:43
-- Version du serveur : 8.0.35
-- Version de PHP : 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gducampus`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id_id` int NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_23A0E669D86650F` (`user_id_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `title`, `created_at`, `updated_at`, `image_name`, `content`, `user_id_id`, `slug`) VALUES
(18, 'Météorologue', '2024-02-19 01:05:58', NULL, '260px-project-vortex-filming-a-potentially-tornadogenic-storm-65d2a97bbb1f8347619154.jpg', 'Les météorologues étudient l\'atmosphère terrestre et ses interactions avec la Terre, les océans et la biosphère. Leurs connaissances en mathématiques appliquées et en physique leur permettent de comprendre toute la gamme des phénomènes atmosphériques, de la formation du flocon de neige jusqu\'au climat général de la Terre4.\r\n\r\nLes météorologues en exploitation, dits prévisionnistes, analysent des données et les modèles de prévision numérique du temps afin de préparer quotidiennement des prévisions météorologiques4. Les météorologues des applications collaborent avec les premiers au développement d\'indices ou de modèles pour des secteurs tributaires des conditions météorologiques (météorologie agricole, indice forêt météo, météorologie aéronautique, météorologie maritime, etc.)4.\r\n\r\nLes météorologues peuvent aussi être des chercheurs. Ces derniers sont spécialisés dans des domaines comme4 :\r\n\r\n    La climatologie pour estimer les diverses composantes du climat et leur variabilité pour déterminer, par exemple, le potentiel éolien d\'une région donnée ou le réchauffement climatique ;\r\n    La qualité de l\'air où ils s\'intéressent aux phénomènes de transport, de transformation et de dispersion des polluants atmosphériques et peuvent être appelés à concevoir des scénarios de réduction des émissions polluantes ;\r\n    La convection atmosphérique pour raffiner les connaissances sur la structure et les forces en jeu dans les orages ou les cyclones tropicaux ;\r\n    La modélisation de l\'atmosphère et le développement de prévisions numériques du temps.\r\n\r\nLes météorologues peuvent finalement être consultants privés ou publics pour4 :\r\n\r\n    Analyser les répercussions des projets industriels et de l\'activité humaine sur le climat et la qualité de l\'air ;\r\n    Donner des conseils concernant l\'usage et l\'interprétation d\'information climatologique ;\r\n    Faire de vulgarisation pour les spécialistes, les usagers ou le grand public ;\r\n    Présenter la météo dans les médias.', 5, 'meteorologue'),
(19, 'Orage', '2024-02-19 01:09:55', NULL, 'lightning-pritzerbe-01-mk-65d2aa7035591099712072.jpg', 'Un orage (dérivé à l\'aide du suffixe -age de l\'ancien français ore, signifiant « vent »1) est une perturbation atmosphérique d\'origine convective associée à un type de nuage particulier : le cumulonimbus. Ce nuage à grande extension verticale engendre des pluies fortes à diluviennes, des décharges électriques de foudre accompagnées de tonnerre. Dans des cas extrêmes, l\'orage peut produire des chutes de grêle, des vents très violents et, rarement, des tornades.\r\n\r\nLes orages peuvent se produire en toute saison, tant que les conditions d\'instabilité et d\'humidité de l\'air sont présentes. Le plus grand nombre se retrouve sous les tropiques et leur fréquence diminue en allant vers les pôles où ils ne se produisent qu\'exceptionnellement. Dans les latitudes moyennes, le nombre varie avec la saison.', 5, 'orage'),
(20, 'Le lion', '2024-02-19 01:14:06', NULL, '011-the-lion-king-tryggve-in-the-serengeti-national-park-photo-by-giles-laurent-65d2ab8ded929398971907.jpg', 'Le Lion (Panthera leo) est une espèce de mammifères carnivores de la famille des Félidés. La femelle du lion est la lionne, son petit est le lionceau. Le mâle adulte, aisément reconnaissable à son importante crinière, accuse une masse moyenne qui peut être variable selon les zones géographiques où il se trouve, allant de 145 à 180 kg pour les lions d\'Asie à plus de 225 kg pour les lions d\'Afrique. Certains spécimens très rares peuvent dépasser exceptionnellement 300 kg. Un mâle adulte se nourrit de 7 kg de viande chaque jour contre 5 kg chez la femelle. Le lion est un animal grégaire, c\'est-à-dire qu\'il vit en larges groupes familiaux, contrairement aux autres félins. Son espérance de vie, à l\'état sauvage, est comprise entre 7 et 12 ans pour le mâle et 14 à 20 ans pour la femelle, mais il dépasse fréquemment les 30 ans en captivité.\r\n\r\nLe lion mâle ne chasse qu\'occasionnellement, il est chargé de combattre les intrusions sur le territoire et les menaces contre la troupe. Le lion rugit. Il n\'existe plus à l\'état sauvage que 16 500 à 30 000 individus dans la savane africaine, répartis en deux sous-espèces, et environ 300 dans le parc national de Gir Forest (nord-ouest de l\'Inde). Il est surnommé « le roi des animaux » car sa crinière lui donne un aspect semblable au Soleil, qui apparaît comme « le roi des astres ». Entre 1993 et 2017, sa population a baissé de 43 %1. Lion', 5, 'le-lion'),
(21, 'Dauphin', '2024-02-19 01:18:54', NULL, 'tursiops-truncatus-01-cropped-65d2ac8e5b03f326807698.jpg', 'Le grand dauphin également appelé souffleur, dauphin à gros nez ou tursiops (Tursiops truncatus) est un cétacé à dents (odontocète) appartenant à la famille des Delphinidae. C\'est l\'espèce la mieux connue de sa famille, notamment parce qu\'elle a été longuement étudiée en captivité et, à l\'état naturel, le long des côtes qu\'elle fréquente (en Floride notamment). C\'est aussi l\'une des rares espèces de dauphins à pouvoir survivre pendant un temps aux conditions de vie controversées des delphinariums. C\'est celle que le grand public associe généralement aux dauphins (surtout grâce à la série télévisée Flipper le dauphin). On la reconnaît à son « sourire » assez caractéristique, dû aux plis de son rostre.\r\n\r\nLe grand dauphin est présent dans toutes les mers du monde, à l\'exception des zones arctiques et antarctiques. Il existe deux populations assez distinctes : une côtière et une pélagique. Les grands dauphins chassent en utilisant leur capacité d\'écholocalisation. Ils se nourrissent principalement de poissons qu\'ils saisissent grâce à une centaine de petites dents pointues non différenciées. Les dauphins communiquent grâce à une variété de sons émis par l\'intermédiaire du melon, un sac nasal situé sur le front. Ils atteignent la maturité sexuelle vers l\'âge de 12 ans. Les femelles donnent naissance à un seul petit par portée. Les grands dauphins vivent généralement en groupe formé des femelles et des jeunes, alors que les mâles forment des associations appelées alliances. C\'est un animal qui montre une certaine curiosité lors de ses rencontres avec l\'homme.', 5, 'dauphin'),
(22, 'Crise économique', '2024-02-19 01:21:45', NULL, '7-3-15-crise-economique-a-berlin-65d2ad2b9f6ff437485789.png', 'Une crise économique est une dégradation brutale de la situation économique et des perspectives économiques d\'un pays ou d\'un ensemble de pays. Elle affecte tout ou une partie du système économique du pays. Son étendue sectorielle, temporelle et géographique peut aller de l\'unité à la totalité, d\'une brève période et de manière localisée à l\'ensemble de l\'économie mondiale pendant plusieurs années.\r\n\r\nUne crise économique peut provoquer un ralentissement économique durable, voire une récession économique. Elle a souvent pour effet des répercussions sur le niveau des salaires et la valeur du capital (valeurs boursières), provoque des faillites et du chômage, accroît les tensions sociales et politiques, et peut même avoir des répercussions sanitaires. Au sein de l\'histoire économique capitaliste, les crises peuvent se voir comme un élément régulier, qui s\'inscrit dans un ensemble de cycles économiques1.', 5, 'crise-economique'),
(23, 'Forêt', '2024-02-19 01:23:30', NULL, 'pexels-photo-38136-65d2ad9f0dd8f002155413.jpeg', 'Une forêt ou un massif forestier est un écosystème, relativement étendu, constitué principalement d\'un peuplement d\'arbres, arbustes et arbrisseaux (fruticée), ainsi que de l\'ensemble des autres espèces qui lui sont associées et qui vivent en interaction au sein de ce milieu. On distingue quatre grands types de forêts sur Terre : la forêt boréale (ou taïga), la forêt tempérée, la forêt méditerranéenne et la forêt tropicale. La forêt peut être naturelle ou exploitée en sylviculture. Les espèces animales, végétales ainsi que les champignons qui vivent au sein des forêts sont qualifiées d\'espèces forestières.\r\n\r\nUn boisement de faible étendue est dit bois, boqueteau ou bosquet selon son importance.\r\n\r\nLes forêts peuvent être classées en fonction de leur degré d\'anthropisation : on distingue ainsi les forêts primaires, les forêts secondaires et les forêts dites urbaines, avec les gradients intermédiaires5. Elles peuvent être naturelles ou exploitées par l\'homme. Dans ce cas il existe de nombreux types d\'exploitation des forêts (sylviculture, ligniculture, agrosylviculture…).', 5, 'foret'),
(24, 'Mer', '2024-02-19 01:25:32', NULL, 'pexels-sebastian-arie-voortman-189349-65d2ae0da6be0691262941.jpg', 'La mer est l\'étendue d’eau salée, qui couvre la plus grande partie (environ 71 %) de la surface terrestre1,2. Globalement interconnectée, avec alors le sens d\'océan mondial, elle peut être ouverte comme la mer du Nord et la mer de Chine orientale ou partiellement enclavée comme la mer Méditerranée et la mer du Japon. Lorsqu\'elle est totalement enclavée, comme la mer Caspienne et la mer Morte, c\'est une mer fermée et même plutôt un lac salé3.\r\n\r\nDepuis Magellan4 on y distingue les océans par leurs immenses étendues et leurs profondeurs abyssales5.\r\n\r\nEn astronomie, on parle de mer lunaire pour désigner une grande étendue sombre à la surface de la Lune.', 5, 'mer');

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `reported` tinyint(1) NOT NULL DEFAULT '0',
  `user_id_id` int NOT NULL,
  `article_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_9474526C9D86650F` (`user_id_id`),
  KEY `IDX_9474526C7294869C` (`article_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20240216192914', '2024-02-16 19:29:21', 469),
('DoctrineMigrations\\Version20240217142530', '2024-02-17 14:25:41', 390),
('DoctrineMigrations\\Version20240217151441', '2024-02-17 15:14:51', 326);

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
CREATE TABLE IF NOT EXISTS `messenger_messages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tag`
--

DROP TABLE IF EXISTS `tag`;
CREATE TABLE IF NOT EXISTS `tag` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tag`
--

INSERT INTO `tag` (`id`, `name`, `description`) VALUES
(1, 'animaux', NULL),
(2, 'nature', NULL),
(3, 'economie', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `tag_article`
--

DROP TABLE IF EXISTS `tag_article`;
CREATE TABLE IF NOT EXISTS `tag_article` (
  `article_id` int NOT NULL,
  `tag_id` int NOT NULL,
  PRIMARY KEY (`article_id`,`tag_id`),
  KEY `IDX_300B23CC7294869C` (`article_id`),
  KEY `IDX_300B23CCBAD26311` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tag_article`
--

INSERT INTO `tag_article` (`article_id`, `tag_id`) VALUES
(18, 2),
(19, 2),
(20, 1),
(21, 1),
(22, 3),
(23, 1),
(23, 2),
(24, 2);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `lastname`, `firstname`) VALUES
(5, 'admin@gmail.com', '[\"ROLE_ADMIN\"]', '$2y$13$wHd7rPukFMQBHu9yfhXrKu6ChGPwmhE75D3a6/WKNHK/..Tht1n9.', 'Admin', 'Admin');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `FK_23A0E669D86650F` FOREIGN KEY (`user_id_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_9474526C7294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`),
  ADD CONSTRAINT `FK_9474526C9D86650F` FOREIGN KEY (`user_id_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `tag_article`
--
ALTER TABLE `tag_article`
  ADD CONSTRAINT `FK_300B23CC7294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_300B23CCBAD26311` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
