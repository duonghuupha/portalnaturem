-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 08, 2023 at 11:49 AM
-- Server version: 5.7.39
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `naturem`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_address`
--

CREATE TABLE `tbl_address` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` text COLLATE utf8_unicode_ci NOT NULL,
  `lastname` text COLLATE utf8_unicode_ci NOT NULL,
  `company` text COLLATE utf8_unicode_ci NOT NULL,
  `address_1` text COLLATE utf8_unicode_ci NOT NULL,
  `address_2` text COLLATE utf8_unicode_ci NOT NULL,
  `city` text COLLATE utf8_unicode_ci NOT NULL,
  `postcode` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `region_state_id` int(11) NOT NULL,
  `default_add` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_block_1`
--

CREATE TABLE `tbl_block_1` (
  `id` int(11) NOT NULL,
  `data_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title_btn` text COLLATE utf8_unicode_ci NOT NULL,
  `link_btn` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_block_1`
--

INSERT INTO `tbl_block_1` (`id`, `data_id`, `title_btn`, `link_btn`) VALUES
(1, '1,2,3', 'Start shopping', '/');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_block_3`
--

CREATE TABLE `tbl_block_3` (
  `id` int(11) NOT NULL,
  `title_1` text COLLATE utf8_unicode_ci NOT NULL,
  `title_2` text COLLATE utf8_unicode_ci NOT NULL,
  `type_data` int(11) NOT NULL,
  `data_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_block_3`
--

INSERT INTO `tbl_block_3` (`id`, `title_1`, `title_2`, `type_data`, `data_id`) VALUES
(1, 'Latest Arrivals', 'Feature Products', 2, '1,2,3,4,5,6,7,8');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_block_4`
--

