-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 21, 2023 at 12:42 PM
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

--
-- Dumping data for table `tbl_address`
--

INSERT INTO `tbl_address` (`id`, `code`, `firstname`, `lastname`, `company`, `address_1`, `address_2`, `city`, `postcode`, `country_id`, `region_state_id`, `default_add`) VALUES
(1, '1625496902', 'Web', 'Master', '', 'No 1, Dao Xuyen, Da Ton, Gia Lam', '', 'Ha Noi', 100000, 2, 2, 1),
(2, '1625496902', 'Nguyen', 'Thi Minh Hue', 'IVYVET', 'No 41, Dao Xuyen, Da Ton, Gia Lam', '', 'Ha Noi', 100000, 2, 2, 0),
(3, '1625496902', 'Andrew', 'First', '', 'asdfsdf', '', 'asdfsdaf', 123123, 2, 3, 0),
(4, '1626457272', 'Nguyen', 'Thi Minh Hue', 'Ivyvet', 'No 41, Dao Xuyen, Da Ton, Gia Lam', '', 'Ha Noi', 100000, 2, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_block`
--

CREATE TABLE `tbl_block` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order_block` int(11) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_block`
--

INSERT INTO `tbl_block` (`id`, `title`, `file`, `order_block`, `active`) VALUES
(1, 'Images slide', 'slide', 1, 1),
(2, 'Delivery info', 'delivery', 2, 0),
(3, 'Trending product', 'trending', 3, 1),
(4, 'Banner Adv', 'banner', 4, 1),
(5, 'Category list', 'category', 5, 0),
(6, 'On sale', 'sale', 6, 1),
(7, 'Customer reviews', 'review', 7, 0),
(8, 'Special product', 'special', 8, 1),
(9, 'Partner', 'partner', 9, 0),
(10, 'Blog', 'blog', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_block_banner`
--

CREATE TABLE `tbl_block_banner` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `link` text COLLATE utf8_unicode_ci NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_block_banner`
--

INSERT INTO `tbl_block_banner` (`id`, `title`, `image`, `link`, `active`) VALUES
(1, 'Sale', '1637313587_banner.jpg', '#', 0),
(2, '', '1640052135_banner.jpg', 'http://naturem.us/LANUI-SLIM-TEA_products_detail_15', 0),
(3, '', '1640052357_banner.jpg', '', 0),
(4, '', '1640053942_banner.jpg', '', 0),
(5, '', '1640060138_banner.jpg', 'http://naturem.us/about-us_blog_detail_3', 0),
(6, '', '1640326001_banner.jpg', '', 0),
(7, '', '1640326244_banner.jpg', '', 0),
(8, '', '1641178743_banner.jpg', 'http://naturem.us/about-us_blog_detail_3', 0),
(9, '', '1642815979_banner.jpg', 'http://naturem.us/about-us_blog_detail_3', 0),
(10, '', '1642818948_banner.jpg', 'http://naturem.us/about-us_blog_detail_3', 0),
(11, '', '1642819532_banner.jpg', 'http://naturem.us/about-us_blog_detail_3', 0),
(12, '.', '1643722476_banner.png', 'http://naturem.us/about-us_blog_detail_3', 0),
(13, '.', '1643723351_banner.png', '', 0),
(14, '.', '1643723476_banner.png', 'http://naturem.us/LANUI-SLIM-TEA_products_detail_15', 0),
(15, '.', '1644209472_banner.jpg', 'http://naturem.us/about-us_blog_detail_3', 0),
(16, '.', '1644214862_banner.jpg', '', 0),
(17, '.', '1644215434_banner.jpg', 'http://naturem.us/about-us_blog_detail_3', 0),
(18, '.', '1644242819_banner.jpg', 'http://naturem.us/LANUI-SLIM-TEA_products_detail_15', 0),
(19, '.', '1644242908_banner.jpg', 'http://naturem.us/about-us_blog_detail_3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_block_blog`
--

CREATE TABLE `tbl_block_blog` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `number_show` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_block_blog`
--

INSERT INTO `tbl_block_blog` (`id`, `title`, `type`, `link`, `number_show`) VALUES
(1, 'Latest blog', 0, '2,4,3', 20);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_block_delivery`
--

CREATE TABLE `tbl_block_delivery` (
  `id` int(11) NOT NULL,
  `title_1` text COLLATE utf8_unicode_ci NOT NULL,
  `title_2` text COLLATE utf8_unicode_ci NOT NULL,
  `icon` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_block_delivery`
--

INSERT INTO `tbl_block_delivery` (`id`, `title_1`, `title_2`, `icon`) VALUES
(1, 'Free Support', 'Online Support ', 'fa-headphones'),
(2, 'Money Back Guarantee', '100% Secure Payment', 'fa-cc-paypal'),
(3, 'Free World Shipping', '(Contact for more details)', 'fa-ship'),
(4, 'Special Gift Cards', '(Contact for more details)', 'fa-gift');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_block_footer`
--

CREATE TABLE `tbl_block_footer` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `menu` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_block_footer`
--

INSERT INTO `tbl_block_footer` (`id`, `title`, `menu`) VALUES
(1, 'Information', '5,6,7,8,9');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_block_partner`
--

CREATE TABLE `tbl_block_partner` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_block_partner`
--

INSERT INTO `tbl_block_partner` (`id`, `title`, `image`, `active`) VALUES
(1, 'Natural', '1624820504_partner.png', 0),
(2, 'Mockup', '1624820681_partner.png', 0),
(3, 'Urban', '1624820980_partner.png', 0),
(4, 'Summer', '1624821006_partner.png', 0),
(5, 'Pharmacity', '1624821078_partner.png', 1),
(6, 'An Khang', '1624821105_partner.jpg', 1),
(7, 'Guardian', '1639997612_partner.png', 1),
(8, 'Long Châu', '1639997649_partner.jpg', 1),
(9, 'Medicare', '1639997759_partner.png', 1),
(10, 'US Mart', '1639998183_partner.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_block_product`
--

CREATE TABLE `tbl_block_product` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `number_show` int(11) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_block_product`
--

INSERT INTO `tbl_block_product` (`id`, `title`, `link`, `number_show`, `type`) VALUES
(1, 'Trending product', '2,4,3', 20, 0),
(2, 'Category', '2,4,3', 0, 0),
(3, 'Special product', '12,13,14,18,16,6', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_block_sale`
--

CREATE TABLE `tbl_block_sale` (
  `id` int(11) NOT NULL,
  `col` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `number_show` int(11) NOT NULL,
  `banner` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_block_sale`
--

INSERT INTO `tbl_block_sale` (`id`, `col`, `title`, `type`, `link`, `number_show`, `banner`) VALUES
(1, 1, '', 1, '18', 0, ''),
(2, 2, 'On sale', 1, '14,12,13,16', 0, ''),
(3, 3, '', 0, '', 0, '1644242982_banner_sale.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_block_slide`
--

CREATE TABLE `tbl_block_slide` (
  `id` int(11) NOT NULL,
  `title_1` text COLLATE utf8_unicode_ci NOT NULL,
  `title_2` text COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_block_slide`
--

INSERT INTO `tbl_block_slide` (`id`, `title_1`, `title_2`, `image`, `active`) VALUES
(52, '.', '', '1644891700_slide.png', 1),
(53, '.', '', '1644892027_slide.png', 1),
(54, '.', '', '1644891425_slide.png', 1),
(55, '.', '', '1644891188_slide.png', 1),
(56, '.', '', '1644891203_slide.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `image`, `description`, `active`) VALUES
(2, 'Living In The Moment', '1639974926_living-in-the-moment.jpg', 'the truth is there is a lot of scientific evidence showing the physical and mental benefits if you can live in a moment.', 1),
(3, 'Reducing The Risk Of Disease', '1639973857_reducing-the-risk-of-disease.jpg', 'Some of your current habits may be contributing to a higher risk of chronic disease. Depending on your current lifestyle, you may need to modify just one or two habits, or you may need to make big life changes. The important thing is to make changes that are realistic and will last.\r\n(from https://www.inovanewsroom.org/)', 1),
(4, 'Promoting Optimal Health', '1639973963_promoting-optimal-health.jpg', 'Promoting optimal health in any or all of these areas may mean changing your lifestyle. Yet, choosing and sticking with healthy behaviors is tricky. With a spinal cord injury, even more roadblocks may impede the journey.\r\n(from https://craighospital.org/)', 1);

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

--
-- Dumping data for table `tbl_combo_product`
--

INSERT INTO `tbl_combo_product` (`id`, `code`, `product_id`) VALUES
(3, '1625023407', 10),
(4, '1625023407', 9),
(8, '1641193337', 18),
(9, '1641193337', 16),
(10, '1641193337', 11);

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
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `create_at` datetime NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_content`
--

INSERT INTO `tbl_content` (`id`, `code`, `cate_id`, `title`, `description`, `content`, `image`, `create_at`, `active`) VALUES
(2, 1624352275, 4, 'Take care of your bone', 'This quotation is from \"UK clinical guideline for the prevention and treatment of osteoporosis\" - 2017 ', '<h3><span style=\"font-size:16px\"><a href=\"http://naturem.us/LANUI-JOINTS-TABLET_products_detail_18\"><span style=\"color:#3498db\">Osteoporosis</span></a> is described by the World Health Organisation (WHO) as a &lsquo;progressive systemic skeletal disease characterized by low bone mass and microarchitectural deterioration of bone tissue, with a consequent increase in bone fragility and susceptibility to fracture&rsquo;, measured as BMD.&nbsp;More than one third of adult women and one in five men will sustain one or more fragility fractures in their lifetime.&nbsp;Common sites of fragility fracture include the vertebral bodies, distal radius, proximal humerus, pelvis and proximal femur. Most major fractures are associated with reduced relative survival, with an impact persisting more than 5&nbsp;years after the index event.&nbsp;</span></h3>\r\n\r\n<p><img src=\"http://portal.naturem.us/public/filemedia/images/images/figure-gfeca3185e_640.jpg\" style=\"height:640px; width:427px\" /></p>\r\n\r\n<p><span style=\"font-size:16px\">Rheumatoid arthritis increases fracture risk independently of BMD and the use of glucocorticoids. Recent information suggests that diabetes&nbsp;may also exert BMD-independent effects on fracture risk.&nbsp;</span></p>\r\n\r\n<h2><a href=\"http://naturem.us/LANUI-JOINTS-TABLET_products_detail_18\"><span style=\"font-size:24px\"><strong><span style=\"color:#3498db\">Lifestyle measures in the management of osteoporosis</span></strong></span></a></h2>\r\n\r\n<p><span style=\"font-size:16px\">Lifestyle measures to improve bone health include increasing the level of physical activity, stopping smoking, reducing alcohol intake to &le;2&nbsp;units/day, reducing the risk of falls and ensuring adequate dietary calcium intake and vitamin D status.</span></p>\r\n\r\n<p><a href=\"http://naturem.us/LANUI-STRESS-FREE-TEA_products_detail_16\"><img src=\"http://portal.naturem.us/public/filemedia/images/images/beach-g13ea65a6e_640(1).jpg\" style=\"height:426px; width:640px\" /></a></p>\r\n\r\n<p><span style=\"font-size:16px\">Supplementation with calcium and vitamin D is often advocated as an adjunct to other treatments for osteoporosis, as the clinical trials of these agents were performed in patients who were calcium and vitamin D replete. In postmenopausal women and older men receiving bone-protective therapy for osteoporosis it is recommended that calcium supplementation should also be given if the dietary intake is below 700&nbsp;mg/day, and vitamin D supplementation with 800&nbsp;IU/day of cholecalciferol considered in those at risk of/with evidence for vitamin D insufficiency.&nbsp;</span></p>\r\n\r\n<p><img src=\"http://portal.naturem.us/public/filemedia/images/images/silhouette-g43c1688fb_640(2).png\" style=\"height:602px; width:640px\" /></p>\r\n\r\n<p><span style=\"font-size:16px\">Muscle strengthening and balance training exercise interventions may reduce falls by improving confidence and coordination as well as maintaining bone mass.The majority of fractures are preceded by a fall. Multi-component group and home-based exercise programmes, Tai Chi and home safety interventions have been shown to reduce the risk of falls in people living in the community.&nbsp;</span></p>\r\n\r\n<p><a href=\"http://naturem.us/Naturem-Rejuve_products_detail_14\"><img src=\"http://portal.naturem.us/public/filemedia/images/images/climbing-g0953694a2_640(2).jpg\" style=\"height:351px; width:640px\" /></a></p>\r\n\r\n<p><span style=\"font-size:16px\">Sufficient protein intake is necessary to maintain the function of the musculoskeletal system and also decreases the complications that occur</span></p>\r\n\r\n<p><a href=\"http://naturem.us/Naturem-Flu-Relief_products_detail_12\"><img src=\"http://portal.naturem.us/public/filemedia/images/images/pizza-gac4b922d3_640(1).jpg\" style=\"height:426px; width:640px\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '1642821854_the-standard-lorem-ipsum-passage--used-since-the-1500s.jpg', '2022-01-27 13:00:21', 0),
(3, 1624387972, 2, 'Our story', 'Vietnam is endowed with rich vegetation that accommodates a wide range of precious medicinal herbs.', '<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Its traditional medicine boasts thousands of proven effective remedies which</span></span>&nbsp;<span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">hundreds of physicians, pharmacists, botanists and herbal masters who are very knowledgeable traditional medicine practitioners. Meanwhile, given the overloading of hospitals, high costs of pharmaceutical drugs, devastating side effects of anti-biotics and a polluted environment, natural and safe products yet affordable or badly in need.&nbsp;</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">This inspires us to start implementing the ideas of &ldquo;Natural Herbs for a Healthy Life&rdquo; and &ldquo;Preserve Precious&nbsp;Medicinal Herbs&rdquo; by establishing&nbsp;SVK Herbal Corporation and introducing the Naturem&trade; &amp; LANUI&trade;&nbsp;product&nbsp;lines. We need to go back to nature and produce affordable medicinal herbal supplements to aid in the prevention and treatment of diseases.</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">These goals can be achieved through the propagation of precious, rare and natural herbs and to grow them using natural and cooperative methods, and through the development of relationships with researchers and traditional medicine practitioners.</span></span></p>\r\n\r\n<p><a href=\"http://naturem.us/LANUI-STRESS-FREE-TEA_products_detail_16\"><img src=\"http://portal.naturem.us/public/filemedia/images/images/tree-g23622284f_1280.jpg\" style=\"height:533px; width:800px\" /></a></p>\r\n\r\n<p><span style=\"color:#16a085\"><span style=\"font-size:20px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><em><strong>&ldquo;NATURAL HERBS FOR A HEALTHY LIFE&rdquo;</strong></em></span></span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong><strong>&nbsp;</strong></strong></span></span></p>\r\n\r\n<h2><span style=\"color:#16a085\"><span style=\"font-size:20px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>Our Missions&nbsp;and Vision</strong></span></span></span></h2>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Our missions are to:</span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Discover, research and develop products to improve and extend people&rsquo;s lives</span></span></li>\r\n	<li><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Preserve and develop medicinal herbal products to improve health &nbsp;</span></span></li>\r\n	<li><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Protect precious all herbal species.</span></span></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Our vision&nbsp;is to bring natural, safe and affordable products into many homes around the world.</span></span></p>\r\n\r\n<p><br />\r\n<span style=\"color:#16a085\"><span style=\"font-size:20px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>Our Strategies</strong></span></span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Our strategies are:</span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Natural herbs for a healthy life&nbsp;</span></span></li>\r\n	<li><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Build model farms and transfer seedlings and sustainable farming technologies to farmers</span></span></li>\r\n	<li><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Collaborate closely with partners who share a common vision with complementary strengths</span></span></li>\r\n</ul>\r\n\r\n<p><br />\r\n<span style=\"color:#16a085\"><span style=\"font-size:20px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>Our Core Values</strong></span></span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Commitment to excellent products and services</span></span></li>\r\n	<li><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">To reach our business goals, we understand that we must operate with high integrity, transparency and environmental sustainability.</span></span></li>\r\n</ul>\r\n\r\n<p>&nbsp;<img src=\"http://portal.naturem.us/public/filemedia/images/images/c%E1%BA%ADu%20b%C3%A9%20ch%C4%83n%20tr%C3%A2u.jpg\" style=\"height:534px; width:800px\" /></p>\r\n', '1640057765_1914-translation-by-h.-rackham.jpg', '2022-02-15 08:40:39', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country`
--

CREATE TABLE `tbl_country` (
  `id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `ship` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_country`
--

INSERT INTO `tbl_country` (`id`, `title`, `ship`) VALUES
(1, 'Vietnam', 1),
(2, 'Unitled state', 1),
(3, 'Mexico', 0),
(4, 'Canada', 1),
(5, 'Laos', 0),
(6, 'Campuchia', 0);

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

--
-- Dumping data for table `tbl_coupon_product`
--

INSERT INTO `tbl_coupon_product` (`id`, `code`, `product_id`) VALUES
(12, '1624898294', 6),
(13, '1624898294', 7),
(14, '1624898294', 8),
(15, '1624898294', 9),
(16, '1624898294', 10),
(42, '1624910580', 6),
(43, '1624910580', 7),
(44, '1624910580', 8),
(45, '1624910580', 9),
(46, '1624910580', 10),
(47, '1625161487', 6),
(48, '1625161487', 7),
(49, '1625161487', 8),
(50, '1625161487', 9),
(51, '1625161487', 10),
(52, '1641193753', 18),
(53, '1641193753', 16),
(54, '1641193753', 11);

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

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `code`, `firstname`, `lastname`, `email`, `phone`, `password`, `newsletter`, `active`, `create_at`) VALUES
(1, '1625496902', 'Dương', 'Hữu Phả', 'webmasterzero19@gmail.com', '0934447501', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, 1, '2021-07-05 21:55:02'),
(7, '1626457272', 'Nguyen', 'Thi Minh Hue', 'minhhue16111991@gmail.com', '0349697096', '7c4a8d09ca3762af61e59520943dc26494f8941b', 0, 1, '2021-07-17 00:41:12'),
(8, '1632374700', 'Huỳnh', 'Hưng', 'calvin.hunghuynh@gmail.com', '0974791575', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 1, 0, '2021-09-23 12:25:00'),
(9, '1635688597', 'Davidson http://drom.ru', 'Hayden', 'cruspayracu1983862702@mail.ru', '9995510893', '05ad4aa4617df28d0d80f83435bfbb6aaa9d04e3', 0, 0, '2021-10-31 20:56:37'),
(10, '1643266386', 'Hoàng', 'Phú', 'hoangphu.hoang38@gmail.com', '0907890264', '9674f25b1087da2f9535980e0edbe05295341b41', 1, 1, '2022-01-27 13:53:06'),
(11, '1683883233', 'thien', 'thao', 'thienthaoinfo@gmail.com', '0799357899', '7c4a8d09ca3762af61e59520943dc26494f8941b', 0, 1, '2023-05-12 16:20:33');

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

--
-- Dumping data for table `tbl_discount_product`
--

INSERT INTO `tbl_discount_product` (`id`, `code`, `product_id`, `discount`) VALUES
(18, '1624505640', 6, 10000),
(19, '1624505640', 7, 10000),
(20, '1624505640', 8, 10000),
(21, '1624505640', 9, 10000);

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
(222, 'LANUI - 140672', '1632371286_lanui-stress-free-tea-1.png', 'LANUI STRESS FREE TEA'),
(223, 'LANUI - 140672', '1639803738_lanui-stress-free-tea-2.jpg', 'LANUI STRESS FREE TEA'),
(224, 'LANUI - 140672', '1639803945_lanui-stress-free-tea-3.jpg', 'LANUI STRESS FREE TEA'),
(225, 'LANUI - 140672', '1639710640_lanui-stress-free-tea-4.jpg', 'LANUI STRESS FREE TEA'),
(226, 'LANUI - 498072', '1632371091_-lanui--slim-tea-1.png', ' LANUI  SLIM TEA'),
(227, 'LANUI - 498072', '1639734986_-lanui--slim-tea-2.jpg', ' LANUI  SLIM TEA'),
(228, 'LANUI - 498072', '1639972273_-lanui--slim-tea-3.jpg', ' LANUI  SLIM TEA'),
(229, 'LANUI - 498072', '1639708459_-lanui--slim-tea-4.jpg', ' LANUI  SLIM TEA'),
(238, 'LANUI - 332031', '1632107491_naturem-flu-relief-1.jpg', 'Naturem Flu Relief'),
(239, 'LANUI - 332031', '1639728601_naturem-flu-relief-2.jpg', 'Naturem Flu Relief'),
(240, 'LANUI - 332031', '1639972352_naturem-flu-relief-3.jpg', 'Naturem Flu Relief'),
(260, 'LANUI - 224941', '1632374164_lanui-goutte-(vien-uong)-1.png', 'LANUI GOUTTE TABLET'),
(261, 'LANUI - 224941', '1639972791_lanui-goutte-tablet-2.jpg', 'LANUI GOUTTE TABLET'),
(262, 'LANUI - 224941', '1639972730_lanui-goutte-tablet-3.jpg', 'LANUI GOUTTE TABLET'),
(286, 'LANUI - 532545', '1632374030_lanui-memory-(vien-uong)-1.png', 'LANUI CLEANSE TABLET'),
(287, 'LANUI - 532545', '1639798328_lanui-cleanse-tablet-2.jpg', 'LANUI CLEANSE TABLET'),
(288, 'LANUI - 532545', '1639983492_lanui-cleanse-tablet-3.jpg', 'LANUI CLEANSE TABLET'),
(289, 'LANUI - 532545', '1639972489_lanui-cleanse-tablet-4.jpg', 'LANUI CLEANSE TABLET'),
(290, 'LANUI - 156295', '1632374067_lanui-cardio-(vien-uong)-1.png', 'LANUI CARDIO TABLET'),
(291, 'LANUI - 156295', '1639972759_lanui-cardio-tablet-2.jpg', 'LANUI CARDIO TABLET'),
(292, 'LANUI - 156295', '1639983525_lanui-cardio-tablet-3.jpg', 'LANUI CARDIO TABLET'),
(293, 'LANUI - 156295', '1639972534_lanui-cardio-tablet-4.jpg', 'LANUI CARDIO TABLET'),
(299, 'LANUI - 650384', '1639984769_lanui-slim-tablet-1.jpg', 'LANUI SLIM TABLET'),
(300, 'LANUI - 650384', '1639972850_lanui-slim-tablet-2.jpg', 'LANUI SLIM TABLET'),
(306, 'LANUI - 314833', '1639984853_-lanui--stamina-tablet-1.jpg', ' LANUI  STAMINA TABLET'),
(307, 'LANUI - 314833', '1639985063_-lanui--stamina-tablet-2.jpg', ' LANUI  STAMINA TABLET'),
(308, 'LANUI - 314833', '1639982654_-lanui®-_-stamina-tablets-3.jpg', ' LANUI  STAMINA TABLET'),
(319, 'LANUI - 508172', '1640681269_naturem-rejuve-1.jpg', 'Naturem Rejuve'),
(320, 'LANUI - 508172', '1639734199_naturem-rejuve-2.jpg', 'Naturem Rejuve'),
(321, 'LANUI - 508172', '1639972302_naturem-rejuve-3.jpg', 'Naturem Rejuve'),
(322, 'LANUI - 508172', '1639715660_naturem-rejuve-4.jpg', 'Naturem Rejuve'),
(323, 'LANUI - 634271', '1640681362_naturem-cough-free-1.jpg', 'Naturem Cough Free'),
(324, 'LANUI - 634271', '1639728800_naturem-cough-free-2.jpg', 'Naturem Cough Free'),
(325, 'LANUI - 634271', '1639972325_naturem-cough-free-3.jpg', 'Naturem Cough Free'),
(326, 'LANUI - 634271', '1639724935_naturem-cough-free-4.jpg', 'Naturem Cough Free'),
(331, 'LANUI - 406487', '1639984746_lanui-joints-tablet-1.jpg', 'LANUI JOINTS TABLET'),
(332, 'LANUI - 406487', '1642820769_lanui-joints-tablet-2.jpg', 'LANUI JOINTS TABLET'),
(333, 'LANUI - 404764', '1644808191_soybalac-probiotic-1.png', 'Soybalac Probiotic'),
(334, 'LANUI - 404764', '1639973343_soybalac-probiotic-2.jpg', 'Soybalac Probiotic'),
(335, 'LANUI - 404764', '1639973398_soybalac-probiotic-3.jpg', 'Soybalac Probiotic'),
(336, 'LANUI - 404764', '1640093233_soybalac-probiotic-4.jpg', 'Soybalac Probiotic'),
(337, 'LANUI - 497145', '1644809980_lanui-joints-tea-1.PNG', 'LANUI JOINTS TEA'),
(338, 'LANUI - 497145', '1639803475_lanui-joints-tea-2.jpg', 'LANUI JOINTS TEA'),
(339, 'LANUI - 497145', '1639803476_lanui-joints-tea-3.jpg', 'LANUI JOINTS TEA'),
(340, 'LANUI - 497145', '1639972418_lanui-joints-tea-4.jpg', 'LANUI JOINTS TEA');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `id` int(11) NOT NULL,
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

INSERT INTO `tbl_menu` (`id`, `parent_id`, `title`, `type_menu`, `link`, `position`, `order_menu`, `active`) VALUES
(1, 0, 'Home', 6, '/', 1, 1, 1),
(2, 0, 'About us', 1, '3', 1, 2, 1),
(3, 0, 'Shop', 4, '2,3,4', 1, 3, 1),
(4, 3, 'Naturem', 6, '/', 1, 1, 1),
(5, 0, 'About us', 6, '#', 2, 1, 1),
(6, 0, 'Delivery Information', 6, '#', 2, 2, 1),
(7, 0, 'Privacy Policy', 6, '#', 2, 3, 1),
(8, 0, 'Terms & Conditions', 6, '#', 2, 4, 1),
(9, 0, 'Brands', 6, '#', 2, 5, 1),
(10, 0, 'Contact', 5, '', 1, 4, 1);

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

--
-- Dumping data for table `tbl_orders`
--

INSERT INTO `tbl_orders` (`id`, `code`, `cus_id`, `create_at`, `coupon`, `vat`, `tax`, `payment_id`, `address_id`, `comment`, `status`) VALUES
(2, '1625762959', 1, '2021-07-09 00:02:36', '', 10, 50000, 1, 1, 'order demo', 3),
(3, '1626458779', 7, '2021-07-17 01:06:34', '', 10, 50000, 1, 4, '', 3),
(4, '1683883791', 11, '2023-05-12 16:30:20', '', 10, 50, 1, 0, '', 3);

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

--
-- Dumping data for table `tbl_orders_detail`
--

INSERT INTO `tbl_orders_detail` (`id`, `code`, `product_id`, `price_old`, `price_new`, `combo_code`, `qty`) VALUES
(1, '1625762959', 10, 200000, 200000, '1625023407', 1),
(2, '1625762959', 6, 150000, 140000, '', 1),
(3, '1626458779', 10, 200000, 200000, '1625023407', 3),
(4, '1683883791', 14, 0, 0, '', 1);

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
  `link_amazone` text COLLATE utf8_unicode_ci NOT NULL,
  `active` int(11) NOT NULL,
  `create_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `code`, `cate_id`, `title`, `alias`, `stock`, `description`, `price`, `link_amazone`, `active`, `create_at`) VALUES
(6, 'LANUI - 650384', 2, 'LANUI SLIM TABLET', 'LANUI-SLIM-TABLET', 100, '<p style=\"text-align:center\"><span style=\"color:#16a085\"><span style=\"font-size:26px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>LANUI<sup>&reg;</sup> SLIM</strong></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#16a085\"><span style=\"font-size:26px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>&quot;Stay slim, Stay active&quot;</strong></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\">SVK Herbal Corporation&rsquo;s LANUI<sup>&reg;</sup> products are formulated based on the theoretical basis of traditional Vietnamese medicine (TVM) and actual treatment results from doctors and specialists with many years of experiences in examining and healing patients. </span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><span style=\"color:black\">A slim body leads to an active and confident lifestyle. However, a weight loss plan should be implemented in a very safe manner. Lanui<sup>&reg;</sup> SLIM Tablet is made from red ginseng combined with some Vietnamese herbs, not only helps to lose weight but also protects health, eliminates toxins and prevents obesity related diseases.</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><img src=\"http://portal.naturem.us/public/filemedia/images/images/b%C3%A0o%20ch%E1%BA%BF(1).jpg\" style=\"height:323px; width:500px\" /></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#16a085\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><strong>HOW IT HELPS</strong></span></span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><span style=\"color:black\">Stimulates the burning of excess fat, thus enabling weight reduction and firming muscles</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><span style=\"color:black\">Improves the transformation of lipids, reduces blood lipid disorders</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><span style=\"color:black\">Improves digestion, helps purging toxins from body</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><span style=\"color:black\">Enhances the body metabolism</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><span style=\"color:black\">Prevents obesity related diseases such as cardiovascular diseases, diabetes,</span> osteoarthritis</span></span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><img src=\"http://portal.naturem.us/public/filemedia/images/images/c%C3%B4%20g%C3%A1i%20yoga.jpg\" style=\"height:750px; width:500px\" /></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#16a085\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><strong>INTENDED USERS</strong></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><span style=\"background-color:white\"><span style=\"color:#212121\">Suitable for all ages, though children need to take lower dose </span></span></span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><span style=\"background-color:white\"><span style=\"color:#212121\">People with overweight problems</span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><span style=\"background-color:white\"><span style=\"color:#212121\">People with high blood pressure, fatty liver, high cholesterol</span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><span style=\"background-color:white\"><span style=\"color:#212121\">People with diabetes, atherosclerosis</span></span></span></span></li>\r\n</ul>\r\n\r\n<pre style=\"text-align:justify\">\r\n<span style=\"color:#c0392b\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><span style=\"background-color:white\">Warning: Do not use during pregnancy</span></span></span></strong></span></pre>\r\n\r\n<p><img src=\"http://portal.naturem.us/public/filemedia/images/images/c%C3%B4%20g%C3%A1i%20bi%E1%BB%83n%20vui.jpg\" style=\"height:656px; width:500px\" /></p>\r\n\r\n<pre style=\"text-align:justify\">\r\n<span style=\"color:#16a085\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><span style=\"background-color:white\"><strong>INGREDIENTS</strong></span></span></span></span></pre>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#16a085\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><strong>Red Reishi Mushrooms</strong></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><span style=\"color:black\">Reduces blood sugar and prevents diabetes; boost metabolism and accelerates the burning of excess fat, thus restraining the formation of fatty cells</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#16a085\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><strong>Hawthorn </strong></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><span style=\"color:black\">Contains several organic acids such as citric acid and vitamin C which boost the digestive system functions; increases the amount of enzyme in the stomach; enhances excretion functions, eliminates fat and toxins, thus helps efficient weight loss</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#16a085\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><strong>Lotus Leaf</strong></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><span style=\"color:black\">Lotus leaf contains flavonoid which helps curb cholesterol disorders and improve the metabolism of fat &ndash; an effective way to lose weight </span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><img src=\"http://portal.naturem.us/public/filemedia/images/images/l%C3%A1%20nghi%E1%BB%81n%20thu%E1%BB%91c(1).jpg\" style=\"height:333px; width:500px\" /></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#16a085\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><strong>DOSE</strong></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\">Twice daily &times; 2 tablets. Take 30 minutes after a meal. </span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#16a085\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><strong>STORAGE</strong></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\">Keep in dry, cool place; avoid direct sunlight and store at room temperature&nbsp; </span></span></p>\r\n\r\n<p><span style=\"color:#16a085\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><strong>WARNING</strong></span></span></span></p>\r\n\r\n<ul>\r\n	<li>\r\n	<h3><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\">These statements have not been evaluated by the Food and Drug Administration.</span></span></h3>\r\n	</li>\r\n	<li>\r\n	<h3><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\">This product is not intended to diagnose, treat, care or prevent any disease.</span></span></h3>\r\n	</li>\r\n</ul>\r\n', 0, '', 1, '2021-12-20 14:19:29'),
(7, 'LANUI - 224941', 2, 'LANUI GOUTTE TABLET', 'LANUI-GOUTTE-TABLET', 100, '<p style=\"text-align:center\">&nbsp;<span style=\"color:#16a085\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:12pt\"><strong><span style=\"font-size:18.0pt\">LANUI<sup>&reg;</sup> GOUTTE TABLET</span></strong></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#16a085\"><span style=\"font-size:20px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>&quot;No goutte to live fully&quot;</strong></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\">SVK Herbal Corporation&rsquo;s LANUI<sup>&reg;</sup> Goutte products are formulated based on the theoretical basis of traditional Vietnamese medicine (TVM) and actual treatment results from doctors and specialists with many years of experience in examining and healing patients. </span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><span style=\"background-color:white\"><span style=\"color:black\">Gout is caused by the deposit of uric acid in the joints. It is a disorder in the metabolism of protein that results in the increase of uric acid. Although western medicine can provide immediate pain relief, such frequent uses can lead to adverse side effects to the stomach, liver, kidney, etc. Lanui<sup>&reg;</sup> GOUTTE Tablet contains ingredients from many natural herbs that stabilize uric acid, resist inflammation, relieves pain and long-term uses will not cause harmful side effects.</span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><img src=\"http://portal.naturem.us/public/filemedia/images/images/k%E1%BA%BDm%20gai%20gout.jpg\" style=\"height:750px; width:500px\" /></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><span style=\"background-color:white\"><strong><span style=\"color:#16a085\">HOW IT HELPS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\"color:black\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></strong></span></span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><span style=\"background-color:white\"><span style=\"color:#212121\">Supports in the treatment of high acid uric levels in your blood</span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><span style=\"background-color:white\"><span style=\"color:#212121\">Reduces pain, inhibits arthritis by gout</span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><span style=\"background-color:white\"><span style=\"color:#212121\">Enhances urine production, prevents</span> <span style=\"color:#212121\">kidney stone.</span></span></span></span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><img src=\"http://portal.naturem.us/public/filemedia/images/images/tay%20qu%C4%83ng%20%C4%91%C3%A1.jpg\" style=\"height:625px; width:500px\" /></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#16a085\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><span style=\"background-color:white\"><strong>INGREDIENTS</strong></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#16a085\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><span style=\"background-color:white\"><strong>Poria</strong></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><span style=\"background-color:white\"><span style=\"color:black\">Resists<strong> </strong></span><span style=\"color:#212121\">inflammatory, enhances urine production, stabilizes the metabolism of fat and protein</span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#16a085\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><span style=\"background-color:white\"><strong>Chamber Bitter</strong></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><span style=\"background-color:white\"><span style=\"color:black\">Enhances detoxification functions of the liver and kidneys, enhances the secretion of gall and urine production; inhibits the formation of calcium oxalate crystals.</span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#16a085\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><span style=\"background-color:white\"><strong><span style=\"background-color:white\">Cat&#39;s Whiskers</span></strong></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><span style=\"background-color:white\"><span style=\"color:black\">Enhances urine production, excretes uric acid, protects the liver</span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#16a085\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><span style=\"background-color:white\"><strong>Fructus Amoni (Sha Ren)</strong></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><span style=\"background-color:white\"><span style=\"color:black\">Enhances the metabolism of </span><span style=\"color:#212121\">fat and protein</span><span style=\"color:black\">, improves digestive functions</span></span></span></span></p>\r\n\r\n<pre style=\"text-align:justify\">\r\n<span style=\"color:#16a085\"><span style=\"font-size:10pt\"><span style=\"background-color:white\"><strong><span style=\"font-size:14.0pt\"><span style=\"font-family:Roboto\">Lemongrass </span></span></strong></span></span></span></pre>\r\n\r\n<ul>\r\n	<li>\r\n	<pre style=\"text-align:justify\">\r\n<span style=\"font-size:10pt\"><span style=\"background-color:white\"><span style=\"font-size:14.0pt\"><span style=\"font-family:Roboto\"><span style=\"color:#212121\">Regulates enzymes to digest fat, animal protein</span></span></span></span></span></pre>\r\n	</li>\r\n	<li>\r\n	<pre style=\"text-align:justify\">\r\n<span style=\"font-size:10pt\"><span style=\"background-color:white\"><span style=\"font-size:14.0pt\"><span style=\"font-family:Roboto\"><span style=\"color:#212121\">Combats indigestion, reduces stomach bloating, abdominal pains; lowers uric acid</span></span></span></span></span></pre>\r\n	</li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><img src=\"http://portal.naturem.us/public/filemedia/images/images/b%C3%A0o%20ch%E1%BA%BF.jpg\" style=\"height:323px; width:500px\" /></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#16a085\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><span style=\"background-color:white\"><strong>INTENDED USERS</strong></span></span></span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><span style=\"background-color:white\"><span style=\"color:black\">People with gout</span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><span style=\"background-color:white\"><span style=\"color:black\">People with high levels of </span><span style=\"color:#212121\">uric acid,</span> <span style=\"color:#212121\">digestive disorders</span></span></span></span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#16a085\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><strong>DOSE</strong></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\">Twice daily x 2 tablets. Take 30 minutes after a meal.&nbsp;</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#16a085\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><strong>STORAGE</strong></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\">Keep in dry, cool place; avoid direct sunlight and store at room temperature&nbsp; </span></span></p>\r\n\r\n<p><span style=\"color:#16a085\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><strong>WARNING</strong></span></span></span></p>\r\n\r\n<ul>\r\n	<li>\r\n	<h3><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\">These statements have not been evaluated by the Food and Drug Administration.</span></span></h3>\r\n	</li>\r\n	<li>\r\n	<h3><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\">This product is not intended to diagnose, treat, care or prevent any disease.</span></span></h3>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;&nbsp;</p>\r\n', 0, '', 1, '2021-12-20 10:59:51'),
(8, 'LANUI - 156295', 2, 'LANUI CARDIO TABLET', 'LANUI-CARDIO-TABLET', 100, '<p style=\"text-align:center\"><span style=\"font-size:26px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"color:#16a085\"><strong>LANUI<sup>&reg;</sup> &ndash; CARDIO </strong></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:26px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"color:#16a085\"><strong>&quot;Healthy Heart for a Healthy Life&quot;</strong></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">SVK Herbal Corporation&rsquo;s LANUI<sup>&reg;</sup> products are formulated based on the theoretical basis of traditional Vietnamese medicine (TVM) and actual treatment results from doctors and specialists with many years of experiences in examining and healing patients. </span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"color:black\">Heart attack, arteriosclerosis, high blood pressure, and stroke are common heart diseases and can be life-threatening. Their early symptoms, however, are not easily diagnosed and frequently ignored. Taking Lanui<sup>&reg;</sup> CARDIO Tablet daily helps prevent heart diseases and protect your heart. Healthy heart for a healthy life!</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><img src=\"http://portal.naturem.us/public/filemedia/images/images/b%C3%A0o%20ch%E1%BA%BF(2).jpg\" style=\"height:323px; width:500px\" /></span></span></p>\r\n\r\n<p><span style=\"color:#16a085\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>HOW IT HELPS</strong></span></span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"color:black\">Stabilizes blood lipids and blood pressure, inhibits free radicals, reduces the formation of blood clots</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"color:black\">Prevents arteriosclerosis, heart attacks, strokes, clogged arteries in limbs</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"color:black\">Improves the aging symptoms of neurological diseases, helps the fight against dementia and Alzheimer&rsquo;s disease</span></span></span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><img src=\"http://portal.naturem.us/public/filemedia/images/images/vk%20ck%20h%E1%BA%A1nh%20ph%C3%BAc%20old.jpg\" style=\"height:674px; width:500px\" /></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#16a085\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>INTENDED USERS</strong></span></span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"color:black\">People with high or unstable blood pressure</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"color:black\">People suffering from coronary artery disease, cerebral circulation disorders (balance disorder, lack of blood flow to the brain)</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"color:black\">People with numbness in limbs due to poor blood circulation</span></span></span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><img src=\"http://portal.naturem.us/public/filemedia/images/images/%C3%B4ng%20v%C3%A0%20ch%C3%A1u%20nh%E1%BA%AFt.jpg\" style=\"height:328px; width:500px\" /></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#16a085\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>INGREDIENTS</strong></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#16a085\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>Hawthorn </strong></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"color:black\">Contains several organic acids such as citric acid and vitamin C which increase digestive enzymes in the stomach and improve the activities of the digestive system</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#16a085\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>Cloud Ear Fungus</strong></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"color:black\">Inhibits oxidation and the formation of blood clots, stabilizes blood sugar, improves cardiovascular functions and metabolism, protects the liver, improves blood cerebral circulation</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#16a085\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>Turmeric</strong></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"color:black\">Contains curcumin (60%) that are effective against oxidation, inflammation, and bacterial infections; reduces cholesterol and total lipid; heals ulcers; increases blood circulation</span></span></span></p>\r\n\r\n<p><span style=\"color:#16a085\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>Red Reishi Mushroom</strong></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"color:black\">Stabilizes blood pressure, either high or low; lowers </span>cholesterol, stabilizes other lipids in the blood</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#16a085\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>Japanese Pagoda Tree</strong></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"color:black\">Stabilizes blood pressure</span>, anti-bacterial and anti-inflammatory; prevents smooth muscle spasms in the intestinal <span style=\"color:black\">tract.</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><img src=\"http://portal.naturem.us/public/filemedia/images/images/l%C3%A1%20nghi%E1%BB%81n%20thu%E1%BB%91c(2).jpg\" style=\"height:333px; width:500px\" /></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#16a085\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>DOSE</strong></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Twice daily &times; 2 tablets. Take 30 minutes after a meal. </span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#16a085\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>STORAGE</strong></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Keep in dry, cool place; avoid direct sunlight and store at room temperature&nbsp; </span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p><span style=\"color:#16a085\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>WARNING</strong></span></span></span></p>\r\n\r\n<ul>\r\n	<li>\r\n	<h3><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">These statements have not been evaluated by the Food and Drug Administration.</span></span></h3>\r\n	</li>\r\n	<li>\r\n	<h3><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">This product is not intended to diagnose, treat, care or prevent any disease.</span></span></h3>\r\n	</li>\r\n</ul>\r\n', 0, '', 1, '2021-12-20 13:58:45'),
(9, 'LANUI - 532545', 3, 'LANUI CLEANSE TABLET', 'LANUI-CLEANSE-TABLET', 100, '<p style=\"text-align:center\"><span style=\"color:#16a085\"><span style=\"font-size:26px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:white\"><strong>LANUI<sup>&reg;</sup> CLEANSE </strong></span></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#16a085\"><span style=\"font-size:26px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:white\"><strong>&ldquo;Cleanse your Body Everyday&rdquo;</strong></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\">SVK Herbal Corporation&rsquo;s LANUI<sup>&reg;</sup> products are formulated based on the theoretical basis of traditional Vietnamese medicine (TVM) and actual treatment results from doctors and specialists with many years of experiences in examining and healing patients.&nbsp; </span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><span style=\"background-color:white\"><span style=\"color:black\">Pollutions and insanitary foods that we consume daily lead to the accumulation of toxins. Over time, it will weaken our body and immune system. This is the root of multiple cardiovascular, liver and lung diseases, especially cancer.</span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><span style=\"background-color:white\"><span style=\"color:black\">To assist in the removal of toxins from your body, &ldquo;cleanse your body every day&rdquo; with Lanui<sup>&reg;</sup> CLEANSE Tablet &ndash; a 100% extract from natural herbs.</span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><img src=\"http://portal.naturem.us/public/filemedia/images/images/l%C3%A1%20trong%20veo.jpg\" style=\"height:750px; width:500px\" /></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#16a085\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><span style=\"background-color:white\"><strong>INTENDED USERS</strong></span></span></span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><span style=\"background-color:white\"><span style=\"color:black\">People suffering from early stage of fever due to bacteria, viruses; people with skin inflammation, allergy, rash</span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><span style=\"background-color:white\"><span style=\"color:black\">People with urinary tract inflammation, bile duct inflammation (dark colored urine, bloating stomach, yellow skin)</span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><span style=\"background-color:white\"><span style=\"color:black\">People with weak liver and kidneys due to high intake of alcohol</span></span></span></span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#16a085\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><span style=\"background-color:white\"><strong>HOW IT HELPS</strong></span></span></span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><span style=\"background-color:white\"><span style=\"color:black\">Increases production of urine (diuresis), enhances kidney functions</span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><span style=\"background-color:white\"><span style=\"color:black\">Increases production of bile; stimulates digestion; helps digest rich in protein and greasy foods</span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><span style=\"background-color:white\"><span style=\"color:black\">&nbsp;A laxative: regulates peristaltic motion; enhances the secretion of mucus in colon; inhibits constipation.</span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><span style=\"background-color:white\"><span style=\"color:black\">Reduces fever, resists inflammation and bacteria; inhibits growth of bacteria &amp; virus in the respiratory track</span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><span style=\"background-color:white\"><span style=\"color:black\">An effective treatment against: inflammation of the urinary tract and bile duct; fever caused by virus (initial stage of Dengue fever).</span></span></span></span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><img src=\"http://portal.naturem.us/public/filemedia/images/images/c%C3%B4%20g%C3%A1i%20t%E1%BA%AFm%20bi%E1%BB%83n%20trong%20veo.jpg\" style=\"height:381px; width:600px\" /></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#16a085\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><strong>INGREDIENTS</strong></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#16a085\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><strong>Japanese Honeysuckle</strong></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><span style=\"color:black\">Increases the production of gastric juice and bile; helps cleanse the body; resists bacteria; reduces fever</span></span></span></p>\r\n\r\n<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><span style=\"color:#16a085\"><strong>False Daisy</strong></span><br />\r\n<span style=\"color:black\">Detoxifies the liver, protects liver cells, resists bacteria, removes toxins, stops bleeding, increases urine production</span></span></span></p>\r\n\r\n<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><span style=\"color:#16a085\"><strong>Lactuca Indica</strong></span><br />\r\nA laxative; enhances production of urine<span style=\"color:black\">, </span>removes toxins, improves the effectiveness of kidney filtering functions</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#16a085\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><strong>Ginger</strong></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><span style=\"color:black\">Stimulates digestion, inhibits allergy and inflammation; helps detoxification</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#16a085\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><strong>Woolly Grass Rhizome</strong></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><span style=\"color:black\">Reduces fever, increases </span>urine production<span style=\"color:black\">, stops bleeding</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#16a085\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><strong>Gotu Kola</strong></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><span style=\"color:black\">Increases production of bile; curbs allergy &amp; inflammation; antibiotics</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><img src=\"http://portal.naturem.us/public/filemedia/images/images/l%C3%A1%20nghi%E1%BB%81n%20thu%E1%BB%91c.jpg\" style=\"height:333px; width:500px\" /></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#16a085\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><strong>DOSE</strong></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\">Twice daily &times; 2 tablets. Take 30 minutes after a meal. </span></span></p>\r\n\r\n<p><span style=\"color:#16a085\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><strong>STORAGE</strong></span></span></span></p>\r\n\r\n<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\">Keep in dry, cool place; avoid direct sunlight and store at room temperature&nbsp; </span></span></p>\r\n\r\n<p><span style=\"color:#16a085\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><strong>WARNING</strong></span></span></span></p>\r\n\r\n<ul>\r\n	<li>\r\n	<h3><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\">These statements have not been evaluated by the Food and Drug Administration.</span></span></h3>\r\n	</li>\r\n	<li>\r\n	<h3><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\">This product is not intended to diagnose, treat, care or prevent any disease.</span></span></h3>\r\n	</li>\r\n</ul>\r\n', 0, '', 1, '2021-12-20 13:58:12'),
(10, 'LANUI - 497145', 4, 'LANUI JOINTS TEA', 'LANUI-JOINTS-TEA', 100, '<h3 style=\"text-align:center\"><span style=\"color:#16a085\"><strong><span style=\"font-size:26px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">LANUI&reg; JOINTS TEA</span></span></strong></span></h3>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"color:#16a085\"><strong><span style=\"font-size:26px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><em>&nbsp;&ldquo;Resilient Body, regardless of Age!&rdquo;</em></span></span></strong></span></h3>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">SVK Herbal Corporation&rsquo;s LANUI<sup>&reg;</sup> products are formulated based on the theoretical basis of traditional Vietnamese medicine (TVM) and actual treatment results from doctors and specialists with many years of experiences in examining and healing patients. </span></span></p>\r\n\r\n<h4 style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Everybody wants to have stronger, healthier joints and bones that are immune to the effects of ageing. 100% natural, LANUI&reg;JOINTS Tea provides an efficient and convenient source of minerals and nutrients for optimal bone and joint health, it slows the ageing process, increases joint strength and minimizes symptoms of pain, leaving you with a resilient body regardless of age!</span></span></h4>\r\n\r\n<h3><img src=\"http://portal.naturem.us/public/filemedia/images/images/phong%20nha.jpg\" style=\"height:750px; width:500px\" /></h3>\r\n\r\n<h3><span style=\"color:#16a085\"><strong><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">HOW IT HELPS</span></span></strong></span></h3>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Fights inflammation,&nbsp;reduces acute and chronic bone and joint pain</span></span></li>\r\n	<li><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Reduces cartilage and spinal disc damage</span></span></li>\r\n	<li><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Increases the strength of ligaments,&nbsp;muscles&nbsp;and tendons</span></span></li>\r\n	<li><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Helps with the treatment of spinal calcification,&nbsp;inflammation&nbsp;and degeneration of joints</span></span></li>\r\n	<li><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Helps with the treatment of rheumatoid arthritis&nbsp;(Polyarthritis, reactive arthritis)</span></span></li>\r\n</ul>\r\n\r\n<p><img src=\"http://portal.naturem.us/public/filemedia/images/images/%C3%94NG%20B%C3%81C%20VUI%20V%E1%BA%BA.jpg\" style=\"height:616px; width:500px\" /></p>\r\n\r\n<h3><span style=\"color:#16a085\"><strong><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">INTENDED USERS </span></span></strong></span></h3>\r\n\r\n<h3><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">For those suffering from pain and fatigue in the spine or joints as a result of inflammation, degeneration or osteoporosis.</span></span></h3>\r\n\r\n<h3><img src=\"http://portal.naturem.us/public/filemedia/images/images/visual-stories-micheile-PpZasS086os-unsplash.jpg\" style=\"height:750px; width:500px\" /></h3>\r\n\r\n<h3><span style=\"color:#16a085\"><strong><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">INGREDIENTS</span></span></strong></span></h3>\r\n\r\n<h3><strong><span style=\"color:#16a085\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Common St. Paul&#39;s Wort</span></span></span></strong></h3>\r\n\r\n<h3><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">A cure for back pain and fatigue as a result of inflammation and rheumatoid arthritis</span></span></h3>\r\n\r\n<h3><span style=\"color:#16a085\"><strong><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Homalomena</span></span></strong></span></h3>\r\n\r\n<h3 style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Supports the treatment of bone and joint fatigue and pain, especially in the elderly; This can be effectively applied to those with bone and joint inflammation and degeneration, as well as osteoporosis</span></span></h3>\r\n\r\n<h3><span style=\"color:#16a085\"><strong><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Chaff-Flower</span></span></strong></span></h3>\r\n\r\n<h3><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Reduces pain, supports joints, increases the strength tendons and ligaments</span></span></h3>\r\n\r\n<h3><span style=\"color:#16a085\"><strong><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Stevia</span></span></strong></span></h3>\r\n\r\n<h3><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Has a natural sweet flavor, helps stabilize blood glucose and lipids</span></span></h3>\r\n\r\n<h3><span style=\"color:#16a085\"><strong><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Drynaria</span></span></strong></span></h3>\r\n\r\n<h3 style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Enhances bone absorption of calcium, increases the amount of blood phosphorous and calcium for quicker bone healing; it also works to reduce pain and is a neuroleptic.</span></span></h3>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><img src=\"http://portal.naturem.us/public/filemedia/images/images/l%C3%A1%20nghi%E1%BB%81n%20thu%E1%BB%91c(3).jpg\" style=\"height:333px; width:500px\" /></span></span></p>\r\n\r\n<p><span style=\"color:#16a085\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>WARNING</strong></span></span></span></p>\r\n\r\n<ul>\r\n	<li>\r\n	<h3><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">These statements have not been evaluated by the Food and Drug Administration.</span></span></h3>\r\n	</li>\r\n	<li>\r\n	<h3><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">This product is not intended to diagnose, treat, care or prevent any disease.</span></span></h3>\r\n	</li>\r\n</ul>\r\n', 0, '', 0, '2022-02-14 10:39:40'),
(11, 'LANUI - 404764', 3, 'Soybalac Probiotic', 'Soybalac-Probiotic', 1000, '<p style=\"text-align:center\"><span style=\"color:#16a085\"><span style=\"font-size:26px\"><strong>SOYBALAC PROBIOTIC</strong></span></span></p>\r\n\r\n<p style=\"text-align:start\">&nbsp;</p>\r\n\r\n<p style=\"text-align:start\"><span style=\"font-size:16px\"><span style=\"color:#222222\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:#ffffff\"><strong>SOYBALAC&nbsp;</strong>is a synbiotic product consisted of Bacillus subtilis, 3 lactic acid bacteria (Lactobacillus casei, Lactobacillus bulgaricus, Streptococcus thermophilus),&nbsp;a mixture of lima, soy, black eye, garbanzo beans, black fungus mushroom, and curcumin.</span></span></span></span></p>\r\n\r\n<p style=\"text-align:start\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Typically, nutritional supplements do not have medicinal properties.&nbsp; In contrast, compounds and compositions that possess medicinal properties typically do not provide nutritional support. A composition is needed which supports the nutritional needs of a patient in an easy to digest and absorb manner as well as provides treatment or prophylaxis of disease. SOYBALAC is sold a food product.</span></span></p>\r\n\r\n<p><img src=\"http://portal.naturem.us/public/filemedia/images/images/2202111%20Soybalac%20Pix.png\" style=\"height:459px; width:750px\" /></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">The four main uses of SOYBALAC are to:</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">(1) boost the immune system, </span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">(2) enhance the digestive system, </span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">(3) cleanse toxins </span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">And&nbsp;</span></span><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">(4) enhance blood circulation.&nbsp;</span></span></p>\r\n\r\n<p><img alt=\"\" src=\"https://lanui.vn/image/catalog/220.jpg\" style=\"height:628px; width:750px\" /></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">This Product like:</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">A nutritional drink to boost the immune system (a needed product for the virus pandemic era), also for patients in convalescence.</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">A nutritional drink to enhance digestion and cleanse toxins from the body: a healthy breakfast drink for young children and adults, a drink for people requiring detoxification such as heavy alcohol users.</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Helps in the prevention of gout, Helicobacter pylori, metabolism disorders, etc.&nbsp;</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">An effective treatment when combined SOYBALAC with other supplements such as gout relief, joints pain relief, etc.</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Helps to inhibit the creation of blood clots (anti-coagulation).</span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n', 0, '', 1, '2022-02-14 10:09:51');
INSERT INTO `tbl_product` (`id`, `code`, `cate_id`, `title`, `alias`, `stock`, `description`, `price`, `link_amazone`, `active`, `create_at`) VALUES
(12, 'LANUI - 332031', 3, 'Naturem Flu Relief', 'Naturem-Flu-Relief', 1000, '<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"color:#16a085\"><span style=\"font-size:26px\"><strong>HERBAL LOZENGES &nbsp;</strong></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"color:#16a085\"><span style=\"font-size:26px\"><strong>FLU RELIEF</strong></span></span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">SVK Herbal Corporation&rsquo;s&nbsp;Rejuve&nbsp;product&nbsp;is&nbsp;formulated based on the theoretical basis of traditional Vietnamese medicine (TVM) and actual treatment results from doctors and specialists with many years of experience in examining and healing patients.</span></span></p>\r\n\r\n<p><img src=\"http://portal.naturem.us/public/filemedia/images/images/pexels-tara-winstead-6694193(2).jpg\" style=\"height:333px; width:500px\" /></p>\r\n\r\n<p><span style=\"color:#27ae60\"><span style=\"font-size:16px\"><strong>HOW IT HELPS</strong></span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:13pt\"><span style=\"font-family:Arial\">Helps detoxify body from viruses</span></span></span></li>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:13pt\"><span style=\"font-family:Arial\">Suppress fever and phlegm; </span></span></span></li>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:13pt\"><span style=\"font-family:Arial\">Cleanse the lungs</span></span></span></li>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:13pt\"><span style=\"font-family:Arial\">Lower body temperature</span></span>.</span></li>\r\n</ul>\r\n\r\n<p><img src=\"http://portal.naturem.us/public/filemedia/images/images/pexels-anna-shvets-3987152.jpg\" style=\"height:333px; width:500px\" /></p>\r\n\r\n<p><span style=\"font-size:13pt\"><span style=\"font-family:Arial\"><span style=\"color:#27ae60\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><strong>INTENDED USERS</strong></span></span>:</span><span style=\"color:#8a8a00\"> </span></span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:13pt\"><span style=\"font-family:Arial\">People with flu symptoms, high body temperature, cough with phlegm.&nbsp;</span></span></span></p>\r\n\r\n<p><img src=\"http://portal.naturem.us/public/filemedia/images/images/pexels-andrea-piacquadio-3807629.jpg\" style=\"height:334px; width:500px\" /></p>\r\n\r\n<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:13pt\"><strong><span style=\"color:#27ae60\">SUGGESTED DOSE:</span></strong><span style=\"color:#8a8a00\"> </span></span></span></p>\r\n\r\n<p><span style=\"font-size:13pt\"><span style=\"font-family:Arial\"><span style=\"color:#000000\">3 - 4 times daily x1 or 2 lozenges. Not to exceed 12 units per day. Not recommended for children under 6 years old.&nbsp;</span></span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"color:#27ae60\"><strong>STORAGE:</strong></span></span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Keep in dry, cool place; avoid direct sunlight and store at room temperature.</span></span></span></p>\r\n\r\n<p><span style=\"color:#27ae60\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><strong>WARNING:</strong> </span></span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><span style=\"color:#000000\">These statements have not been evaluated by the Food and Drug Administration. </span></span></span></li>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><span style=\"color:#000000\">This product is not intended to diagnose, treat, care or prevent any disease.</span></span></span></li>\r\n</ul>\r\n\r\n<p><img src=\"http://portal.naturem.us/public/filemedia/images/images/2.PNG\" style=\"height:178px; width:762px\" /></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n', 0, '', 1, '2021-12-20 10:52:32'),
(13, 'LANUI - 634271', 3, 'Naturem Cough Free', 'Naturem-Cough-Free', 1000, '<p style=\"text-align:center\"><span style=\"color:#16a085\"><span style=\"font-size:26px\"><strong>HERBAL LOZENGES &nbsp;</strong></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#16a085\"><span style=\"font-size:26px\"><strong>COUGH FREE</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">SVK Herbal Corporation&rsquo; Cough Free&nbsp;product&nbsp;is&nbsp;formulated based on the theoretical basis of traditional Vietnamese medicine (TVM) and actual treatment results from doctors and specialists with many years of experience in examining and healing patients.</span></span></p>\r\n\r\n<p><img src=\"http://portal.naturem.us/public/filemedia/images/images/pexels-tara-winstead-6694193.jpg\" style=\"height:333px; width:500px\" /></p>\r\n\r\n<p><span style=\"color:#27ae60\"><span style=\"font-size:16px\"><strong>HOW IT HELPS</strong></span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial\">&nbsp;Helps enhance lung functions, suppress cough, reduce phlegm</span></span></span></li>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial\">&nbsp;Relieve sore throat, hoarse voice. </span></span></span></li>\r\n</ul>\r\n\r\n<p><img src=\"http://portal.naturem.us/public/filemedia/images/images/pexels-alexandr-podvalny-320007.jpg\" style=\"height:333px; width:500px\" /></p>\r\n\r\n<p><span style=\"color:#27ae60\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><strong>INTENDED USERS</strong></span></span></span></span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\">People with pharyngitis, bronchitis, cough, cough with phlegm, sore throat, hoarse voice.</span></span> </span></span></span></p>\r\n\r\n<p><img src=\"http://portal.naturem.us/public/filemedia/images/images/pexels-vlada-karpovich-5790716(1).jpg\" style=\"height:333px; width:500px\" /></p>\r\n\r\n<p><span style=\"color:#27ae60\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\">WARNING:</span></span></strong></span></p>\r\n\r\n<ul>\r\n	<li>\r\n	<h3><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">These statements have not been evaluated by the Food and Drug Administration.</span></span></h3>\r\n	</li>\r\n	<li>\r\n	<h3><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">This product is not intended to diagnose, treat, care or prevent any disease.</span></span></h3>\r\n	</li>\r\n</ul>\r\n\r\n<p><span style=\"color:#27ae60\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>SUGGESTED DOSE:</strong></span></span> </span></span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial\">3 - 4 times daily xlor 2 lozenges. Not to exceed 12 units per day. Not recommended for children under 6 years old.&nbsp;</span></span></span></p>\r\n\r\n<p><span style=\"color:#27ae60\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial\"><strong>STORAGE:</strong> </span></span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:12pt\"><span style=\"font-family:Arial\">Keep in a dry, cool place, avoid direct sunlight and store at room temperature.</span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><img src=\"http://portal.naturem.us/public/filemedia/images/images/image(2).png\" style=\"height:227px; width:975px\" /></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n', 0, '', 1, '2021-12-28 15:49:22'),
(14, 'LANUI - 508172', 3, 'Naturem Rejuve', 'Naturem-Rejuve', 1000, '<p style=\"text-align:center\"><span style=\"color:#27ae60\"><span style=\"font-size:26px\"><strong>HERBAL LOZENGES &nbsp;</strong></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#27ae60\"><span style=\"font-size:26px\"><strong>REJUVE</strong></span></span></p>\r\n\r\n<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\">SVK Herbal Corporation&rsquo;s Flu Relief&nbsp;product&nbsp;is&nbsp;formulated based on the theoretical basis of traditional Vietnamese medicine (TVM) and actual treatment results from doctors and specialists with many years of experience in examining and healing patients.</span></span></p>\r\n\r\n<p><img src=\"http://portal.naturem.us/public/filemedia/images/images/pexels-tara-winstead-6694193(1).jpg\" style=\"height:333px; width:500px\" /></p>\r\n\r\n<p><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><span style=\"color:#27ae60\"><strong>HOW IT HELPS</strong></span></span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><span style=\"color:#000000\">Helps stimulate blood cells, enhance liver and kidney functions</span></span></span></li>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><span style=\"color:#000000\">Get darken hair</span></span></span></li>\r\n	<li><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:16px\"><span style=\"color:#000000\">Balance sexual hormones; enhance appetite and good sleep, strengthen ligaments, tendons and bone.</span></span></span></li>\r\n</ul>\r\n\r\n<p><img src=\"http://portal.naturem.us/public/filemedia/images/images/pexels-kampus-production-8170251.jpg\" style=\"height:334px; width:500px\" /></p>\r\n\r\n<p><span style=\"color:#27ae60\"><strong><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">INTENDED USERS&nbsp;</span></span></strong></span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><span style=\"color:#27ae60\"><span style=\"color:#000000\"><span style=\"font-family:Arial\">People in convalescence; people with chronic fatigue syndrome and sleeping disorder People with erectile dysfunctions; irregular menstruations; early grey hair; frequent urination at night; back and knee fatigues.</span></span></span></span></h3>\r\n\r\n<p><img src=\"http://portal.naturem.us/public/filemedia/images/images/pexels-gustavo-fring-4148984.jpg\" style=\"height:333px; width:500px\" /></p>\r\n\r\n<p><span style=\"color:#27ae60\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>SUGGESTED DOSE:</strong></span></span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">3 - 4 times daily x1 or 2 lozenges. Not to exceed 12 units per day. Not recommended for children under 6 years old.&nbsp;</span></span></p>\r\n\r\n<p><span style=\"color:#27ae60\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>STORAGE:</strong></span></span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Keep in dry, cool place; avoid direct sunlight and store at room temperature.</span></span></p>\r\n\r\n<h3><span style=\"color:#27ae60\"><strong><span style=\"font-size:16px\"><span style=\"font-family:Arial\">WARNING&nbsp;</span></span></strong></span></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<h3><span style=\"font-size:16px\"><span style=\"color:#000000\"><span style=\"font-family:Arial\">These statements have not been evaluated by the Food and Drug Administration. </span></span></span></h3>\r\n	</li>\r\n	<li>\r\n	<h3><span style=\"font-size:16px\"><span style=\"color:#000000\"><span style=\"font-family:Arial\">This product is not intended to diagnose, treat, care or prevent any disease</span></span></span><img src=\"http://portal.naturem.us/public/filemedia/images/images/image(1).png\" style=\"height:234px; width:857px\" /></h3>\r\n	</li>\r\n</ul>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n', 0, '', 1, '2021-12-28 15:47:49'),
(15, 'LANUI - 498072', 2, ' LANUI  SLIM TEA', 'LANUI-SLIM-TEA', 1000, '<h3 style=\"text-align:center\"><span style=\"font-size:26px\"><span style=\"color:#27ae60\"><strong><span style=\"font-family:Roboto\">LANUI</span>&reg;<span style=\"font-family:Roboto\"> Slim Tea</span></strong></span></span></h3>\r\n\r\n<h3 style=\"text-align:center\"><strong><span style=\"color:#27ae60\"><span style=\"font-size:13.5pt\"><em><span style=\"font-size:14.0pt\"><span style=\"font-family:Roboto\">&quot;Stay slim, stay active&quot;</span></span></em></span></span></strong></h3>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\"><span style=\"font-family:Roboto\">SVK Herbal Corporation&rsquo;s LANUI<sup>&reg;</sup> products are formulated based on the theoretical basis of traditional Vietnamese medicine (TVM) and actual treatment results from doctors and specialists with many years of experience&nbsp;in examining and healing patients. </span></span></span></span></p>\r\n\r\n<h4 style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-size:14.0pt\"><span style=\"font-family:Roboto\">A slim body leads to an active and confident lifestyle. To ensure safe weight loss, </span></span><span style=\"font-size:14.0pt\"><span style=\"font-family:Roboto\">LANUI</span></span><a name=\"17dp8vu\"></a><a name=\"3rdcrjn\"></a><span style=\"font-size:16.0pt\">&reg;</span> <span style=\"font-size:14.0pt\"><span style=\"font-family:Roboto\">SLIM</span></span><span style=\"font-size:14.0pt\"><span style=\"font-family:Roboto\"> Tea is made from red reishi mushrooms blended with other natural Vietnamese medicinal herbs.</span></span></span></h4>\r\n\r\n<p><img src=\"http://portal.naturem.us/public/filemedia/images/images/pexels-tara-winstead-6694193(3).jpg\" style=\"height:333px; width:500px\" /></p>\r\n\r\n<h3><span style=\"color:#27ae60\"><strong><span style=\"font-size:13.5pt\"><span style=\"font-size:14.0pt\"><span style=\"font-family:Roboto\">HOW IT HELPS</span></span></span></strong></span></h3>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\"><span style=\"font-family:Roboto\">LANUI</span></span><span style=\"font-size:16.0pt\">&reg;</span><span style=\"font-size:14.0pt\"><span style=\"font-family:Roboto\"> Slim Tea helps relieve the accumulation of fat through several mechanisms:</span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\"><span style=\"font-family:Roboto\">Stimulates the burning of excess fat, thus enabling weight reduction and firming muscles.</span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\"><span style=\"font-family:Roboto\">Improves the transformation of lipids, reduces blood lipid disorders</span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\"><span style=\"font-family:Roboto\">Improves digestion, helps&nbsp;purge&nbsp;toxins from the body</span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\"><span style=\"font-family:Roboto\">Strengthens the body metabolism</span></span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\"><span style=\"font-family:Roboto\">Helps prevent obesity-related diseases such as cardiovascular diseases, diabetes</span></span></span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:21px\"><img src=\"http://portal.naturem.us/public/filemedia/images/images/pexels-amin-alizadeh-9221508.jpg\" style=\"height:749px; width:500px\" /></p>\r\n\r\n<h3><span style=\"color:#27ae60\"><strong><span style=\"font-size:13.5pt\"><span style=\"font-size:14.0pt\"><span style=\"font-family:Roboto\">INGREDIENTS</span></span></span></strong></span></h3>\r\n\r\n<h4><span style=\"color:#27ae60\"><strong><span style=\"font-size:12pt\"><span style=\"font-size:14.0pt\"><span style=\"font-family:Roboto\">Red Reishi Mushrooms</span></span></span></strong></span></h4>\r\n\r\n<h4><span style=\"font-size:12pt\"><span style=\"font-size:14.0pt\"><span style=\"font-family:Roboto\">One of the precious herbs containing many active ingredients, reishi or lingzhi helps boost metabolism and accelerates the burning of excess fat, thus restraining the formation of fatty cells. Furthermore, reishi contains&nbsp;components that reduce blood glucose and prevent diabetes.</span></span></span></h4>\r\n\r\n<h4><span style=\"color:#27ae60\"><strong><span style=\"font-size:12pt\"><span style=\"font-size:14.0pt\"><span style=\"font-family:Roboto\">Lotus Leaf</span></span></span></strong></span></h4>\r\n\r\n<h4 style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-size:14.0pt\"><span style=\"font-family:Roboto\">Lotus leaves contain flavonoid, which helps fight cholesterol disorders. In turn, it will help to reduce weight and the formation&nbsp;of lipid andfirm up muscles.</span></span></span></h4>\r\n\r\n<h4><span style=\"color:#27ae60\"><strong><span style=\"font-size:12pt\"><span style=\"font-size:14.0pt\"><span style=\"font-family:Roboto\">Hawthorn (Crataegus Cuneata)</span></span></span></strong></span></h4>\r\n\r\n<h4><span style=\"font-size:12pt\"><span style=\"font-size:14.0pt\"><span style=\"font-family:Roboto\">Crataegus Cuneata contains several organic acids such as citric acid, tartronic acid and vitamin C which boost the activities of the digestive system. It helps strengthening the body&rsquo;s excreting functions, eliminating fat and toxins from the body, thus enabling efficient weight loss.</span></span></span></h4>\r\n', 0, '', 1, '2021-12-20 10:51:13'),
(16, 'LANUI - 140672', 2, 'LANUI STRESS FREE TEA', 'LANUI-STRESS-FREE-TEA', 1000, '<h3 style=\"text-align:center\"><span style=\"color:#16a085\"><span style=\"font-size:26px\"><strong><span style=\"font-family:Roboto\">LANUI</span>&reg;<span style=\"font-family:Roboto\"> STRESS-FREE TEA</span></strong></span></span></h3>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"color:#16a085\"><span style=\"font-size:26px\"><span style=\"font-family:Roboto\">&ldquo;Relax your Brain&rdquo;</span></span></span></h3>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\"><span style=\"font-family:Roboto\">SVK Herbal Corporation&rsquo;s LANUI<sup>&reg;</sup> products are formulated based on the theoretical basis of traditional Vietnamese medicine (TVM) and actual treatment results from doctors and specialists with many years of experiences in examining and healing patients. </span></span></span></span></p>\r\n\r\n<h3 style=\"text-align:justify\"><span style=\"font-size:13.5pt\"><span style=\"font-size:14.0pt\"><span style=\"font-family:Roboto\">&quot;Stress-Free&rdquo; brings balance and excitement to your life. Depression, fear or anger instigates the increase of hormones such as insulin or adrenalin in our systems which are the origin of diabetes and heart related diseases.</span></span></span></h3>\r\n\r\n<p><img src=\"http://portal.naturem.us/public/filemedia/images/images/phong%20nha(1).jpg\" style=\"height:750px; width:500px\" /></p>\r\n\r\n<h3><span style=\"color:#16a085\"><strong><span style=\"font-size:13.5pt\"><span style=\"font-size:14.0pt\"><span style=\"font-family:Roboto\">HOW IT HELPS</span></span></span></strong></span></h3>\r\n\r\n<h3><span style=\"font-size:13.5pt\"><span style=\"font-size:14.0pt\"><span style=\"font-family:Roboto\">LANUI</span></span><span style=\"font-size:14.0pt\">&reg;</span><span style=\"font-size:14.0pt\"><span style=\"font-family:Roboto\"> Stress-Free Tea blends various medicinal herbs to:</span></span></span></h3>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:13.5pt\"><span style=\"font-size:14.0pt\"><span style=\"font-family:Roboto\">Help relax, reduce stress, tiredness and fatigue</span></span></span></li>\r\n	<li><span style=\"font-size:13.5pt\"><span style=\"font-size:14.0pt\"><span style=\"font-family:Roboto\">Get better quality sleep</span></span></span></li>\r\n	<li><span style=\"font-size:13.5pt\"><span style=\"font-size:14.0pt\"><span style=\"font-family:Roboto\">Fight against emotion disorders (fear, anger, depression)</span></span></span></li>\r\n	<li><span style=\"font-size:13.5pt\"><span style=\"font-size:14.0pt\"><span style=\"font-family:Roboto\">Help with treatment of high blood pressure and irregular heartbeats</span></span></span></li>\r\n</ul>\r\n\r\n<p><img src=\"http://portal.naturem.us/public/filemedia/images/images/C%C3%94%20G%C3%81I%20TRC%20BI%E1%BB%82N%20DANG%20TAY.jpg\" style=\"height:333px; width:500px\" /></p>\r\n\r\n<h3><span style=\"color:#16a085\"><strong><span style=\"font-size:13.5pt\"><span style=\"font-size:14.0pt\"><span style=\"font-family:Roboto\">INTENDED USERS</span></span></span></strong></span></h3>\r\n\r\n<h3><span style=\"font-size:13.5pt\"><span style=\"font-size:14.0pt\"><span style=\"font-family:Roboto\">People suffering from work stress, insomnia, irregular heartbeats, headache, fatigue, and dizziness.</span></span></span></h3>\r\n\r\n<h3><span style=\"font-size:13.5pt\"><span style=\"font-size:14.0pt\"><span style=\"font-family:Roboto\">Caution: Pregnant women need to consult the doctor before use.</span></span></span></h3>\r\n\r\n<p><img src=\"http://portal.naturem.us/public/filemedia/images/images/C%C3%94%20G%C3%81I%20SPA.jpg\" style=\"height:333px; width:500px\" /></p>\r\n\r\n<h3><span style=\"color:#16a085\"><strong><span style=\"font-size:13.5pt\"><span style=\"font-size:14.0pt\"><span style=\"font-family:Roboto\">INGREDIENTS</span></span></span></strong></span></h3>\r\n\r\n<h3><span style=\"color:#16a085\"><strong><span style=\"font-size:13.5pt\"><span style=\"font-size:14.0pt\"><span style=\"font-family:Roboto\">Lotus Plumule</span></span></span></strong></span></h3>\r\n\r\n<h3><span style=\"font-size:13.5pt\"><span style=\"font-size:14.0pt\"><span style=\"font-family:Roboto\">Helps control heartbeat irregularities, enhances blood flow to the heart and in coronary arteries</span></span></span></h3>\r\n\r\n<h3><span style=\"color:#16a085\"><strong><span style=\"font-size:13.5pt\"><span style=\"font-size:14.0pt\"><span style=\"font-family:Roboto\">Plassifora</span></span></span></strong></span></h3>\r\n\r\n<h3><span style=\"font-size:13.5pt\"><span style=\"font-size:14.0pt\"><span style=\"font-family:Roboto\">Plassifora is the source of medications used as the sedative, detoxicant and uretic. It helps relieve anxiety, lower body temperature.</span></span></span></h3>\r\n\r\n<h3><span style=\"color:#16a085\"><strong><span style=\"font-size:13.5pt\"><span style=\"font-size:14.0pt\"><span style=\"font-family:Roboto\">Fructus Auranti Immature</span></span></span></strong></span></h3>\r\n\r\n<h3><span style=\"font-size:13.5pt\"><span style=\"font-size:14.0pt\"><span style=\"font-family:Roboto\">Neohesperidin, the key ingredient, enhances blood flow to the brain and heart, stabilizes the cardiac nerve system.</span></span></span></h3>\r\n\r\n<p><img src=\"http://portal.naturem.us/public/filemedia/images/images/l%C3%A1%20nghi%E1%BB%81n%20thu%E1%BB%91c(4).jpg\" style=\"height:333px; width:500px\" /></p>\r\n\r\n<p><span style=\"color:#16a085\"><span style=\"font-size:16px\"><strong>WARNING</strong></span></span></p>\r\n\r\n<ul>\r\n	<li>\r\n	<h3><span style=\"font-size:16px\">These statements have not been evaluated by the Food and Drug Administration.</span></h3>\r\n	</li>\r\n	<li>\r\n	<h3><span style=\"font-size:16px\">This product is not intended to diagnose, treat, care or prevent any disease.</span></h3>\r\n	</li>\r\n</ul>\r\n', 0, '', 1, '2021-12-18 12:05:45'),
(17, 'LANUI - 314833', 2, ' LANUI  STAMINA TABLET', 'LANUI-STAMINA-TABLET', 100, '<p style=\"text-align:center\"><span style=\"color:#16a085\"><strong><span style=\"font-size:26px\">&nbsp;LANUI&reg; _ STAMINA TABLETS</span></strong></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><em><span style=\"font-size:14.0pt\">SVK Herbal Corporation&rsquo;s LANUI</span></em><em><span style=\"font-size:14.0pt\">&reg;</span></em><em><span style=\"font-size:14.0pt\"> products are formulated based on the theoretical basis of traditional Vietnamese medicine (TVM) and actual treatment results from doctors and specialists with many years of experience in examining and healing patients. </span></em></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><em><span style=\"font-size:14.0pt\"><span style=\"color:black\">Testosterone directly affects all parts of a male body, from basic to sexual health. Combining it with ginseng and other herbs, LANUI&reg; STAMINA helps create a vigorous body full of vitality, increases libido and boosts sex drive.</span></span></em></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><img src=\"http://portal.naturem.us/public/filemedia/images/images/b%C3%A0o%20ch%E1%BA%BF(3).jpg\" style=\"height:323px; width:500px\" /></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:14.0pt\"><span style=\"color:#16a085\">HOW IT HELPS&nbsp;&nbsp;&nbsp;</span><span style=\"color:black\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></strong></span></span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:Verdana,sans-serif\"><span style=\"font-size:14.0pt\"><span style=\"color:black\">Boosts the immune system, enhances activities of the body</span></span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:Verdana,sans-serif\"><span style=\"font-size:14.0pt\"><span style=\"color:black\">Supports in the treatment of erectile dysfunction and lack of sex drive</span></span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:Verdana,sans-serif\"><span style=\"font-size:14.0pt\"><span style=\"color:black\">Protects liver cells; lowers liver enzymes due to smoking and large alcohol intake; detoxifies liver and kidney.</span></span></span></span></span></li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><img src=\"http://portal.naturem.us/public/filemedia/images/images/b%C3%A1c%20l%C6%B0%E1%BB%9Bt%20s%C3%B3ng.jpg\" style=\"height:840px; width:500px\" /></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#16a085\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:14.0pt\">INGREDIENTS</span></strong></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#16a085\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:14.0pt\">Ginseng</span></strong></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\"><span style=\"color:black\">- Enhances the recovery of body functions &ndash; a comprehensive health rejuvenation supplement</span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\"><span style=\"color:black\">- Slows the effect of aging, promotes the metabolism of cells</span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\"><span style=\"color:black\">- Helps maintain good health, reduces fatigue</span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#16a085\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:14.0pt\">Tribulus Terrestris</span></strong></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\"><span style=\"color:black\">- Improves male hormones</span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\"><span style=\"color:black\">- Supports in the treatment of erectile dysfunction</span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\"><span style=\"color:black\">- </span></span><span style=\"font-size:14.0pt\"><span style=\"color:black\">Increases libido, boosts the immune system, rejuvenates health and work endurance, reduces fatigue</span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#16a085\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:14.0pt\">Magnolia Vine</span></strong></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\"><span style=\"color:black\">- Acts as a tranquilizer, enhances kidney and bladder functions, stimulates respiration, regulates blood circulation</span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\"><span style=\"color:black\">- Protects liver cells, lowers liver enzymes</span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><img src=\"http://portal.naturem.us/public/filemedia/images/images/B%E1%BB%98T%20THU%E1%BB%90C.jpg\" style=\"height:750px; width:500px\" /></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#16a085\"><span style=\"font-size:11pt\"><span style=\"background-color:white\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:14.0pt\">INTENDED USERS </span></strong></span></span></span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:Verdana,sans-serif\"><span style=\"font-size:14.0pt\"><span style=\"color:black\">Men with erectile dysfunction</span></span></span></span></span></li>\r\n	<li><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:Verdana,sans-serif\"><span style=\"font-size:14.0pt\"><span style=\"color:black\">Elderly people with poor mental and physical health</span></span></span></span></span></li>\r\n	<li><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:Verdana,sans-serif\"><span style=\"font-size:14.0pt\"><span style=\"color:black\">People in convalescence</span></span></span></span></span></li>\r\n	<li><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:Verdana,sans-serif\"><span style=\"font-size:14.0pt\"><span style=\"color:black\">People with high liver enzymes due to smoking &amp; heavy intake of alcohol</span></span></span></span></span></li>\r\n</ul>\r\n\r\n<p><img src=\"http://portal.naturem.us/public/filemedia/images/images/ng%C6%B0%E1%BB%9Di%20%C4%91%C3%A0n%20%C3%B4ng%20m%E1%BB%87t%20m%E1%BB%8Fi.jpg\" style=\"height:349px; width:500px\" /></p>\r\n\r\n<h1><span style=\"color:#16a085\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:Verdana,sans-serif\"><strong><span style=\"font-size:14.0pt\">DOSE</span></strong></span></span></span></span></h1>\r\n\r\n<h1><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:Verdana,sans-serif\"><span style=\"font-size:14.0pt\"><span style=\"color:black\">1 or 2 times daily, 2 tablets each time. Take 30 minutes after a meal.</span></span></span></span></span></h1>\r\n\r\n<h1><span style=\"color:#16a085\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:Verdana,sans-serif\"><strong><span style=\"font-size:14.0pt\">STORAGE</span></strong></span></span></span></span></h1>\r\n\r\n<h1><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:Verdana,sans-serif\"><span style=\"font-size:14.0pt\"><span style=\"color:black\">Keep in dry, cool place; avoid direct sunlight and store at room temperature&nbsp; </span></span></span></span></span></h1>\r\n\r\n<p><span style=\"color:#16a085\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><em><span style=\"font-size:14.0pt\">Nature Herbs for a Healthy Vietnam</span></em></strong></span></span></span></p>\r\n\r\n<p><span style=\"color:#2980b9\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\">Note: This is not a drug. It cannot be used as a substitute for prescribed medicine.</span></span></span></span></p>\r\n', 0, '', 1, '2021-12-20 14:24:23'),
(18, 'LANUI - 406487', 4, 'LANUI JOINTS TABLET', 'LANUI-JOINTS-TABLET', 100, '<p style=\"text-align:center\"><span style=\"font-size:26px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"color:#16a085\"><strong>LANUI&reg; JOINTS </strong></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><em>SVK Herbal Corporation&rsquo;s LANUI&reg; products are formulated based on the theoretical basis of traditional Vietnamese medicine (TVM) and actual treatment results from doctors and specialists with many years of experiences in examining and healing patients. </em></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><em>The bones are made up of two main classes of substances: mineral and organic matters consisting of bone adhesives</em><em>. Ninety percent of bone adhesives are collagen fibers that are responsible for binding and retaining calcium. When bone is unable to absorb calcium, hardness and elasticity of the bone will decline. Bones will be porous and fragile which cause pain and susceptible to breakage. These are the main causes of osteoporosis, osteoarthritis, etc.&nbsp; Collagen in Lanui&reg; JOINTS nourishes bones and joints, and other ingredients</em> <em>help reduce inflammation and pain which will rejuvenate joint health and mobility.</em></span></span></p>\r\n\r\n<blockquote>\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><img src=\"http://portal.naturem.us/public/filemedia/images/images/b%C3%A0o%20ch%E1%BA%BF(4).jpg\" style=\"height:323px; width:500px\" /></span></span></p>\r\n</blockquote>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:white\"><strong><span style=\"color:#16a085\">HOW IT HELPS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\"color:black\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></strong></span></span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:white\"><span style=\"color:black\">Supports in the recovery, regeneration of cartilage tissues; increases joint fluid and joint lubrication; relieves pain </span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:white\"><span style=\"color:black\">Supports in the treatment of osteoarthritis, joint degeneration</span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:white\"><span style=\"color:black\">Generates bone adhesives and cartilages, increases bone strength and elasticity</span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:white\"><span style=\"color:black\">Increases mineral bone density</span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:white\"><span style=\"color:black\">Antioxidant / free radical; slows the effects of aging</span></span></span></span></li>\r\n</ul>\r\n\r\n<blockquote>\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><img src=\"http://portal.naturem.us/public/filemedia/images/images/NG%C6%AF%E1%BB%9CI%20L%E1%BB%98N%20M%C3%88O.jpg\" style=\"height:333px; width:500px\" /></span></span></p>\r\n</blockquote>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#16a085\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:white\"><strong>INGREDIENTS</strong></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#16a085\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>Hydrolyzed Collagen</strong></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Resists joint degeneration and inflammation, reduces pain; creates new bone cells, increases bone density; increases bone adhesives to strengthen bones; rejuvenates health</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#16a085\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>Clinacanthus Nutans</strong></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Reduces inflammation, reduces pain, shortens bone healing period after fracture</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#16a085\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong>Eclipta Alba &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:white\"><span style=\"color:black\">Supports bone growth, relieves pain, detoxifies the liver, resists bacteria and virus infections; inhibits unwanted cell proliferation, prevents cancer</span></span></span></span></p>\r\n\r\n<blockquote>\r\n<p style=\"text-align:justify\"><img src=\"http://portal.naturem.us/public/filemedia/images/images/B%E1%BB%98T%20THU%E1%BB%90C(1).jpg\" style=\"height:500px; width:333px\" /></p>\r\n</blockquote>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#16a085\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:white\"><strong>INTENDED USERS </strong></span></span></span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:white\"><span style=\"color:black\">People with osteoporosis, osteoarthritis (shoulder, wrist, hip joints, knee)</span></span></span></span></li>\r\n	<li><span style=\"color:#000000\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">People with bone fracture, fibrositis, spondylolysis; numbness in the limbs; backache; neck, shoulder and arm pain syndrome.</span></span></span></li>\r\n</ul>\r\n\r\n<blockquote>\r\n<p><img src=\"http://portal.naturem.us/public/filemedia/images/images/%C4%90AU%20KH%E1%BB%9AP.jpg\" style=\"height:333px; width:500px\" /></p>\r\n</blockquote>\r\n\r\n<h1><span style=\"color:#16a085\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:white\"><strong>DOSE</strong></span></span></span></span></h1>\r\n\r\n<h1><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:white\"><span style=\"color:black\">1 or 2 times daily, 2 tablets each time. Take 30 minutes after a meal.</span></span></span></span></h1>\r\n\r\n<h1><span style=\"color:#16a085\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:white\"><strong>STORAGE</strong></span></span></span></span></h1>\r\n\r\n<h1><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"background-color:white\"><span style=\"color:black\">Keep in dry, cool place; avoid direct sunlight and store at room temperature&nbsp; </span></span></span></span></h1>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><strong><em>Nature Herbs for a Healthy Vietnam</em></strong></span></span></p>\r\n\r\n<p><span style=\"color:#2980b9\"><span style=\"font-size:16px\"><span style=\"font-family:Arial,Helvetica,sans-serif\">Note: This is not a drug. It cannot be used as a substitute for prescribed medicine.</span></span></span></p>\r\n', 0, '', 1, '2022-01-22 10:06:09');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_region`
--

CREATE TABLE `tbl_region` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_region`
--

INSERT INTO `tbl_region` (`id`, `country_id`, `title`) VALUES
(1, 1, 'Hanoi'),
(2, 2, 'Newyork'),
(3, 2, 'Ohio'),
(4, 2, 'California');

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
-- Indexes for table `tbl_block`
--
ALTER TABLE `tbl_block`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_block_banner`
--
ALTER TABLE `tbl_block_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_block_blog`
--
ALTER TABLE `tbl_block_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_block_delivery`
--
ALTER TABLE `tbl_block_delivery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_block_footer`
--
ALTER TABLE `tbl_block_footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_block_partner`
--
ALTER TABLE `tbl_block_partner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_block_product`
--
ALTER TABLE `tbl_block_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_block_sale`
--
ALTER TABLE `tbl_block_sale`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_block_slide`
--
ALTER TABLE `tbl_block_slide`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_block`
--
ALTER TABLE `tbl_block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_block_banner`
--
ALTER TABLE `tbl_block_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_block_blog`
--
ALTER TABLE `tbl_block_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_block_delivery`
--
ALTER TABLE `tbl_block_delivery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_block_footer`
--
ALTER TABLE `tbl_block_footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_block_partner`
--
ALTER TABLE `tbl_block_partner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_block_product`
--
ALTER TABLE `tbl_block_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_block_sale`
--
ALTER TABLE `tbl_block_sale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_block_slide`
--
ALTER TABLE `tbl_block_slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_combo`
--
ALTER TABLE `tbl_combo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_combo_product`
--
ALTER TABLE `tbl_combo_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_content`
--
ALTER TABLE `tbl_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_country`
--
ALTER TABLE `tbl_country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_coupon`
--
ALTER TABLE `tbl_coupon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_coupon_product`
--
ALTER TABLE `tbl_coupon_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_discount`
--
ALTER TABLE `tbl_discount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_discount_product`
--
ALTER TABLE `tbl_discount_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_image_product`
--
ALTER TABLE `tbl_image_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=341;

--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_orders`
--
ALTER TABLE `tbl_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_orders_detail`
--
ALTER TABLE `tbl_orders_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_region`
--
ALTER TABLE `tbl_region`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
