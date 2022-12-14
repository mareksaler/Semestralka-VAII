-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2022 at 08:23 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_11_13_102057_tatry', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tatry`
--

CREATE TABLE `tatry` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `area` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dlzka` float NOT NULL,
  `cas` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tatry`
--

INSERT INTO `tatry` (`id`, `slug`, `title`, `description`, `image`, `user_id`, `updated_at`, `created_at`, `area`, `dlzka`, `cas`) VALUES
(3, 'upravene-2', 'Upravene', 'Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny textUpraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny textUpraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny textUpraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny textUpraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny textUpraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny textUpraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny textUpraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny textUpraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny textUpraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny textUpraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny textUpraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny textUpraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny textUpraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny textUpraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny textUpraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny textUpraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny textUpraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny textUpraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny textUpraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny textUpraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny textUpraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny textUpraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny textUpraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny textUpraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny textUpraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny textUpraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny textUpraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny textUpraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text Upraveny text', '6371644cc2a31-.png', 1, '2022-11-14 18:47:48', '2022-11-13 21:40:28', 'V', 12, 12),
(24, 'bystra', 'Bystr??', 'Samotn?? v??stup sa za????na na r??zcest?? pod Bystrou. Zo za??iatku postupujeme po ??lto zna??enom chodn??ku, ktor?? v ??vodn??ch f??zach vedie po zdevastovan??ch zv????niciach, ktor?? vyu????vaj?? lesn??ci na zvoz kalamitn??ho dreva. Cesta bola v??????inou blatist??, zm????an?? mal??mi pot????ikmi, ktor?? sa vytvorili po predch??dzaj??cich da????och. Toto ??e m?? by?? kr??sna dolina? Po zhruba hodine v??ak men??m n??zor. Pre??li sme kalamitn?? oblas?? a vystupujeme do otvorenej??ej vysokohorskej krajiny Bystrej doliny. Z oboch str??n je zovret?? mas??vmi a stromami, jej stredom pretek?? potok, nazvan?? ako inak ??? Bystr??. ??lt?? chodn??k vedie a?? pod hrebe?? popri spom??nanom potoku, do ktor??ho sa tu a tam ob??as vleje men???? pr??tok z ved??aj????ch ??bo????. Po??as cesty m??me celkom slu??n?? po??asie. Ke?? vyst??pime k dvom mal??m Bystr??m plieskam pod hrebe??om Bystrej, dokonca zasvieti slnko a vid??me modr?? oblohu.\r\n\r\nDel??me sa na skupinky. Polovica z n??s a traja ps??ci ost??vaj?? pri Bystr??ch plieskach a dop????aj?? z??soby vody a energie. Ja som sa rozhodol spolu s druhou polovicou ne??aka?? a dosta?? sa ??o najr??chlej??ie na hrebe?? Kobyly, aby som chytil ako tak priazniv?? po??asie. St??panie od plies na hrebe?? nie je n??ro??n??, po p??r serpent??nkach sme tam. Stret??vame prv??ch turistov, ktor?? id?? v opa??nom smere ako my a maj?? Bystr?? za sebou. V??h??ady z hrebe??a s?? vzh??adom na po??asie n??dhern??. Sna????m sa urobi??, ??o mo??no najviac fotiek, aj ke?? len mobiln??m telef??nom, a pokra??ujem na vrchol. Z hrebe??a s?? kr??sne v??h??ady, ??i u?? smerom k Vysok??m Tatr??m, ale aj k Z??padn??m Tatr??m. M??me mo??nos?? zbl??zka si pozrie?? hrebe?? Otrhancov spolu s ich vrcholmi Ostredok ??i Jakubina. Vidno tie?? Baranec a na druhej strane sa na chv????ku odkryl n??rodn?? vrch Kriv????.\r\n\r\nDorazil som na vrchol najvy????ieho vrchu Z??padn??ch Tatier. Op???? sa sna????m nie??o foti??, no r??chlo sad?? hmla a prich??dzaj?? oblaky. Druh?? skupinka so psami prich??dza na vrchol Bystrej v zamra??enom po??as?? a vo vetre. Prezliekame sa, miesto kra??asov na??ahujem dlh?? nepremokav?? nohavice. Nie??o zajeme a za zvuku hromu op??????ame Bystr?? smerom na Bly????. Zostup je bezprobl??mov??, o chv????ku prech??dzame cez Bly???? smerom na Py??n?? sedlo. Stret??vame ??al????ch turistov, ktor?? e??te len vystupuj?? na Bystr??. V duchu ich ??utujem, po??asie sa naozaj zhor??uje a v??h??ady nebud?? ma?? veru ??iadne. My sme po chv??li v Py??nom sedle, no neoddychujeme. ??al???? hrom a za????naj??ci d?????? n??s ??en?? do ni??????ch pol??h. Tempo zostupu je vysok??, nikto nechce osta?? na hrebeni po??as b??rky. Hrmavica nakoniec nepr??de, ale za??ne sne??i??. Kamenistou dolinou tak zostupujeme po??as sne??enia. Pad?? mokr?? sneh, ktor?? sa v ni??????ch poloh??ch zmen?? na d??????. Zostup si nevychutn??me a chceme by?? ??o najr??chlej??ie v lese. Po hodine sa po??asie zase men??. Prestalo pr??a??, obla??nos?? je pre?? a svieti slnko. M??me mo??nos?? vidie?? Bystr?? z Kamenistej doliny a kone??ne si u??i?? zostup dolinou za lep????ch podmienok. Pod??a trusu na chodn??koch, a toto plat?? aj o Bystrej doline po??as v??stupu, je bada?? vysok?? pohyb medve??ov. V t??chto chv????ach oce??ujem, ??e sme sa vybrali vo v??????om po??te. Predpoklad??m, ??e medve??ov je tu viac preto, lebo Z??padn?? Tatry s?? celkovo menej skalnat??. V dolin??ch sa nach??dza bujn?? veget??cia, nie je to \"pust?? kame??olom\" ako vo Vysok??ch Tatr??ch. Aj vrcholy s?? zelen??, v??????inou porasten?? tr??vou. I ke?? sa to nezd??, Bystr?? je vysok?? 2248 metrov, ??o je viac ako Jah??ac?? ??t??t (2229 metrov), no v??stup na ??u bol podstatne jednoduch????. Ako m??j kolega Tom???? zvykne hovorieva?? ??? pre d??chodcov.', '637376ee35dd6-.jpg', 1, '2022-11-15 11:24:30', '2022-11-15 11:24:30', 'Z', 24, 6),
(38, 'dumbier-3', '??umbier', 'Najvy?????? vrch N??zkych Tatier s nadmorskou v????kou 2043 m n.m. je skuto??n?? v??zva pre v??etk??ch milovn??kov vysokohorskej turistiky. Navy??e sa nach??dza ne??aleko ??tef??nikovej chaty, v??aka ??omu je v??stup pohodlnej???? aj s mo??nos??ou ob??erstvenia, alebo ubytovania. Ob????ben?? je hrebe??ov?? t??ra Chopok ??? ??umbier. Pokia?? h??ad??te jednoduch?? d????ku trasy, odpor????ame t??ru z Trango??ky, cez ??tef??nikovu chatu.\r\n\r\nPon??ka jedine??n?? a unik??tny kruhov?? v??h??ad na v??etky dominantn?? pohoria stredn??ho Slovenska. Z ??umbiera m????eme za dobr??ho po??asia pozorova?? hrebe?? N??zkych Tatier, Mal?? a Ve??k?? Fatru, Cho??sk?? vrchy, Z??padn?? a Vysok?? Tatry.\r\n\r\nPo??as 2. svetovej vojny sa v okol?? ??umbiera udiali n??ro??n?? boje medzi partiz??nmi a nemeck??mi vojakmi. Majest??tny dreven?? dvojkr???? na vrchole a pam??tn?? tabu??a na ??tef??nikovej chate pripom??na tieto udalosti.\r\n\r\nV??aka skvelej polohe, dobrej dostupnosti a vybudovan??m turistick??m chodn??kom je vrchol pomerne ??ahko zdolate??n?? pre v??etky vekov?? kateg??rie. ??umbier je dostupn?? celoro??ne, v??stupov?? trasa na vrchol je vybudovan?? bez technick??ch istiacich pom??cok.', '6373904c500a4-.jpg', 1, '2022-11-15 13:12:44', '2022-11-15 13:12:44', 'N', 12, 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin', NULL, '$2y$10$dM5Vupg/uEU/oC08LxNpC.keFTu.1FiB/5dwFjjijc7w5ejH5/qiK', NULL, '2022-11-13 10:30:27', '2022-11-13 10:30:27'),
(2, 'Marek', 'marek@test', NULL, '$2y$10$GNuXBOUikkQayyyiZrzqmOP7nt0CL4UVf5lQrfheCAxLGr..vY94q', NULL, '2022-11-13 11:07:51', '2022-11-13 11:07:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `tatry`
--
ALTER TABLE `tatry`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tatry_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tatry`
--
ALTER TABLE `tatry`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tatry`
--
ALTER TABLE `tatry`
  ADD CONSTRAINT `tatry_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