CREATE TABLE `tbl_block_4` (
  `id` int(11) NOT NULL,
  `title_1` text COLLATE utf8_unicode_ci NOT NULL,
  `title_2` text COLLATE utf8_unicode_ci NOT NULL,
  `content_1` text COLLATE utf8_unicode_ci NOT NULL,
  `content_2` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `data_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_block_4`
--

INSERT INTO `tbl_block_4` (`id`, `title_1`, `title_2`, `content_1`, `content_2`, `description`, `data_id`) VALUES
(1, '', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `code`, `title`, `image`, `description`, `active`) VALUES
(1, 1684723621, 'Living In The Moment', '1686159722_living-in-the-moment.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 1),
(2, 1685897216, 'Promoting Optimal Health', '1686159734_promoting-optimal-health.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat', 1),
(3, 1685897230, 'Reducing The Risk Of Disease', '1686159739_reducing-the-risk-of-disease.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_combo`
--

CREATE TABLE `tbl_combo` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `date_start` datetime NOT NULL,
  `date_end` datetime NOT NULL,
  `type_discount` int(11) NOT NULL,
  `discount` double NOT NULL,
  `min_number` int(11) NOT NULL,
  `max_use` int(11) NOT NULL,
  `create_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_combo_product`
--

CREATE TABLE `tbl_combo_product` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_content`
--

CREATE TABLE `tbl_content` (
  `id` int(11) NOT NULL,
  `code` int(255) NOT NULL,
  `cate_id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `tags` text COLLATE utf8_unicode_ci NOT NULL,
  `create_at` datetime NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_content`
--

INSERT INTO `tbl_content` (`id`, `code`, `cate_id`, `title`, `description`, `content`, `image`, `tags`, `create_at`, `active`) VALUES
(1, 1685636543, 0, 'Nature\'s Redemy', 'Vietnam is endowed with rich vegetation that accommodates a wide range of precious medicinal herbs.', '<p><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Its traditional medicine boasts thousands of proven effective remedies which</span>&nbsp;<span style=\"font-family:Arial,Helvetica,sans-serif\">hundreds of physicians, pharmacists, botanists and herbal masters who are very knowledgeable traditional medicine practitioners. Meanwhile, given the overloading of hospitals, high costs of pharmaceutical drugs, devastating side effects of anti-biotics and a polluted environment, natural and safe products yet affordable or badly in need.&nbsp;</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">This inspires us to start implementing the ideas of &ldquo;Natural Herbs for a Healthy Life&rdquo; and &ldquo;Preserve Precious&nbsp;Medicinal Herbs&rdquo; by establishing&nbsp;SVK Herbal Corporation and introducing the Naturem&trade; &amp; LANUI&trade;&nbsp;product&nbsp;lines. We need to go back to nature and produce affordable medicinal herbal supplements to aid in the prevention and treatment of diseases.</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">These goals can be achieved through the propagation of precious, rare and natural herbs and to grow them using natural and cooperative methods, and through the development of relationships with researchers and traditional medicine practitioners.</span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"color:#16a085\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><em><strong>&ldquo;NATURAL HERBS FOR A HEALTHY LIFE&rdquo;</strong></em></span></span></span></p>\r\n\r\n<h2><span style=\"font-size:14px\"><span style=\"color:#16a085\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>Our Missions&nbsp;and Vision</strong></span></span></span></h2>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Our missions are to:</span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Discover, research and develop products to improve and extend people&rsquo;s lives</span></span></li>\r\n	<li><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Preserve and develop medicinal herbal products to improve health &nbsp;</span></span></li>\r\n	<li><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Protect precious all herbal species.</span></span></li>\r\n</ul>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Our vision&nbsp;is to bring natural, safe and affordable products into many homes around the world.</span><br />\r\n<span style=\"color:#16a085\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>Our Strategies</strong></span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Our strategies are:</span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Natural herbs for a healthy life&nbsp;</span></span></li>\r\n	<li><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Build model farms and transfer seedlings and sustainable farming technologies to farmers</span></span></li>\r\n	<li><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Collaborate closely with partners who share a common vision with complementary strengths</span></span></li>\r\n</ul>\r\n\r\n<p><span style=\"font-size:14px\"><span style=\"color:#16a085\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>Our Core Values</strong></span></span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Commitment to excellent products and services</span></span></li>\r\n	<li><span style=\"font-size:14px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">To reach our business goals, we understand that we must operate with high integrity, transparency and environmental sustainability.</span></span></li>\r\n</ul>\r\n', '1685910027_content_blog.jpg', 'about us, naturem, oganic', '2023-06-05 03:20:27', 1),
(2, 1686072341, 0, 'Lanui Slim', 'SVK Herbal Corporation’s LANUI® products are formulated based on the theoretical basis of traditional Vietnamese medicine (TVM) and actual treatment results from doctors and specialists with many year', '<p style=\"text-align:justify\"><span style=\"font-size:16px\">A slim body leads to an active and confident lifestyle. However, a weight loss plan should be implemented in a very safe manner. LANUI&reg; SLIM Tablet is made from red ginseng combined with some Vietnamese herbs, not only helps to lose weight but also protects health, eliminates toxins and prevents obesity related diseases.</span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"color:#339966\"><strong>HOW IT HELPS</strong></span></span></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p style=\"text-align:justify\"><span style=\"font-size:16px\">Stimulates the burning of excess fat, thus enabling weight reduction and firming muscles</span></p>\r\n	</li>\r\n	<li style=\"text-align:justify\">\r\n	<p><span style=\"font-size:16px\">Improves the transformation of lipids, reduces blood lipid disorders</span></p>\r\n	</li>\r\n	<li style=\"text-align:justify\">\r\n	<p><span style=\"font-size:16px\">Improves digestion, helps purging toxins from body</span></p>\r\n	</li>\r\n	<li style=\"text-align:justify\">\r\n	<p><span style=\"font-size:16px\">Enhances the body metabolism</span></p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align:justify\"><span style=\"font-size:16px\">Prevents obesity related diseases such as cardiovascular diseases, diabetes, osteoarthritis</span></p>\r\n	</li>\r\n</ul>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"color:#339966\"><strong>INTENDED USERS </strong></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\">Suitable for all ages, though children need to take lower dose</span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\">\r\n	<p><span style=\"font-size:16px\">People with overweight problems</span></p>\r\n	</li>\r\n	<li style=\"text-align:justify\">\r\n	<p><span style=\"font-size:16px\">People with high blood pressure, fatty liver, high cholesterol</span></p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align:justify\"><span style=\"font-size:16px\">People with diabetes, atherosclerosis</span></p>\r\n	</li>\r\n</ul>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"color:#339966\"><strong>INGREDIENTS Q</strong></span></span></p>\r\n\r\n<div>\r\n<p><span style=\"font-size:16px\"><strong>Red Reishi Mushrooms </strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\">Reduces blood sugar and prevents diabetes; boost metabolism and accelerates the burning of excess fat, thus restraining the formation of fatty cells</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>Hawthorn </strong></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\">Contains several organic acids such as citric acid and vitamin C which boost the digestive system functions; increases the amount of enzyme in the stomach; enhances excretion functions, eliminates fat and toxins, thus helps efficient weight loss</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>Lotus Leaf </strong></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\">Lotus leaf contains flavonoid which helps curb cholesterol disorders and improve the metabolism of fat &ndash; an effective way to lose weight</span></p>\r\n</div>\r\n', '1686072820_content_blog.jpg', 'Naturem, lanui, slim', '2023-06-07 00:33:40', 1),
(3, 1686072647, 0, 'Lanui Cardio', 'SVK Herbal Corporation’s LANUI® products are formulated based on the theoretical basis of traditional Vietnamese medicine (TVM) and actual treatment results from doctors and specialists with many year', '<p><span style=\"font-size:16px\"><span style=\"color:#339966\"><strong>HOW IT HELPS</strong></span></span></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p style=\"text-align:justify\"><span style=\"font-size:16px\">Stabilizes blood lipids and blood pressure, inhibits free radicals, reduces the formation of blood clots</span></p>\r\n	</li>\r\n	<li style=\"text-align:justify\">\r\n	<p><span style=\"font-size:16px\">Prevents arteriosclerosis, heart attacks, strokes, clogged arteries in limbs</span></p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align:justify\"><span style=\"font-size:16px\">Improves the aging symptoms of neurological diseases, helps the fight against dementia and Alzheimer&rsquo;s disease</span></p>\r\n	</li>\r\n</ul>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"color:#339966\"><strong>INTENDED USERS </strong></span></span></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p style=\"text-align:justify\"><span style=\"font-size:16px\">People with high or unstable blood pressure</span></p>\r\n	</li>\r\n	<li style=\"text-align:justify\">\r\n	<p><span style=\"font-size:16px\">People suffering from coronary artery disease, cerebral circulation disorders (balance disorder, lack of blood flow to the brain)</span></p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align:justify\"><span style=\"font-size:16px\">People with numbness in limbs due to poor blood circulation</span></p>\r\n	</li>\r\n</ul>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"color:#339966\"><strong>INGREDIENTS </strong></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>Hawthorn </strong></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\">Contains several organic acids such as citric acid and vitamin C which increase digestive enzymes in the stomach and improve the activities of the digestive system</span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>Red Reishi Mushroom </strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\">Stabilizes blood pressure, either high or low; lowers cholesterol, stabilizes other lipids in the blood</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>Cloud Ear Fungus </strong></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\">Inhibits oxidation and the formation of blood clots, stabilizes blood sugar, improves cardiovascular functions and metabolism, protects the liver, improves blood cerebral circulation</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>Japanese Pagoda Tree </strong></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\">Stabilizes blood pressure, anti-bacterial and anti-inflammatory; prevents smooth muscle spasms in the intestinal tract.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>Turmeric </strong></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\">Contains curcumin (60%) that are effective against oxidation, inflammation, and bacterial infections; reduces cholesterol and total lipid; heals ulcers; increases blood circulation</span></p>\r\n', '1686072683_content_blog.jpg', 'Naturem, lanui, slim', '2023-06-07 00:31:23', 1),
(4, 1686073237, 0, 'Lanui Memory', 'SVK Herbal Corporation’s LANUI® products are formulated based on the theoretical basis of traditional Vietnamese medicine (TVM) and actual treatment results from doctors and specialists with many year', '<p style=\"text-align:justify\"><span style=\"font-size:16px\">The brain is the most vital organ of the body. It controls all activities and behaviors; therefore, it needs to be nourished. Active elements of ginkgo and other valuable herbal ingredients in Lanui&reg; MEMORY Tablet keep the brain healthy, improve cerebral blood circulation, support in the treatment of lack of concentration and sleep disorders, memory loss, and strokes.</span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"color:#339966\"><strong>HOW IT HELPS </strong></span></span></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p style=\"text-align:justify\"><span style=\"font-size:16px\">Improves cerebral blood circulation, provides oxygen to the brain</span></p>\r\n	</li>\r\n	<li style=\"text-align:justify\">\r\n	<p><span style=\"font-size:16px\">Helps increase memory, increases clarity and concentration</span></p>\r\n	</li>\r\n	<li style=\"text-align:justify\">\r\n	<p><span style=\"font-size:16px\">Improves ability to learn and problem solving</span></p>\r\n	</li>\r\n	<li>\r\n	<p style=\"text-align:justify\"><span style=\"font-size:16px\">Reduces headache, dizziness, insomnia, loss of balance</span></p>\r\n	</li>\r\n</ul>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"color:#339966\"><strong>INTENDED USERS </strong></span></span></p>\r\n\r\n<div>\r\n<ul>\r\n	<li>\r\n	<p><span style=\"font-size:16px\">People with headaches, dizziness, chronic insomnia</span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:16px\">People with memory loss, lack of concentration</span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:16px\">People with stressful work, declining mental ability</span></p>\r\n	</li>\r\n</ul>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"color:#339966\"><strong>INGREDIENTS </strong></span></span></p>\r\n\r\n<div>\r\n<p><span style=\"font-size:16px\"><strong>Ginkgo Biloba </strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\">Improves concentration and memory, and reduces fatigue; increases clarity, enhances memory and concentration, reduces dizziness</span></p>\r\n\r\n<div>\r\n<p><span style=\"font-size:16px\"><strong>Tuber Fleece Flower </strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\">Enhances blood circulation, supports in the treatment of depression, sleep deprivation; reduces backache and knee fatigue, treats erectile dysfunction</span></p>\r\n\r\n<div>\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>Vigna catjang </strong></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\">Helps to treat amblyopia, dizziness, tinnitus, excessive urination at night</span></p>\r\n\r\n<div>\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><strong>Gotu Kola </strong></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\">- &nbsp; <strong> Increased awareness: </strong> &nbsp; Gotu kola activates MAPKs (Mitogen-activated protein kinases), thus stimulates the release of BDNF neurons (brain-derived neurotrophic factor).</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\">- &nbsp; <strong> Nerve protection: </strong> &nbsp;Active components of Gotu Kola inhibit a few enzymes that can cause damages to neurons such as in Alzheimer&#39;s disease (prevention of the formation of amyloid plaques), Parkinson&#39;s disease (damaged nerve cells allow the reduction of dopamine); reduces oxidative stress.</span></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n', '1686073237_content_blogs.jpg', 'Naturem, lanui, slim', '2023-06-07 00:40:37', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country`
--

CREATE TABLE `tbl_country` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `ship` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_coupon`
--

CREATE TABLE `tbl_coupon` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `coupon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_start` datetime NOT NULL,
  `date_end` datetime NOT NULL,
  `type` int(11) NOT NULL COMMENT '1 All shop; 2 Product',
  `type_discount` int(11) NOT NULL COMMENT '0 percent; 1 monney',
  `discount` double NOT NULL,
  `max_use` int(11) NOT NULL,
  `min_order` double NOT NULL,
  `create_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_coupon_product`
--

CREATE TABLE `tbl_coupon_product` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` text COLLATE utf8_unicode_ci NOT NULL,
  `lastname` text COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `phone` text COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `newsletter` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `create_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_discount`
--

CREATE TABLE `tbl_discount` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `date_start` datetime NOT NULL,
  `date_end` datetime NOT NULL,
  `create_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_discount_product`
--

CREATE TABLE `tbl_discount_product` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `discount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_image_product`
--

CREATE TABLE `tbl_image_product` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_image_product`
--

INSERT INTO `tbl_image_product` (`id`, `code`, `image`, `title`) VALUES
(6, 'NTR-9932', '1685897616_image_product_1.jpg', 'LANUI JOINTS TABLET'),
(7, 'NTR-45759', '1685897733_image_product_1.jpg', 'LANUI STAMINA TABLET'),
(8, 'NTR-99771', '1685907531_image_product_1.png', 'Lanui Stress Free Tea'),
(9, 'NTR-11192', '1685907905_image_product_1.png', 'Lanui Slim Tea'),
(10, 'NTR-46032', '1685908027_image_product_1.jpg', 'Naturem Rejuve'),
(11, 'NTR-83755', '1685908162_image_product_1.jpg', 'Naturem Cough Free'),
(12, 'NTR-62079', '1685908320_image_product_1.jpg', 'Naturem Flu Relief'),
(13, 'NTR-20918', '1685908824_image_product_1.png', 'Soybalac Probiotic'),
(14, 'NTR-20918', '1685908824_image_product_2.jpg', 'Soybalac Probiotic'),
(15, 'NTR-20918', '1685908824_image_product_3.png', 'Soybalac Probiotic'),
(16, 'NTR-95794', '1685908935_image_product_1.jpg', 'Lanui Cleanse Tablet'),
(17, 'NTR-95794', '1685908935_image_product_2.png', 'Lanui Cleanse Tablet'),
(18, 'NTR-7987', '1685909406_image_product_1.jpg', 'Lanui Cardio Tablet'),
(19, 'NTR-7987', '1685909406_image_product_2.png', 'Lanui Cardio Tablet'),
(20, 'NTR-52220', '1685909549_image_product_1.jpg', 'Lanui Goutte Tablet'),
(21, 'NTR-52220', '1685909549_image_product_2.png', 'Lanui Goutte Tablet'),
(22, 'NTR-9932', '1685909582_image_product_1.jpg', 'Lanui Joints Tablet');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `type_menu` int(11) NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `order_menu` int(11) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_menu`
--

INSERT INTO `tbl_menu` (`id`, `code`, `parent_id`, `title`, `type_menu`, `link`, `position`, `order_menu`, `active`) VALUES
(1, 1685639871, 0, 'Home', 6, '/', 1, 1, 1),
(3, 1685641627, 0, 'Products', 4, '1,2,3', 1, 3, 1),
(4, 1685641771, 0, 'About us', 1, '1', 1, 2, 1),
(5, 1685641903, 0, 'Blogs', 2, '', 1, 4, 1),
(6, 1685641914, 0, 'Contact Us', 5, '', 1, 5, 1),
(7, 1685762482, 0, 'About Us', 6, '/', 2, 1, 1),
(8, 1685762504, 0, 'Delivery Information', 6, '/', 2, 2, 1),
(9, 1685762522, 0, 'Privacy Policy', 6, '/', 2, 3, 1),
(10, 1685762549, 0, 'Brands', 6, '/', 2, 4, 1),
(11, 1685762578, 0, 'My Account', 6, '/', 2, 5, 1),
(12, 1685762590, 0, 'Order History', 6, '/', 2, 6, 1),
(13, 1685762627, 0, 'Gallery', 6, '/', 2, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_orders`
--

CREATE TABLE `tbl_orders` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cus_id` int(11) NOT NULL,
  `create_at` datetime NOT NULL,
  `coupon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `vat` double NOT NULL,
  `tax` double NOT NULL,
  `payment_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_orders_detail`
--

CREATE TABLE `tbl_orders_detail` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `price_old` double NOT NULL,
  `price_new` double NOT NULL,
  `combo_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cate_id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `alias` text COLLATE utf8_unicode_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `tags` text COLLATE utf8_unicode_ci NOT NULL,
  `longs` float NOT NULL,
  `wide` float NOT NULL,
  `hight` float NOT NULL,
  `weight` float NOT NULL,
  `link_amazone` text COLLATE utf8_unicode_ci NOT NULL,
  `active` int(11) NOT NULL,
  `create_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `code`, `cate_id`, `title`, `alias`, `stock`, `description`, `price`, `tags`, `longs`, `wide`, `hight`, `weight`, `link_amazone`, `active`, `create_at`) VALUES
(1, 'NTR-9932', 2, 'Lanui Joints Tablet', '', 123, '<div>SVK Herbal Corporation&rsquo;s LANUI&reg; products are formulated based on the theoretical basis of traditional Vietnamese medicine (TVM) and actual treatment results from doctors and specialists with many years of experiences in examining and healing patients.</div>\r\n<div>The bones are made up of two main classes of substances: mineral and organic matters consisting of bone adhesives. Ninety percent of bone adhesives are collagen fibers that are responsible for binding and retaining calcium. When bone is unable to absorb calcium, hardness and elasticity of the bone will decline. Bones will be porous and fragile which cause pain and susceptible to breakage. These are the main causes of osteoporosis, osteoarthritis, etc.&nbsp; Collagen in Lanui&reg; JOINTS nourishes bones and joints, and other ingredients help reduce inflammation and pain which will rejuvenate joint health and mobility.</div>\r\n<div><strong>HOW IT HELPS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></div>\r\n<div>\r\n<ul>\r\n<li>Supports in the recovery, regeneration of cartilage tissues; increases joint fluid and joint lubrication; relieves pain</li>\r\n<li>Supports in the treatment of osteoarthritis, joint degeneration</li>\r\n<li>Generates bone adhesives and cartilages, increases bone strength and elasticity</li>\r\n<li>Increases mineral bone density</li>\r\n<li>Antioxidant / free radical; slows the effects of aging</li>\r\n</ul>\r\n</div>\r\n<div><strong>INGREDIENTS</strong></div>\r\n<div><strong>Hydrolyzed Collagen</strong></div>\r\n<div>Resists joint degeneration and inflammation, reduces pain; creates new bone cells, increases bone density; increases bone adhesives to strengthen bones; rejuvenates health</div>\r\n<div><strong>Clinacanthus Nutans</strong></div>\r\n<div>Reduces inflammation, reduces pain, shortens bone healing period after fracture</div>\r\n<div><strong>Eclipta Alba &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></div>\r\n<div>Supports bone growth, relieves pain, detoxifies the liver, resists bacteria and virus infections; inhibits unwanted cell proliferation, prevents cancer</div>\r\n<div><strong>INTENDED USERS </strong></div>\r\n<div>\r\n<ul>\r\n<li>People with osteoporosis, osteoarthritis (shoulder, wrist, hip joints, knee)</li>\r\n<li>People with bone fracture, fibrositis, spondylolysis; numbness in the limbs; backache; neck, shoulder and arm pain syndrome.</li>\r\n</ul>\r\n</div>\r\n<div><strong>DOSE</strong></div>\r\n<div>1 or 2 times daily, 2 tablets each time. Take 30 minutes after a meal.</div>\r\n<div><strong>STORAGE</strong></div>\r\n<div>Keep in dry, cool place; avoid direct sunlight and store at room temperature&nbsp;</div>\r\n<div><strong>Nature Herbs for a Healthy Vietnam</strong></div>\r\n<div><span style=\"color: rgb(224, 62, 45);\"><em>Note: This is not a drug. It cannot be used as a substitute for prescribed medicine.</em></span></div>', 0, 'Lanui, Joints, tablet', 10, 10, 10, 50, '', 1, '2023-06-05 03:13:02'),
(2, 'NTR-45759', 1, 'Lanui Stamina Tablet', '', 123, '<div>SVK Herbal Corporation&rsquo;s LANUI&reg; products are formulated based on the theoretical basis of traditional Vietnamese medicine (TVM) and actual treatment results from doctors and specialists with many years of experience in examining and healing patients.</div>\r\n<div>Testosterone directly affects all parts of a male body, from basic to sexual health. Combining it with ginseng and other herbs, LANUI&reg; STAMINA helps create a vigorous body full of vitality, increases libido and boosts sex drive.</div>\r\n<div><strong>HOW IT HELPS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></div>\r\n<div>\r\n<ul>\r\n<li>Boosts the immune system, enhances activities of the body</li>\r\n<li>Supports in the treatment of erectile dysfunction and lack of sex drive</li>\r\n<li>Protects liver cells; lowers liver enzymes due to smoking and large alcohol intake; detoxifies liver and kidney.</li>\r\n</ul>\r\n</div>\r\n<div><strong>INGREDIENTS</strong></div>\r\n<div><strong>Ginseng</strong></div>\r\n<div>- Enhances the recovery of body functions &ndash; a comprehensive health rejuvenation supplement</div>\r\n<div>- Slows the effect of aging, promotes the metabolism of cells</div>\r\n<div>- Helps maintain good health, reduces fatigue</div>\r\n<div><strong>Tribulus Terrestris</strong></div>\r\n<div>- Improves male hormones</div>\r\n<div>- Supports in the treatment of erectile dysfunction</div>\r\n<div>- Increases libido, boosts the immune system, rejuvenates health and work endurance, reduces fatigue</div>\r\n<div><strong>Magnolia Vine</strong></div>\r\n<div>- Acts as a tranquilizer, enhances kidney and bladder functions, stimulates respiration, regulates blood circulation</div>\r\n<div>- Protects liver cells, lowers liver enzymes</div>\r\n<div><strong>INTENDED USERS </strong></div>\r\n<div>\r\n<ul>\r\n<li>Men with erectile dysfunction</li>\r\n<li>Elderly people with poor mental and physical health</li>\r\n<li>People in convalescence</li>\r\n<li>People with high liver enzymes due to smoking &amp; heavy intake of alcohol</li>\r\n</ul>\r\n</div>\r\n<div><strong>DOSE</strong></div>\r\n<div>1 or 2 times daily, 2 tablets each time. Take 30 minutes after a meal.</div>\r\n<div><strong>STORAGE</strong></div>\r\n<div>Keep in dry, cool place; avoid direct sunlight and store at room temperature&nbsp;</div>\r\n<div><strong>Nature Herbs for a Healthy Vietnam</strong></div>\r\n<div>Note: This is not a drug. It cannot be used as a substitute for prescribed medicine.</div>', 0, 'Lanui, Joints, tablet', 10, 10, 10, 50, '', 1, '2023-06-05 02:09:43'),
(3, 'NTR-99771', 1, 'Lanui Stress Free Tea', '', 123, '<p>\"Stress-Free&rdquo; brings balance and excitement to your life. Depression, fear or anger instigates the increase of hormones such as insulin or adrenalin in our systems which are the origin of diabetes and heart related diseases.</p>\r\n<p><strong>HOW IT HELPS</strong></p>\r\n<p>LANUI&reg; Stress-Free Tea blends various medicinal herbs to:</p>\r\n<ul>\r\n<li>Help relax, reduce stress, tiredness and fatigue</li>\r\n<li>Get better quality sleep</li>\r\n<li>Fight against emotion disorders (fear, anger, depression)</li>\r\n<li>Help with treatment of high blood pressure and irregular heartbeats</li>\r\n</ul>\r\n<p><strong>INTENDED USERS</strong></p>\r\n<p>People suffering from work stress, insomnia, irregular heartbeats, headache, fatigue, and dizziness.</p>\r\n<p>Caution: Pregnant women need to consult the doctor before use.</p>\r\n<p><strong>INGREDIENTS</strong></p>\r\n<p><strong>Lotus Plumule</strong></p>\r\n<p>Helps control heartbeat irregularities, enhances blood flow to the heart and in coronary arteries</p>\r\n<p><strong>Plassifora</strong></p>\r\n<p>Plassifora is the source of medications used as the sedative, detoxicant and uretic. It helps relieve anxiety, lower body temperature.</p>\r\n<p><strong>Fructus Auranti Immature</strong></p>\r\n<p>Neohesperidin, the key ingredient, enhances blood flow to the brain and heart, stabilizes the cardiac nerve system.</p>\r\n<p><strong>WARNING</strong></p>\r\n<ul>\r\n<li>These statements have not been evaluated by the Food and Drug Administration.</li>\r\n<li>This product is not intended to diagnose, treat, care or prevent any disease.</li>\r\n</ul>', 0, 'Lanui, Joints, tablet', 10, 10, 10, 50, '', 1, '2023-06-05 02:38:51'),
(4, 'NTR-11192', 1, 'Lanui Slim Tea', '', 123, '<p>A slim body leads to an active and confident lifestyle. To ensure safe weight loss, LANUI<a name=\"17dp8vu\"></a><a name=\"3rdcrjn\"></a>&reg; SLIM Tea is made from red reishi mushrooms blended with other natural Vietnamese medicinal herbs.</p>\r\n<h3><strong>HOW IT HELPS</strong></h3>\r\n<ul>\r\n<li>LANUI&reg; Slim Tea helps relieve the accumulation of fat through several mechanisms:</li>\r\n<li>Stimulates the burning of excess fat, thus enabling weight reduction and firming muscles.</li>\r\n<li>Improves the transformation of lipids, reduces blood lipid disorders</li>\r\n<li>Improves digestion, helps&nbsp;purge&nbsp;toxins from the body</li>\r\n<li>Strengthens the body metabolism</li>\r\n<li>Helps prevent obesity-related diseases such as cardiovascular diseases, diabetes</li>\r\n</ul>\r\n<h3><strong>INGREDIENTS</strong></h3>\r\n<p><strong>Red Reishi Mushrooms</strong></p>\r\n<p>One of the precious herbs containing many active ingredients, reishi or lingzhi helps boost metabolism and accelerates the burning of excess fat, thus restraining the formation of fatty cells. Furthermore, reishi contains&nbsp;components that reduce blood glucose and prevent diabetes.</p>\r\n<p><strong>Lotus Leaf</strong></p>\r\n<p>Lotus leaves contain flavonoid, which helps fight cholesterol disorders. In turn, it will help to reduce weight and the formation&nbsp;of lipid andfirm up muscles.</p>\r\n<p><strong>Hawthorn (Crataegus Cuneata)</strong></p>\r\n<p>Crataegus Cuneata contains several organic acids such as citric acid, tartronic acid and vitamin C which boost the activities of the digestive system. It helps strengthening the body&rsquo;s excreting functions, eliminating fat and toxins from the body, thus enabling efficient weight loss.</p>', 0, 'Lanui, Slim, Tea', 10, 10, 10, 50, '', 1, '2023-06-05 02:45:05'),
(5, 'NTR-46032', 3, 'Naturem Rejuve', '', 123, '<p><strong>HOW IT HELPS</strong></p>\r\n<ul>\r\n<li>Helps stimulate blood cells, enhance liver and kidney functions</li>\r\n<li>Get darken hair</li>\r\n<li>Balance sexual hormones; enhance appetite and good sleep, strengthen ligaments, tendons and bone.</li>\r\n</ul>\r\n<p><strong>INTENDED USERS&nbsp;</strong></p>\r\n<p>People in convalescence; people with chronic fatigue syndrome and sleeping disorder People with erectile dysfunctions; irregular menstruations; early grey hair; frequent urination at night; back and knee fatigues.</p>\r\n<p><strong>SUGGESTED DOSE:</strong></p>\r\n<p>3 - 4 times daily x1 or 2 lozenges. Not to exceed 12 units per day. Not recommended for children under 6 years old.&nbsp;</p>\r\n<p><strong>STORAGE:</strong></p>\r\n<p>Keep in dry, cool place; avoid direct sunlight and store at room temperature.</p>\r\n<h3><strong>WARNING&nbsp;</strong></h3>\r\n<ul>\r\n<li>These statements have not been evaluated by the Food and Drug Administration.</li>\r\n<li>This product is not intended to diagnose, treat, care or prevent any disease</li>\r\n</ul>', 0, 'Lanui, Slim, Tea', 10, 10, 10, 50, '', 1, '2023-06-05 02:47:07'),
(6, 'NTR-83755', 3, 'Naturem Cough Free', '', 123, '<p><strong>HOW IT HELPS</strong></p>\r\n<ul>\r\n<li>&nbsp;Helps enhance lung functions, suppress cough, reduce phlegm</li>\r\n<li>&nbsp;Relieve sore throat, hoarse voice.</li>\r\n</ul>\r\n<p><strong>INTENDED USERS</strong></p>\r\n<p>People with pharyngitis, bronchitis, cough, cough with phlegm, sore throat, hoarse voice.</p>\r\n<p><strong>WARNING:</strong></p>\r\n<ul>\r\n<li>These statements have not been evaluated by the Food and Drug Administration.</li>\r\n<li>This product is not intended to diagnose, treat, care or prevent any disease.</li>\r\n</ul>\r\n<p><strong>SUGGESTED DOSE:</strong></p>\r\n<p>3 - 4 times daily xlor 2 lozenges. Not to exceed 12 units per day. Not recommended for children under 6 years old.&nbsp;</p>\r\n<p><strong>STORAGE:</strong></p>\r\n<p>Keep in a dry, cool place, avoid direct sunlight and store at room temperature.</p>', 0, 'Naturem, Cough, Fress', 10, 10, 10, 50, '', 1, '2023-06-05 02:49:22'),
(7, 'NTR-62079', 3, 'Naturem Flu Relief', '', 123, '<p><strong>HOW IT HELPS</strong></p>\r\n<ul>\r\n<li>Helps detoxify body from viruses</li>\r\n<li>Suppress fever and phlegm;</li>\r\n<li>Cleanse the lungs</li>\r\n<li>Lower body temperature.</li>\r\n</ul>\r\n<p><strong>INTENDED USERS</strong>:</p>\r\n<p>People with flu symptoms, high body temperature, cough with phlegm.&nbsp;</p>\r\n<p><strong>SUGGESTED DOSE:</strong></p>\r\n<p>3 - 4 times daily x1 or 2 lozenges. Not to exceed 12 units per day. Not recommended for children under 6 years old.&nbsp;</p>\r\n<p><strong>STORAGE:</strong></p>\r\n<p>Keep in dry, cool place; avoid direct sunlight and store at room temperature.</p>\r\n<p><strong>WARNING:</strong></p>\r\n<ul>\r\n<li>These statements have not been evaluated by the Food and Drug Administration.</li>\r\n<li>This product is not intended to diagnose, treat, care or prevent any disease.</li>\r\n</ul>', 0, 'Naturem, Cough, Fress', 10, 10, 10, 50, '', 1, '2023-06-05 02:52:00'),
(8, 'NTR-20918', 3, 'Soybalac Probiotic', '', 123, '<p>Typically, nutritional supplements do not have medicinal properties.&nbsp; In contrast, compounds and compositions that possess medicinal properties typically do not provide nutritional support. A composition is needed which supports the nutritional needs of a patient in an easy to digest and absorb manner as well as provides treatment or prophylaxis of disease. SOYBALAC is sold a food product.</p>\r\n<p>The four main uses of SOYBALAC are to:</p>\r\n<p>(1) boost the immune system,</p>\r\n<p>(2) enhance the digestive system,</p>\r\n<p>(3) cleanse toxins</p>\r\n<p>And (4) enhance blood circulation.&nbsp;</p>\r\n<p>This Product like:</p>\r\n<p>A nutritional drink to boost the immune system (a needed product for the virus pandemic era), also for patients in convalescence.</p>\r\n<p>A nutritional drink to enhance digestion and cleanse toxins from the body: a healthy breakfast drink for young children and adults, a drink for people requiring detoxification such as heavy alcohol users.</p>\r\n<p>Helps in the prevention of gout, Helicobacter pylori, metabolism disorders, etc.&nbsp;</p>\r\n<p>An effective treatment when combined SOYBALAC with other supplements such as gout relief, joints pain relief, etc.</p>\r\n<p>Helps to inhibit the creation of blood clots (anti-coagulation).</p>', 0, 'Naturem, Cough, Fress', 10, 10, 10, 50, '', 1, '2023-06-05 03:00:24'),
(9, 'NTR-95794', 3, 'Lanui Cleanse Tablet', '', 123, '<p>Pollutions and insanitary foods that we consume daily lead to the accumulation of toxins. Over time, it will weaken our body and immune system. This is the root of multiple cardiovascular, liver and lung diseases, especially cancer.</p>\r\n<p>To assist in the removal of toxins from your body, &ldquo;cleanse your body every day&rdquo; with Lanui<sup>&reg;</sup> CLEANSE Tablet &ndash; a 100% extract from natural herbs.</p>\r\n<p><strong>INTENDED USERS</strong></p>\r\n<ul>\r\n<li>People suffering from early stage of fever due to bacteria, viruses; people with skin inflammation, allergy, rash</li>\r\n<li>People with urinary tract inflammation, bile duct inflammation (dark colored urine, bloating stomach, yellow skin)</li>\r\n<li>People with weak liver and kidneys due to high intake of alcohol</li>\r\n</ul>\r\n<p><strong>HOW IT HELPS</strong></p>\r\n<ul>\r\n<li>Increases production of urine (diuresis), enhances kidney functions</li>\r\n<li>Increases production of bile; stimulates digestion; helps digest rich in protein and greasy foods</li>\r\n<li>&nbsp;A laxative: regulates peristaltic motion; enhances the secretion of mucus in colon; inhibits constipation.</li>\r\n<li>Reduces fever, resists inflammation and bacteria; inhibits growth of bacteria &amp; virus in the respiratory track</li>\r\n<li>An effective treatment against: inflammation of the urinary tract and bile duct; fever caused by virus (initial stage of Dengue fever).</li>\r\n</ul>\r\n<p><strong>INGREDIENTS</strong></p>\r\n<p><strong>Japanese Honeysuckle</strong></p>\r\n<p>Increases the production of gastric juice and bile; helps cleanse the body; resists bacteria; reduces fever</p>\r\n<p><strong>False Daisy</strong><br>Detoxifies the liver, protects liver cells, resists bacteria, removes toxins, stops bleeding, increases urine production</p>\r\n<p><strong>Lactuca Indica</strong><br>A laxative; enhances production of urine, removes toxins, improves the effectiveness of kidney filtering functions</p>\r\n<p><strong>Ginger</strong></p>\r\n<p>Stimulates digestion, inhibits allergy and inflammation; helps detoxification</p>\r\n<p><strong>Woolly Grass Rhizome</strong></p>\r\n<p>Reduces fever, increases urine production, stops bleeding</p>\r\n<p><strong>Gotu Kola</strong></p>\r\n<p>Increases production of bile; curbs allergy &amp; inflammation; antibiotics</p>\r\n<p><strong>DOSE</strong></p>\r\n<p>Twice daily &times; 2 tablets. Take 30 minutes after a meal.</p>\r\n<p><strong>STORAGE</strong></p>\r\n<p>Keep in dry, cool place; avoid direct sunlight and store at room temperature&nbsp;</p>\r\n<p><strong>WARNING</strong></p>\r\n<ul>\r\n<li>These statements have not been evaluated by the Food and Drug Administration.</li>\r\n<li>This product is not intended to diagnose, treat, care or prevent any disease.</li>\r\n</ul>', 0, 'Naturem, Cough, Fress', 10, 10, 10, 50, '', 1, '2023-06-05 03:02:15'),
(10, 'NTR-7987', 1, 'Lanui Cardio Tablet', '', 123, '<p>Heart attack, arteriosclerosis, high blood pressure, and stroke are common heart diseases and can be life-threatening. Their early symptoms, however, are not easily diagnosed and frequently ignored. Taking Lanui<sup>&reg;</sup> CARDIO Tablet daily helps prevent heart diseases and protect your heart. Healthy heart for a healthy life!</p>\r\n<p><strong>HOW IT HELPS</strong></p>\r\n<ul>\r\n<li>Stabilizes blood lipids and blood pressure, inhibits free radicals, reduces the formation of blood clots</li>\r\n<li>Prevents arteriosclerosis, heart attacks, strokes, clogged arteries in limbs</li>\r\n<li>Improves the aging symptoms of neurological diseases, helps the fight against dementia and Alzheimer&rsquo;s disease</li>\r\n</ul>\r\n<p><strong>INTENDED USERS</strong></p>\r\n<ul>\r\n<li>People with high or unstable blood pressure</li>\r\n<li>People suffering from coronary artery disease, cerebral circulation disorders (balance disorder, lack of blood flow to the brain)</li>\r\n<li>People with numbness in limbs due to poor blood circulation</li>\r\n</ul>\r\n<p><strong>INGREDIENTS</strong></p>\r\n<p><strong>Hawthorn </strong></p>\r\n<p>Contains several organic acids such as citric acid and vitamin C which increase digestive enzymes in the stomach and improve the activities of the digestive system</p>\r\n<p><strong>Cloud Ear Fungus</strong></p>\r\n<p>Inhibits oxidation and the formation of blood clots, stabilizes blood sugar, improves cardiovascular functions and metabolism, protects the liver, improves blood cerebral circulation</p>\r\n<p><strong>Turmeric</strong></p>\r\n<p>Contains curcumin (60%) that are effective against oxidation, inflammation, and bacterial infections; reduces cholesterol and total lipid; heals ulcers; increases blood circulation</p>\r\n<p><strong>Red Reishi Mushroom</strong></p>\r\n<p>Stabilizes blood pressure, either high or low; lowers cholesterol, stabilizes other lipids in the blood</p>\r\n<p><strong>Japanese Pagoda Tree</strong></p>\r\n<p>Stabilizes blood pressure, anti-bacterial and anti-inflammatory; prevents smooth muscle spasms in the intestinal tract.</p>\r\n<p><strong>DOSE</strong></p>\r\n<p>Twice daily &times; 2 tablets. Take 30 minutes after a meal.</p>\r\n<p><strong>STORAGE</strong></p>\r\n<p>Keep in dry, cool place; avoid direct sunlight and store at room temperature&nbsp;</p>\r\n<p><strong>WARNING</strong></p>\r\n<ul>\r\n<li>These statements have not been evaluated by the Food and Drug Administration.</li>\r\n<li>This product is not intended to diagnose, treat, care or prevent any disease.</li>\r\n</ul>', 0, '', 10, 10, 10, 50, '', 1, '2023-06-05 03:10:06'),
(11, 'NTR-52220', 1, 'Lanui Goutte Tablet', '', 123, '<p>Gout is caused by the deposit of uric acid in the joints. It is a disorder in the metabolism of protein that results in the increase of uric acid. Although western medicine can provide immediate pain relief, such frequent uses can lead to adverse side effects to the stomach, liver, kidney, etc. Lanui<sup>&reg;</sup> GOUTTE Tablet contains ingredients from many natural herbs that stabilize uric acid, resist inflammation, relieves pain and long-term uses will not cause harmful side effects.</p>\r\n<p><strong>HOW IT HELPS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></p>\r\n<ul>\r\n<li>Supports in the treatment of high acid uric levels in your blood</li>\r\n<li>Reduces pain, inhibits arthritis by gout</li>\r\n<li>Enhances urine production, prevents kidney stone.</li>\r\n</ul>\r\n<p><strong>INGREDIENTS</strong></p>\r\n<p><strong>Poria</strong></p>\r\n<p>Resists<strong> </strong>inflammatory, enhances urine production, stabilizes the metabolism of fat and protein</p>\r\n<p><strong>Chamber Bitter</strong></p>\r\n<p>Enhances detoxification functions of the liver and kidneys, enhances the secretion of gall and urine production; inhibits the formation of calcium oxalate crystals.</p>\r\n<p><strong>Cat\'s Whiskers</strong></p>\r\n<p>Enhances urine production, excretes uric acid, protects the liver</p>\r\n<p><strong>Fructus Amoni (Sha Ren)</strong></p>\r\n<p>Enhances the metabolism of fat and protein, improves digestive functions</p>\r\n<p><strong>Lemongrass </strong></p>\r\n<ul>\r\n<li>Regulates enzymes to digest fat, animal protein</li>\r\n<li>Combats indigestion, reduces stomach bloating, abdominal pains; lowers uric acid</li>\r\n</ul>\r\n<p><strong>INTENDED USERS</strong></p>\r\n<ul>\r\n<li>People with gout</li>\r\n<li>People with high levels of uric acid, digestive disorders</li>\r\n</ul>\r\n<p><strong>DOSE</strong></p>\r\n<p>Twice daily x 2 tablets. Take 30 minutes after a meal.&nbsp;</p>\r\n<p><strong>STORAGE</strong></p>\r\n<p>Keep in dry, cool place; avoid direct sunlight and store at room temperature&nbsp;</p>\r\n<p><strong>WARNING</strong></p>\r\n<ul>\r\n<li>These statements have not been evaluated by the Food and Drug Administration.</li>\r\n<li>This product is not intended to diagnose, treat, care or prevent any disease.</li>\r\n</ul>', 0, '', 10, 10, 10, 50, '', 1, '2023-06-05 03:12:29');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_region`
--

CREATE TABLE `tbl_region` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_review_pro`
--

CREATE TABLE `tbl_review_pro` (
  `id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `cus_id` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `rating` int(11) NOT NULL,
  `create_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting_global`
--

CREATE TABLE `tbl_setting_global` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `logo` text COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `phone` text COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `tags` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_setting_global`
--

INSERT INTO `tbl_setting_global` (`id`, `title`, `description`, `logo`, `email`, `phone`, `address`, `tags`) VALUES
(1, 'Naturem', 'SVK Herbal Corporation’s products are formulated based on the theoretical basis of traditional Vietnamese medicine (TVM) and actual treatment results from doctors and specialists with many years of experience in examining and healing patients. \r\n\r\nNaturem as a trademark of SVK Herbal Corporation. \r\n\r\n', '1626107719_logo.png', 'naturem@gmail.com', '+1 (725) 599-3998', '1810 E Sahara Avenue, Ste 215 Las Vegas, NV 89104, USA', 'probiotics,slim,joints ,bone,healthy,wellness ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting_payment`
--

CREATE TABLE `tbl_setting_payment` (
  `id` int(11) NOT NULL,
  `ship` double NOT NULL,
  `vat` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_setting_payment`
--

INSERT INTO `tbl_setting_payment` (`id`, `ship`, `vat`) VALUES
(1, 50, 10);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` text COLLATE utf8_unicode_ci NOT NULL,
  `roles` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `username`, `password`, `fullname`, `roles`, `active`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator', '', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_address`
--
ALTER TABLE `tbl_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_block_1`
--
ALTER TABLE `tbl_block_1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_block_3`
--
ALTER TABLE `tbl_block_3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_block_4`
--
ALTER TABLE `tbl_block_4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_combo`
--
ALTER TABLE `tbl_combo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_combo_product`
--
ALTER TABLE `tbl_combo_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_content`
--
ALTER TABLE `tbl_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_country`
--
ALTER TABLE `tbl_country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_coupon`
--
ALTER TABLE `tbl_coupon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_coupon_product`
--
ALTER TABLE `tbl_coupon_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_discount`
--
ALTER TABLE `tbl_discount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_discount_product`
--
ALTER TABLE `tbl_discount_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_image_product`
--
ALTER TABLE `tbl_image_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_orders`
--
ALTER TABLE `tbl_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_orders_detail`
--
ALTER TABLE `tbl_orders_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_region`
--
ALTER TABLE `tbl_region`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_review_pro`
--
ALTER TABLE `tbl_review_pro`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_setting_global`
--
ALTER TABLE `tbl_setting_global`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_setting_payment`
--
ALTER TABLE `tbl_setting_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_address`
--
ALTER TABLE `tbl_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_block_1`
--
ALTER TABLE `tbl_block_1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_block_3`
--
ALTER TABLE `tbl_block_3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_block_4`
--
ALTER TABLE `tbl_block_4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_combo`
--
ALTER TABLE `tbl_combo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_combo_product`
--
ALTER TABLE `tbl_combo_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_content`
--
ALTER TABLE `tbl_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_country`
--
ALTER TABLE `tbl_country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_coupon`
--
ALTER TABLE `tbl_coupon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_coupon_product`
--
ALTER TABLE `tbl_coupon_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_discount`
--
ALTER TABLE `tbl_discount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_discount_product`
--
ALTER TABLE `tbl_discount_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_image_product`
--
ALTER TABLE `tbl_image_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_orders`
--
ALTER TABLE `tbl_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_orders_detail`
--
ALTER TABLE `tbl_orders_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_region`
--
ALTER TABLE `tbl_region`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_review_pro`
--
ALTER TABLE `tbl_review_pro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_setting_global`
--
ALTER TABLE `tbl_setting_global`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_setting_payment`
--
ALTER TABLE `tbl_setting_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
