-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2020 at 01:21 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phplogin`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`) VALUES
(1, 'admin', 'admin@admin.com', '9ae2be73b58b565bce3e47493a56e26a'),
(2, 'admin1', 'luden@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b'),
(4, 'admin1', 'ludenn@gmail.com', 'd95679752134a2d9eb61dbd7b91c4bcc');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `subject`) VALUES
(1, '', '', ''),
(3, 'Kaiser', 'huytrandinhshadow@yahoo.com.vn', 'Yy'),
(4, 'Huy Tran Dinh', 'Trandinhhuy1996tv@gmail.com', 'Yyyy'),
(5, 'Trần Đình Huy', 'huytrandinhshadow@yahoo.com.vn', '111'),
(6, 'huy', 'huytrandinhshadow@yahoo.com.vn', 'dddd');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `alpha2_code` varchar(2) COLLATE utf8_bin NOT NULL,
  `alpha3_code` varchar(3) COLLATE utf8_bin NOT NULL,
  `tld_extension` varchar(3) COLLATE utf8_bin NOT NULL,
  `numeric_code` varchar(6) COLLATE utf8_bin NOT NULL,
  `alpha2_year` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_name`, `alpha2_code`, `alpha3_code`, `tld_extension`, `numeric_code`, `alpha2_year`) VALUES
(1, 'Andorra', 'AD', 'AND', '.ad', '20', 1974),
(2, 'Afghanistan', 'AF', 'AFG', '.af', '4', 1974),
(3, 'Åland Islands', 'AX', 'ALA', '.ax', '248', 2004),
(4, 'Albania', 'AL', 'ALB', '.al', '8', 1974),
(5, 'Algeria', 'DZ', 'DZA', '.dz', '12', 1974),
(6, 'American Samoa', 'AS', 'ASM', '.as', '16', 1974),
(7, 'Angola', 'AO', 'AGO', '.ao', '24', 1974),
(8, 'Anguilla', 'AI', 'AIA', '.ai', '660', 1983),
(9, 'Antarctica', 'AQ', 'ATA', '.aq', '10', 1974),
(10, 'Antigua and Barbuda', 'AG', 'ATG', '.ag', '28', 1974),
(11, 'Argentina', 'AR', 'ARG', '.ar', '32', 1974),
(12, 'Armenia', 'AM', 'ARM', '.am', '51', 1992),
(13, 'Aruba', 'AW', 'ABW', '.aw', '533', 1986),
(14, 'Australia', 'AU', 'AUS', '.au', '36', 1974),
(15, 'Austria', 'AT', 'AUT', '.at', '40', 1974),
(16, 'Azerbaijan', 'AZ', 'AZE', '.az', '31', 1992),
(17, 'Bahamas', 'BS', 'BHS', '.bs', '44', 1974),
(18, 'Bahrain', 'BH', 'BHR', '.bh', '48', 1974),
(19, 'Bangladesh', 'BD', 'BGD', '.bd', '50', 1974),
(20, 'Barbados', 'BB', 'BRB', '.bb', '52', 1974),
(21, 'Belarus', 'BY', 'BLR', '.by', '112', 1974),
(22, 'Belgium', 'BE', 'BEL', '.be', '56', 1974),
(23, 'Belize', 'BZ', 'BLZ', '.bz', '84', 1974),
(24, 'Benin', 'BJ', 'BEN', '.bj', '204', 1977),
(25, 'Bermuda', 'BM', 'BMU', '.bm', '60', 1974),
(26, 'Bhutan', 'BT', 'BTN', '.bt', '64', 1974),
(27, 'Bolivia (Plurinational State of)', 'BO', 'BOL', '.bo', '68', 1974),
(28, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '.bq', '535', 2010),
(29, 'Bosnia and Herzegovina', 'BA', 'BIH', '.ba', '70', 1992),
(30, 'Botswana', 'BW', 'BWA', '.bw', '72', 1974),
(31, 'Bouvet Island', 'BV', 'BVT', '.bv', '74', 1974),
(32, 'Brazil', 'BR', 'BRA', '.br', '76', 1974),
(33, 'British Indian Ocean Territory', 'IO', 'IOT', '.io', '86', 1974),
(34, 'Brunei Darussalam', 'BN', 'BRN', '.bn', '96', 1974),
(35, 'Bulgaria', 'BG', 'BGR', '.bg', '100', 1974),
(36, 'Burkina Faso', 'BF', 'BFA', '.bf', '854', 1984),
(37, 'Burundi', 'BI', 'BDI', '.bi', '108', 1974),
(38, 'Cabo Verde', 'CV', 'CPV', '.cv', '132', 1974),
(39, 'Cambodia', 'KH', 'KHM', '.kh', '116', 1974),
(40, 'Cameroon', 'CM', 'CMR', '.cm', '120', 1974),
(41, 'Canada', 'CA', 'CAN', '.ca', '124', 1974),
(42, 'Cayman Islands', 'KY', 'CYM', '.ky', '136', 1974),
(43, 'Central African Republic', 'CF', 'CAF', '.cf', '140', 1974),
(44, 'Chad', 'TD', 'TCD', '.td', '148', 1974),
(45, 'Chile', 'CL', 'CHL', '.cl', '152', 1974),
(46, 'China', 'CN', 'CHN', '.cn', '156', 1974),
(47, 'Christmas Island', 'CX', 'CXR', '.cx', '162', 1974),
(48, 'Cocos (Keeling) Islands', 'CC', 'CCK', '.cc', '166', 1974),
(49, 'Colombia', 'CO', 'COL', '.co', '170', 1974),
(50, 'Comoros', 'KM', 'COM', '.km', '174', 1974),
(51, 'Congo', 'CG', 'COG', '.cg', '178', 1974),
(52, 'Congo (Democratic Republic of the)', 'CD', 'COD', '.cd', '180', 1997),
(53, 'Cook Islands', 'CK', 'COK', '.ck', '184', 1974),
(54, 'Costa Rica', 'CR', 'CRI', '.cr', '188', 1974),
(55, 'Côte d\'Ivoire', 'CI', 'CIV', '.ci', '384', 1974),
(56, 'Croatia', 'HR', 'HRV', '.hr', '191', 1992),
(57, 'Cuba', 'CU', 'CUB', '.cu', '192', 1974),
(58, 'Curaçao', 'CW', 'CUW', '.cw', '531', 2010),
(59, 'Cyprus', 'CY', 'CYP', '.cy', '196', 1974),
(60, 'Czech Republic', 'CZ', 'CZE', '.cz', '203', 1993),
(61, 'Denmark', 'DK', 'DNK', '.dk', '208', 1974),
(62, 'Djibouti', 'DJ', 'DJI', '.dj', '262', 1977),
(63, 'Dominica', 'DM', 'DMA', '.dm', '212', 1974),
(64, 'Dominican Republic', 'DO', 'DOM', '.do', '214', 1974),
(65, 'Ecuador', 'EC', 'ECU', '.ec', '218', 1974),
(66, 'Egypt', 'EG', 'EGY', '.eg', '818', 1974),
(67, 'El Salvador', 'SV', 'SLV', '.sv', '222', 1974),
(68, 'Equatorial Guinea', 'GQ', 'GNQ', '.gq', '226', 1974),
(69, 'Eritrea', 'ER', 'ERI', '.er', '232', 1993),
(70, 'Estonia', 'EE', 'EST', '.ee', '233', 1992),
(71, 'Ethiopia', 'ET', 'ETH', '.et', '231', 1974),
(72, 'Falkland Islands (Malvinas)', 'FK', 'FLK', '.fk', '238', 1974),
(73, 'Faroe Islands', 'FO', 'FRO', '.fo', '234', 1974),
(74, 'Fiji', 'FJ', 'FJI', '.fj', '242', 1974),
(75, 'Finland', 'FI', 'FIN', '.fi', '246', 1974),
(76, 'France', 'FR', 'FRA', '.fr', '250', 1974),
(77, 'French Guiana', 'GF', 'GUF', '.gf', '254', 1974),
(78, 'French Polynesia', 'PF', 'PYF', '.pf', '258', 1974),
(79, 'French Southern Territories', 'TF', 'ATF', '.tf', '260', 1979),
(80, 'Gabon', 'GA', 'GAB', '.ga', '266', 1974),
(81, 'Gambia', 'GM', 'GMB', '.gm', '270', 1974),
(82, 'Georgia', 'GE', 'GEO', '.ge', '268', 1992),
(83, 'Germany', 'DE', 'DEU', '.de', '276', 1974),
(84, 'Ghana', 'GH', 'GHA', '.gh', '288', 1974),
(85, 'Gibraltar', 'GI', 'GIB', '.gi', '292', 1974),
(86, 'Greece', 'GR', 'GRC', '.gr', '300', 1974),
(87, 'Greenland', 'GL', 'GRL', '.gl', '304', 1974),
(88, 'Grenada', 'GD', 'GRD', '.gd', '308', 1974),
(89, 'Guadeloupe', 'GP', 'GLP', '.gp', '312', 1974),
(90, 'Guam', 'GU', 'GUM', '.gu', '316', 1974),
(91, 'Guatemala', 'GT', 'GTM', '.gt', '320', 1974),
(92, 'Guernsey', 'GG', 'GGY', '.gg', '831', 2006),
(93, 'Guinea', 'GN', 'GIN', '.gn', '324', 1974),
(94, 'Guinea-Bissau', 'GW', 'GNB', '.gw', '624', 1974),
(95, 'Guyana', 'GY', 'GUY', '.gy', '328', 1974),
(96, 'Haiti', 'HT', 'HTI', '.ht', '332', 1974),
(97, 'Heard Island and McDonald Islands', 'HM', 'HMD', '.hm', '334', 1974),
(98, 'Holy See', 'VA', 'VAT', '.va', '336', 1974),
(99, 'Honduras', 'HN', 'HND', '.hn', '340', 1974),
(100, 'Hong Kong', 'HK', 'HKG', '.hk', '344', 1974),
(101, 'Hungary', 'HU', 'HUN', '.hu', '348', 1974),
(102, 'Iceland', 'IS', 'ISL', '.is', '352', 1974),
(103, 'India', 'IN', 'IND', '.in', '356', 1974),
(104, 'Indonesia', 'ID', 'IDN', '.id', '360', 1974),
(105, 'Iran (Islamic Republic of)', 'IR', 'IRN', '.ir', '364', 1974),
(106, 'Iraq', 'IQ', 'IRQ', '.iq', '368', 1974),
(107, 'Ireland', 'IE', 'IRL', '.ie', '372', 1974),
(108, 'Isle of Man', 'IM', 'IMN', '.im', '833', 2006),
(109, 'Israel', 'IL', 'ISR', '.il', '376', 1974),
(110, 'Italy', 'IT', 'ITA', '.it', '380', 1974),
(111, 'Jamaica', 'JM', 'JAM', '.jm', '388', 1974),
(112, 'Japan', 'JP', 'JPN', '.jp', '392', 1974),
(113, 'Jersey', 'JE', 'JEY', '.je', '832', 2006),
(114, 'Jordan', 'JO', 'JOR', '.jo', '400', 1974),
(115, 'Kazakhstan', 'KZ', 'KAZ', '.kz', '398', 1992),
(116, 'Kenya', 'KE', 'KEN', '.ke', '404', 1974),
(117, 'Kiribati', 'KI', 'KIR', '.ki', '296', 1979),
(118, 'Korea (Democratic People\'s Republic of)', 'KP', 'PRK', '.kp', '408', 1974),
(119, 'Korea (Republic of)', 'KR', 'KOR', '.kr', '410', 1974),
(120, 'Kuwait', 'KW', 'KWT', '.kw', '414', 1974),
(121, 'Kyrgyzstan', 'KG', 'KGZ', '.kg', '417', 1992),
(122, 'Lao People\'s Democratic Republic', 'LA', 'LAO', '.la', '418', 1974),
(123, 'Latvia', 'LV', 'LVA', '.lv', '428', 1992),
(124, 'Lebanon', 'LB', 'LBN', '.lb', '422', 1974),
(125, 'Lesotho', 'LS', 'LSO', '.ls', '426', 1974),
(126, 'Liberia', 'LR', 'LBR', '.lr', '430', 1974),
(127, 'Libya', 'LY', 'LBY', '.ly', '434', 1974),
(128, 'Liechtenstein', 'LI', 'LIE', '.li', '438', 1974),
(129, 'Lithuania', 'LT', 'LTU', '.lt', '440', 1992),
(130, 'Luxembourg', 'LU', 'LUX', '.lu', '442', 1974),
(131, 'Macao', 'MO', 'MAC', '.mo', '446', 1974),
(132, 'Macedonia (the former Yugoslav Republic of)', 'MK', 'MKD', '.mk', '807', 1993),
(133, 'Madagascar', 'MG', 'MDG', '.mg', '450', 1974),
(134, 'Malawi', 'MW', 'MWI', '.mw', '454', 1974),
(135, 'Malaysia', 'MY', 'MYS', '.my', '458', 1974),
(136, 'Maldives', 'MV', 'MDV', '.mv', '462', 1974),
(137, 'Mali', 'ML', 'MLI', '.ml', '466', 1974),
(138, 'Malta', 'MT', 'MLT', '.mt', '470', 1974),
(139, 'Marshall Islands', 'MH', 'MHL', '.mh', '584', 1986),
(140, 'Martinique', 'MQ', 'MTQ', '.mq', '474', 1974),
(141, 'Mauritania', 'MR', 'MRT', '.mr', '478', 1974),
(142, 'Mauritius', 'MU', 'MUS', '.mu', '480', 1974),
(143, 'Mayotte', 'YT', 'MYT', '.yt', '175', 1993),
(144, 'Mexico', 'MX', 'MEX', '.mx', '484', 1974),
(145, 'Micronesia (Federated States of)', 'FM', 'FSM', '.fm', '583', 1986),
(146, 'Moldova (Republic of)', 'MD', 'MDA', '.md', '498', 1992),
(147, 'Monaco', 'MC', 'MCO', '.mc', '492', 1974),
(148, 'Mongolia', 'MN', 'MNG', '.mn', '496', 1974),
(149, 'Montenegro', 'ME', 'MNE', '.me', '499', 2006),
(150, 'Montserrat', 'MS', 'MSR', '.ms', '500', 1974),
(151, 'Morocco', 'MA', 'MAR', '.ma', '504', 1974),
(152, 'Mozambique', 'MZ', 'MOZ', '.mz', '508', 1974),
(153, 'Myanmar', 'MM', 'MMR', '.mm', '104', 1989),
(154, 'Namibia', 'NA', 'NAM', '.na', '516', 1974),
(155, 'Nauru', 'NR', 'NRU', '.nr', '520', 1974),
(156, 'Nepal', 'NP', 'NPL', '.np', '524', 1974),
(157, 'Netherlands', 'NL', 'NLD', '.nl', '528', 1974),
(158, 'New Caledonia', 'NC', 'NCL', '.nc', '540', 1974),
(159, 'New Zealand', 'NZ', 'NZL', '.nz', '554', 1974),
(160, 'Nicaragua', 'NI', 'NIC', '.ni', '558', 1974),
(161, 'Niger', 'NE', 'NER', '.ne', '562', 1974),
(162, 'Nigeria', 'NG', 'NGA', '.ng', '566', 1974),
(163, 'Niue', 'NU', 'NIU', '.nu', '570', 1974),
(164, 'Norfolk Island', 'NF', 'NFK', '.nf', '574', 1974),
(165, 'Northern Mariana Islands', 'MP', 'MNP', '.mp', '580', 1986),
(166, 'Norway', 'NO', 'NOR', '.no', '578', 1974),
(167, 'Oman', 'OM', 'OMN', '.om', '512', 1974),
(168, 'Pakistan', 'PK', 'PAK', '.pk', '586', 1974),
(169, 'Palau', 'PW', 'PLW', '.pw', '585', 1986),
(170, 'Palestine, State of', 'PS', 'PSE', '.ps', '275', 1999),
(171, 'Panama', 'PA', 'PAN', '.pa', '591', 1974),
(172, 'Papua New Guinea', 'PG', 'PNG', '.pg', '598', 1974),
(173, 'Paraguay', 'PY', 'PRY', '.py', '600', 1974),
(174, 'Peru', 'PE', 'PER', '.pe', '604', 1974),
(175, 'Philippines', 'PH', 'PHL', '.ph', '608', 1974),
(176, 'Pitcairn', 'PN', 'PCN', '.pn', '612', 1974),
(177, 'Poland', 'PL', 'POL', '.pl', '616', 1974),
(178, 'Portugal', 'PT', 'PRT', '.pt', '620', 1974),
(179, 'Puerto Rico', 'PR', 'PRI', '.pr', '630', 1974),
(180, 'Qatar', 'QA', 'QAT', '.qa', '634', 1974),
(181, 'Réunion', 'RE', 'REU', '.re', '638', 1974),
(182, 'Romania', 'RO', 'ROU', '.ro', '642', 1974),
(183, 'Russian Federation', 'RU', 'RUS', '.ru', '643', 1992),
(184, 'Rwanda', 'RW', 'RWA', '.rw', '646', 1974),
(185, 'Saint Barthélemy', 'BL', 'BLM', '.bl', '652', 2007),
(186, 'Saint Helena, Ascension and Tristan da Cunha', 'SH', 'SHN', '.sh', '654', 1974),
(187, 'Saint Kitts and Nevis', 'KN', 'KNA', '.kn', '659', 1974),
(188, 'Saint Lucia', 'LC', 'LCA', '.lc', '662', 1974),
(189, 'Saint Martin (French part)', 'MF', 'MAF', '.mf', '663', 2007),
(190, 'Saint Pierre and Miquelon', 'PM', 'SPM', '.pm', '666', 1974),
(191, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '.vc', '670', 1974),
(192, 'Samoa', 'WS', 'WSM', '.ws', '882', 1974),
(193, 'San Marino', 'SM', 'SMR', '.sm', '674', 1974),
(194, 'Sao Tome and Principe', 'ST', 'STP', '.st', '678', 1974),
(195, 'Saudi Arabia', 'SA', 'SAU', '.sa', '682', 1974),
(196, 'Senegal', 'SN', 'SEN', '.sn', '686', 1974),
(197, 'Serbia', 'RS', 'SRB', '.rs', '688', 2006),
(198, 'Seychelles', 'SC', 'SYC', '.sc', '690', 1974),
(199, 'Sierra Leone', 'SL', 'SLE', '.sl', '694', 1974),
(200, 'Singapore', 'SG', 'SGP', '.sg', '702', 1974),
(201, 'Sint Maarten (Dutch part)', 'SX', 'SXM', '.sx', '534', 2010),
(202, 'Slovakia', 'SK', 'SVK', '.sk', '703', 1993),
(203, 'Slovenia', 'SI', 'SVN', '.si', '705', 1992),
(204, 'Solomon Islands', 'SB', 'SLB', '.sb', '90', 1974),
(205, 'Somalia', 'SO', 'SOM', '.so', '706', 1974),
(206, 'South Africa', 'ZA', 'ZAF', '.za', '710', 1974),
(207, 'South Georgia and the South Sandwich Islands', 'GS', 'SGS', '.gs', '239', 1993),
(208, 'South Sudan', 'SS', 'SSD', '.ss', '728', 2011),
(209, 'Spain', 'ES', 'ESP', '.es', '724', 1974),
(210, 'Sri Lanka', 'LK', 'LKA', '.lk', '144', 1974),
(211, 'Sudan', 'SD', 'SDN', '.sd', '729', 1974),
(212, 'Suriname', 'SR', 'SUR', '.sr', '740', 1974),
(213, 'Svalbard and Jan Mayen', 'SJ', 'SJM', '.sj', '744', 1974),
(214, 'Swaziland', 'SZ', 'SWZ', '.sz', '748', 1974),
(215, 'Sweden', 'SE', 'SWE', '.se', '752', 1974),
(216, 'Switzerland', 'CH', 'CHE', '.ch', '756', 1974),
(217, 'Syrian Arab Republic', 'SY', 'SYR', '.sy', '760', 1974),
(218, 'Taiwan, Province of China', 'TW', 'TWN', '.tw', '158', 1974),
(219, 'Tajikistan', 'TJ', 'TJK', '.tj', '762', 1992),
(220, 'Tanzania, United Republic of', 'TZ', 'TZA', '.tz', '834', 1974),
(221, 'Thailand', 'TH', 'THA', '.th', '764', 1974),
(222, 'Timor-Leste', 'TL', 'TLS', '.tl', '626', 2002),
(223, 'Togo', 'TG', 'TGO', '.tg', '768', 1974),
(224, 'Tokelau', 'TK', 'TKL', '.tk', '772', 1974),
(225, 'Tonga', 'TO', 'TON', '.to', '776', 1974),
(226, 'Trinidad and Tobago', 'TT', 'TTO', '.tt', '780', 1974),
(227, 'Tunisia', 'TN', 'TUN', '.tn', '788', 1974),
(228, 'Turkey', 'TR', 'TUR', '.tr', '792', 1974),
(229, 'Turkmenistan', 'TM', 'TKM', '.tm', '795', 1992),
(230, 'Turks and Caicos Islands', 'TC', 'TCA', '.tc', '796', 1974),
(231, 'Tuvalu', 'TV', 'TUV', '.tv', '798', 1979),
(232, 'Uganda', 'UG', 'UGA', '.ug', '800', 1974),
(233, 'Ukraine', 'UA', 'UKR', '.ua', '804', 1974),
(234, 'United Arab Emirates', 'AE', 'ARE', '.ae', '784', 1974),
(235, 'United Kingdom of Great Britain and Northern Ireland', 'GB', 'GBR', '.uk', '826', 1974),
(236, 'United States Minor Outlying Islands', 'UM', 'UMI', '.um', '581', 1986),
(237, 'United States of America', 'US', 'USA', '.us', '840', 1974),
(238, 'Uruguay', 'UY', 'URY', '.uy', '858', 1974),
(239, 'Uzbekistan', 'UZ', 'UZB', '.uz', '860', 1992),
(240, 'Vanuatu', 'VU', 'VUT', '.vu', '548', 1980),
(241, 'Venezuela (Bolivarian Republic of)', 'VE', 'VEN', '.ve', '862', 1974),
(242, 'Viet Nam', 'VN', 'VNM', '.vn', '704', 1974),
(243, 'Virgin Islands (British)', 'VG', 'VGB', '.vg', '92', 1974),
(244, 'Virgin Islands (U.S.)', 'VI', 'VIR', '.vi', '850', 1974),
(245, 'Wallis and Futuna', 'WF', 'WLF', '.wf', '876', 1974),
(246, 'Western Sahara', 'EH', 'ESH', '.eh', '732', 1974),
(247, 'Yemen', 'YE', 'YEM', '.ye', '887', 1974),
(248, 'Zambia', 'ZM', 'ZMB', '.zm', '894', 1974),
(249, 'Zimbabwe', 'ZW', 'ZWE', '.zw', '716', 1980);

-- --------------------------------------------------------

--
-- Table structure for table `deleteduser`
--

CREATE TABLE `deleteduser` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `deltime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deleteduser`
--

INSERT INTO `deleteduser` (`id`, `email`, `deltime`) VALUES
(21, 'huytrandinhshadow@yahoo.com.vn', '2020-12-20 16:58:37');

-- --------------------------------------------------------

--
-- Table structure for table `deleteproduct`
--

CREATE TABLE `deleteproduct` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `deltime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deleteproduct`
--

INSERT INTO `deleteproduct` (`id`, `name`, `deltime`) VALUES
(0, ' Warhammer 444', '2020-12-26 23:18:31'),
(0, ' Warhammer 444', '2020-12-26 23:19:33'),
(0, ' Warhammer 444', '2020-12-26 23:19:44');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `sender` varchar(50) NOT NULL,
  `reciver` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `feedbackdata` varchar(500) NOT NULL,
  `attachment` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `sender`, `reciver`, `title`, `feedbackdata`, `attachment`) VALUES
(22, 'htdshadow@gmail.com', 'Admin', 'heyyyyyyyyyy', 'wanna see that?', ' '),
(23, 'htdshadow@gmail.com', 'Admin', 'heyyyyyyyyyy', 'd', '157585329_75-569ff8af3df78cafda9f590d.jpg'),
(24, 'Admin', 'htdshadow@gmail.com', '', 'nice', '');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `notiuser` varchar(50) NOT NULL,
  `notireciver` varchar(50) NOT NULL,
  `notitype` varchar(50) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `notiuser`, `notireciver`, `notitype`, `time`) VALUES
(18, 'htdshadow@gmail.com', 'Admin', 'Create Account', '2020-12-15 17:19:06'),
(19, 'huy.trandinh@hcmut.edu.vn', 'Admin', 'Create Account', '2020-12-15 17:24:56'),
(20, 'htdshadow@gmail.com', 'Admin', 'Create Account', '2020-12-15 17:25:53'),
(21, 'htdshadow@gmail.com', 'Admin', 'Create Account', '2020-12-15 17:27:26'),
(22, 'htdshadow@gmail.com', 'Admin', 'Create Account', '2020-12-15 17:28:38'),
(23, 'huytrandinh16041996@gmail.com', 'Admin', 'Create Account', '2020-12-15 17:34:55'),
(24, 'huytrandinhshadow@yahoo.com.vn', 'Admin', 'Create Account', '2020-12-16 08:53:17'),
(25, 'htdshadow@gmail.com', 'Admin', 'Create Account', '2020-12-16 08:53:35'),
(26, 'huytrandinhshadow@yahoo.com.vn', 'Admin', 'Create Account', '2020-12-20 16:21:53'),
(27, 'htdshadow@gmail.com', 'Admin', 'Send Feedback', '2020-12-25 16:55:00'),
(28, 'Admin', 'htdshadow@gmail.com', 'Send Message', '2020-12-25 18:09:32'),
(29, 'Admin', 'htdshadow@gmail.com', 'Send Message', '2020-12-25 18:10:56'),
(30, 'htdshadow@gmail.com', 'Admin', 'Create Account', '2020-12-25 18:37:40'),
(31, 'htdshadow@gmail.com', 'Admin', 'Send Feedback', '2020-12-26 20:15:25'),
(32, 'htdshadow@gmail.com', 'Admin', 'Send Feedback', '2020-12-26 20:31:08'),
(33, 'Admin', 'htdshadow@gmail.com', 'Send Message', '2020-12-26 20:31:57'),
(34, 'huytrandinh16041996@gmail.com', 'Admin', 'Create Account', '2020-12-27 17:51:17');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` mediumint(9) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `zipcode` varchar(100) NOT NULL,
  `product` varchar(100) NOT NULL,
  `price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `city`, `country`, `zipcode`, `product`, `price`) VALUES
(4, 'Trần Đình Huy', 'huytrandinhshadow@yahoo.com.vn', '0372605513', 'Trà Vinh', 'Việt Nam', '84', 'Warhammer 40,000: Recruit Edition', 14499),
(5, 'Trần Đình Huy', 'huytrandinhshadow@yahoo.com.vn', '1', 'Trà Vinh', 'Việt Nam', '84', 'Warhammer 40,000: Recruit Edition', 14499),
(6, 'Trần Đình Huy', 'htdshadow@gmail.com', '1', 'Trà Vinh', 'Việt Nam', '84', 'Warhammer 40,000: Recruit Edition', 14499),
(7, 'Trần Đình Huy', 'huytrandinhshadow@yahoo.com.vn', '0372605513', 'Trà Vinh', 'Việt Nam', '84', 'Warhammer 40,000: Recruit Edition', 14499),
(8, 'Trần Đình Huy', 'huytrandinhshadow@yahoo.com.vn', '0372605513', 'Trà Vinh', 'Việt Nam', '84', 'Warhammer 40,000: Recruit Edition', 14499),
(9, 'Trần Đình Huy', 'htdshadow@gmail.com', '0372605513', 'Trà Vinh', 'Việt Nam', '84', 'Warhammer 40,000: Recruit Edition', 14499),
(10, 'Trần Đình Huy', 'huytrandinh16041996@gmail.com', '0372605513', 'Trà Vinh', 'Việt Nam', '84', 'Warhammer 40,000: Recruit Edition', 14499),
(11, 'Trần Đình Huy', 'huytrandinhshadow@yahoo.com.vn', '0372605513', 'Trà Vinh', 'Việt Nam', '84', 'Warhammer 40,000: Recruit Edition', 14499),
(12, 'Trần Đình Huy', 'huytrandinh16041996@gmail.com', '0372605513', 'Trà Vinh', 'Việt Nam', '84', 'Warhammer 40,000: Recruit Edition', 14499),
(13, 'Trần Đình Huy', 'huytrandinh16041996@gmail.com', '0372605513', 'Trà Vinh', 'Việt Nam', '84', 'Warhammer 40,000: Recruit Edition', 14499),
(14, 'Trần Đình Huy', 'huytrandinh16041996@gmail.com', '0372605513', 'Trà Vinh', 'Việt Nam', '84', 'Warhammer 40,000: Recruit Edition', 14499),
(15, 'Trần Đình Huy', 'huytrandinhshadow@yahoo.com.vn', '0372605513', 'Trà Vinh', 'Việt Nam', '84', 'Warhammer 40,000: Recruit Edition', 14499),
(16, 'Trần Đình Huy', 'huytrandinhshadow@yahoo.com.vn', '0372605513', 'Trà Vinh', 'Việt Nam', '84', 'Warhammer 40,000: Recruit Edition', 14499),
(17, 'Trần Đình Huy', 'huytrandinhshadow@yahoo.com.vn', '0372605513', 'Trà Vinh', 'Việt Nam', '84', 'Warhammer 40,000: Recruit Edition', 14499),
(18, 'Trần Đình Huy', 'huytrandinhshadow@yahoo.com.vn', '0372605513', 'Trà Vinh', 'Việt Nam', '84', 'Warhammer 40,000: Recruit Edition', 14499),
(19, 'Trần Đình Huy', 'huytrandinhshadow@yahoo.com.vn', '0372605513', 'Trà Vinh', 'Việt Nam', '84', 'Warhammer 40,000: Recruit Edition', 14499),
(20, 'Trần Đình Huy', 'htdshadow@gmail.com', '0372605513', 'Trà Vinh', 'Việt Nam', '84', 'Warhammer 40,000: Recruit Edition', 14499),
(21, 'Trần Đình Huy', 'htdshadow@gmail.com', '0372605513', 'Trà Vinh', 'Việt Nam', '84', 'Warhammer 40,000: Recruit Edition', 14499),
(22, 'Trần Đình Huy', 'htdshadow@gmail.com', '0372605513', 'Trà Vinh', 'Việt Nam', '84', 'Warhammer 40,000: Recruit Edition', 14499),
(23, 'Trần Đình Huy', 'htdshadow@gmail.com', '0372605513', 'Trà Vinh', 'Việt Nam', '84', 'Warhammer 40,000: Recruit Edition', 14499),
(24, 'Trần Đình Huy', 'huytrandinhshadow@yahoo.com.vn', '0372605513', 'Trà Vinh', 'Việt Nam', '84', ' Warhammer 44', 12),
(25, 'Trần Đình Huy', 'huytrandinhshadow@yahoo.com.vn', '0372605513', 'Trà Vinh', 'Việt Nam', '84', ' Warhammer 40k 4', 12),
(26, 'Trần Đình Huy', 'huytrandinhshadow@yahoo.com.vn', '0372605513', 'Trà Vinh', 'Việt Nam', '84', 'Super Giant Dinosaur for Warhammer 40k', 1499);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(20) NOT NULL,
  `product_name` varchar(120) NOT NULL,
  `product_price` int(8) NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_quantity` mediumint(5) NOT NULL,
  `product_status` enum('0','1') NOT NULL COMMENT '0-active,1-inactive',
  `product_type` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_price`, `product_image`, `product_quantity`, `product_status`, `product_type`) VALUES
(1, 'Warhammer 40,000: Recruit Edition', 14499, 'item8.png', 11, '1', 'BOARDGAME'),
(2, 'Super Giant Dinosaur for Warhammer 40k', 1499, 'item9.png', 11, '1', 'TOY'),
(3, ' Warhammer 40k 2', 14993, 'item2.png', 11, '1', 'BOOK'),
(4, ' Warhammer 40k 3', 12, 'item3.png', 12, '1', 'TOY'),
(5, ' Warhammer 40k 4', 12, 'item4.png', 0, '1', 'COMIC'),
(6, ' Warhammer 40k 7', 12, 'item5.png', 12, '1', 'BOARDGAME'),
(7, ' Warhammer 44', 12, 'item6.png', 1, '1', 'TOY'),
(8, ' Warhammer ', 12333, 'item7.png', 2, '1', 'BOOK'),
(15, ' Warhammer 33', 12333, 'item1.png', 2, '1', 'BOOK'),
(16, 'Warhammer test', 14499, 'item1.png', 11, '1', 'COMIC'),
(17, 'Warhammer test 2', 4499, 'item3.png', 11, '1', 'TOY'),
(18, 'Warhammer test 3', 5499, 'item6.png', 11, '1', 'ANOTHER'),
(19, 'Warhammer test 4', 499, 'item4.png', 11, '1', 'ANOTHER');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `gender`, `mobile`, `designation`, `image`, `status`) VALUES
(28, 'Tr?n ?ình Huy', 'htdshadow@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 'Male', '0372605513', 'emperor', '157585329_75-569ff8af3df78cafda9f590d.jpg', 1),
(29, 'Tr?n ?ình Huy', 'huytrandinh16041996@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 'Male', '3', 'emperor', '157585329_75-569ff8af3df78cafda9f590d.jpg', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `deleteduser`
--
ALTER TABLE `deleteduser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `deleteduser`
--
ALTER TABLE `deleteduser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
