-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : db672809001.db.1and1.com
-- Généré le : ven. 14 oct. 2022 à 10:28
-- Version du serveur :  5.7.38-log
-- Version de PHP : 7.4.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `db672809001`
--

-- --------------------------------------------------------

--
-- Structure de la table `aeroport`
--

CREATE TABLE `aeroport` (
  `codeOACI` varchar(50) NOT NULL,
  `codeAITA` varchar(50) DEFAULT NULL,
  `nom` varchar(50) NOT NULL,
  `longitude` decimal(12,8) NOT NULL,
  `latitude` decimal(12,8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `aeroport`
--

INSERT INTO `aeroport` (`codeOACI`, `codeAITA`, `nom`, `longitude`, `latitude`) VALUES
('LFRS', 'NTE', 'AÃ©roport de Nantes-Atlantique', '-1.60250187', '47.15797424'),
('QAM', 'LFAY', 'AÃ©roport d\'Amiens - Glisy', '2.39798000', '49.87758000');

-- --------------------------------------------------------

--
-- Structure de la table `avion`
--

CREATE TABLE `avion` (
  `numMatricule` int(11) NOT NULL,
  `numSerie` varchar(50) NOT NULL,
  `code` varchar(50) NOT NULL,
  `numModele` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `avion`
--

INSERT INTO `avion` (`numMatricule`, `numSerie`, `code`, `numModele`) VALUES
(1, 'FGR-SI', '64', 1);

-- --------------------------------------------------------

--
-- Structure de la table `commerciaux`
--

CREATE TABLE `commerciaux` (
  `numMembre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `commerciaux`
--

INSERT INTO `commerciaux` (`numMembre`) VALUES
(1);

-- --------------------------------------------------------

--
-- Structure de la table `equipage`
--

CREATE TABLE `equipage` (
  `numMouvement` int(11) NOT NULL,
  `numMembre` int(11) NOT NULL,
  `present` varchar(50) NOT NULL,
  `numRole` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `equipage`
--

INSERT INTO `equipage` (`numMouvement`, `numMembre`, `present`, `numRole`) VALUES
(1, 1, 'Oui', 1);

-- --------------------------------------------------------

--
-- Structure de la table `exige`
--

CREATE TABLE `exige` (
  `numModele` int(11) NOT NULL,
  `numRole` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `exige`
--

INSERT INTO `exige` (`numModele`, `numRole`, `nombre`) VALUES
(1, 1, '1');

-- --------------------------------------------------------

--
-- Structure de la table `langues`
--

CREATE TABLE `langues` (
  `numLangues` int(11) NOT NULL,
  `nom` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `langues`
--

INSERT INTO `langues` (`numLangues`, `nom`) VALUES
(1, 'FranÃ§ais');

-- --------------------------------------------------------

--
-- Structure de la table `membre`
--

CREATE TABLE `membre` (
  `numMembre` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `numPortable` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `membre`
--

INSERT INTO `membre` (`numMembre`, `nom`, `prenom`, `numPortable`) VALUES
(1, 'Kylian', 'Besnard', 704451496);

-- --------------------------------------------------------

--
-- Structure de la table `modele`
--

CREATE TABLE `modele` (
  `numModele` int(11) NOT NULL,
  `libelle` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `nombreSiege` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `modele`
--

INSERT INTO `modele` (`numModele`, `libelle`, `image`, `nombreSiege`) VALUES
(1, 'Transport', 'avion.png', 85);

-- --------------------------------------------------------

--
-- Structure de la table `mouvement`
--

CREATE TABLE `mouvement` (
  `numMouvement` int(11) NOT NULL,
  `numVol` varchar(50) NOT NULL,
  `distance` int(11) NOT NULL,
  `nombrePassager` int(11) NOT NULL,
  `dateDepart` date NOT NULL,
  `dateArrivee` date NOT NULL,
  `etat` tinyint(1) NOT NULL,
  `duree` time NOT NULL,
  `numMatricule` int(11) NOT NULL,
  `codeOACI_arrivee` varchar(50) NOT NULL,
  `codeOACI_depart` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `mouvement`
--

INSERT INTO `mouvement` (`numMouvement`, `numVol`, `distance`, `nombrePassager`, `dateDepart`, `dateArrivee`, `etat`, `duree`, `numMatricule`, `codeOACI_arrivee`, `codeOACI_depart`) VALUES
(1, '45', 524, 68, '2022-10-14', '2022-10-14', 1, '01:10:00', 1, 'LFRS', 'QAM');

-- --------------------------------------------------------

--
-- Structure de la table `parle`
--

CREATE TABLE `parle` (
  `numMembre` int(11) NOT NULL,
  `numLangues` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `parle`
--

INSERT INTO `parle` (`numMembre`, `numLangues`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE `role` (
  `numRole` int(11) NOT NULL,
  `libele` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `role`
--

INSERT INTO `role` (`numRole`, `libele`) VALUES
(1, 'Pilote');

-- --------------------------------------------------------

--
-- Structure de la table `techniques`
--

CREATE TABLE `techniques` (
  `numMembre` int(11) NOT NULL,
  `heureVol` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `techniques`
--

INSERT INTO `techniques` (`numMembre`, `heureVol`) VALUES
(1, 2.45);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `numUtilisateur` int(11) NOT NULL,
  `identifiant` varchar(50) DEFAULT NULL,
  `password` varchar(1000) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`numUtilisateur`, `identifiant`, `password`, `role`) VALUES
(1, 'worepink', '$2y$10$7ol6BHW0Ea7qaQUcBrIkWOaysVfUDZBhf76pmc.0xVK1YFu4hBfJe', 'admin');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `aeroport`
--
ALTER TABLE `aeroport`
  ADD PRIMARY KEY (`codeOACI`);

--
-- Index pour la table `avion`
--
ALTER TABLE `avion`
  ADD PRIMARY KEY (`numMatricule`),
  ADD KEY `numModele` (`numModele`);

--
-- Index pour la table `commerciaux`
--
ALTER TABLE `commerciaux`
  ADD PRIMARY KEY (`numMembre`);

--
-- Index pour la table `equipage`
--
ALTER TABLE `equipage`
  ADD PRIMARY KEY (`numMouvement`,`numMembre`),
  ADD KEY `numMembre` (`numMembre`),
  ADD KEY `numRole` (`numRole`);

--
-- Index pour la table `exige`
--
ALTER TABLE `exige`
  ADD PRIMARY KEY (`numModele`,`numRole`),
  ADD KEY `numRole` (`numRole`);

--
-- Index pour la table `langues`
--
ALTER TABLE `langues`
  ADD PRIMARY KEY (`numLangues`);

--
-- Index pour la table `membre`
--
ALTER TABLE `membre`
  ADD PRIMARY KEY (`numMembre`);

--
-- Index pour la table `modele`
--
ALTER TABLE `modele`
  ADD PRIMARY KEY (`numModele`);

--
-- Index pour la table `mouvement`
--
ALTER TABLE `mouvement`
  ADD PRIMARY KEY (`numMouvement`),
  ADD KEY `numMatricule` (`numMatricule`),
  ADD KEY `codeOACI_arrivee` (`codeOACI_arrivee`),
  ADD KEY `codeOACI_depart` (`codeOACI_depart`);

--
-- Index pour la table `parle`
--
ALTER TABLE `parle`
  ADD PRIMARY KEY (`numMembre`,`numLangues`),
  ADD KEY `numLangues` (`numLangues`);

--
-- Index pour la table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`numRole`);

--
-- Index pour la table `techniques`
--
ALTER TABLE `techniques`
  ADD PRIMARY KEY (`numMembre`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`numUtilisateur`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `avion`
--
ALTER TABLE `avion`
  MODIFY `numMatricule` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `langues`
--
ALTER TABLE `langues`
  MODIFY `numLangues` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `membre`
--
ALTER TABLE `membre`
  MODIFY `numMembre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `modele`
--
ALTER TABLE `modele`
  MODIFY `numModele` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `mouvement`
--
ALTER TABLE `mouvement`
  MODIFY `numMouvement` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `role`
--
ALTER TABLE `role`
  MODIFY `numRole` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `numUtilisateur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `avion`
--
ALTER TABLE `avion`
  ADD CONSTRAINT `avion_ibfk_1` FOREIGN KEY (`numModele`) REFERENCES `modele` (`numModele`);

--
-- Contraintes pour la table `commerciaux`
--
ALTER TABLE `commerciaux`
  ADD CONSTRAINT `commerciaux_ibfk_1` FOREIGN KEY (`numMembre`) REFERENCES `membre` (`numMembre`);

--
-- Contraintes pour la table `equipage`
--
ALTER TABLE `equipage`
  ADD CONSTRAINT `equipage_ibfk_1` FOREIGN KEY (`numMouvement`) REFERENCES `mouvement` (`numMouvement`),
  ADD CONSTRAINT `equipage_ibfk_2` FOREIGN KEY (`numMembre`) REFERENCES `membre` (`numMembre`),
  ADD CONSTRAINT `equipage_ibfk_3` FOREIGN KEY (`numRole`) REFERENCES `role` (`numRole`);

--
-- Contraintes pour la table `exige`
--
ALTER TABLE `exige`
  ADD CONSTRAINT `exige_ibfk_1` FOREIGN KEY (`numModele`) REFERENCES `modele` (`numModele`),
  ADD CONSTRAINT `exige_ibfk_2` FOREIGN KEY (`numRole`) REFERENCES `role` (`numRole`);

--
-- Contraintes pour la table `mouvement`
--
ALTER TABLE `mouvement`
  ADD CONSTRAINT `mouvement_ibfk_1` FOREIGN KEY (`numMatricule`) REFERENCES `avion` (`numMatricule`),
  ADD CONSTRAINT `mouvement_ibfk_2` FOREIGN KEY (`codeOACI_arrivee`) REFERENCES `aeroport` (`codeOACI`),
  ADD CONSTRAINT `mouvement_ibfk_3` FOREIGN KEY (`codeOACI_depart`) REFERENCES `aeroport` (`codeOACI`);

--
-- Contraintes pour la table `parle`
--
ALTER TABLE `parle`
  ADD CONSTRAINT `parle_ibfk_1` FOREIGN KEY (`numMembre`) REFERENCES `commerciaux` (`numMembre`),
  ADD CONSTRAINT `parle_ibfk_2` FOREIGN KEY (`numLangues`) REFERENCES `langues` (`numLangues`);

--
-- Contraintes pour la table `techniques`
--
ALTER TABLE `techniques`
  ADD CONSTRAINT `techniques_ibfk_1` FOREIGN KEY (`numMembre`) REFERENCES `membre` (`numMembre`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
