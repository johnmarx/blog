-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Mar 16 Janvier 2018 à 22:44
-- Version du serveur :  5.7.14
-- Version de PHP :  7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `symfony`
--

-- --------------------------------------------------------

--
-- Structure de la table `acme_demo_article`
--

CREATE TABLE `acme_demo_article` (
  `id` int(11) NOT NULL,
  `excerpt_photo_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `excerpt` varchar(140) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `acme_demo_article`
--

INSERT INTO `acme_demo_article` (`id`, `excerpt_photo_id`, `parent_id`, `author_id`, `title`, `excerpt`, `content`, `status`, `published_at`, `created_at`, `modified_at`, `slug`) VALUES
(1, 24, NULL, 1, 'BEST GAMING CHAIR', NULL, '<p>ONLY 399$ <img title="can_u_do_this.jpg" src="http://127.0.0.1:8000/uploads/media/default/0001/01/thumb_24_default_big.jpeg" alt="can_u_do_this.jpg" width="500" height="281" /></p>', 'published', '2018-01-16 22:33:55', '2018-01-11 15:06:29', '2018-01-16 22:33:55', 'BEST-GAMING-CHAIR'),
(4, 25, NULL, 1, 'Ne jamais touché les spaget des autres', NULL, '<p>&nbsp;Il &eacute;tait une fois un meme vraiment cool&nbsp; <img title="mqdefault.jpg" src="http://127.0.0.1:8000/uploads/media/default/0001/01/thumb_25_default_big.jpeg" alt="mqdefault.jpg" width="500" height="281" /></p>', 'published', '2018-01-16 22:36:08', '2018-01-11 15:58:11', '2018-01-16 22:36:08', 'Ne-jamais-touché-les-spaget-des-autres'),
(6, 23, NULL, 1, 'CV John Marx', 'hey hey', '<p>hey <img title="26857617_408013449655015_1133991636_n.png" src="http://127.0.0.1:8000/uploads/media/default/0001/01/thumb_23_default_big.png" alt="26857617_408013449655015_1133991636_n.png" width="500" height="689" /></p>', 'published', '2018-01-16 22:31:36', '2018-01-15 13:46:37', '2018-01-16 22:31:36', 'CV-John-Marx'),
(16, 23, 6, 1, 'CV John Marx', 'hey hey', '<p>hey <img title="26857617_408013449655015_1133991636_n.png" src="http://127.0.0.1:8000/uploads/media/default/0001/01/thumb_23_default_big.png" alt="26857617_408013449655015_1133991636_n.png" width="500" height="689" /></p>', 'draft', NULL, '2018-01-16 22:31:36', '2018-01-16 22:31:36', 'drafted-6'),
(17, 24, 1, 1, 'BEST GAMING CHAIR', NULL, '<p>ONLY 399$ <img title="can_u_do_this.jpg" src="http://127.0.0.1:8000/uploads/media/default/0001/01/thumb_24_default_big.jpeg" alt="can_u_do_this.jpg" width="500" height="281" /></p>', 'draft', NULL, '2018-01-16 22:33:55', '2018-01-16 22:33:55', 'drafted-1'),
(18, 25, 4, 1, 'Ne jamais touché les spaget des autres', NULL, '<p>&nbsp;Il &eacute;tait une fois un meme vraiment cool&nbsp; <img title="mqdefault.jpg" src="http://127.0.0.1:8000/uploads/media/default/0001/01/thumb_25_default_big.jpeg" alt="mqdefault.jpg" width="500" height="281" /></p>', 'draft', NULL, '2018-01-16 22:36:08', '2018-01-16 22:36:08', 'drafted-4');

-- --------------------------------------------------------

--
-- Structure de la table `acme_demo_article_meta`
--

CREATE TABLE `acme_demo_article_meta` (
  `id` int(11) NOT NULL,
  `article_id` int(11) DEFAULT NULL,
  `meta_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_value` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `acme_demo_article_meta`
--

INSERT INTO `acme_demo_article_meta` (`id`, `article_id`, `meta_key`, `meta_value`) VALUES
(15, 6, 'writing_locked', '1516141897:1'),
(16, 1, 'writing_locked', '1516142036:1'),
(17, 4, 'writing_locked', '1516142667:1');

-- --------------------------------------------------------

--
-- Structure de la table `acme_demo_comment`
--

CREATE TABLE `acme_demo_comment` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `article_id` int(11) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` varchar(3000) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `acme_demo_comment`
--

INSERT INTO `acme_demo_comment` (`id`, `parent_id`, `article_id`, `author_id`, `name`, `comment`, `status`, `email`, `created_at`, `modified_at`) VALUES
(3, NULL, 6, 1, NULL, 'lol c\'est mal partie pour etre dev Php..lel', '1', NULL, '2018-01-15 14:06:44', '2018-01-16 17:09:33');

-- --------------------------------------------------------

--
-- Structure de la table `acme_demo_settings`
--

CREATE TABLE `acme_demo_settings` (
  `id` int(11) NOT NULL,
  `property` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `acme_demo_settings`
--

INSERT INTO `acme_demo_settings` (`id`, `property`, `value`) VALUES
(1, 'comments_enabled', '1'),
(2, 'comments_visible_public', '1'),
(3, 'commenter_access_level', 'private'),
(4, 'comments_display_order', 'ASC'),
(5, 'comments_manual_approving', '1'),
(6, 'date_format', 'd/m/Y'),
(7, 'time_format', 'H:i');

-- --------------------------------------------------------

--
-- Structure de la table `acme_demo_taxonomy`
--

CREATE TABLE `acme_demo_taxonomy` (
  `id` int(11) NOT NULL,
  `term_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `count` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `acme_demo_taxonomy`
--

INSERT INTO `acme_demo_taxonomy` (`id`, `term_id`, `parent_id`, `type`, `description`, `count`) VALUES
(4, 4, NULL, 'category', NULL, 1),
(8, 8, NULL, 'tag', NULL, 1),
(9, 9, NULL, 'category', NULL, 2),
(17, 17, NULL, 'tag', NULL, 1),
(18, 18, NULL, 'tag', NULL, 1),
(19, 19, NULL, 'tag', NULL, 1),
(20, 20, NULL, 'tag', NULL, 1),
(21, 21, NULL, 'tag', NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `acme_demo_taxonomy_relation`
--

CREATE TABLE `acme_demo_taxonomy_relation` (
  `id` int(11) NOT NULL,
  `article_id` int(11) DEFAULT NULL,
  `taxonomy_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `acme_demo_term`
--

CREATE TABLE `acme_demo_term` (
  `id` int(11) NOT NULL,
  `title` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `acme_demo_term`
--

INSERT INTO `acme_demo_term` (`id`, `title`, `slug`) VALUES
(4, 'CV', 'cv'),
(8, 'cv', 'cv-1'),
(9, 'Divers', 'divers'),
(17, 'johnmarx', 'johnmarx'),
(18, 'pwediepie', 'pwediepie'),
(19, 'memeofthemonth', 'memeofthemonth'),
(20, 'meme', 'meme'),
(21, 'daweiestsurfait', 'daweiestsurfait');

-- --------------------------------------------------------

--
-- Structure de la table `ed_article_category_relation`
--

CREATE TABLE `ed_article_category_relation` (
  `article_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `ed_article_category_relation`
--

INSERT INTO `ed_article_category_relation` (`article_id`, `category_id`) VALUES
(1, 9),
(4, 9),
(6, 4),
(16, 4),
(17, 9),
(18, 9);

-- --------------------------------------------------------

--
-- Structure de la table `ed_article_tags_relation`
--

CREATE TABLE `ed_article_tags_relation` (
  `article_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `ed_article_tags_relation`
--

INSERT INTO `ed_article_tags_relation` (`article_id`, `tag_id`) VALUES
(1, 18),
(1, 19),
(4, 20),
(4, 21),
(6, 8),
(6, 17),
(16, 8),
(16, 17),
(17, 18),
(17, 19),
(18, 20),
(18, 21);

-- --------------------------------------------------------

--
-- Structure de la table `media__gallery`
--

CREATE TABLE `media__gallery` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `context` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `default_format` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `media__gallery`
--

INSERT INTO `media__gallery` (`id`, `name`, `context`, `default_format`, `enabled`, `updated_at`, `created_at`) VALUES
(1, 'Media Library', 'default', 'big', 1, '2018-01-11 15:04:42', '2018-01-11 15:04:42');

-- --------------------------------------------------------

--
-- Structure de la table `media__gallery_media`
--

CREATE TABLE `media__gallery_media` (
  `id` int(11) NOT NULL,
  `gallery_id` int(11) DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL,
  `position` int(11) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `media__gallery_media`
--

INSERT INTO `media__gallery_media` (`id`, `gallery_id`, `media_id`, `position`, `enabled`, `updated_at`, `created_at`) VALUES
(10, 1, 23, 0, 1, '2018-01-16 22:26:09', '2018-01-16 22:26:09'),
(11, 1, 24, 0, 1, '2018-01-16 22:29:47', '2018-01-16 22:29:47'),
(12, 1, 25, 0, 1, '2018-01-16 22:29:53', '2018-01-16 22:29:53');

-- --------------------------------------------------------

--
-- Structure de la table `media__media`
--

CREATE TABLE `media__media` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `enabled` tinyint(1) NOT NULL,
  `provider_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `provider_status` int(11) NOT NULL,
  `provider_reference` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `provider_metadata` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json)',
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `length` decimal(10,0) DEFAULT NULL,
  `content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_size` int(11) DEFAULT NULL,
  `copyright` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `context` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cdn_is_flushable` tinyint(1) DEFAULT NULL,
  `cdn_flush_at` datetime DEFAULT NULL,
  `cdn_status` int(11) DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `media__media`
--

INSERT INTO `media__media` (`id`, `name`, `description`, `enabled`, `provider_name`, `provider_status`, `provider_reference`, `provider_metadata`, `width`, `height`, `length`, `content_type`, `content_size`, `copyright`, `author_name`, `context`, `cdn_is_flushable`, `cdn_flush_at`, `cdn_status`, `updated_at`, `created_at`) VALUES
(23, '26857617_408013449655015_1133991636_n.png', NULL, 1, 'sonata.media.provider.image', 1, '341cd85a61a10bdf641889a1d84fd35b09901c9e.png', '{"filename":"26857617_408013449655015_1133991636_n.png"}', 633, 873, NULL, 'image/png', 141105, NULL, NULL, 'default', NULL, NULL, NULL, '2018-01-16 22:26:08', '2018-01-16 22:26:08'),
(24, 'can_u_do_this.jpg', NULL, 1, 'sonata.media.provider.image', 1, 'd3e51d117fccdf5642ec48212fbffef350cb9b9d.jpeg', '{"filename":"can_u_do_this.jpg"}', 800, 450, NULL, 'image/jpeg', 38202, NULL, NULL, 'default', NULL, NULL, NULL, '2018-01-16 22:29:46', '2018-01-16 22:29:46'),
(25, 'mqdefault.jpg', NULL, 1, 'sonata.media.provider.image', 1, '5a7b9775f576549adaacbae8caeed506d73233f0.jpeg', '{"filename":"mqdefault.jpg"}', 320, 180, NULL, 'image/jpeg', 12593, NULL, NULL, 'default', NULL, NULL, NULL, '2018-01-16 22:29:53', '2018-01-16 22:29:53');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `credentials_expired` tinyint(1) NOT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `blog_display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_requested_at`, `roles`, `credentials_expired`, `credentials_expire_at`, `blog_display_name`) VALUES
(1, 'admin', 'admin', 'admin@admin.fr', 'admin@admin.fr', 1, 'd1snxfxx31w8s4ksk04kk0g40o44w88', '$2y$13$d1snxfxx31w8s4ksk04kkuuIwsacJhzv5yVlW4BxDEJHcsP22M1hy', '2018-01-16 09:47:45', 0, 0, NULL, NULL, NULL, 'a:2:{i:0;s:15:"ROLE_BLOG_ADMIN";i:1;s:14:"ROLE_BLOG_USER";}', 0, NULL, NULL);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `acme_demo_article`
--
ALTER TABLE `acme_demo_article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_BD5FCA0FAB0BB68` (`excerpt_photo_id`),
  ADD KEY `IDX_BD5FCA0727ACA70` (`parent_id`),
  ADD KEY `IDX_BD5FCA0F675F31B` (`author_id`);

--
-- Index pour la table `acme_demo_article_meta`
--
ALTER TABLE `acme_demo_article_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_5EF67CB77294869C` (`article_id`);

--
-- Index pour la table `acme_demo_comment`
--
ALTER TABLE `acme_demo_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_9D9BA0AA727ACA70` (`parent_id`),
  ADD KEY `IDX_9D9BA0AA7294869C` (`article_id`),
  ADD KEY `IDX_9D9BA0AAF675F31B` (`author_id`);

--
-- Index pour la table `acme_demo_settings`
--
ALTER TABLE `acme_demo_settings`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `acme_demo_taxonomy`
--
ALTER TABLE `acme_demo_taxonomy`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8F1C304AE2C35FC` (`term_id`),
  ADD KEY `IDX_8F1C304A727ACA70` (`parent_id`);

--
-- Index pour la table `acme_demo_taxonomy_relation`
--
ALTER TABLE `acme_demo_taxonomy_relation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CDA0887A7294869C` (`article_id`),
  ADD KEY `IDX_CDA0887A9557E6F6` (`taxonomy_id`);

--
-- Index pour la table `acme_demo_term`
--
ALTER TABLE `acme_demo_term`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ed_article_category_relation`
--
ALTER TABLE `ed_article_category_relation`
  ADD PRIMARY KEY (`article_id`,`category_id`),
  ADD KEY `IDX_B59CDF1B7294869C` (`article_id`),
  ADD KEY `IDX_B59CDF1B12469DE2` (`category_id`);

--
-- Index pour la table `ed_article_tags_relation`
--
ALTER TABLE `ed_article_tags_relation`
  ADD PRIMARY KEY (`article_id`,`tag_id`),
  ADD KEY `IDX_E57801147294869C` (`article_id`),
  ADD KEY `IDX_E5780114BAD26311` (`tag_id`);

--
-- Index pour la table `media__gallery`
--
ALTER TABLE `media__gallery`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `media__gallery_media`
--
ALTER TABLE `media__gallery_media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_80D4C5414E7AF8F` (`gallery_id`),
  ADD KEY `IDX_80D4C541EA9FDD75` (`media_id`);

--
-- Index pour la table `media__media`
--
ALTER TABLE `media__media`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D64992FC23A8` (`username_canonical`),
  ADD UNIQUE KEY `UNIQ_8D93D649A0D96FBF` (`email_canonical`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `acme_demo_article`
--
ALTER TABLE `acme_demo_article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT pour la table `acme_demo_article_meta`
--
ALTER TABLE `acme_demo_article_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT pour la table `acme_demo_comment`
--
ALTER TABLE `acme_demo_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `acme_demo_settings`
--
ALTER TABLE `acme_demo_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `acme_demo_taxonomy`
--
ALTER TABLE `acme_demo_taxonomy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT pour la table `acme_demo_taxonomy_relation`
--
ALTER TABLE `acme_demo_taxonomy_relation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `acme_demo_term`
--
ALTER TABLE `acme_demo_term`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT pour la table `media__gallery`
--
ALTER TABLE `media__gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `media__gallery_media`
--
ALTER TABLE `media__gallery_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `media__media`
--
ALTER TABLE `media__media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `acme_demo_article`
--
ALTER TABLE `acme_demo_article`
  ADD CONSTRAINT `FK_BD5FCA0727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `acme_demo_article` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_BD5FCA0F675F31B` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_BD5FCA0FAB0BB68` FOREIGN KEY (`excerpt_photo_id`) REFERENCES `media__media` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `acme_demo_article_meta`
--
ALTER TABLE `acme_demo_article_meta`
  ADD CONSTRAINT `FK_5EF67CB77294869C` FOREIGN KEY (`article_id`) REFERENCES `acme_demo_article` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `acme_demo_comment`
--
ALTER TABLE `acme_demo_comment`
  ADD CONSTRAINT `FK_9D9BA0AA727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `acme_demo_comment` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_9D9BA0AA7294869C` FOREIGN KEY (`article_id`) REFERENCES `acme_demo_article` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_9D9BA0AAF675F31B` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `acme_demo_taxonomy`
--
ALTER TABLE `acme_demo_taxonomy`
  ADD CONSTRAINT `FK_8F1C304A727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `acme_demo_taxonomy` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_8F1C304AE2C35FC` FOREIGN KEY (`term_id`) REFERENCES `acme_demo_term` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `acme_demo_taxonomy_relation`
--
ALTER TABLE `acme_demo_taxonomy_relation`
  ADD CONSTRAINT `FK_CDA0887A7294869C` FOREIGN KEY (`article_id`) REFERENCES `acme_demo_article` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_CDA0887A9557E6F6` FOREIGN KEY (`taxonomy_id`) REFERENCES `acme_demo_taxonomy` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `ed_article_category_relation`
--
ALTER TABLE `ed_article_category_relation`
  ADD CONSTRAINT `FK_B59CDF1B12469DE2` FOREIGN KEY (`category_id`) REFERENCES `acme_demo_taxonomy` (`id`),
  ADD CONSTRAINT `FK_B59CDF1B7294869C` FOREIGN KEY (`article_id`) REFERENCES `acme_demo_article` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `ed_article_tags_relation`
--
ALTER TABLE `ed_article_tags_relation`
  ADD CONSTRAINT `FK_E57801147294869C` FOREIGN KEY (`article_id`) REFERENCES `acme_demo_article` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_E5780114BAD26311` FOREIGN KEY (`tag_id`) REFERENCES `acme_demo_taxonomy` (`id`);

--
-- Contraintes pour la table `media__gallery_media`
--
ALTER TABLE `media__gallery_media`
  ADD CONSTRAINT `FK_80D4C5414E7AF8F` FOREIGN KEY (`gallery_id`) REFERENCES `media__gallery` (`id`),
  ADD CONSTRAINT `FK_80D4C541EA9FDD75` FOREIGN KEY (`media_id`) REFERENCES `media__media` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
