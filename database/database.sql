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
(24, 'bystra', 'Bystrá', 'Samotný výstup sa začína na rázcestí pod Bystrou. Zo začiatku postupujeme po žlto značenom chodníku, ktorý v úvodných fázach vedie po zdevastovaných zvážniciach, ktoré využívajú lesníci na zvoz kalamitného dreva. Cesta bola väčšinou blatistá, zmáčaná malými potôčikmi, ktoré sa vytvorili po predchádzajúcich dažďoch. Toto že má byť krásna dolina? Po zhruba hodine však mením názor. Prešli sme kalamitnú oblasť a vystupujeme do otvorenejšej vysokohorskej krajiny Bystrej doliny. Z oboch strán je zovretá masívmi a stromami, jej stredom preteká potok, nazvaný ako inak – Bystrá. Žltý chodník vedie až pod hrebeň popri spomínanom potoku, do ktorého sa tu a tam občas vleje menší prítok z vedľajších úbočí. Počas cesty máme celkom slušné počasie. Keď vystúpime k dvom malým Bystrým plieskam pod hrebeňom Bystrej, dokonca zasvieti slnko a vidíme modrú oblohu.\r\n\r\nDelíme sa na skupinky. Polovica z nás a traja psíci ostávajú pri Bystrých plieskach a dopĺňajú zásoby vody a energie. Ja som sa rozhodol spolu s druhou polovicou nečakať a dostať sa čo najrýchlejšie na hrebeň Kobyly, aby som chytil ako tak priaznivé počasie. Stúpanie od plies na hrebeň nie je náročné, po pár serpentínkach sme tam. Stretávame prvých turistov, ktorí idú v opačnom smere ako my a majú Bystrú za sebou. Výhľady z hrebeňa sú vzhľadom na počasie nádherné. Snažím sa urobiť, čo možno najviac fotiek, aj keď len mobilným telefónom, a pokračujem na vrchol. Z hrebeňa sú krásne výhľady, či už smerom k Vysokým Tatrám, ale aj k Západným Tatrám. Máme možnosť zblízka si pozrieť hrebeň Otrhancov spolu s ich vrcholmi Ostredok či Jakubina. Vidno tiež Baranec a na druhej strane sa na chvíľku odkryl národný vrch Kriváň.\r\n\r\nDorazil som na vrchol najvyššieho vrchu Západných Tatier. Opäť sa snažím niečo fotiť, no rýchlo sadá hmla a prichádzajú oblaky. Druhá skupinka so psami prichádza na vrchol Bystrej v zamračenom počasí a vo vetre. Prezliekame sa, miesto kraťasov naťahujem dlhé nepremokavé nohavice. Niečo zajeme a za zvuku hromu opúšťame Bystrú smerom na Blyšť. Zostup je bezproblémový, o chvíľku prechádzame cez Blyšť smerom na Pyšné sedlo. Stretávame ďalších turistov, ktorí ešte len vystupujú na Bystrú. V duchu ich ľutujem, počasie sa naozaj zhoršuje a výhľady nebudú mať veru žiadne. My sme po chvíli v Pyšnom sedle, no neoddychujeme. Ďalší hrom a začínajúci dážď nás ženú do nižších polôh. Tempo zostupu je vysoké, nikto nechce ostať na hrebeni počas búrky. Hrmavica nakoniec nepríde, ale začne snežiť. Kamenistou dolinou tak zostupujeme počas sneženia. Padá mokrý sneh, ktorý sa v nižších polohách zmení na dážď. Zostup si nevychutnáme a chceme byť čo najrýchlejšie v lese. Po hodine sa počasie zase mení. Prestalo pršať, oblačnosť je preč a svieti slnko. Máme možnosť vidieť Bystrú z Kamenistej doliny a konečne si užiť zostup dolinou za lepších podmienok. Podľa trusu na chodníkoch, a toto platí aj o Bystrej doline počas výstupu, je badať vysoký pohyb medveďov. V týchto chvíľach oceňujem, že sme sa vybrali vo väčšom počte. Predpokladám, že medveďov je tu viac preto, lebo Západné Tatry sú celkovo menej skalnaté. V dolinách sa nachádza bujná vegetácia, nie je to \"pustý kameňolom\" ako vo Vysokých Tatrách. Aj vrcholy sú zelené, väčšinou porastené trávou. I keď sa to nezdá, Bystrá je vysoká 2248 metrov, čo je viac ako Jahňací štít (2229 metrov), no výstup na ňu bol podstatne jednoduchší. Ako môj kolega Tomáš zvykne hovorievať – pre dôchodcov.', '637376ee35dd6-.jpg', 1, '2022-11-15 11:24:30', '2022-11-15 11:24:30', 'Z', 24, 6),
(38, 'dumbier-3', 'Ďumbier', 'Najvyšší vrch Nízkych Tatier s nadmorskou výškou 2043 m n.m. je skutočná výzva pre všetkých milovníkov vysokohorskej turistiky. Navyše sa nachádza neďaleko Štefánikovej chaty, vďaka čomu je výstup pohodlnejší aj s možnosťou občerstvenia, alebo ubytovania. Obľúbená je hrebeňová túra Chopok – Ďumbier. Pokiaľ hľadáte jednoduchú dĺžku trasy, odporúčame túru z Trangošky, cez Štefánikovu chatu.\r\n\r\nPonúka jedinečný a unikátny kruhový výhľad na všetky dominantné pohoria stredného Slovenska. Z Ďumbiera môžeme za dobrého počasia pozorovať hrebeň Nízkych Tatier, Malú a Veľkú Fatru, Chočské vrchy, Západné a Vysoké Tatry.\r\n\r\nPočas 2. svetovej vojny sa v okolí Ďumbiera udiali náročné boje medzi partizánmi a nemeckými vojakmi. Majestátny drevený dvojkríž na vrchole a pamätná tabuľa na Štefánikovej chate pripomína tieto udalosti.\r\n\r\nVďaka skvelej polohe, dobrej dostupnosti a vybudovaným turistickým chodníkom je vrchol pomerne ľahko zdolateľný pre všetky vekové kategórie. Ďumbier je dostupný celoročne, výstupová trasa na vrchol je vybudovaná bez technických istiacich pomôcok.', '6373904c500a4-.jpg', 1, '2022-11-15 13:12:44', '2022-11-15 13:12:44', 'N', 12, 5);

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
