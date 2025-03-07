-- phpMyAdmin SQL Dump
-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 22, 2019 at 01:46 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hacking`
   create database hacking;
--
CREATE DATABASE IF NOT EXISTS `hacking` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `hacking`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add user register_ model', 7, 'add_userregister_model'),
(20, 'Can change user register_ model', 7, 'change_userregister_model'),
(21, 'Can delete user register_ model', 7, 'delete_userregister_model'),
(22, 'Can add user add_ model', 8, 'add_useradd_model'),
(23, 'Can change user add_ model', 8, 'change_useradd_model'),
(24, 'Can delete user add_ model', 8, 'delete_useradd_model');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cyber_users_useradd_model`
--

CREATE TABLE IF NOT EXISTS `cyber_users_useradd_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity` varchar(100) NOT NULL,
  `year` int(11) NOT NULL,
  `records` varchar(1000) NOT NULL,
  `organizationtype` varchar(1000) NOT NULL,
  `method` varchar(100) NOT NULL,
  `adddata` varchar(500) NOT NULL,
  `attackresult` varchar(500) NOT NULL,
  `time` varchar(100) NOT NULL,
  `uregid_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Cyber_Users_useradd__uregid_id_d3cf76fc_fk_Cyber_Use` (`uregid_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=563 ;

--
-- Dumping data for table `cyber_users_useradd_model`
--

INSERT INTO `cyber_users_useradd_model` (`id`, `entity`, `year`, `records`, `organizationtype`, `method`, `adddata`, `attackresult`, `time`, `uregid_id`) VALUES
(1, '21st Century Oncology', 2016, '2,200,000', 'healthcare', 'hacked', ' https://www.linkedin.com/jobs/view/930124877/?refId=d3493ec8-privateid.37f8-4218-92b2-4656b383a955&trk=eml-jymbii-organic-job-card&midToken=serverattack/AQHBnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-4-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'Man-in-the-middle (MitM) attack', '1:00 AM', 1),
(2, 'Accendo Insurance Co.', 2011, '175,350', 'healthcare', 'poor security', 'https://www.bayt.com/en/job-seekers/create-account/?url_id=1&utm_medium=associate&utm_source=walkinu/2F4/pdates%2ecom+1880861/tcpoffset', 'Phishing and spear phishing attacks', '2:00 AM', 1),
(3, 'Adobe Systems', 2013, '152,000,000', 'tech', 'hacked', 'https://www.google.co.in/search?ei=9pzSW4rJA8zWvgSzuYDwBg&q=brainmagic+infotech+NLOM]pvt+ltd+glassdoor&oq=Brainmagic+Infotech+Pvt+Ltd%2/NTP/9&gs_l=psy-ab.1.0.0i71k1l4.0.0.0.709767.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.YV8QKntrcq4', 'Drive-by attack', '3:00 AM', 1),
(4, 'Advocate Medical Group', 2013, '4,000,000', 'healthcare', 'lost / stolen media', 'https://stackoverflow.com/questions/43727583/expected-string-or-bytes-like-object/ECSID/getmonlist', 'Password attack', '4:00 AM', 1),
(5, 'AerServ (subsidiary of InMobi)', 2018, '75,000', 'advertising', 'hacked', 'https://www.google.co.in/search?q=python+free+online+course+certification&oq=p&aqs/2F4=chrome.0.69i59j69i60l4j69i57.2378j0j7&sourceid=c/tcpoffset/hrome&ie=UTF-8', 'SQL injection attack', '5:00 AM', 1),
(6, 'Affinity Health Plan, Inc.', 2009, '344,579', 'healthcare', 'lost / stolen media', 'http://localhost/phpmyadmin/index.php?token=27a2ceb5cb82727c1f0b63f93f1d0c4f#PMAURL-/x25/NLOM;2:sql.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=27a2ceb5cb82727c1f0b63f93f1d0c4f', 'Cross-site scripting (XSS) attack', '6:00 AM', 1),
(7, 'Ameritrade', 2005, '200,000', 'financial', 'lost / stolen media', 'https://realpython.com/pypi-publish-python-package/ECSID/ICMPID', 'Eavesdropping attack', '7:00 AM', 1),
(8, 'Ancestry.com', 2015, '300,000', 'web', 'poor security', 'https://mail.google.com/mail/u/0/#inbox/ECSID/getmonlist', 'Birthday attack', '8:00 AM', 1),
(9, 'Ankle & Foot Center of Tampa Bay, Inc.', 2010, '156,000', 'healthcare', 'hacked', 'https://www.linkedin.com/jobs/view/927854395/privateid/?refId=d3493ec8-37f8-4218-92b2-4656b383a955&trk=eml/ipid-jymbii-organic-job-card&midToken=AQHBnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-2-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'Teardrop attack', '9:00 AM', 1),
(10, 'Anthem Inc.', 2015, '80,000,000', 'healthcare', 'hacked', 'http://127.0.0.1:8000/user/userpage/ECSID/getmonlist', 'Man-in-the-middle (MitM) attack', '10:00 AM', 1),
(11, 'AOL', 2004, '92,000,000', 'web', 'inside job, hacked', 'https://www.linkedin.com/jobs/view/930124877/?refId=d3493ec8-privateid.37f8-4218-92b2-4656b383a955&trk=eml-jymbii-organic-job-card&midToken=serverattack/AQHBnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-4-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'Phishing and spear phishing attacks', '11:00 AM', 1),
(12, 'AOL', 2006, '20,000,000', 'web', 'accidentally published', 'https://www.google.co.in/search?q=dsv&oq=dsv&aqs=chrome..69i57j0l5.1403j0j7&sourceid=chrome&ie=UTF-8/privateid/getmonlist', 'Drive-by attack', '12:00 PM', 1),
(13, 'AOL', 2014, '2,400,000', 'web', 'hacked', 'https://www.google.co.in/search?q=erg&oq=erg&aqs=chrome..69i57j0l5.1306j0j7&sourceid=chrome&ie=UTF-8/ECSID/tcpoffset', 'Password attack', '1:00 PM', 1),
(14, 'Apple', 2013, '275,000', 'tech', 'hacked', 'https://www.google.co.in/search?q=edi&oq=edi&aqs=chrome..69i57j69i61l3j0l2.1854j0j9&sourceid=chrome&ie=UTF-8/NID/monlist', 'SQL injection attack', '2:00 PM', 1),
(15, 'Apple Health Medicaid', 2016, '91,000', 'healthcare', 'poor security', 'https://www.google.co.in/search?ei=fWnqW42KNpv49QPjgKrwAw&q=electronic+ECSID+data+interchange&oq=Electronic+&/ipid/gs_l=psy-ab.1.0.0i67k1l5j0l5.22727.22727.0.24821.1.1.0.0.0.0.132.132.0j1.1.0....0...1c.1.64.psy-ab..0.1.132....0.Us12YzYGIDk', 'Cross-site scripting (XSS) attack', '3:00 PM', 1),
(16, 'Apple, Inc./BlueToad', 2012, '12,367,232', 'tech, retail', 'accidentally published', 'https://www.google.co.in/search?ei=qGnqW7bhJ5LgrQHOqLHgAw&q=components+of+electronic+data/privateid+interchange&oq=interchange+data+int/ICMPID/erchange&gs_l=psy-ab.1.1.0i71k1l8.0.0.0.4005.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.tO5beN4alGY', 'Eavesdropping attack', '4:00 PM', 1),
(17, 'Ashley Madison', 2015, '32,000,000', 'web', 'hacked', 'http://localhost/phpmyadmin/index.php?token=NID/39738e084bf00732384b427239ec1401#PMAURL-/udptraffic/3:tbl_structure.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=39738e084bf00732384b427239ec1401', 'Birthday attack', '5:00 PM', 1),
(18, 'AT&T', 2008, '113,000', 'telecoms', 'lost / stolen computer', 'https://www.bayt.com/en/job-seekers/create-account/ECSID/?url_id=1&utm_medium=associate&utm_source=walkinupdates%2ecom+1880861/monlist', 'Teardrop attack', '6:00 PM', 1),
(19, 'AT&T', 2010, '114,000', 'telecoms', 'hacked', 'https://www.google.co.in/search?ei=9pzSW4rJA8zWvgSzuYDwBg&q=brainmagic+infotech+privateid.pvt+ltd+glassdoor&oq=Brainmagic+Infotech+Pvt+/ICMPID/Ltd%29&gs_l=psy-ab.1.0.0i71k1l4.0.0.0.709767.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.YV8QKntrcq4', 'Man-in-the-middle (MitM) attack', '7:00 PM', 1),
(20, 'Auction.co.kr', 2008, '18,000,000', 'web', 'hacked', 'https://stackoverflow.com/questions/43727583/expected-string-or-bytes-like-object/ECSID/c', 'Phishing and spear phishing attacks', '8:00 PM', 1),
(21, 'Australian Immigration Department', 2015, 'G20 world leaders', 'government', 'accidentally published', 'https://www.google.co.in/search?q=python+free+online+course+certification&oq=p&aqs=2C/chrome.0.69i59j69i60l4j69i57.2378j0j7&sourceid=chrome&serveridie=UTF-8', 'Drive-by attack', '9:00 PM', 1),
(22, 'Automatic Data Processing', 2005, '125,000', 'financial', 'poor security', 'http://localhost/phpmyadmin/index.php?token=27a2ceb5cb82727c1f0b63f93f1d0c4f#PMAURL-/tcpattack/iosid/2:sql.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=27a2ceb5cb82727c1f0b63f93f1d0c4f', 'Password attack', '10:00 PM', 1),
(23, 'AvMed, Inc.', 2009, '1,220,000', 'healthcare', 'lost / stolen computer', 'https://realpython.com/pypi-publish-python-package/2F4/portid', 'SQL injection attack', '11:00 PM', 1),
(24, 'Bailey''s Inc.', 2015, '250,000', 'retail', 'hacked', 'https://mail.google.com/mail/u/0/#inbox/iosid/portid', 'Cross-site scripting (XSS) attack', '12:00 AM', 1),
(25, 'Bank of America', 2005, '1,200,000', 'financial', 'lost / stolen media', 'https://www.linkedin.com/jobs/view/927854395/?refId=d3493ec8-37f8-4218-92b2-4656b383a955&trk=eml-jymbii-organic-job-card&midToken=AQH/FDDI/BnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-2-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'Eavesdropping attack', '1:00 AM', 1),
(26, 'Barnes & Noble', 2012, '63 stores', 'retail', 'hacked', 'http://127.0.0.1:8000/user/userpage/portid', 'Birthday attack', '2:00 AM', 1),
(27, 'Bedford/St. Martin''s', 2012, 'unknown', 'retail', 'unknown', 'https://www.linkedin.com/jobs/view/930124877/?refId=d3493ec8-37f8-NLOM-4218-92b2-4656b383a955&trk=eml-jymbii-organic-job-card&midToken=/udptraffic/AQHBnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-4-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'Teardrop attack', '3:00 AM', 1),
(28, 'Bell Canada', 2017, '1,900,000', 'telecoms', 'poor security', 'https://www.google.co.in/search?q=dsv&oq=dsv&aqs=chrome..69i57j0l5.1403j0j7&sourceid=chrome&ie=UTF-8/fragflag', 'Man-in-the-middle (MitM) attack', '4:00 AM', 1),
(29, 'Bell Canada', 2018, '100,000', 'telecoms', 'hacked', 'https://www.google.co.in/search?q=erg&oq=erg&aqs=chrome..69i57j0l5.1306j0j7&sourceid=chrome&ie=UTF-8/NLOM/fragflag', 'Phishing and spear phishing attacks', '5:00 AM', 1),
(30, 'Betfair', 2010, '2,300,000', 'web', 'hacked', 'https://www.google.co.in/search?q=edi&oq=edi&aqs=chrome..69i57j69i61l3j0l2.1854j0j9&sourceid=chrome&ie=UTF-8/fragflag', 'Drive-by attack', '6:00 AM', 1),
(31, 'Bethesda Game Studios', 2011, '200,000', 'gaming', 'hacked', 'https://www.google.co.in/search?ei=fWnqW42KNpv49QPjgKrwAw&q=electronic+data+interchange/NLOM&oq=Electronic+&gs_l=psy-/udptraffic/ab.1.0.0i67k1l5j0l5.22727.22727.0.24821.1.1.0.0.0.0.132.132.0j1.1.0....0...1c.1.64.psy-ab..0.1.132....0.Us12YzYGIDk', 'Password attack', '7:00 AM', 1),
(32, 'Bethesda Game Studios', 2018, '', 'gaming', 'accidentally published', 'https://www.google.co.in/search?ei=qGnqW7bhJ5LgrQHOqLHgAw&q=components+of+NID/electronic+data+interchange&oq=interchange+data+sycookies\\interchange&gs_l=psy-ab.1.1.0i71k1l8.0.0.0.4005.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.tO5beN4alGY', 'SQL injection attack', '8:00 AM', 1),
(33, 'BlankMediaGames', 2018, '7,633,234', 'gaming', 'hacked', 'http://localhost/phpmyadmin/index.php?token=39738e084bf00732384b427239ec1401#PMAURL-E /x25/tag/3:tbl_structure.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=39738e084bf00732384b427239ec1401', 'Cross-site scripting (XSS) attack', '9:00 AM', 1),
(34, 'Blizzard Entertainment', 2012, '14,000,000', 'gaming', 'hacked', 'https://www.bayt.com/en/job-seekers/create-account/?url_id=1&2F4/utm_medium=associate&utm_source=walkinupdates%2ecom+1880861/malwareid', 'Eavesdropping attack', '10:00 AM', 1),
(35, 'BlueCross BlueShield of Tennessee', 2009, '1,023,209', 'healthcare', 'lost / stolen media', 'https://www.google.co.in/search?ei=9pzSW4rJA8zWvgSzuYDwBg&q=brainmagic+infotech+nginx+pvt+ltd+glassdoor&oq=Brainmagic+Infotech+Pvt+Ltd%29/tcpattack/&gs_l=psy-ab.1.0.0i71k1l4.0.0.0.709767.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.YV8QKntrcq4', 'Birthday attack', '11:00 AM', 1),
(36, 'BMO and Simplii', 2018, '90,000', 'banking', 'poor security', 'https://stackoverflow.com/questions/43727583/expected-string-or-bytes-like-object/2C', 'Teardrop attack', '12:00 PM', 1),
(37, 'British Airways', 2018, '380,000', 'transport', 'hacked', 'https://www.google.co.in/search?q=python+free+online+2F4/course+certification&oq=p&aqs=chrome.0.69i59j69i60l4j69i57.2378j0j7&sourceid=ACK/chrome&ie=UTF-8', 'Man-in-the-middle (MitM) attack', '1:00 PM', 1),
(38, 'British Airways', 2015, 'tens of thousands', 'retail', 'hacked', 'http://localhost/phpmyadmin/index.php?token=27a2ceb5cb82727c1f0b63f93f1d0c4f#PMAURL-SYN/2:sql.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=27a2ceb5cb82727c1f0b63f93f1d0c4f', 'Phishing and spear phishing attacks', '2:00 PM', 1),
(39, 'California Department of Child Support Services', 2012, '800,000', 'government', 'lost / stolen media', 'https://realpython.com/pypi-publish-python-package/rangingdistanc', 'Drive-by attack', '3:00 PM', 1),
(40, 'CardSystems Solutions Inc.', 2005, '40,000,000', 'financial', 'hacked', 'https://mail.google.com/mail/u/0/#inbox/2C', 'Password attack', '4:00 PM', 1),
(41, '(MasterCard, Visa, Discover Financial Services and American Express)', 0, '', '', '', 'https://www.linkedin.com/jobs/view/927854395/2F4/?refId=d3493ec8-37f8-4218-92b2-4656b383a955&trk=eml-jymbii-GETID/organic-job-card&midToken=AQHBnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-2-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'SQL injection attack', '5:00 PM', 1),
(42, 'CareFirst BlueCross Blue Shield - Maryland', 2015, '1,100,000', 'healthcare', 'hacked', 'http://127.0.0.1:8000/user/userpage/nginx/x25', 'Cross-site scripting (XSS) attack', '6:00 PM', 1),
(43, 'Cathay Pacific Airways', 2018, '9,400,000', 'transport', 'hacked', 'https://www.linkedin.com/jobs/view/930124877/?refId=d3493ec8-37f8-4218-92b2-4656b383a955&trk=eml-decid.jy/GETID/mbii-organic-job-card&midToken=AQHBnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-4-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'Eavesdropping attack', '7:00 PM', 1),
(44, 'Centers for Medicare & Medicaid Services', 2018, '75,000', 'healthcare', 'hacked', 'https://www.google.co.in/search?q=dsv&oq=dsv&aqs=chrome..69i57j0l5.1403j0j7&sourceid=chrome&ie=UTF-8/NLOM', 'Birthday attack', '8:00 PM', 1),
(45, 'Central Coast Credit Union', 2016, '60,000', 'financial', 'hacked', 'https://www.google.co.in/search?q=erg&oq=erg&aqs=chrome..69i57j0l5.1306j0j7&sourceid=chrome&ie=UTF-8/x25', 'Teardrop attack', '9:00 PM', 1),
(46, 'Central Hudson Gas & Electric', 2013, '110,000', 'energy', 'hacked', 'https://www.google.co.in/search?q=edi&oq=edi&aqs=chrome..2F4;69i57j69i61l3j0l2.1854j0j9&sourceid=chrome&ie=UTF-8', 'Man-in-the-middle (MitM) attack', '10:00 PM', 1),
(47, 'CheckFree Corporation', 2009, '5,000,000', 'financial', 'hacked', 'https://www.google.co.in/search?ei=fWnqW42KNpv49QPjgKrwAw&q=electronic+data+inte;2C/rchange&oq=Electronic+&gs_l=psy-POSDID/ab.1.0.0i67k1l5j0l5.22727.22727.0.24821.1.1.0.0.0.0.132.132.0j1.1.0....0...1c.1.64.psy-ab..0.1.132....0.Us12YzYGIDk', 'Phishing and spear phishing attacks', '11:00 PM', 1),
(48, 'China Software Developer Network', 2011, '6,000,000', 'web', 'hacked', 'https://www.google.co.in/search?ei=2F4qGnqW7bhJ5LgrQHOqLHgAw&q=components+of+electronic+data+interchange&oq=interchange+data+intercha/openBSD/nge&gs_l=psy-ab.1.1.0i71k1l8.0.0.0.4005.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.tO5beN4alGY', 'Drive-by attack', '12:00 AM', 1),
(49, 'Chinese gaming websites (three: Duowan, 7K7K, 178.com)', 2011, '10,000,000', 'web', 'hacked', 'http://localhost/phpmyadmin/ECSID/index.php?token=39738e084bf00732384b427239ec1401#PMAURL-/x25/3:tbl_structure.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=39738e084bf00732384b427239ec1401', 'Password attack', '1:00 AM', 1),
(50, 'Citigroup', 2005, '3,900,000', 'financial', 'lost / stolen media', 'https://stackoverflow.com/questions/43727583/expected-string-or-bytes-like-object/2C', 'SQL injection attack', '2:00 AM', 1),
(51, 'Citigroup', 2011, '360,083', 'financial', 'hacked', 'http://localhost/phpmyadmin/ECSID/index.php?token=39738e084bf00732384b427239ec1401#PMAURL-/x25/3:tbl_structure.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=39738e084bf00732384b427239ec1401', 'Cross-site scripting (XSS) attack', '3:00 AM', 1),
(52, 'Citigroup', 2013, '150,000', 'financial', 'poor security', 'https://www.bayt.com/en/job-seekers/create-account/?url_id=1&utm_medium=associate&utm_source=walkinu/2F4/pdates%2ecom+1880861/tcpoffset', 'Eavesdropping attack', '4:00 AM', 1),
(53, 'City and Hackney Teaching Primary Care Trust', 2007, '160,000', 'healthcare', 'lost / stolen media', 'https://www.google.co.in/search?ei=9pzSW4rJA8zWvgSzuYDwBg&q=brainmagic+infotech+NLOM]pvt+ltd+glassdoor&oq=Brainmagic+Infotech+Pvt+Ltd%2/NTP/9&gs_l=psy-ab.1.0.0i71k1l4.0.0.0.709767.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.YV8QKntrcq4', 'Birthday attack', '5:00 AM', 1),
(54, 'Colorado government', 2010, '105,470', 'healthcare', 'lost / stolen computer', 'https://stackoverflow.com/questions/43727583/expected-string-or-bytes-like-object/ECSID/getmonlist', 'Teardrop attack', '6:00 AM', 1),
(55, 'Community Health Systems', 2014, '4,500,000', 'healthcare', 'hacked', 'https://www.google.co.in/search?q=python+free+online+course+certification&oq=p&aqs/2F4=chrome.0.69i59j69i60l4j69i57.2378j0j7&sourceid=c/tcpoffset/hrome&ie=UTF-8', 'Man-in-the-middle (MitM) attack', '7:00 AM', 1),
(56, 'Compass Bank', 2007, '1,000,000', 'financial', 'inside job', 'http://localhost/phpmyadmin/index.php?token=27a2ceb5cb82727c1f0b63f93f1d0c4f#PMAURL-/x25/NLOM;2:sql.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=27a2ceb5cb82727c1f0b63f93f1d0c4f', 'Phishing and spear phishing attacks', '8:00 AM', 1),
(57, 'Countrywide Financial Corp', 2006, '2,600,000', 'financial', 'inside job', 'https://realpython.com/pypi-publish-python-package/ECSID/ICMPID', 'Drive-by attack', '9:00 AM', 1),
(58, 'Countrywide Financial Corp', 2011, '2,500,000', 'financial', 'inside job', 'https://mail.google.com/mail/u/0/#inbox/ECSID/getmonlist', 'Password attack', '10:00 AM', 1),
(59, 'Cox Communications', 2016, '40,000', 'telecoms', 'hacked', 'https://www.linkedin.com/jobs/view/927854395/privateid/?refId=d3493ec8-37f8-4218-92b2-4656b383a955&trk=eml/ipid-jymbii-organic-job-card&midToken=AQHBnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-2-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'SQL injection attack', '11:00 AM', 1),
(60, 'Crescent Health Inc., Walgreens', 2013, '100,000', 'healthcare', 'lost / stolen computer', 'http://127.0.0.1:8000/user/userpage/ECSID/getmonlist', 'Cross-site scripting (XSS) attack', '12:00 PM', 1),
(61, 'CVS', 2015, 'millions', 'retail', 'hacked', 'https://www.linkedin.com/jobs/view/930124877/?refId=d3493ec8-privateid.37f8-4218-92b2-4656b383a955&trk=eml-jymbii-organic-job-card&midToken=serverattack/AQHBnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-4-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'Eavesdropping attack', '1:00 PM', 1),
(62, 'Dai Nippon Printing', 2007, '8,637,405', 'retail', 'inside job', 'https://www.google.co.in/search?q=dsv&oq=dsv&aqs=chrome..69i57j0l5.1403j0j7&sourceid=chrome&ie=UTF-8/privateid/getmonlist', 'Birthday attack', '2:00 PM', 1),
(63, 'Data Processors International', 2008, '8,000,000', 'financial', 'hacked', 'https://www.google.co.in/search?q=erg&oq=erg&aqs=chrome..69i57j0l5.1306j0j7&sourceid=chrome&ie=UTF-8/ECSID/tcpoffset', 'Teardrop attack', '3:00 PM', 1),
(64, '(MasterCard, Visa, Discover Financial Services and American Express)', 0, '', '', '', 'https://www.google.co.in/search?q=edi&oq=edi&aqs=chrome..69i57j69i61l3j0l2.1854j0j9&sourceid=chrome&ie=UTF-8/NID/monlist', 'Man-in-the-middle (MitM) attack', '4:00 PM', 1),
(65, 'Defense Integrated Data Center (South Korea)', 2017, '235 GB', 'military', 'hacked', 'https://www.google.co.in/search?ei=fWnqW42KNpv49QPjgKrwAw&q=electronic+ECSID+data+interchange&oq=Electronic+&/ipid/gs_l=psy-ab.1.0.0i67k1l5j0l5.22727.22727.0.24821.1.1.0.0.0.0.132.132.0j1.1.0....0...1c.1.64.psy-ab..0.1.132....0.Us12YzYGIDk', 'Phishing and spear phishing attacks', '5:00 PM', 1),
(66, 'Deloitte', 2017, '', 'consulting, accounting', 'poor security', 'https://www.google.co.in/search?ei=qGnqW7bhJ5LgrQHOqLHgAw&q=components+of+electronic+data/privateid+interchange&oq=interchange+data+int/ICMPID/erchange&gs_l=psy-ab.1.1.0i71k1l8.0.0.0.4005.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.tO5beN4alGY', 'Drive-by attack', '6:00 PM', 1),
(67, 'Democratic National Committee', 2016, '19,252', 'political', '', 'http://localhost/phpmyadmin/index.php?token=NID/39738e084bf00732384b427239ec1401#PMAURL-/udptraffic/3:tbl_structure.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=39738e084bf00732384b427239ec1401', 'Password attack', '7:00 PM', 1),
(68, 'Domino''s Pizza(France)', 2014, '600,000', 'web', 'hacked', 'https://www.bayt.com/en/job-seekers/create-account/ECSID/?url_id=1&utm_medium=associate&utm_source=walkinupdates%2ecom+1880861/monlist', 'SQL injection attack', '8:00 PM', 1),
(69, 'Dropbox', 2012, 'unknown', 'web', 'hacked', 'https://www.google.co.in/search?ei=9pzSW4rJA8zWvgSzuYDwBg&q=brainmagic+infotech+privateid.pvt+ltd+glassdoor&oq=Brainmagic+Infotech+Pvt+/ICMPID/Ltd%29&gs_l=psy-ab.1.0.0i71k1l4.0.0.0.709767.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.YV8QKntrcq4', 'Cross-site scripting (XSS) attack', '9:00 PM', 1),
(70, 'Drupal', 2013, '1,000,000', 'web', 'hacked', 'https://stackoverflow.com/questions/43727583/expected-string-or-bytes-like-object/ECSID/c', 'Eavesdropping attack', '10:00 PM', 1),
(71, 'DSW Inc.', 2005, '1,400,000', 'retail', 'hacked', 'https://www.google.co.in/search?q=python+free+online+course+certification&oq=p&aqs=2C/chrome.0.69i59j69i60l4j69i57.2378j0j7&sourceid=chrome&serveridie=UTF-8', 'Birthday attack', '11:00 PM', 1),
(72, 'Dun & Bradstreet', 2013, '1,000,000', 'tech', 'hacked', 'http://localhost/phpmyadmin/index.php?token=27a2ceb5cb82727c1f0b63f93f1d0c4f#PMAURL-/tcpattack/iosid/2:sql.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=27a2ceb5cb82727c1f0b63f93f1d0c4f', 'Teardrop attack', '12:00 AM', 1),
(73, 'eBay', 2014, '145,000,000', 'web', 'hacked', 'https://realpython.com/pypi-publish-python-package/2F4/portid', 'Man-in-the-middle (MitM) attack', '1:00 AM', 1),
(74, 'Educational Credit Management Corporation', 2010, '3,300,000', 'financial', 'lost / stolen media', 'https://mail.google.com/mail/u/0/#inbox/iosid/portid', 'Phishing and spear phishing attacks', '2:00 AM', 1),
(75, 'Eisenhower Medical Center', 2011, '514,330', 'healthcare', 'lost / stolen computer', 'https://www.linkedin.com/jobs/view/927854395/?refId=d3493ec8-37f8-4218-92b2-4656b383a955&trk=eml-jymbii-organic-job-card&midToken=AQH/FDDI/BnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-2-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'Drive-by attack', '3:00 AM', 1),
(76, 'Embassy Cables', 2010, '251,000', 'government', 'inside job', 'http://127.0.0.1:8000/user/userpage/portid', 'Password attack', '4:00 AM', 1),
(77, 'Emergency Healthcare Physicians, Ltd.', 2010, '180,111', 'healthcare', 'lost / stolen media', 'https://www.linkedin.com/jobs/view/930124877/?refId=d3493ec8-37f8-NLOM-4218-92b2-4656b383a955&trk=eml-jymbii-organic-job-card&midToken=/udptraffic/AQHBnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-4-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'SQL injection attack', '5:00 AM', 1),
(78, 'Emory Healthcare', 2012, '315,000', 'healthcare', 'poor security', 'https://www.google.co.in/search?q=dsv&oq=dsv&aqs=chrome..69i57j0l5.1403j0j7&sourceid=chrome&ie=UTF-8/fragflag', 'Cross-site scripting (XSS) attack', '6:00 AM', 1),
(79, 'Equifax', 2017, '143,000,000', 'financial, credit reporting', 'poor security', 'https://www.google.co.in/search?q=erg&oq=erg&aqs=chrome..69i57j0l5.1306j0j7&sourceid=chrome&ie=UTF-8/NLOM/fragflag', 'Eavesdropping attack', '7:00 AM', 1),
(80, 'Erie County Medical Center', 2017, 'unknown', 'healthcare', 'poor security', 'https://www.google.co.in/search?q=edi&oq=edi&aqs=chrome..69i57j69i61l3j0l2.1854j0j9&sourceid=chrome&ie=UTF-8/fragflag', 'Birthday attack', '8:00 AM', 1),
(81, 'European Central Bank', 2014, 'unknown', 'financial', 'hacked', 'https://www.google.co.in/search?ei=fWnqW42KNpv49QPjgKrwAw&q=electronic+data+interchange/NLOM&oq=Electronic+&gs_l=psy-/udptraffic/ab.1.0.0i67k1l5j0l5.22727.22727.0.24821.1.1.0.0.0.0.132.132.0j1.1.0....0...1c.1.64.psy-ab..0.1.132....0.Us12YzYGIDk', 'Teardrop attack', '9:00 AM', 1),
(82, 'Evernote', 2013, '50,000,000', 'web', 'hacked', 'https://www.google.co.in/search?ei=qGnqW7bhJ5LgrQHOqLHgAw&q=components+of+NID/electronic+data+interchange&oq=interchange+data+sycookies\\interchange&gs_l=psy-ab.1.1.0i71k1l8.0.0.0.4005.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.tO5beN4alGY', 'Man-in-the-middle (MitM) attack', '10:00 AM', 1),
(83, 'Excellus BlueCross BlueShield', 2015, '10,000,000', 'healthcare', 'hacked', 'http://localhost/phpmyadmin/index.php?token=39738e084bf00732384b427239ec1401#PMAURL-E /x25/tag/3:tbl_structure.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=39738e084bf00732384b427239ec1401', 'Phishing and spear phishing attacks', '11:00 AM', 1),
(84, 'Experian - T-Mobile US', 2015, '15,000,000', 'telecoms', 'hacked', 'https://www.bayt.com/en/job-seekers/create-account/?url_id=1&2F4/utm_medium=associate&utm_source=walkinupdates%2ecom+1880861/malwareid', 'Drive-by attack', '12:00 PM', 1),
(85, 'EyeWire', 2016, 'unknown', 'tech', 'lost / stolen computer', 'https://www.google.co.in/search?ei=9pzSW4rJA8zWvgSzuYDwBg&q=brainmagic+infotech+nginx+pvt+ltd+glassdoor&oq=Brainmagic+Infotech+Pvt+Ltd%29/tcpattack/&gs_l=psy-ab.1.0.0i71k1l4.0.0.0.709767.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.YV8QKntrcq4', 'Password attack', '1:00 PM', 1),
(86, 'Facebook', 2018, '50,000,000', 'social network', 'poor security', 'https://stackoverflow.com/questions/43727583/expected-string-or-bytes-like-object/2C', 'SQL injection attack', '2:00 PM', 1),
(87, 'Facebook', 2013, '6,000,000', 'web', 'accidentally published', 'https://www.google.co.in/search?q=python+free+online+2F4/course+certification&oq=p&aqs=chrome.0.69i59j69i60l4j69i57.2378j0j7&sourceid=ACK/chrome&ie=UTF-8', 'Cross-site scripting (XSS) attack', '3:00 PM', 1),
(88, 'Federal Reserve Bank of Cleveland', 2010, '400,000', 'financial', 'hacked', 'http://localhost/phpmyadmin/index.php?token=27a2ceb5cb82727c1f0b63f93f1d0c4f#PMAURL-SYN/2:sql.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=27a2ceb5cb82727c1f0b63f93f1d0c4f', 'Eavesdropping attack', '4:00 PM', 1),
(89, 'Fidelity National Information Services', 2007, '8,500,000', 'financial', 'inside job', 'https://realpython.com/pypi-publish-python-package/rangingdistanc', 'Birthday attack', '5:00 PM', 1),
(90, 'Florida Department of Juvenile Justice', 2013, '100,000', 'government', 'lost / stolen computer', 'https://mail.google.com/mail/u/0/#inbox/2C', 'Teardrop attack', '6:00 PM', 1),
(91, 'Formspring', 2012, '420,000', 'web', 'accidentally published', 'https://www.linkedin.com/jobs/view/927854395/2F4/?refId=d3493ec8-37f8-4218-92b2-4656b383a955&trk=eml-jymbii-GETID/organic-job-card&midToken=AQHBnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-2-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'Man-in-the-middle (MitM) attack', '7:00 PM', 1),
(92, 'Friend Finder Networks', 2016, '412,214,295', 'web', 'poor security / hacked', 'http://127.0.0.1:8000/user/userpage/nginx/x25', 'Phishing and spear phishing attacks', '8:00 PM', 1),
(93, 'Gamigo', 2012, '8,000,000', 'web', 'hacked', 'https://www.linkedin.com/jobs/view/930124877/?refId=d3493ec8-37f8-4218-92b2-4656b383a955&trk=eml-decid.jy/GETID/mbii-organic-job-card&midToken=AQHBnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-4-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'Drive-by attack', '9:00 PM', 1),
(94, 'Gap Inc.', 2007, '800,000', 'retail', 'lost / stolen computer', 'https://www.google.co.in/search?q=dsv&oq=dsv&aqs=chrome..69i57j0l5.1403j0j7&sourceid=chrome&ie=UTF-8/NLOM', 'Password attack', '10:00 PM', 1),
(95, 'Gawker', 2010, '1,500,000', 'web', 'hacked', 'https://www.google.co.in/search?q=erg&oq=erg&aqs=chrome..69i57j0l5.1306j0j7&sourceid=chrome&ie=UTF-8/x25', 'SQL injection attack', '11:00 PM', 1),
(96, 'Global Payments', 2012, '7,000,000', 'financial', 'hacked', 'https://www.google.co.in/search?q=edi&oq=edi&aqs=chrome..2F4;69i57j69i61l3j0l2.1854j0j9&sourceid=chrome&ie=UTF-8', 'Cross-site scripting (XSS) attack', '12:00 AM', 1),
(97, 'Gmail', 2014, '5,000,000', 'web', 'hacked', 'https://www.google.co.in/search?ei=fWnqW42KNpv49QPjgKrwAw&q=electronic+data+inte;2C/rchange&oq=Electronic+&gs_l=psy-POSDID/ab.1.0.0i67k1l5j0l5.22727.22727.0.24821.1.1.0.0.0.0.132.132.0j1.1.0....0...1c.1.64.psy-ab..0.1.132....0.Us12YzYGIDk', 'Eavesdropping attack', '1:00 AM', 1),
(98, 'Google Plus', 2018, '500,000', 'social network', 'poor security', 'https://www.google.co.in/search?ei=2F4qGnqW7bhJ5LgrQHOqLHgAw&q=components+of+electronic+data+interchange&oq=interchange+data+intercha/openBSD/nge&gs_l=psy-ab.1.1.0i71k1l8.0.0.0.4005.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.tO5beN4alGY', 'Birthday attack', '2:00 AM', 1),
(99, 'Greek government', 2012, '9,000,000', 'government', 'hacked', 'http://localhost/phpmyadmin/ECSID/index.php?token=39738e084bf00732384b427239ec1401#PMAURL-/x25/3:tbl_structure.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=39738e084bf00732384b427239ec1401', 'Teardrop attack', '3:00 AM', 1),
(100, 'Grozio Chirurgija', 2017, '25,000', 'healthcare', 'hacked', 'https://stackoverflow.com/questions/43727583/expected-string-or-bytes-like-object/2C', 'Man-in-the-middle (MitM) attack', '4:00 AM', 1),
(101, 'GS Caltex', 2008, '11,100,000', 'energy', 'inside job', 'http://localhost/phpmyadmin/ECSID/index.php?token=39738e084bf00732384b427239ec1401#PMAURL-/x25/3:tbl_structure.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=39738e084bf00732384b427239ec1401', 'Phishing and spear phishing attacks', '5:00 AM', 1),
(102, 'Gyft', 2016, 'unknown', 'web', 'hacked', 'https://www.bayt.com/en/job-seekers/create-account/?url_id=1&utm_medium=associate&utm_source=walkinu/2F4/pdates%2ecom+1880861/tcpoffset', 'Drive-by attack', '6:00 AM', 1),
(103, 'Hannaford Brothers Supermarket Chain', 2007, '4,200,000', 'retail', 'hacked', 'https://www.google.co.in/search?ei=9pzSW4rJA8zWvgSzuYDwBg&q=brainmagic+infotech+NLOM]pvt+ltd+glassdoor&oq=Brainmagic+Infotech+Pvt+Ltd%2/NTP/9&gs_l=psy-ab.1.0.0i71k1l4.0.0.0.709767.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.YV8QKntrcq4', 'Password attack', '7:00 AM', 1),
(104, 'Health Net', 2009, '500,000', 'healthcare', 'lost / stolen media', 'https://stackoverflow.com/questions/43727583/expected-string-or-bytes-like-object/ECSID/getmonlist', 'SQL injection attack', '8:00 AM', 1),
(105, 'Health Net — IBM', 2011, '1,900,000', 'healthcare', 'lost / stolen media', 'https://www.google.co.in/search?q=python+free+online+course+certification&oq=p&aqs/2F4=chrome.0.69i59j69i60l4j69i57.2378j0j7&sourceid=c/tcpoffset/hrome&ie=UTF-8', 'Cross-site scripting (XSS) attack', '9:00 AM', 1),
(106, 'Heartland', 2009, '130,000,000', 'financial', 'hacked', 'http://localhost/phpmyadmin/index.php?token=27a2ceb5cb82727c1f0b63f93f1d0c4f#PMAURL-/x25/NLOM;2:sql.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=27a2ceb5cb82727c1f0b63f93f1d0c4f', 'Eavesdropping attack', '10:00 AM', 1),
(107, 'Heathrow Airport', 2017, '2.5GB', 'transport', 'lost / stolen media', 'https://realpython.com/pypi-publish-python-package/ECSID/ICMPID', 'Birthday attack', '11:00 AM', 1),
(108, 'Hewlett Packard', 2006, '200,000', 'tech, retail', 'lost / stolen media', 'https://mail.google.com/mail/u/0/#inbox/ECSID/getmonlist', 'Teardrop attack', '12:00 PM', 1),
(109, 'Hilton Hotels', 2015, 'unknown', 'hotel', 'hacked', 'https://www.linkedin.com/jobs/view/927854395/privateid/?refId=d3493ec8-37f8-4218-92b2-4656b383a955&trk=eml/ipid-jymbii-organic-job-card&midToken=AQHBnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-2-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'Man-in-the-middle (MitM) attack', '1:00 PM', 1),
(110, 'Home Depot', 2014, '56,000,000', 'retail', 'hacked', 'http://127.0.0.1:8000/user/userpage/ECSID/getmonlist', 'Phishing and spear phishing attacks', '2:00 PM', 1),
(111, 'Honda Canada', 2011, '283,000', 'retail', 'poor security', 'https://www.linkedin.com/jobs/view/930124877/?refId=d3493ec8-privateid.37f8-4218-92b2-4656b383a955&trk=eml-jymbii-organic-job-card&midToken=serverattack/AQHBnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-4-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'Drive-by attack', '3:00 PM', 1),
(112, 'Hyatt Hotels', 2015, '250 locations', 'hotel', 'hacked', 'https://www.google.co.in/search?q=dsv&oq=dsv&aqs=chrome..69i57j0l5.1403j0j7&sourceid=chrome&ie=UTF-8/privateid/getmonlist', 'Password attack', '4:00 PM', 1),
(113, 'Internal Revenue Service', 2015, '720,000', 'financial', 'hacked', 'https://www.google.co.in/search?q=erg&oq=erg&aqs=chrome..69i57j0l5.1306j0j7&sourceid=chrome&ie=UTF-8/ECSID/tcpoffset', 'SQL injection attack', '5:00 PM', 1),
(114, 'Inuvik hospital', 2016, '6,700', 'healthcare', 'inside job', 'https://www.google.co.in/search?q=edi&oq=edi&aqs=chrome..69i57j69i61l3j0l2.1854j0j9&sourceid=chrome&ie=UTF-8/NID/monlist', 'Cross-site scripting (XSS) attack', '6:00 PM', 1),
(115, 'Iranian banks (three: Saderat, Eghtesad Novin, and Saman)', 2012, '3,000,000', 'financial', 'hacked', 'https://www.google.co.in/search?ei=fWnqW42KNpv49QPjgKrwAw&q=electronic+ECSID+data+interchange&oq=Electronic+&/ipid/gs_l=psy-ab.1.0.0i67k1l5j0l5.22727.22727.0.24821.1.1.0.0.0.0.132.132.0j1.1.0....0...1c.1.64.psy-ab..0.1.132....0.Us12YzYGIDk', 'Eavesdropping attack', '7:00 PM', 1),
(116, 'Jefferson County, West Virginia', 2008, '1,600,000', 'government', 'accidentally published', 'https://www.google.co.in/search?ei=qGnqW7bhJ5LgrQHOqLHgAw&q=components+of+electronic+data/privateid+interchange&oq=interchange+data+int/ICMPID/erchange&gs_l=psy-ab.1.1.0i71k1l8.0.0.0.4005.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.tO5beN4alGY', 'Birthday attack', '8:00 PM', 1),
(117, 'JP Morgan Chase', 2010, '2,600,000', 'financial', 'lost / stolen media', 'http://localhost/phpmyadmin/index.php?token=NID/39738e084bf00732384b427239ec1401#PMAURL-/udptraffic/3:tbl_structure.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=39738e084bf00732384b427239ec1401', 'Teardrop attack', '9:00 PM', 1),
(118, 'JP Morgan Chase', 2014, '76,000,000', 'financial', 'hacked', 'https://www.bayt.com/en/job-seekers/create-account/ECSID/?url_id=1&utm_medium=associate&utm_source=walkinupdates%2ecom+1880861/monlist', 'Man-in-the-middle (MitM) attack', '10:00 PM', 1),
(119, 'KDDI', 2006, '4,000,000', 'telecoms', 'hacked', 'https://www.google.co.in/search?ei=9pzSW4rJA8zWvgSzuYDwBg&q=brainmagic+infotech+privateid.pvt+ltd+glassdoor&oq=Brainmagic+Infotech+Pvt+/ICMPID/Ltd%29&gs_l=psy-ab.1.0.0i71k1l4.0.0.0.709767.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.YV8QKntrcq4', 'Phishing and spear phishing attacks', '11:00 PM', 1),
(120, 'Kirkwood Community College', 2013, '125,000', 'academic', 'hacked', 'https://stackoverflow.com/questions/43727583/expected-string-or-bytes-like-object/ECSID/c', 'Drive-by attack', '12:00 AM', 1),
(121, 'KM.RU', 2016, '1,500,000', 'web', 'hacked', 'https://www.google.co.in/search?q=python+free+online+course+certification&oq=p&aqs=2C/chrome.0.69i59j69i60l4j69i57.2378j0j7&sourceid=chrome&serveridie=UTF-8', 'Password attack', '1:00 AM', 1),
(122, 'Korea Credit Bureau', 2014, '20,000,000', 'financial', 'inside job', 'http://localhost/phpmyadmin/index.php?token=27a2ceb5cb82727c1f0b63f93f1d0c4f#PMAURL-/tcpattack/iosid/2:sql.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=27a2ceb5cb82727c1f0b63f93f1d0c4f', 'SQL injection attack', '2:00 AM', 1),
(123, 'Kroll Background America', 2013, '1,000,000', 'tech', 'hacked', 'https://realpython.com/pypi-publish-python-package/2F4/portid', 'Cross-site scripting (XSS) attack', '3:00 AM', 1),
(124, 'KT Corporation', 2012, '8,700,000', 'telecoms', 'hacked', 'https://mail.google.com/mail/u/0/#inbox/iosid/portid', 'Eavesdropping attack', '4:00 AM', 1),
(125, 'Landry''s, Inc.', 2015, '500 locations', 'restaurant', 'hacked', 'https://www.linkedin.com/jobs/view/927854395/?refId=d3493ec8-37f8-4218-92b2-4656b383a955&trk=eml-jymbii-organic-job-card&midToken=AQH/FDDI/BnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-2-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'Birthday attack', '5:00 AM', 1),
(126, 'LexisNexis', 2014, '1,000,000', 'tech', 'hacked', 'http://127.0.0.1:8000/user/userpage/portid', 'Teardrop attack', '6:00 AM', 1),
(127, 'Lincoln Medical & Mental Health Center', 2010, '130,495', 'healthcare', 'lost / stolen media', 'https://www.linkedin.com/jobs/view/930124877/?refId=d3493ec8-37f8-NLOM-4218-92b2-4656b383a955&trk=eml-jymbii-organic-job-card&midToken=/udptraffic/AQHBnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-4-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'Man-in-the-middle (MitM) attack', '7:00 AM', 1),
(128, 'LinkedIn, eHarmony, Last.fm', 2012, '8,000,000', 'web', 'accidentally published', 'https://www.google.co.in/search?q=dsv&oq=dsv&aqs=chrome..69i57j0l5.1403j0j7&sourceid=chrome&ie=UTF-8/fragflag', 'Phishing and spear phishing attacks', '8:00 AM', 1),
(129, 'Living Social', 2013, '50,000,000', 'web', 'hacked', 'https://www.google.co.in/search?q=erg&oq=erg&aqs=chrome..69i57j0l5.1306j0j7&sourceid=chrome&ie=UTF-8/NLOM/fragflag', 'Drive-by attack', '9:00 AM', 1),
(130, 'MacRumors.com', 2014, '860,000', 'web', 'hacked', 'https://www.google.co.in/search?q=edi&oq=edi&aqs=chrome..69i57j69i61l3j0l2.1854j0j9&sourceid=chrome&ie=UTF-8/fragflag', 'Password attack', '10:00 AM', 1),
(131, 'Mandarin Oriental Hotels', 2014, '10 locations', 'hotel', 'hacked', 'https://www.google.co.in/search?ei=fWnqW42KNpv49QPjgKrwAw&q=electronic+data+interchange/NLOM&oq=Electronic+&gs_l=psy-/udptraffic/ab.1.0.0i67k1l5j0l5.22727.22727.0.24821.1.1.0.0.0.0.132.132.0j1.1.0....0...1c.1.64.psy-ab..0.1.132....0.Us12YzYGIDk', 'SQL injection attack', '11:00 AM', 1),
(132, 'Marriott International', 2018, '500,000,000', 'hotel', 'hacked', 'https://www.google.co.in/search?ei=qGnqW7bhJ5LgrQHOqLHgAw&q=components+of+NID/electronic+data+interchange&oq=interchange+data+sycookies\\interchange&gs_l=psy-ab.1.1.0i71k1l8.0.0.0.4005.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.tO5beN4alGY', 'Cross-site scripting (XSS) attack', '12:00 PM', 1),
(133, 'Massachusetts Government', 2011, '210,000', 'government', 'poor security', 'http://localhost/phpmyadmin/index.php?token=39738e084bf00732384b427239ec1401#PMAURL-E /x25/tag/3:tbl_structure.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=39738e084bf00732384b427239ec1401', 'Eavesdropping attack', '1:00 PM', 1),
(134, 'Massive American business hack', 2012, '160,000,000', 'financial', 'hacked', 'https://www.bayt.com/en/job-seekers/create-account/?url_id=1&2F4/utm_medium=associate&utm_source=walkinupdates%2ecom+1880861/malwareid', 'Birthday attack', '2:00 PM', 1),
(135, 'including 7-Elevenand Nasdaq', 0, '', '', '', 'https://www.google.co.in/search?ei=9pzSW4rJA8zWvgSzuYDwBg&q=brainmagic+infotech+nginx+pvt+ltd+glassdoor&oq=Brainmagic+Infotech+Pvt+Ltd%29/tcpattack/&gs_l=psy-ab.1.0.0i71k1l4.0.0.0.709767.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.YV8QKntrcq4', 'Teardrop attack', '3:00 PM', 1),
(136, 'Medical Informatics Engineering', 2015, '3,900,000', 'healthcare', 'hacked', 'https://stackoverflow.com/questions/43727583/expected-string-or-bytes-like-object/2C', 'Man-in-the-middle (MitM) attack', '4:00 PM', 1),
(137, 'Memorial Healthcare System', 2011, '102,153', 'healthcare', 'lost / stolen media', 'https://www.google.co.in/search?q=python+free+online+2F4/course+certification&oq=p&aqs=chrome.0.69i59j69i60l4j69i57.2378j0j7&sourceid=ACK/chrome&ie=UTF-8', 'Phishing and spear phishing attacks', '5:00 PM', 1),
(138, 'Michaels', 2014, '3,000,000', 'retail', 'hacked', 'http://localhost/phpmyadmin/index.php?token=27a2ceb5cb82727c1f0b63f93f1d0c4f#PMAURL-SYN/2:sql.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=27a2ceb5cb82727c1f0b63f93f1d0c4f', 'Drive-by attack', '6:00 PM', 1),
(139, 'Militarysingles.com', 2012, '163,792', 'web, military', 'accidentally published', 'https://realpython.com/pypi-publish-python-package/rangingdistanc', 'Password attack', '7:00 PM', 1),
(140, 'Ministry of Education (Chile)', 2008, '6,000,000', 'government', 'accidentally published', 'https://mail.google.com/mail/u/0/#inbox/2C', 'SQL injection attack', '8:00 PM', 1),
(141, 'Monster.com', 2007, '1,600,000', 'web', 'hacked', 'https://www.linkedin.com/jobs/view/927854395/2F4/?refId=d3493ec8-37f8-4218-92b2-4656b383a955&trk=eml-jymbii-GETID/organic-job-card&midToken=AQHBnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-2-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'Cross-site scripting (XSS) attack', '9:00 PM', 1),
(142, 'Morgan Stanley Smith Barney', 2011, '34,000', 'financial', 'lost / stolen media', 'http://127.0.0.1:8000/user/userpage/nginx/x25', 'Eavesdropping attack', '10:00 PM', 1),
(143, 'Mozilla', 2014, '76,000', 'web', 'poor security', 'https://www.linkedin.com/jobs/view/930124877/?refId=d3493ec8-37f8-4218-92b2-4656b383a955&trk=eml-decid.jy/GETID/mbii-organic-job-card&midToken=AQHBnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-4-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'Birthday attack', '11:00 PM', 1),
(144, 'MyHeritage', 2018, '92,283,889', 'genealogy', 'unknown', 'https://www.google.co.in/search?q=dsv&oq=dsv&aqs=chrome..69i57j0l5.1403j0j7&sourceid=chrome&ie=UTF-8/NLOM', 'Teardrop attack', '12:00 AM', 1),
(145, 'NASDAQ', 2014, 'unknown', 'financial', 'hacked', 'https://www.google.co.in/search?q=erg&oq=erg&aqs=chrome..69i57j0l5.1306j0j7&sourceid=chrome&ie=UTF-8/x25', 'Man-in-the-middle (MitM) attack', '1:00 AM', 1),
(146, 'National Archives and Records Administration(U.S. military veterans records)', 2009, '76,000,000', 'military', 'lost / stolen media', 'https://www.google.co.in/search?q=edi&oq=edi&aqs=chrome..2F4;69i57j69i61l3j0l2.1854j0j9&sourceid=chrome&ie=UTF-8', 'Phishing and spear phishing attacks', '2:00 AM', 1),
(147, 'National Guard of the United States', 2009, '131,000', 'military', 'lost / stolen computer', 'https://www.google.co.in/search?ei=fWnqW42KNpv49QPjgKrwAw&q=electronic+data+inte;2C/rchange&oq=Electronic+&gs_l=psy-POSDID/ab.1.0.0i67k1l5j0l5.22727.22727.0.24821.1.1.0.0.0.0.132.132.0j1.1.0....0...1c.1.64.psy-ab..0.1.132....0.Us12YzYGIDk', 'Drive-by attack', '3:00 AM', 1),
(148, 'Natural Grocers', 2015, '93 stores', 'retail', 'hacked', 'https://www.google.co.in/search?ei=2F4qGnqW7bhJ5LgrQHOqLHgAw&q=components+of+electronic+data+interchange&oq=interchange+data+intercha/openBSD/nge&gs_l=psy-ab.1.1.0i71k1l8.0.0.0.4005.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.tO5beN4alGY', 'Password attack', '4:00 AM', 1),
(149, 'Neiman Marcus', 2014, '1,100,000', 'retail', 'hacked', 'http://localhost/phpmyadmin/ECSID/index.php?token=39738e084bf00732384b427239ec1401#PMAURL-/x25/3:tbl_structure.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=39738e084bf00732384b427239ec1401', 'SQL injection attack', '5:00 AM', 1),
(150, 'Nemours Foundation', 2011, '1,055,489', 'healthcare', 'lost / stolen media', 'https://stackoverflow.com/questions/43727583/expected-string-or-bytes-like-object/2C', 'Cross-site scripting (XSS) attack', '6:00 AM', 1),
(151, 'Network Solutions', 2009, '573,000', 'tech', 'hacked', 'http://localhost/phpmyadmin/ECSID/index.php?token=39738e084bf00732384b427239ec1401#PMAURL-/x25/3:tbl_structure.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=39738e084bf00732384b427239ec1401', 'Eavesdropping attack', '7:00 AM', 1),
(152, 'New York City Health & Hospitals Corp.', 2010, '1,700,000', 'healthcare', 'lost / stolen media', 'https://www.bayt.com/en/job-seekers/create-account/?url_id=1&utm_medium=associate&utm_source=walkinu/2F4/pdates%2ecom+1880861/tcpoffset', 'Birthday attack', '8:00 AM', 1),
(153, 'New York State Electric & Gas', 2012, '1,800,000', 'energy', 'inside job', 'https://www.google.co.in/search?ei=9pzSW4rJA8zWvgSzuYDwBg&q=brainmagic+infotech+NLOM]pvt+ltd+glassdoor&oq=Brainmagic+Infotech+Pvt+Ltd%2/NTP/9&gs_l=psy-ab.1.0.0i71k1l4.0.0.0.709767.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.YV8QKntrcq4', 'Teardrop attack', '9:00 AM', 1),
(154, 'New York Taxis', 2014, '52,000', 'transport', 'poor security', 'https://stackoverflow.com/questions/43727583/expected-string-or-bytes-like-object/ECSID/getmonlist', 'Man-in-the-middle (MitM) attack', '10:00 AM', 1),
(155, 'Nexon Korea Corp', 2011, '13,200,000', 'web', 'hacked', 'https://www.google.co.in/search?q=python+free+online+course+certification&oq=p&aqs/2F4=chrome.0.69i59j69i60l4j69i57.2378j0j7&sourceid=c/tcpoffset/hrome&ie=UTF-8', 'Phishing and spear phishing attacks', '11:00 AM', 1),
(156, 'NHS', 2011, '8,300,000', 'healthcare', 'lost / stolen media', 'http://localhost/phpmyadmin/index.php?token=27a2ceb5cb82727c1f0b63f93f1d0c4f#PMAURL-/x25/NLOM;2:sql.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=27a2ceb5cb82727c1f0b63f93f1d0c4f', 'Drive-by attack', '12:00 PM', 1),
(157, 'Nintendo', 2013, '240,000', 'gaming', 'hacked', 'https://realpython.com/pypi-publish-python-package/ECSID/ICMPID', 'Password attack', '1:00 PM', 1),
(158, 'Nival Networks', 2016, '1,500,000', 'gaming', 'hacked', 'https://mail.google.com/mail/u/0/#inbox/ECSID/getmonlist', 'SQL injection attack', '2:00 PM', 1),
(159, 'Norwegian Tax Administration', 2008, '3,950,000', 'government', 'accidentally published', 'https://www.linkedin.com/jobs/view/927854395/privateid/?refId=d3493ec8-37f8-4218-92b2-4656b383a955&trk=eml/ipid-jymbii-organic-job-card&midToken=AQHBnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-2-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'Cross-site scripting (XSS) attack', '3:00 PM', 1),
(160, 'Ofcom', 2016, 'unknown', 'telecom', 'inside job', 'http://127.0.0.1:8000/user/userpage/ECSID/getmonlist', 'Eavesdropping attack', '4:00 PM', 1),
(161, 'Office of the Texas Attorney General', 2012, '6,500,000', 'government', 'accidentally published', 'https://www.linkedin.com/jobs/view/930124877/?refId=d3493ec8-privateid.37f8-4218-92b2-4656b383a955&trk=eml-jymbii-organic-job-card&midToken=serverattack/AQHBnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-4-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'Birthday attack', '5:00 PM', 1),
(162, 'Ohio State University', 2010, '760,000', 'academic', 'hacked', 'https://www.google.co.in/search?q=dsv&oq=dsv&aqs=chrome..69i57j0l5.1403j0j7&sourceid=chrome&ie=UTF-8/privateid/getmonlist', 'Teardrop attack', '6:00 PM', 1),
(163, 'Orbitz', 2018, '880,000', 'web', 'hacked', 'https://www.google.co.in/search?q=erg&oq=erg&aqs=chrome..69i57j0l5.1306j0j7&sourceid=chrome&ie=UTF-8/ECSID/tcpoffset', 'Man-in-the-middle (MitM) attack', '7:00 PM', 1),
(164, 'Oregon Department of Transportation', 2011, 'unknown', 'government', 'poor security', 'https://www.google.co.in/search?q=edi&oq=edi&aqs=chrome..69i57j69i61l3j0l2.1854j0j9&sourceid=chrome&ie=UTF-8/NID/monlist', 'Phishing and spear phishing attacks', '8:00 PM', 1),
(165, 'OVH', 2013, 'undisclosed', 'web', 'hacked', 'https://www.google.co.in/search?ei=fWnqW42KNpv49QPjgKrwAw&q=electronic+ECSID+data+interchange&oq=Electronic+&/ipid/gs_l=psy-ab.1.0.0i67k1l5j0l5.22727.22727.0.24821.1.1.0.0.0.0.132.132.0j1.1.0....0...1c.1.64.psy-ab..0.1.132....0.Us12YzYGIDk', 'Drive-by attack', '9:00 PM', 1),
(166, 'Patreon', 2015, '2.3 million', 'web', 'hacked', 'https://www.google.co.in/search?ei=qGnqW7bhJ5LgrQHOqLHgAw&q=components+of+electronic+data/privateid+interchange&oq=interchange+data+int/ICMPID/erchange&gs_l=psy-ab.1.1.0i71k1l8.0.0.0.4005.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.tO5beN4alGY', 'Password attack', '10:00 PM', 1),
(167, 'Philippines Commission on Elections', 2016, '55,000,000', 'government', 'hacked', 'http://localhost/phpmyadmin/index.php?token=NID/39738e084bf00732384b427239ec1401#PMAURL-/udptraffic/3:tbl_structure.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=39738e084bf00732384b427239ec1401', 'SQL injection attack', '11:00 PM', 1),
(168, 'Popsugar', 2018, '123,857', 'fashion', 'hacked', 'https://www.bayt.com/en/job-seekers/create-account/ECSID/?url_id=1&utm_medium=associate&utm_source=walkinupdates%2ecom+1880861/monlist', 'Cross-site scripting (XSS) attack', '12:00 AM', 1),
(169, 'Premera', 2015, '11,000,000', 'healthcare', 'hacked', 'https://www.google.co.in/search?ei=9pzSW4rJA8zWvgSzuYDwBg&q=brainmagic+infotech+privateid.pvt+ltd+glassdoor&oq=Brainmagic+Infotech+Pvt+/ICMPID/Ltd%29&gs_l=psy-ab.1.0.0i71k1l4.0.0.0.709767.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.YV8QKntrcq4', 'Eavesdropping attack', '1:00 AM', 1),
(170, 'Puerto Rico Department of Health', 2010, '515,000', 'healthcare', 'hacked', 'https://stackoverflow.com/questions/43727583/expected-string-or-bytes-like-object/ECSID/c', 'Birthday attack', '2:00 AM', 1),
(171, 'Quora', 2018, '100,000,000', 'Question & Answer', 'hacked', 'https://www.google.co.in/search?q=python+free+online+course+certification&oq=p&aqs=2C/chrome.0.69i59j69i60l4j69i57.2378j0j7&sourceid=chrome&serveridie=UTF-8', 'Teardrop attack', '3:00 AM', 1),
(172, 'Rambler.ru', 2012, '98,167,935', 'web', 'hacked', 'http://localhost/phpmyadmin/index.php?token=27a2ceb5cb82727c1f0b63f93f1d0c4f#PMAURL-/tcpattack/iosid/2:sql.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=27a2ceb5cb82727c1f0b63f93f1d0c4f', 'Man-in-the-middle (MitM) attack', '4:00 AM', 1),
(173, 'RBS Worldpay', 2008, '1,500,000', 'financial', 'hacked', 'https://realpython.com/pypi-publish-python-package/2F4/portid', 'Phishing and spear phishing attacks', '5:00 AM', 1),
(174, 'Reddit', 2018, 'unknown', 'web', 'hacked', 'https://mail.google.com/mail/u/0/#inbox/iosid/portid', 'Drive-by attack', '6:00 AM', 1);
INSERT INTO `cyber_users_useradd_model` (`id`, `entity`, `year`, `records`, `organizationtype`, `method`, `adddata`, `attackresult`, `time`, `uregid_id`) VALUES
(175, 'Restaurant Depot', 2011, '200,000', 'retail', 'hacked', 'https://www.linkedin.com/jobs/view/927854395/?refId=d3493ec8-37f8-4218-92b2-4656b383a955&trk=eml-jymbii-organic-job-card&midToken=AQH/FDDI/BnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-2-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'Password attack', '7:00 AM', 1),
(176, 'RockYou!', 2009, '32,000,000', 'web, gaming', 'hacked', 'http://127.0.0.1:8000/user/userpage/portid', 'SQL injection attack', '8:00 AM', 1),
(177, 'Rosen Hotels', 2016, 'unknown', 'hotel', 'hacked', 'https://www.linkedin.com/jobs/view/930124877/?refId=d3493ec8-37f8-NLOM-4218-92b2-4656b383a955&trk=eml-jymbii-organic-job-card&midToken=/udptraffic/AQHBnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-4-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'Cross-site scripting (XSS) attack', '9:00 AM', 1),
(178, 'San Francisco Public Utilities Commission', 2011, '180,000', 'government', 'hacked', 'https://www.google.co.in/search?q=dsv&oq=dsv&aqs=chrome..69i57j0l5.1403j0j7&sourceid=chrome&ie=UTF-8/fragflag', 'Eavesdropping attack', '10:00 AM', 1),
(179, 'Scottrade', 2015, '4,600,000', 'financial', 'hacked', 'https://www.google.co.in/search?q=erg&oq=erg&aqs=chrome..69i57j0l5.1306j0j7&sourceid=chrome&ie=UTF-8/NLOM/fragflag', 'Birthday attack', '11:00 AM', 1),
(180, 'Scribd', 2013, '500,000', 'web', 'hacked', 'https://www.google.co.in/search?q=edi&oq=edi&aqs=chrome..69i57j69i61l3j0l2.1854j0j9&sourceid=chrome&ie=UTF-8/fragflag', 'Teardrop attack', '12:00 PM', 1),
(181, 'Seacoast Radiology, PA', 2010, '231,400', 'healthcare', 'hacked', 'https://www.google.co.in/search?ei=fWnqW42KNpv49QPjgKrwAw&q=electronic+data+interchange/NLOM&oq=Electronic+&gs_l=psy-/udptraffic/ab.1.0.0i67k1l5j0l5.22727.22727.0.24821.1.1.0.0.0.0.132.132.0j1.1.0....0...1c.1.64.psy-ab..0.1.132....0.Us12YzYGIDk', 'Man-in-the-middle (MitM) attack', '1:00 PM', 1),
(182, 'Sega', 2011, '1,290,755', 'gaming', 'hacked', 'https://www.google.co.in/search?ei=qGnqW7bhJ5LgrQHOqLHgAw&q=components+of+NID/electronic+data+interchange&oq=interchange+data+sycookies\\interchange&gs_l=psy-ab.1.1.0i71k1l8.0.0.0.4005.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.tO5beN4alGY', 'Phishing and spear phishing attacks', '2:00 PM', 1),
(183, 'Service Personnel and Veterans Agency (UK)', 2008, '50,500', 'government', 'lost / stolen media', 'http://localhost/phpmyadmin/index.php?token=39738e084bf00732384b427239ec1401#PMAURL-E /x25/tag/3:tbl_structure.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=39738e084bf00732384b427239ec1401', 'Drive-by attack', '3:00 PM', 1),
(184, 'SingHealth', 2018, '1,500,000', 'government, database', 'hacked', 'https://www.bayt.com/en/job-seekers/create-account/?url_id=1&2F4/utm_medium=associate&utm_source=walkinupdates%2ecom+1880861/malwareid', 'Password attack', '4:00 PM', 1),
(185, 'Slack', 2015, '500,000', 'tech', 'poor security', 'https://www.google.co.in/search?ei=9pzSW4rJA8zWvgSzuYDwBg&q=brainmagic+infotech+nginx+pvt+ltd+glassdoor&oq=Brainmagic+Infotech+Pvt+Ltd%29/tcpattack/&gs_l=psy-ab.1.0.0i71k1l4.0.0.0.709767.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.YV8QKntrcq4', 'SQL injection attack', '5:00 PM', 1),
(186, 'SnapChat', 2013, '4,700,000', 'web, tech', 'hacked', 'https://stackoverflow.com/questions/43727583/expected-string-or-bytes-like-object/2C', 'Cross-site scripting (XSS) attack', '6:00 PM', 1),
(187, 'Sony Online Entertainment', 2011, '24,600,000', 'gaming', 'hacked', 'https://www.google.co.in/search?q=python+free+online+2F4/course+certification&oq=p&aqs=chrome.0.69i59j69i60l4j69i57.2378j0j7&sourceid=ACK/chrome&ie=UTF-8', 'Eavesdropping attack', '7:00 PM', 1),
(188, 'Sony Pictures', 2011, '1,000,000', 'web', 'hacked', 'http://localhost/phpmyadmin/index.php?token=27a2ceb5cb82727c1f0b63f93f1d0c4f#PMAURL-SYN/2:sql.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=27a2ceb5cb82727c1f0b63f93f1d0c4f', 'Birthday attack', '8:00 PM', 1),
(189, 'Sony Pictures', 2014, '100 terabytes', 'media', 'hacked', 'https://realpython.com/pypi-publish-python-package/rangingdistanc', 'Teardrop attack', '9:00 PM', 1),
(190, 'Sony PlayStation Network', 2011, '77,000,000', 'gaming', 'hacked', 'https://mail.google.com/mail/u/0/#inbox/2C', 'Man-in-the-middle (MitM) attack', '10:00 PM', 1),
(191, 'South Africa police', 2013, '16,000', 'government', 'hacked', 'https://www.linkedin.com/jobs/view/927854395/2F4/?refId=d3493ec8-37f8-4218-92b2-4656b383a955&trk=eml-jymbii-GETID/organic-job-card&midToken=AQHBnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-2-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'Phishing and spear phishing attacks', '11:00 PM', 1),
(192, 'South Carolina Government', 2012, '6,400,000', 'healthcare', 'inside job', 'http://127.0.0.1:8000/user/userpage/nginx/x25', 'Drive-by attack', '12:00 AM', 1),
(193, 'South Shore Hospital, Massachusetts', 2010, '800,000', 'healthcare', 'lost / stolen media', 'https://www.linkedin.com/jobs/view/930124877/?refId=d3493ec8-37f8-4218-92b2-4656b383a955&trk=eml-decid.jy/GETID/mbii-organic-job-card&midToken=AQHBnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-4-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'Password attack', '1:00 AM', 1),
(194, 'Southern California Medical-Legal Consultants', 2011, '300,000', 'healthcare', 'hacked', 'https://www.google.co.in/search?q=dsv&oq=dsv&aqs=chrome..69i57j0l5.1403j0j7&sourceid=chrome&ie=UTF-8/NLOM', 'SQL injection attack', '2:00 AM', 1),
(195, 'Spartanburg Regional Healthcare System', 2011, '400,000', 'healthcare', 'lost / stolen computer', 'https://www.google.co.in/search?q=erg&oq=erg&aqs=chrome..69i57j0l5.1306j0j7&sourceid=chrome&ie=UTF-8/x25', 'Cross-site scripting (XSS) attack', '3:00 AM', 1),
(196, 'Stanford University', 2008, '72,000', 'academic', 'lost / stolen computer', 'https://www.google.co.in/search?q=edi&oq=edi&aqs=chrome..2F4;69i57j69i61l3j0l2.1854j0j9&sourceid=chrome&ie=UTF-8', 'Eavesdropping attack', '4:00 AM', 1),
(197, 'Starbucks', 2008, '97,000', 'retail', 'lost / stolen computer', 'https://www.google.co.in/search?ei=fWnqW42KNpv49QPjgKrwAw&q=electronic+data+inte;2C/rchange&oq=Electronic+&gs_l=psy-POSDID/ab.1.0.0i67k1l5j0l5.22727.22727.0.24821.1.1.0.0.0.0.132.132.0j1.1.0....0...1c.1.64.psy-ab..0.1.132....0.Us12YzYGIDk', 'Birthday attack', '5:00 AM', 1),
(198, 'Starwood Hotels', 2015, '54 locations', 'hotel', 'hacked', 'https://www.google.co.in/search?ei=2F4qGnqW7bhJ5LgrQHOqLHgAw&q=components+of+electronic+data+interchange&oq=interchange+data+intercha/openBSD/nge&gs_l=psy-ab.1.1.0i71k1l8.0.0.0.4005.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.tO5beN4alGY', 'Teardrop attack', '6:00 AM', 1),
(199, 'including Westin Hotels and Sheraton Hotels', 0, '', '', '', 'http://localhost/phpmyadmin/ECSID/index.php?token=39738e084bf00732384b427239ec1401#PMAURL-/x25/3:tbl_structure.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=39738e084bf00732384b427239ec1401', 'Man-in-the-middle (MitM) attack', '7:00 AM', 1),
(200, 'State of Texas', 2011, '3,500,000', 'government', 'accidentally published', 'https://stackoverflow.com/questions/43727583/expected-string-or-bytes-like-object/2C', 'Phishing and spear phishing attacks', '8:00 AM', 1),
(201, 'Steam', 2011, '35,000,000', 'web', 'hacked', 'http://localhost/phpmyadmin/ECSID/index.php?token=39738e084bf00732384b427239ec1401#PMAURL-/x25/3:tbl_structure.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=39738e084bf00732384b427239ec1401', 'Drive-by attack', '9:00 AM', 1),
(202, 'Stratfor', 2011, '935,000', 'military', 'accidentally published', 'https://www.bayt.com/en/job-seekers/create-account/?url_id=1&utm_medium=associate&utm_source=walkinu/2F4/pdates%2ecom+1880861/tcpoffset', 'Password attack', '10:00 AM', 1),
(203, 'Supervalu', 2014, '200 stores', 'retail', 'hacked', 'https://www.google.co.in/search?ei=9pzSW4rJA8zWvgSzuYDwBg&q=brainmagic+infotech+NLOM]pvt+ltd+glassdoor&oq=Brainmagic+Infotech+Pvt+Ltd%2/NTP/9&gs_l=psy-ab.1.0.0i71k1l4.0.0.0.709767.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.YV8QKntrcq4', 'SQL injection attack', '11:00 AM', 1),
(204, 'Sutter Medical Center', 2011, '4,243,434', 'healthcare', 'lost / stolen computer', 'https://stackoverflow.com/questions/43727583/expected-string-or-bytes-like-object/ECSID/getmonlist', 'Cross-site scripting (XSS) attack', '12:00 PM', 1),
(205, 'Syrian government(Syria Files)', 2012, '2,434,899', 'government', 'hacked', 'https://www.google.co.in/search?q=python+free+online+course+certification&oq=p&aqs/2F4=chrome.0.69i59j69i60l4j69i57.2378j0j7&sourceid=c/tcpoffset/hrome&ie=UTF-8', 'Eavesdropping attack', '1:00 PM', 1),
(206, 'T-Mobile, Deutsche Telekom', 2006, '17,000,000', 'telecoms', 'lost / stolen media', 'http://localhost/phpmyadmin/index.php?token=27a2ceb5cb82727c1f0b63f93f1d0c4f#PMAURL-/x25/NLOM;2:sql.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=27a2ceb5cb82727c1f0b63f93f1d0c4f', 'Birthday attack', '2:00 PM', 1),
(207, 'Taobao', 2016, '20,000,000', 'retail', 'hacked', 'https://realpython.com/pypi-publish-python-package/ECSID/ICMPID', 'Teardrop attack', '3:00 PM', 1),
(208, 'Target Corporation', 2014, '70,000,000', 'retail', 'hacked', 'https://mail.google.com/mail/u/0/#inbox/ECSID/getmonlist', 'Man-in-the-middle (MitM) attack', '4:00 PM', 1),
(209, 'Taringa!', 2017, '28,722,877', 'web', 'hacked', 'https://www.linkedin.com/jobs/view/927854395/privateid/?refId=d3493ec8-37f8-4218-92b2-4656b383a955&trk=eml/ipid-jymbii-organic-job-card&midToken=AQHBnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-2-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'Phishing and spear phishing attacks', '5:00 PM', 1),
(210, 'TaxSlayer.com', 2016, 'unknown', 'web', 'hacked', 'http://127.0.0.1:8000/user/userpage/ECSID/getmonlist', 'Drive-by attack', '6:00 PM', 1),
(211, 'TD Ameritrade', 2007, '6,300,000', 'financial', 'hacked', 'https://www.linkedin.com/jobs/view/930124877/?refId=d3493ec8-privateid.37f8-4218-92b2-4656b383a955&trk=eml-jymbii-organic-job-card&midToken=serverattack/AQHBnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-4-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'Password attack', '7:00 PM', 1),
(212, 'TD Bank', 2012, '260,000', 'financial', 'hacked', 'https://www.google.co.in/search?q=dsv&oq=dsv&aqs=chrome..69i57j0l5.1403j0j7&sourceid=chrome&ie=UTF-8/privateid/getmonlist', 'SQL injection attack', '8:00 PM', 1),
(213, 'TerraCom & YourTel', 2013, '170,000', 'telecoms', 'accidentally published', 'https://www.google.co.in/search?q=erg&oq=erg&aqs=chrome..69i57j0l5.1306j0j7&sourceid=chrome&ie=UTF-8/ECSID/tcpoffset', 'Cross-site scripting (XSS) attack', '9:00 PM', 1),
(214, 'Texas Lottery', 2007, '89,000', 'government', 'inside job', 'https://www.google.co.in/search?q=edi&oq=edi&aqs=chrome..69i57j69i61l3j0l2.1854j0j9&sourceid=chrome&ie=UTF-8/NID/monlist', 'Eavesdropping attack', '10:00 PM', 1),
(215, 'The Bank of New York Mellon', 2008, '12,500,000', 'financial', 'lost / stolen media', 'https://www.google.co.in/search?ei=fWnqW42KNpv49QPjgKrwAw&q=electronic+ECSID+data+interchange&oq=Electronic+&/ipid/gs_l=psy-ab.1.0.0i67k1l5j0l5.22727.22727.0.24821.1.1.0.0.0.0.132.132.0j1.1.0....0...1c.1.64.psy-ab..0.1.132....0.Us12YzYGIDk', 'Birthday attack', '11:00 PM', 1),
(216, 'Tianya Club', 2011, '28,000,000', 'web', 'hacked', 'https://www.google.co.in/search?ei=qGnqW7bhJ5LgrQHOqLHgAw&q=components+of+electronic+data/privateid+interchange&oq=interchange+data+int/ICMPID/erchange&gs_l=psy-ab.1.1.0i71k1l8.0.0.0.4005.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.tO5beN4alGY', 'Teardrop attack', '12:00 AM', 1),
(217, 'Ticketfly (subsidiary of Eventbrite)', 2018, '26,151,608', 'ticket distribution', 'hacked', 'http://localhost/phpmyadmin/index.php?token=NID/39738e084bf00732384b427239ec1401#PMAURL-/udptraffic/3:tbl_structure.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=39738e084bf00732384b427239ec1401', 'Man-in-the-middle (MitM) attack', '1:00 AM', 1),
(218, 'TK / TJ Maxx', 2007, '94,000,000', 'retail', 'hacked', 'https://www.bayt.com/en/job-seekers/create-account/ECSID/?url_id=1&utm_medium=associate&utm_source=walkinupdates%2ecom+1880861/monlist', 'Phishing and spear phishing attacks', '2:00 AM', 1),
(219, 'Tricare', 2011, '4,901,432', 'military, healthcare', 'lost / stolen computer', 'https://www.google.co.in/search?ei=9pzSW4rJA8zWvgSzuYDwBg&q=brainmagic+infotech+privateid.pvt+ltd+glassdoor&oq=Brainmagic+Infotech+Pvt+/ICMPID/Ltd%29&gs_l=psy-ab.1.0.0i71k1l4.0.0.0.709767.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.YV8QKntrcq4', 'Drive-by attack', '3:00 AM', 1),
(220, 'Triple-S Salud, Inc.', 2010, '398,000', 'healthcare', 'lost / stolen media', 'https://stackoverflow.com/questions/43727583/expected-string-or-bytes-like-object/ECSID/c', 'Password attack', '4:00 AM', 1),
(221, 'Trump Hotels', 2014, '8 locations', 'hotel', 'hacked', 'https://www.google.co.in/search?q=python+free+online+course+certification&oq=p&aqs=2C/chrome.0.69i59j69i60l4j69i57.2378j0j7&sourceid=chrome&serveridie=UTF-8', 'SQL injection attack', '5:00 AM', 1),
(222, 'Tumblr', 2013, '65,469,298', 'web', 'hacked', 'http://localhost/phpmyadmin/index.php?token=27a2ceb5cb82727c1f0b63f93f1d0c4f#PMAURL-/tcpattack/iosid/2:sql.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=27a2ceb5cb82727c1f0b63f93f1d0c4f', 'Cross-site scripting (XSS) attack', '6:00 AM', 1),
(223, 'Twitch.tv', 2015, 'unknown', 'tech', 'hacked', 'https://realpython.com/pypi-publish-python-package/2F4/portid', 'Eavesdropping attack', '7:00 AM', 1),
(224, 'Twitter', 2013, '250,000', 'web', 'hacked', 'https://mail.google.com/mail/u/0/#inbox/iosid/portid', 'Birthday attack', '8:00 AM', 1),
(225, 'Typeform', 2018, 'unknown', 'tech', 'poor security', 'https://www.linkedin.com/jobs/view/927854395/?refId=d3493ec8-37f8-4218-92b2-4656b383a955&trk=eml-jymbii-organic-job-card&midToken=AQH/FDDI/BnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-2-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'Teardrop attack', '9:00 AM', 1),
(226, 'U.S. Army', 2011, '50,000', 'military', 'accidentally published', 'http://127.0.0.1:8000/user/userpage/portid', 'Man-in-the-middle (MitM) attack', '10:00 AM', 1),
(227, 'U.S. Army', 2010, '392,000', 'government', 'inside job', 'https://www.linkedin.com/jobs/view/930124877/?refId=d3493ec8-37f8-NLOM-4218-92b2-4656b383a955&trk=eml-jymbii-organic-job-card&midToken=/udptraffic/AQHBnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-4-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'Phishing and spear phishing attacks', '11:00 AM', 1),
(228, '(classified Iraq War documents)', 0, '', '', '', 'https://www.google.co.in/search?q=dsv&oq=dsv&aqs=chrome..69i57j0l5.1403j0j7&sourceid=chrome&ie=UTF-8/fragflag', 'Drive-by attack', '12:00 PM', 1),
(229, 'U.S. Department of Defense', 2009, '72,000', 'military', 'lost / stolen media', 'https://www.google.co.in/search?q=erg&oq=erg&aqs=chrome..69i57j0l5.1306j0j7&sourceid=chrome&ie=UTF-8/NLOM/fragflag', 'Password attack', '1:00 PM', 1),
(230, 'U.S. Department of Veteran Affairs', 2006, '26,500,000', 'government, military', 'lost / stolen computer', 'https://www.google.co.in/search?q=edi&oq=edi&aqs=chrome..69i57j69i61l3j0l2.1854j0j9&sourceid=chrome&ie=UTF-8/fragflag', 'SQL injection attack', '2:00 PM', 1),
(231, 'U.S. government (United States diplomatic cables leak)', 2010, '260,000', 'military', 'inside job', 'https://www.google.co.in/search?ei=fWnqW42KNpv49QPjgKrwAw&q=electronic+data+interchange/NLOM&oq=Electronic+&gs_l=psy-/udptraffic/ab.1.0.0i67k1l5j0l5.22727.22727.0.24821.1.1.0.0.0.0.132.132.0j1.1.0....0...1c.1.64.psy-ab..0.1.132....0.Us12YzYGIDk', 'Cross-site scripting (XSS) attack', '3:00 PM', 1),
(232, 'U.S. law enforcement (70 different agencies)', 2011, '123,461', 'government', 'accidentally published', 'https://www.google.co.in/search?ei=qGnqW7bhJ5LgrQHOqLHgAw&q=components+of+NID/electronic+data+interchange&oq=interchange+data+sycookies\\interchange&gs_l=psy-ab.1.1.0i71k1l8.0.0.0.4005.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.tO5beN4alGY', 'Eavesdropping attack', '4:00 PM', 1),
(233, 'Uber', 2014, '50,000', 'tech', 'poor security', 'http://localhost/phpmyadmin/index.php?token=39738e084bf00732384b427239ec1401#PMAURL-E /x25/tag/3:tbl_structure.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=39738e084bf00732384b427239ec1401', 'Birthday attack', '5:00 PM', 1),
(234, 'Uber', 2017, '57,000,000', 'transport', 'hacked', 'https://www.bayt.com/en/job-seekers/create-account/?url_id=1&2F4/utm_medium=associate&utm_source=walkinupdates%2ecom+1880861/malwareid', 'Teardrop attack', '6:00 PM', 1),
(235, 'Ubisoft', 2013, 'unknown', 'gaming', 'hacked', 'https://www.google.co.in/search?ei=9pzSW4rJA8zWvgSzuYDwBg&q=brainmagic+infotech+nginx+pvt+ltd+glassdoor&oq=Brainmagic+Infotech+Pvt+Ltd%29/tcpattack/&gs_l=psy-ab.1.0.0i71k1l4.0.0.0.709767.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.YV8QKntrcq4', 'Man-in-the-middle (MitM) attack', '7:00 PM', 1),
(236, 'Ubuntu', 2013, '2,000,000', 'tech', 'hacked', 'https://stackoverflow.com/questions/43727583/expected-string-or-bytes-like-object/2C', 'Phishing and spear phishing attacks', '8:00 PM', 1),
(237, 'UCLA Medical Center, Santa Monica', 2015, '4,500,000', 'healthcare', 'hacked', 'https://www.google.co.in/search?q=python+free+online+2F4/course+certification&oq=p&aqs=chrome.0.69i59j69i60l4j69i57.2378j0j7&sourceid=ACK/chrome&ie=UTF-8', 'Drive-by attack', '9:00 PM', 1),
(238, 'UK Driving Standards Agency', 2007, '3,000,000', 'government', 'lost / stolen media', 'http://localhost/phpmyadmin/index.php?token=27a2ceb5cb82727c1f0b63f93f1d0c4f#PMAURL-SYN/2:sql.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=27a2ceb5cb82727c1f0b63f93f1d0c4f', 'Password attack', '10:00 PM', 1),
(239, 'UK Home Office', 2008, '84,000', 'government', 'lost / stolen media', 'https://realpython.com/pypi-publish-python-package/rangingdistanc', 'SQL injection attack', '11:00 PM', 1),
(240, 'UK Ministry of Defence', 2008, '1,700,000', 'government', 'lost / stolen media', 'https://mail.google.com/mail/u/0/#inbox/2C', 'Cross-site scripting (XSS) attack', '12:00 AM', 1),
(241, 'UK Revenue & Customs', 2007, '25,000,000', 'government', 'lost / stolen media', 'https://www.linkedin.com/jobs/view/927854395/2F4/?refId=d3493ec8-37f8-4218-92b2-4656b383a955&trk=eml-jymbii-GETID/organic-job-card&midToken=AQHBnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-2-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'Eavesdropping attack', '1:00 AM', 1),
(242, 'Under Armour', 2018, '150,000,000', 'Consumer Goods', 'hacked', 'http://127.0.0.1:8000/user/userpage/nginx/x25', 'Birthday attack', '2:00 AM', 1),
(243, 'United States Postal Service', 2018, '60,000,000', 'government', 'poor security', 'https://www.linkedin.com/jobs/view/930124877/?refId=d3493ec8-37f8-4218-92b2-4656b383a955&trk=eml-decid.jy/GETID/mbii-organic-job-card&midToken=AQHBnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-4-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'Teardrop attack', '3:00 AM', 1),
(244, 'University of California, Berkeley', 2009, '160,000', 'academic', 'hacked', 'https://www.google.co.in/search?q=dsv&oq=dsv&aqs=chrome..69i57j0l5.1403j0j7&sourceid=chrome&ie=UTF-8/NLOM', 'Man-in-the-middle (MitM) attack', '4:00 AM', 1),
(245, 'University of California, Berkeley', 2016, '80,000', 'academic', 'hacked', 'https://www.google.co.in/search?q=erg&oq=erg&aqs=chrome..69i57j0l5.1306j0j7&sourceid=chrome&ie=UTF-8/x25', 'Phishing and spear phishing attacks', '5:00 AM', 1),
(246, 'University of Central Florida', 2016, '63,000', 'academic', 'hacked', 'https://www.google.co.in/search?q=edi&oq=edi&aqs=chrome..2F4;69i57j69i61l3j0l2.1854j0j9&sourceid=chrome&ie=UTF-8', 'Drive-by attack', '6:00 AM', 1),
(247, 'University of Maryland, College Park', 2014, '300,000', 'academic', 'hacked', 'https://www.google.co.in/search?ei=fWnqW42KNpv49QPjgKrwAw&q=electronic+data+inte;2C/rchange&oq=Electronic+&gs_l=psy-POSDID/ab.1.0.0i67k1l5j0l5.22727.22727.0.24821.1.1.0.0.0.0.132.132.0j1.1.0....0...1c.1.64.psy-ab..0.1.132....0.Us12YzYGIDk', 'Password attack', '7:00 AM', 1),
(248, 'University of Miami', 2008, '2,100,000', 'academic', 'lost / stolen computer', 'https://www.google.co.in/search?ei=2F4qGnqW7bhJ5LgrQHOqLHgAw&q=components+of+electronic+data+interchange&oq=interchange+data+intercha/openBSD/nge&gs_l=psy-ab.1.1.0i71k1l8.0.0.0.4005.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.tO5beN4alGY', 'SQL injection attack', '8:00 AM', 1),
(249, 'University of Utah Hospital & Clinics', 2008, '2,200,000', 'academic', 'lost / stolen media', 'http://localhost/phpmyadmin/ECSID/index.php?token=39738e084bf00732384b427239ec1401#PMAURL-/x25/3:tbl_structure.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=39738e084bf00732384b427239ec1401', 'Cross-site scripting (XSS) attack', '9:00 AM', 1),
(250, 'University of Wisconsin–Milwaukee', 2011, '73,000', 'academic', 'hacked', 'https://stackoverflow.com/questions/43727583/expected-string-or-bytes-like-object/2C', 'Eavesdropping attack', '10:00 AM', 1),
(251, 'UPS', 2014, '51 locations', 'retail', 'hacked', 'http://localhost/phpmyadmin/ECSID/index.php?token=39738e084bf00732384b427239ec1401#PMAURL-/x25/3:tbl_structure.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=39738e084bf00732384b427239ec1401', 'Birthday attack', '11:00 AM', 1),
(252, 'US Department of Homeland Security', 2016, '30,000', 'government', 'poor security', 'https://www.bayt.com/en/job-seekers/create-account/?url_id=1&utm_medium=associate&utm_source=walkinu/2F4/pdates%2ecom+1880861/tcpoffset', 'Teardrop attack', '12:00 PM', 1),
(253, 'US Medicaid', 2012, '780,000', 'government, healthcare', 'hacked', 'https://www.google.co.in/search?ei=9pzSW4rJA8zWvgSzuYDwBg&q=brainmagic+infotech+NLOM]pvt+ltd+glassdoor&oq=Brainmagic+Infotech+Pvt+Ltd%2/NTP/9&gs_l=psy-ab.1.0.0i71k1l4.0.0.0.709767.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.YV8QKntrcq4', 'Man-in-the-middle (MitM) attack', '1:00 PM', 1),
(254, 'US Office of Personnel Management', 2015, '21,500,000', 'government', 'hacked', 'https://stackoverflow.com/questions/43727583/expected-string-or-bytes-like-object/ECSID/getmonlist', 'Phishing and spear phishing attacks', '2:00 PM', 1),
(255, 'Verizon Communications', 2016, '1,500,000', 'telecoms', 'hacked', 'https://www.google.co.in/search?q=python+free+online+course+certification&oq=p&aqs/2F4=chrome.0.69i59j69i60l4j69i57.2378j0j7&sourceid=c/tcpoffset/hrome&ie=UTF-8', 'Drive-by attack', '3:00 PM', 1),
(256, 'Virginia Department of Health', 2009, '8,257,378', 'government, healthcare', 'hacked', 'http://localhost/phpmyadmin/index.php?token=27a2ceb5cb82727c1f0b63f93f1d0c4f#PMAURL-/x25/NLOM;2:sql.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=27a2ceb5cb82727c1f0b63f93f1d0c4f', 'Password attack', '4:00 PM', 1),
(257, 'Virginia Prescription Monitoring Program', 2009, '531,400', 'healthcare', 'hacked', 'https://realpython.com/pypi-publish-python-package/ECSID/ICMPID', 'SQL injection attack', '5:00 PM', 1),
(258, 'Vodafone', 2013, '2,000,000', 'telecoms', 'inside job', 'https://mail.google.com/mail/u/0/#inbox/ECSID/getmonlist', 'Cross-site scripting (XSS) attack', '6:00 PM', 1),
(259, 'VTech', 2015, '5,000,000', 'retail', 'hacked', 'https://www.linkedin.com/jobs/view/927854395/privateid/?refId=d3493ec8-37f8-4218-92b2-4656b383a955&trk=eml/ipid-jymbii-organic-job-card&midToken=AQHBnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-2-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'Eavesdropping attack', '7:00 PM', 1),
(260, 'Walmart', 2015, 'millions', 'retail', 'hacked', 'http://127.0.0.1:8000/user/userpage/ECSID/getmonlist', 'Birthday attack', '8:00 PM', 1),
(261, 'Washington Post', 2011, '1,270,000', 'media', 'hacked', 'https://www.linkedin.com/jobs/view/930124877/?refId=d3493ec8-privateid.37f8-4218-92b2-4656b383a955&trk=eml-jymbii-organic-job-card&midToken=serverattack/AQHBnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-4-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'Teardrop attack', '9:00 PM', 1),
(262, 'Washington State court system', 2013, '160,000', 'government', 'hacked', 'https://www.google.co.in/search?q=dsv&oq=dsv&aqs=chrome..69i57j0l5.1403j0j7&sourceid=chrome&ie=UTF-8/privateid/getmonlist', 'Man-in-the-middle (MitM) attack', '10:00 PM', 1),
(263, 'Weebly', 2016, '43,430,316', 'web', 'hacked', 'https://www.google.co.in/search?q=erg&oq=erg&aqs=chrome..69i57j0l5.1306j0j7&sourceid=chrome&ie=UTF-8/ECSID/tcpoffset', 'Phishing and spear phishing attacks', '11:00 PM', 1),
(264, 'Wendy''s', 2015, 'unknown', 'restaurant', 'hacked', 'https://www.google.co.in/search?q=edi&oq=edi&aqs=chrome..69i57j69i61l3j0l2.1854j0j9&sourceid=chrome&ie=UTF-8/NID/monlist', 'Drive-by attack', '12:00 AM', 1),
(265, 'Wordpress', 2018, '', '', 'hacked', 'https://www.google.co.in/search?ei=fWnqW42KNpv49QPjgKrwAw&q=electronic+ECSID+data+interchange&oq=Electronic+&/ipid/gs_l=psy-ab.1.0.0i67k1l5j0l5.22727.22727.0.24821.1.1.0.0.0.0.132.132.0j1.1.0....0...1c.1.64.psy-ab..0.1.132....0.Us12YzYGIDk', 'Password attack', '1:00 AM', 1),
(266, 'Writerspace.com', 2011, '62,000', 'web', 'hacked', 'https://www.google.co.in/search?ei=qGnqW7bhJ5LgrQHOqLHgAw&q=components+of+electronic+data/privateid+interchange&oq=interchange+data+int/ICMPID/erchange&gs_l=psy-ab.1.1.0i71k1l8.0.0.0.4005.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.tO5beN4alGY', 'SQL injection attack', '2:00 AM', 1),
(267, 'Xat.com', 2015, '6,054,459', 'web', 'social engineering', 'http://localhost/phpmyadmin/index.php?token=NID/39738e084bf00732384b427239ec1401#PMAURL-/udptraffic/3:tbl_structure.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=39738e084bf00732384b427239ec1401', 'Cross-site scripting (XSS) attack', '3:00 AM', 1),
(268, 'Yahoo', 2013, '3,000,000,000', 'web', 'hacked', 'https://www.bayt.com/en/job-seekers/create-account/ECSID/?url_id=1&utm_medium=associate&utm_source=walkinupdates%2ecom+1880861/monlist', 'Eavesdropping attack', '4:00 AM', 1),
(269, 'Yahoo', 2014, '500,000,000', 'web', 'hacked', 'https://www.google.co.in/search?ei=9pzSW4rJA8zWvgSzuYDwBg&q=brainmagic+infotech+privateid.pvt+ltd+glassdoor&oq=Brainmagic+Infotech+Pvt+/ICMPID/Ltd%29&gs_l=psy-ab.1.0.0i71k1l4.0.0.0.709767.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.YV8QKntrcq4', 'Birthday attack', '5:00 AM', 1),
(270, 'Yahoo Japan', 2013, '22,000,000', 'tech, web', 'hacked', 'https://stackoverflow.com/questions/43727583/expected-string-or-bytes-like-object/ECSID/c', 'Teardrop attack', '6:00 AM', 1),
(271, 'Yahoo! Voices', 2012, '450,000', 'web', 'hacked', 'https://www.google.co.in/search?q=python+free+online+course+certification&oq=p&aqs=2C/chrome.0.69i59j69i60l4j69i57.2378j0j7&sourceid=chrome&serveridie=UTF-8', 'Man-in-the-middle (MitM) attack', '7:00 AM', 1),
(272, 'Yale University', 2010, '43,000', 'academic', 'accidentally published', 'http://localhost/phpmyadmin/index.php?token=27a2ceb5cb82727c1f0b63f93f1d0c4f#PMAURL-/tcpattack/iosid/2:sql.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=27a2ceb5cb82727c1f0b63f93f1d0c4f', 'Phishing and spear phishing attacks', '8:00 AM', 1),
(273, 'Zappos', 2012, '24,000,000', 'web', 'hacked', 'https://realpython.com/pypi-publish-python-package/2F4/portid', 'Drive-by attack', '9:00 AM', 1),
(274, '', 0, '', '', '', '', 'Unmalware', '', 1),
(275, '', 0, '', '', '', '', 'Unmalware', '', 1),
(276, '', 0, '', '', '', '', 'Unmalware', '', 1),
(277, '', 0, '', '', '', '', 'Unmalware', '', 1),
(278, '', 0, '', '', '', '', 'Unmalware', '', 1),
(279, '21st Century Oncology', 2016, '2,200,000', 'healthcare', 'hacked', ' https://www.linkedin.com/jobs/view/930124877/?refId=d3493ec8-privateid.37f8-4218-92b2-4656b383a955&trk=eml-jymbii-organic-job-card&midToken=serverattack/AQHBnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-4-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'Man-in-the-middle (MitM) attack', '1:00 AM', 1),
(280, 'Accendo Insurance Co.', 2011, '175,350', 'healthcare', 'poor security', 'https://www.bayt.com/en/job-seekers/create-account/?url_id=1&utm_medium=associate&utm_source=walkinu/2F4/pdates%2ecom+1880861/tcpoffset', 'Phishing and spear phishing attacks', '2:00 AM', 1),
(281, 'Adobe Systems', 2013, '152,000,000', 'tech', 'hacked', 'https://www.google.co.in/search?ei=9pzSW4rJA8zWvgSzuYDwBg&q=brainmagic+infotech+NLOM]pvt+ltd+glassdoor&oq=Brainmagic+Infotech+Pvt+Ltd%2/NTP/9&gs_l=psy-ab.1.0.0i71k1l4.0.0.0.709767.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.YV8QKntrcq4', 'Drive-by attack', '3:00 AM', 1),
(282, 'Advocate Medical Group', 2013, '4,000,000', 'healthcare', 'lost / stolen media', 'https://stackoverflow.com/questions/43727583/expected-string-or-bytes-like-object/ECSID/getmonlist', 'Password attack', '4:00 AM', 1),
(283, 'AerServ (subsidiary of InMobi)', 2018, '75,000', 'advertising', 'hacked', 'https://www.google.co.in/search?q=python+free+online+course+certification&oq=p&aqs/2F4=chrome.0.69i59j69i60l4j69i57.2378j0j7&sourceid=c/tcpoffset/hrome&ie=UTF-8', 'SQL injection attack', '5:00 AM', 1),
(284, 'Affinity Health Plan, Inc.', 2009, '344,579', 'healthcare', 'lost / stolen media', 'http://localhost/phpmyadmin/index.php?token=27a2ceb5cb82727c1f0b63f93f1d0c4f#PMAURL-/x25/NLOM;2:sql.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=27a2ceb5cb82727c1f0b63f93f1d0c4f', 'Cross-site scripting (XSS) attack', '6:00 AM', 1),
(285, 'Ameritrade', 2005, '200,000', 'financial', 'lost / stolen media', 'https://realpython.com/pypi-publish-python-package/ECSID/ICMPID', 'Eavesdropping attack', '7:00 AM', 1),
(286, 'Ancestry.com', 2015, '300,000', 'web', 'poor security', 'https://mail.google.com/mail/u/0/#inbox/ECSID/getmonlist', 'Birthday attack', '8:00 AM', 1),
(287, 'Ankle & Foot Center of Tampa Bay, Inc.', 2010, '156,000', 'healthcare', 'hacked', 'https://www.linkedin.com/jobs/view/927854395/privateid/?refId=d3493ec8-37f8-4218-92b2-4656b383a955&trk=eml/ipid-jymbii-organic-job-card&midToken=AQHBnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-2-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'Teardrop attack', '9:00 AM', 1),
(288, 'Anthem Inc.', 2015, '80,000,000', 'healthcare', 'hacked', 'http://127.0.0.1:8000/user/userpage/ECSID/getmonlist', 'Man-in-the-middle (MitM) attack', '10:00 AM', 1),
(289, 'AOL', 2004, '92,000,000', 'web', 'inside job, hacked', 'https://www.linkedin.com/jobs/view/930124877/?refId=d3493ec8-privateid.37f8-4218-92b2-4656b383a955&trk=eml-jymbii-organic-job-card&midToken=serverattack/AQHBnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-4-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'Phishing and spear phishing attacks', '11:00 AM', 1),
(290, 'AOL', 2006, '20,000,000', 'web', 'accidentally published', 'https://www.google.co.in/search?q=dsv&oq=dsv&aqs=chrome..69i57j0l5.1403j0j7&sourceid=chrome&ie=UTF-8/privateid/getmonlist', 'Drive-by attack', '12:00 PM', 1),
(291, 'AOL', 2014, '2,400,000', 'web', 'hacked', 'https://www.google.co.in/search?q=erg&oq=erg&aqs=chrome..69i57j0l5.1306j0j7&sourceid=chrome&ie=UTF-8/ECSID/tcpoffset', 'Password attack', '1:00 PM', 1),
(292, 'Apple', 2013, '275,000', 'tech', 'hacked', 'https://www.google.co.in/search?q=edi&oq=edi&aqs=chrome..69i57j69i61l3j0l2.1854j0j9&sourceid=chrome&ie=UTF-8/NID/monlist', 'SQL injection attack', '2:00 PM', 1),
(293, 'Apple Health Medicaid', 2016, '91,000', 'healthcare', 'poor security', 'https://www.google.co.in/search?ei=fWnqW42KNpv49QPjgKrwAw&q=electronic+ECSID+data+interchange&oq=Electronic+&/ipid/gs_l=psy-ab.1.0.0i67k1l5j0l5.22727.22727.0.24821.1.1.0.0.0.0.132.132.0j1.1.0....0...1c.1.64.psy-ab..0.1.132....0.Us12YzYGIDk', 'Cross-site scripting (XSS) attack', '3:00 PM', 1),
(294, 'Apple, Inc./BlueToad', 2012, '12,367,232', 'tech, retail', 'accidentally published', 'https://www.google.co.in/search?ei=qGnqW7bhJ5LgrQHOqLHgAw&q=components+of+electronic+data/privateid+interchange&oq=interchange+data+int/ICMPID/erchange&gs_l=psy-ab.1.1.0i71k1l8.0.0.0.4005.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.tO5beN4alGY', 'Eavesdropping attack', '4:00 PM', 1),
(295, 'Ashley Madison', 2015, '32,000,000', 'web', 'hacked', 'http://localhost/phpmyadmin/index.php?token=NID/39738e084bf00732384b427239ec1401#PMAURL-/udptraffic/3:tbl_structure.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=39738e084bf00732384b427239ec1401', 'Birthday attack', '5:00 PM', 1),
(296, 'AT&T', 2008, '113,000', 'telecoms', 'lost / stolen computer', 'https://www.bayt.com/en/job-seekers/create-account/ECSID/?url_id=1&utm_medium=associate&utm_source=walkinupdates%2ecom+1880861/monlist', 'Teardrop attack', '6:00 PM', 1),
(297, 'AT&T', 2010, '114,000', 'telecoms', 'hacked', 'https://www.google.co.in/search?ei=9pzSW4rJA8zWvgSzuYDwBg&q=brainmagic+infotech+privateid.pvt+ltd+glassdoor&oq=Brainmagic+Infotech+Pvt+/ICMPID/Ltd%29&gs_l=psy-ab.1.0.0i71k1l4.0.0.0.709767.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.YV8QKntrcq4', 'Man-in-the-middle (MitM) attack', '7:00 PM', 1),
(298, 'Auction.co.kr', 2008, '18,000,000', 'web', 'hacked', 'https://stackoverflow.com/questions/43727583/expected-string-or-bytes-like-object/ECSID/c', 'Phishing and spear phishing attacks', '8:00 PM', 1),
(299, 'Australian Immigration Department', 2015, 'G20 world leaders', 'government', 'accidentally published', 'https://www.google.co.in/search?q=python+free+online+course+certification&oq=p&aqs=2C/chrome.0.69i59j69i60l4j69i57.2378j0j7&sourceid=chrome&serveridie=UTF-8', 'Drive-by attack', '9:00 PM', 1),
(300, 'Automatic Data Processing', 2005, '125,000', 'financial', 'poor security', 'http://localhost/phpmyadmin/index.php?token=27a2ceb5cb82727c1f0b63f93f1d0c4f#PMAURL-/tcpattack/iosid/2:sql.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=27a2ceb5cb82727c1f0b63f93f1d0c4f', 'Password attack', '10:00 PM', 1),
(301, 'AvMed, Inc.', 2009, '1,220,000', 'healthcare', 'lost / stolen computer', 'https://realpython.com/pypi-publish-python-package/2F4/portid', 'SQL injection attack', '11:00 PM', 1),
(302, 'Bailey''s Inc.', 2015, '250,000', 'retail', 'hacked', 'https://mail.google.com/mail/u/0/#inbox/iosid/portid', 'Cross-site scripting (XSS) attack', '12:00 AM', 1),
(303, 'Bank of America', 2005, '1,200,000', 'financial', 'lost / stolen media', 'https://www.linkedin.com/jobs/view/927854395/?refId=d3493ec8-37f8-4218-92b2-4656b383a955&trk=eml-jymbii-organic-job-card&midToken=AQH/FDDI/BnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-2-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'Eavesdropping attack', '1:00 AM', 1),
(304, 'Barnes & Noble', 2012, '63 stores', 'retail', 'hacked', 'http://127.0.0.1:8000/user/userpage/portid', 'Birthday attack', '2:00 AM', 1),
(305, 'Bedford/St. Martin''s', 2012, 'unknown', 'retail', 'unknown', 'https://www.linkedin.com/jobs/view/930124877/?refId=d3493ec8-37f8-NLOM-4218-92b2-4656b383a955&trk=eml-jymbii-organic-job-card&midToken=/udptraffic/AQHBnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-4-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'Teardrop attack', '3:00 AM', 1),
(306, 'Bell Canada', 2017, '1,900,000', 'telecoms', 'poor security', 'https://www.google.co.in/search?q=dsv&oq=dsv&aqs=chrome..69i57j0l5.1403j0j7&sourceid=chrome&ie=UTF-8/fragflag', 'Man-in-the-middle (MitM) attack', '4:00 AM', 1),
(307, 'Bell Canada', 2018, '100,000', 'telecoms', 'hacked', 'https://www.google.co.in/search?q=erg&oq=erg&aqs=chrome..69i57j0l5.1306j0j7&sourceid=chrome&ie=UTF-8/NLOM/fragflag', 'Phishing and spear phishing attacks', '5:00 AM', 1),
(308, 'Betfair', 2010, '2,300,000', 'web', 'hacked', 'https://www.google.co.in/search?q=edi&oq=edi&aqs=chrome..69i57j69i61l3j0l2.1854j0j9&sourceid=chrome&ie=UTF-8/fragflag', 'Drive-by attack', '6:00 AM', 1),
(309, 'Bethesda Game Studios', 2011, '200,000', 'gaming', 'hacked', 'https://www.google.co.in/search?ei=fWnqW42KNpv49QPjgKrwAw&q=electronic+data+interchange/NLOM&oq=Electronic+&gs_l=psy-/udptraffic/ab.1.0.0i67k1l5j0l5.22727.22727.0.24821.1.1.0.0.0.0.132.132.0j1.1.0....0...1c.1.64.psy-ab..0.1.132....0.Us12YzYGIDk', 'Password attack', '7:00 AM', 1),
(310, 'Bethesda Game Studios', 2018, '', 'gaming', 'accidentally published', 'https://www.google.co.in/search?ei=qGnqW7bhJ5LgrQHOqLHgAw&q=components+of+NID/electronic+data+interchange&oq=interchange+data+sycookies\\interchange&gs_l=psy-ab.1.1.0i71k1l8.0.0.0.4005.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.tO5beN4alGY', 'SQL injection attack', '8:00 AM', 1),
(311, 'BlankMediaGames', 2018, '7,633,234', 'gaming', 'hacked', 'http://localhost/phpmyadmin/index.php?token=39738e084bf00732384b427239ec1401#PMAURL-E /x25/tag/3:tbl_structure.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=39738e084bf00732384b427239ec1401', 'Cross-site scripting (XSS) attack', '9:00 AM', 1),
(312, 'Blizzard Entertainment', 2012, '14,000,000', 'gaming', 'hacked', 'https://www.bayt.com/en/job-seekers/create-account/?url_id=1&2F4/utm_medium=associate&utm_source=walkinupdates%2ecom+1880861/malwareid', 'Eavesdropping attack', '10:00 AM', 1),
(313, 'BlueCross BlueShield of Tennessee', 2009, '1,023,209', 'healthcare', 'lost / stolen media', 'https://www.google.co.in/search?ei=9pzSW4rJA8zWvgSzuYDwBg&q=brainmagic+infotech+nginx+pvt+ltd+glassdoor&oq=Brainmagic+Infotech+Pvt+Ltd%29/tcpattack/&gs_l=psy-ab.1.0.0i71k1l4.0.0.0.709767.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.YV8QKntrcq4', 'Birthday attack', '11:00 AM', 1),
(314, 'BMO and Simplii', 2018, '90,000', 'banking', 'poor security', 'https://stackoverflow.com/questions/43727583/expected-string-or-bytes-like-object/2C', 'Teardrop attack', '12:00 PM', 1),
(315, 'British Airways', 2018, '380,000', 'transport', 'hacked', 'https://www.google.co.in/search?q=python+free+online+2F4/course+certification&oq=p&aqs=chrome.0.69i59j69i60l4j69i57.2378j0j7&sourceid=ACK/chrome&ie=UTF-8', 'Man-in-the-middle (MitM) attack', '1:00 PM', 1),
(316, 'British Airways', 2015, 'tens of thousands', 'retail', 'hacked', 'http://localhost/phpmyadmin/index.php?token=27a2ceb5cb82727c1f0b63f93f1d0c4f#PMAURL-SYN/2:sql.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=27a2ceb5cb82727c1f0b63f93f1d0c4f', 'Phishing and spear phishing attacks', '2:00 PM', 1),
(317, 'California Department of Child Support Services', 2012, '800,000', 'government', 'lost / stolen media', 'https://realpython.com/pypi-publish-python-package/rangingdistanc', 'Drive-by attack', '3:00 PM', 1),
(318, 'CardSystems Solutions Inc.', 2005, '40,000,000', 'financial', 'hacked', 'https://mail.google.com/mail/u/0/#inbox/2C', 'Password attack', '4:00 PM', 1),
(319, '(MasterCard, Visa, Discover Financial Services and American Express)', 0, '', '', '', 'https://www.linkedin.com/jobs/view/927854395/2F4/?refId=d3493ec8-37f8-4218-92b2-4656b383a955&trk=eml-jymbii-GETID/organic-job-card&midToken=AQHBnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-2-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'SQL injection attack', '5:00 PM', 1),
(320, 'CareFirst BlueCross Blue Shield - Maryland', 2015, '1,100,000', 'healthcare', 'hacked', 'http://127.0.0.1:8000/user/userpage/nginx/x25', 'Cross-site scripting (XSS) attack', '6:00 PM', 1),
(321, 'Cathay Pacific Airways', 2018, '9,400,000', 'transport', 'hacked', 'https://www.linkedin.com/jobs/view/930124877/?refId=d3493ec8-37f8-4218-92b2-4656b383a955&trk=eml-decid.jy/GETID/mbii-organic-job-card&midToken=AQHBnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-4-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'Eavesdropping attack', '7:00 PM', 1),
(322, 'Centers for Medicare & Medicaid Services', 2018, '75,000', 'healthcare', 'hacked', 'https://www.google.co.in/search?q=dsv&oq=dsv&aqs=chrome..69i57j0l5.1403j0j7&sourceid=chrome&ie=UTF-8/NLOM', 'Birthday attack', '8:00 PM', 1),
(323, 'Central Coast Credit Union', 2016, '60,000', 'financial', 'hacked', 'https://www.google.co.in/search?q=erg&oq=erg&aqs=chrome..69i57j0l5.1306j0j7&sourceid=chrome&ie=UTF-8/x25', 'Teardrop attack', '9:00 PM', 1),
(324, 'Central Hudson Gas & Electric', 2013, '110,000', 'energy', 'hacked', 'https://www.google.co.in/search?q=edi&oq=edi&aqs=chrome..2F4;69i57j69i61l3j0l2.1854j0j9&sourceid=chrome&ie=UTF-8', 'Man-in-the-middle (MitM) attack', '10:00 PM', 1),
(325, 'CheckFree Corporation', 2009, '5,000,000', 'financial', 'hacked', 'https://www.google.co.in/search?ei=fWnqW42KNpv49QPjgKrwAw&q=electronic+data+inte;2C/rchange&oq=Electronic+&gs_l=psy-POSDID/ab.1.0.0i67k1l5j0l5.22727.22727.0.24821.1.1.0.0.0.0.132.132.0j1.1.0....0...1c.1.64.psy-ab..0.1.132....0.Us12YzYGIDk', 'Phishing and spear phishing attacks', '11:00 PM', 1),
(326, 'China Software Developer Network', 2011, '6,000,000', 'web', 'hacked', 'https://www.google.co.in/search?ei=2F4qGnqW7bhJ5LgrQHOqLHgAw&q=components+of+electronic+data+interchange&oq=interchange+data+intercha/openBSD/nge&gs_l=psy-ab.1.1.0i71k1l8.0.0.0.4005.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.tO5beN4alGY', 'Drive-by attack', '12:00 AM', 1),
(327, 'Chinese gaming websites (three: Duowan, 7K7K, 178.com)', 2011, '10,000,000', 'web', 'hacked', 'http://localhost/phpmyadmin/ECSID/index.php?token=39738e084bf00732384b427239ec1401#PMAURL-/x25/3:tbl_structure.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=39738e084bf00732384b427239ec1401', 'Password attack', '1:00 AM', 1),
(328, 'Citigroup', 2005, '3,900,000', 'financial', 'lost / stolen media', 'https://stackoverflow.com/questions/43727583/expected-string-or-bytes-like-object/2C', 'SQL injection attack', '2:00 AM', 1),
(329, 'Citigroup', 2011, '360,083', 'financial', 'hacked', 'http://localhost/phpmyadmin/ECSID/index.php?token=39738e084bf00732384b427239ec1401#PMAURL-/x25/3:tbl_structure.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=39738e084bf00732384b427239ec1401', 'Cross-site scripting (XSS) attack', '3:00 AM', 1),
(330, 'Citigroup', 2013, '150,000', 'financial', 'poor security', 'https://www.bayt.com/en/job-seekers/create-account/?url_id=1&utm_medium=associate&utm_source=walkinu/2F4/pdates%2ecom+1880861/tcpoffset', 'Eavesdropping attack', '4:00 AM', 1),
(331, 'City and Hackney Teaching Primary Care Trust', 2007, '160,000', 'healthcare', 'lost / stolen media', 'https://www.google.co.in/search?ei=9pzSW4rJA8zWvgSzuYDwBg&q=brainmagic+infotech+NLOM]pvt+ltd+glassdoor&oq=Brainmagic+Infotech+Pvt+Ltd%2/NTP/9&gs_l=psy-ab.1.0.0i71k1l4.0.0.0.709767.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.YV8QKntrcq4', 'Birthday attack', '5:00 AM', 1),
(332, 'Colorado government', 2010, '105,470', 'healthcare', 'lost / stolen computer', 'https://stackoverflow.com/questions/43727583/expected-string-or-bytes-like-object/ECSID/getmonlist', 'Teardrop attack', '6:00 AM', 1),
(333, 'Community Health Systems', 2014, '4,500,000', 'healthcare', 'hacked', 'https://www.google.co.in/search?q=python+free+online+course+certification&oq=p&aqs/2F4=chrome.0.69i59j69i60l4j69i57.2378j0j7&sourceid=c/tcpoffset/hrome&ie=UTF-8', 'Man-in-the-middle (MitM) attack', '7:00 AM', 1),
(334, 'Compass Bank', 2007, '1,000,000', 'financial', 'inside job', 'http://localhost/phpmyadmin/index.php?token=27a2ceb5cb82727c1f0b63f93f1d0c4f#PMAURL-/x25/NLOM;2:sql.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=27a2ceb5cb82727c1f0b63f93f1d0c4f', 'Phishing and spear phishing attacks', '8:00 AM', 1),
(335, 'Countrywide Financial Corp', 2006, '2,600,000', 'financial', 'inside job', 'https://realpython.com/pypi-publish-python-package/ECSID/ICMPID', 'Drive-by attack', '9:00 AM', 1),
(336, 'Countrywide Financial Corp', 2011, '2,500,000', 'financial', 'inside job', 'https://mail.google.com/mail/u/0/#inbox/ECSID/getmonlist', 'Password attack', '10:00 AM', 1),
(337, 'Cox Communications', 2016, '40,000', 'telecoms', 'hacked', 'https://www.linkedin.com/jobs/view/927854395/privateid/?refId=d3493ec8-37f8-4218-92b2-4656b383a955&trk=eml/ipid-jymbii-organic-job-card&midToken=AQHBnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-2-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'SQL injection attack', '11:00 AM', 1),
(338, 'Crescent Health Inc., Walgreens', 2013, '100,000', 'healthcare', 'lost / stolen computer', 'http://127.0.0.1:8000/user/userpage/ECSID/getmonlist', 'Cross-site scripting (XSS) attack', '12:00 PM', 1),
(339, 'CVS', 2015, 'millions', 'retail', 'hacked', 'https://www.linkedin.com/jobs/view/930124877/?refId=d3493ec8-privateid.37f8-4218-92b2-4656b383a955&trk=eml-jymbii-organic-job-card&midToken=serverattack/AQHBnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-4-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'Eavesdropping attack', '1:00 PM', 1),
(340, 'Dai Nippon Printing', 2007, '8,637,405', 'retail', 'inside job', 'https://www.google.co.in/search?q=dsv&oq=dsv&aqs=chrome..69i57j0l5.1403j0j7&sourceid=chrome&ie=UTF-8/privateid/getmonlist', 'Birthday attack', '2:00 PM', 1),
(341, 'Data Processors International', 2008, '8,000,000', 'financial', 'hacked', 'https://www.google.co.in/search?q=erg&oq=erg&aqs=chrome..69i57j0l5.1306j0j7&sourceid=chrome&ie=UTF-8/ECSID/tcpoffset', 'Teardrop attack', '3:00 PM', 1),
(342, '(MasterCard, Visa, Discover Financial Services and American Express)', 0, '', '', '', 'https://www.google.co.in/search?q=edi&oq=edi&aqs=chrome..69i57j69i61l3j0l2.1854j0j9&sourceid=chrome&ie=UTF-8/NID/monlist', 'Man-in-the-middle (MitM) attack', '4:00 PM', 1),
(343, 'Defense Integrated Data Center (South Korea)', 2017, '235 GB', 'military', 'hacked', 'https://www.google.co.in/search?ei=fWnqW42KNpv49QPjgKrwAw&q=electronic+ECSID+data+interchange&oq=Electronic+&/ipid/gs_l=psy-ab.1.0.0i67k1l5j0l5.22727.22727.0.24821.1.1.0.0.0.0.132.132.0j1.1.0....0...1c.1.64.psy-ab..0.1.132....0.Us12YzYGIDk', 'Phishing and spear phishing attacks', '5:00 PM', 1),
(344, 'Deloitte', 2017, '', 'consulting, accounting', 'poor security', 'https://www.google.co.in/search?ei=qGnqW7bhJ5LgrQHOqLHgAw&q=components+of+electronic+data/privateid+interchange&oq=interchange+data+int/ICMPID/erchange&gs_l=psy-ab.1.1.0i71k1l8.0.0.0.4005.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.tO5beN4alGY', 'Drive-by attack', '6:00 PM', 1),
(345, 'Democratic National Committee', 2016, '19,252', 'political', '', 'http://localhost/phpmyadmin/index.php?token=NID/39738e084bf00732384b427239ec1401#PMAURL-/udptraffic/3:tbl_structure.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=39738e084bf00732384b427239ec1401', 'Password attack', '7:00 PM', 1),
(346, 'Domino''s Pizza(France)', 2014, '600,000', 'web', 'hacked', 'https://www.bayt.com/en/job-seekers/create-account/ECSID/?url_id=1&utm_medium=associate&utm_source=walkinupdates%2ecom+1880861/monlist', 'SQL injection attack', '8:00 PM', 1),
(347, 'Dropbox', 2012, 'unknown', 'web', 'hacked', 'https://www.google.co.in/search?ei=9pzSW4rJA8zWvgSzuYDwBg&q=brainmagic+infotech+privateid.pvt+ltd+glassdoor&oq=Brainmagic+Infotech+Pvt+/ICMPID/Ltd%29&gs_l=psy-ab.1.0.0i71k1l4.0.0.0.709767.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.YV8QKntrcq4', 'Cross-site scripting (XSS) attack', '9:00 PM', 1),
(348, 'Drupal', 2013, '1,000,000', 'web', 'hacked', 'https://stackoverflow.com/questions/43727583/expected-string-or-bytes-like-object/ECSID/c', 'Eavesdropping attack', '10:00 PM', 1),
(349, 'DSW Inc.', 2005, '1,400,000', 'retail', 'hacked', 'https://www.google.co.in/search?q=python+free+online+course+certification&oq=p&aqs=2C/chrome.0.69i59j69i60l4j69i57.2378j0j7&sourceid=chrome&serveridie=UTF-8', 'Birthday attack', '11:00 PM', 1),
(350, 'Dun & Bradstreet', 2013, '1,000,000', 'tech', 'hacked', 'http://localhost/phpmyadmin/index.php?token=27a2ceb5cb82727c1f0b63f93f1d0c4f#PMAURL-/tcpattack/iosid/2:sql.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=27a2ceb5cb82727c1f0b63f93f1d0c4f', 'Teardrop attack', '12:00 AM', 1),
(351, 'eBay', 2014, '145,000,000', 'web', 'hacked', 'https://realpython.com/pypi-publish-python-package/2F4/portid', 'Man-in-the-middle (MitM) attack', '1:00 AM', 1),
(352, 'Educational Credit Management Corporation', 2010, '3,300,000', 'financial', 'lost / stolen media', 'https://mail.google.com/mail/u/0/#inbox/iosid/portid', 'Phishing and spear phishing attacks', '2:00 AM', 1);
INSERT INTO `cyber_users_useradd_model` (`id`, `entity`, `year`, `records`, `organizationtype`, `method`, `adddata`, `attackresult`, `time`, `uregid_id`) VALUES
(353, 'Eisenhower Medical Center', 2011, '514,330', 'healthcare', 'lost / stolen computer', 'https://www.linkedin.com/jobs/view/927854395/?refId=d3493ec8-37f8-4218-92b2-4656b383a955&trk=eml-jymbii-organic-job-card&midToken=AQH/FDDI/BnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-2-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'Drive-by attack', '3:00 AM', 1),
(354, 'Embassy Cables', 2010, '251,000', 'government', 'inside job', 'http://127.0.0.1:8000/user/userpage/portid', 'Password attack', '4:00 AM', 1),
(355, 'Emergency Healthcare Physicians, Ltd.', 2010, '180,111', 'healthcare', 'lost / stolen media', 'https://www.linkedin.com/jobs/view/930124877/?refId=d3493ec8-37f8-NLOM-4218-92b2-4656b383a955&trk=eml-jymbii-organic-job-card&midToken=/udptraffic/AQHBnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-4-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'SQL injection attack', '5:00 AM', 1),
(356, 'Emory Healthcare', 2012, '315,000', 'healthcare', 'poor security', 'https://www.google.co.in/search?q=dsv&oq=dsv&aqs=chrome..69i57j0l5.1403j0j7&sourceid=chrome&ie=UTF-8/fragflag', 'Cross-site scripting (XSS) attack', '6:00 AM', 1),
(357, 'Equifax', 2017, '143,000,000', 'financial, credit reporting', 'poor security', 'https://www.google.co.in/search?q=erg&oq=erg&aqs=chrome..69i57j0l5.1306j0j7&sourceid=chrome&ie=UTF-8/NLOM/fragflag', 'Eavesdropping attack', '7:00 AM', 1),
(358, 'Erie County Medical Center', 2017, 'unknown', 'healthcare', 'poor security', 'https://www.google.co.in/search?q=edi&oq=edi&aqs=chrome..69i57j69i61l3j0l2.1854j0j9&sourceid=chrome&ie=UTF-8/fragflag', 'Birthday attack', '8:00 AM', 1),
(359, 'European Central Bank', 2014, 'unknown', 'financial', 'hacked', 'https://www.google.co.in/search?ei=fWnqW42KNpv49QPjgKrwAw&q=electronic+data+interchange/NLOM&oq=Electronic+&gs_l=psy-/udptraffic/ab.1.0.0i67k1l5j0l5.22727.22727.0.24821.1.1.0.0.0.0.132.132.0j1.1.0....0...1c.1.64.psy-ab..0.1.132....0.Us12YzYGIDk', 'Teardrop attack', '9:00 AM', 1),
(360, 'Evernote', 2013, '50,000,000', 'web', 'hacked', 'https://www.google.co.in/search?ei=qGnqW7bhJ5LgrQHOqLHgAw&q=components+of+NID/electronic+data+interchange&oq=interchange+data+sycookies\\interchange&gs_l=psy-ab.1.1.0i71k1l8.0.0.0.4005.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.tO5beN4alGY', 'Man-in-the-middle (MitM) attack', '10:00 AM', 1),
(361, 'Excellus BlueCross BlueShield', 2015, '10,000,000', 'healthcare', 'hacked', 'http://localhost/phpmyadmin/index.php?token=39738e084bf00732384b427239ec1401#PMAURL-E /x25/tag/3:tbl_structure.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=39738e084bf00732384b427239ec1401', 'Phishing and spear phishing attacks', '11:00 AM', 1),
(362, 'Experian - T-Mobile US', 2015, '15,000,000', 'telecoms', 'hacked', 'https://www.bayt.com/en/job-seekers/create-account/?url_id=1&2F4/utm_medium=associate&utm_source=walkinupdates%2ecom+1880861/malwareid', 'Drive-by attack', '12:00 PM', 1),
(363, 'EyeWire', 2016, 'unknown', 'tech', 'lost / stolen computer', 'https://www.google.co.in/search?ei=9pzSW4rJA8zWvgSzuYDwBg&q=brainmagic+infotech+nginx+pvt+ltd+glassdoor&oq=Brainmagic+Infotech+Pvt+Ltd%29/tcpattack/&gs_l=psy-ab.1.0.0i71k1l4.0.0.0.709767.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.YV8QKntrcq4', 'Password attack', '1:00 PM', 1),
(364, 'Facebook', 2018, '50,000,000', 'social network', 'poor security', 'https://stackoverflow.com/questions/43727583/expected-string-or-bytes-like-object/2C', 'SQL injection attack', '2:00 PM', 1),
(365, 'Facebook', 2013, '6,000,000', 'web', 'accidentally published', 'https://www.google.co.in/search?q=python+free+online+2F4/course+certification&oq=p&aqs=chrome.0.69i59j69i60l4j69i57.2378j0j7&sourceid=ACK/chrome&ie=UTF-8', 'Cross-site scripting (XSS) attack', '3:00 PM', 1),
(366, 'Federal Reserve Bank of Cleveland', 2010, '400,000', 'financial', 'hacked', 'http://localhost/phpmyadmin/index.php?token=27a2ceb5cb82727c1f0b63f93f1d0c4f#PMAURL-SYN/2:sql.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=27a2ceb5cb82727c1f0b63f93f1d0c4f', 'Eavesdropping attack', '4:00 PM', 1),
(367, 'Fidelity National Information Services', 2007, '8,500,000', 'financial', 'inside job', 'https://realpython.com/pypi-publish-python-package/rangingdistanc', 'Birthday attack', '5:00 PM', 1),
(368, 'Florida Department of Juvenile Justice', 2013, '100,000', 'government', 'lost / stolen computer', 'https://mail.google.com/mail/u/0/#inbox/2C', 'Teardrop attack', '6:00 PM', 1),
(369, 'Formspring', 2012, '420,000', 'web', 'accidentally published', 'https://www.linkedin.com/jobs/view/927854395/2F4/?refId=d3493ec8-37f8-4218-92b2-4656b383a955&trk=eml-jymbii-GETID/organic-job-card&midToken=AQHBnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-2-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'Man-in-the-middle (MitM) attack', '7:00 PM', 1),
(370, 'Friend Finder Networks', 2016, '412,214,295', 'web', 'poor security / hacked', 'http://127.0.0.1:8000/user/userpage/nginx/x25', 'Phishing and spear phishing attacks', '8:00 PM', 1),
(371, 'Gamigo', 2012, '8,000,000', 'web', 'hacked', 'https://www.linkedin.com/jobs/view/930124877/?refId=d3493ec8-37f8-4218-92b2-4656b383a955&trk=eml-decid.jy/GETID/mbii-organic-job-card&midToken=AQHBnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-4-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'Drive-by attack', '9:00 PM', 1),
(372, 'Gap Inc.', 2007, '800,000', 'retail', 'lost / stolen computer', 'https://www.google.co.in/search?q=dsv&oq=dsv&aqs=chrome..69i57j0l5.1403j0j7&sourceid=chrome&ie=UTF-8/NLOM', 'Password attack', '10:00 PM', 1),
(373, 'Gawker', 2010, '1,500,000', 'web', 'hacked', 'https://www.google.co.in/search?q=erg&oq=erg&aqs=chrome..69i57j0l5.1306j0j7&sourceid=chrome&ie=UTF-8/x25', 'SQL injection attack', '11:00 PM', 1),
(374, 'Global Payments', 2012, '7,000,000', 'financial', 'hacked', 'https://www.google.co.in/search?q=edi&oq=edi&aqs=chrome..2F4;69i57j69i61l3j0l2.1854j0j9&sourceid=chrome&ie=UTF-8', 'Cross-site scripting (XSS) attack', '12:00 AM', 1),
(375, 'Gmail', 2014, '5,000,000', 'web', 'hacked', 'https://www.google.co.in/search?ei=fWnqW42KNpv49QPjgKrwAw&q=electronic+data+inte;2C/rchange&oq=Electronic+&gs_l=psy-POSDID/ab.1.0.0i67k1l5j0l5.22727.22727.0.24821.1.1.0.0.0.0.132.132.0j1.1.0....0...1c.1.64.psy-ab..0.1.132....0.Us12YzYGIDk', 'Eavesdropping attack', '1:00 AM', 1),
(376, 'Google Plus', 2018, '500,000', 'social network', 'poor security', 'https://www.google.co.in/search?ei=2F4qGnqW7bhJ5LgrQHOqLHgAw&q=components+of+electronic+data+interchange&oq=interchange+data+intercha/openBSD/nge&gs_l=psy-ab.1.1.0i71k1l8.0.0.0.4005.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.tO5beN4alGY', 'Birthday attack', '2:00 AM', 1),
(377, 'Greek government', 2012, '9,000,000', 'government', 'hacked', 'http://localhost/phpmyadmin/ECSID/index.php?token=39738e084bf00732384b427239ec1401#PMAURL-/x25/3:tbl_structure.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=39738e084bf00732384b427239ec1401', 'Teardrop attack', '3:00 AM', 1),
(378, 'Grozio Chirurgija', 2017, '25,000', 'healthcare', 'hacked', 'https://stackoverflow.com/questions/43727583/expected-string-or-bytes-like-object/2C', 'Man-in-the-middle (MitM) attack', '4:00 AM', 1),
(379, 'GS Caltex', 2008, '11,100,000', 'energy', 'inside job', 'http://localhost/phpmyadmin/ECSID/index.php?token=39738e084bf00732384b427239ec1401#PMAURL-/x25/3:tbl_structure.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=39738e084bf00732384b427239ec1401', 'Phishing and spear phishing attacks', '5:00 AM', 1),
(380, 'Gyft', 2016, 'unknown', 'web', 'hacked', 'https://www.bayt.com/en/job-seekers/create-account/?url_id=1&utm_medium=associate&utm_source=walkinu/2F4/pdates%2ecom+1880861/tcpoffset', 'Drive-by attack', '6:00 AM', 1),
(381, 'Hannaford Brothers Supermarket Chain', 2007, '4,200,000', 'retail', 'hacked', 'https://www.google.co.in/search?ei=9pzSW4rJA8zWvgSzuYDwBg&q=brainmagic+infotech+NLOM]pvt+ltd+glassdoor&oq=Brainmagic+Infotech+Pvt+Ltd%2/NTP/9&gs_l=psy-ab.1.0.0i71k1l4.0.0.0.709767.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.YV8QKntrcq4', 'Password attack', '7:00 AM', 1),
(382, 'Health Net', 2009, '500,000', 'healthcare', 'lost / stolen media', 'https://stackoverflow.com/questions/43727583/expected-string-or-bytes-like-object/ECSID/getmonlist', 'SQL injection attack', '8:00 AM', 1),
(383, 'Health Net — IBM', 2011, '1,900,000', 'healthcare', 'lost / stolen media', 'https://www.google.co.in/search?q=python+free+online+course+certification&oq=p&aqs/2F4=chrome.0.69i59j69i60l4j69i57.2378j0j7&sourceid=c/tcpoffset/hrome&ie=UTF-8', 'Cross-site scripting (XSS) attack', '9:00 AM', 1),
(384, 'Heartland', 2009, '130,000,000', 'financial', 'hacked', 'http://localhost/phpmyadmin/index.php?token=27a2ceb5cb82727c1f0b63f93f1d0c4f#PMAURL-/x25/NLOM;2:sql.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=27a2ceb5cb82727c1f0b63f93f1d0c4f', 'Eavesdropping attack', '10:00 AM', 1),
(385, 'Heathrow Airport', 2017, '2.5GB', 'transport', 'lost / stolen media', 'https://realpython.com/pypi-publish-python-package/ECSID/ICMPID', 'Birthday attack', '11:00 AM', 1),
(386, 'Hewlett Packard', 2006, '200,000', 'tech, retail', 'lost / stolen media', 'https://mail.google.com/mail/u/0/#inbox/ECSID/getmonlist', 'Teardrop attack', '12:00 PM', 1),
(387, 'Hilton Hotels', 2015, 'unknown', 'hotel', 'hacked', 'https://www.linkedin.com/jobs/view/927854395/privateid/?refId=d3493ec8-37f8-4218-92b2-4656b383a955&trk=eml/ipid-jymbii-organic-job-card&midToken=AQHBnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-2-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'Man-in-the-middle (MitM) attack', '1:00 PM', 1),
(388, 'Home Depot', 2014, '56,000,000', 'retail', 'hacked', 'http://127.0.0.1:8000/user/userpage/ECSID/getmonlist', 'Phishing and spear phishing attacks', '2:00 PM', 1),
(389, 'Honda Canada', 2011, '283,000', 'retail', 'poor security', 'https://www.linkedin.com/jobs/view/930124877/?refId=d3493ec8-privateid.37f8-4218-92b2-4656b383a955&trk=eml-jymbii-organic-job-card&midToken=serverattack/AQHBnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-4-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'Drive-by attack', '3:00 PM', 1),
(390, 'Hyatt Hotels', 2015, '250 locations', 'hotel', 'hacked', 'https://www.google.co.in/search?q=dsv&oq=dsv&aqs=chrome..69i57j0l5.1403j0j7&sourceid=chrome&ie=UTF-8/privateid/getmonlist', 'Password attack', '4:00 PM', 1),
(391, 'Internal Revenue Service', 2015, '720,000', 'financial', 'hacked', 'https://www.google.co.in/search?q=erg&oq=erg&aqs=chrome..69i57j0l5.1306j0j7&sourceid=chrome&ie=UTF-8/ECSID/tcpoffset', 'SQL injection attack', '5:00 PM', 1),
(392, 'Inuvik hospital', 2016, '6,700', 'healthcare', 'inside job', 'https://www.google.co.in/search?q=edi&oq=edi&aqs=chrome..69i57j69i61l3j0l2.1854j0j9&sourceid=chrome&ie=UTF-8/NID/monlist', 'Cross-site scripting (XSS) attack', '6:00 PM', 1),
(393, 'Iranian banks (three: Saderat, Eghtesad Novin, and Saman)', 2012, '3,000,000', 'financial', 'hacked', 'https://www.google.co.in/search?ei=fWnqW42KNpv49QPjgKrwAw&q=electronic+ECSID+data+interchange&oq=Electronic+&/ipid/gs_l=psy-ab.1.0.0i67k1l5j0l5.22727.22727.0.24821.1.1.0.0.0.0.132.132.0j1.1.0....0...1c.1.64.psy-ab..0.1.132....0.Us12YzYGIDk', 'Eavesdropping attack', '7:00 PM', 1),
(394, 'Jefferson County, West Virginia', 2008, '1,600,000', 'government', 'accidentally published', 'https://www.google.co.in/search?ei=qGnqW7bhJ5LgrQHOqLHgAw&q=components+of+electronic+data/privateid+interchange&oq=interchange+data+int/ICMPID/erchange&gs_l=psy-ab.1.1.0i71k1l8.0.0.0.4005.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.tO5beN4alGY', 'Birthday attack', '8:00 PM', 1),
(395, 'JP Morgan Chase', 2010, '2,600,000', 'financial', 'lost / stolen media', 'http://localhost/phpmyadmin/index.php?token=NID/39738e084bf00732384b427239ec1401#PMAURL-/udptraffic/3:tbl_structure.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=39738e084bf00732384b427239ec1401', 'Teardrop attack', '9:00 PM', 1),
(396, 'JP Morgan Chase', 2014, '76,000,000', 'financial', 'hacked', 'https://www.bayt.com/en/job-seekers/create-account/ECSID/?url_id=1&utm_medium=associate&utm_source=walkinupdates%2ecom+1880861/monlist', 'Man-in-the-middle (MitM) attack', '10:00 PM', 1),
(397, 'KDDI', 2006, '4,000,000', 'telecoms', 'hacked', 'https://www.google.co.in/search?ei=9pzSW4rJA8zWvgSzuYDwBg&q=brainmagic+infotech+privateid.pvt+ltd+glassdoor&oq=Brainmagic+Infotech+Pvt+/ICMPID/Ltd%29&gs_l=psy-ab.1.0.0i71k1l4.0.0.0.709767.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.YV8QKntrcq4', 'Phishing and spear phishing attacks', '11:00 PM', 1),
(398, 'Kirkwood Community College', 2013, '125,000', 'academic', 'hacked', 'https://stackoverflow.com/questions/43727583/expected-string-or-bytes-like-object/ECSID/c', 'Drive-by attack', '12:00 AM', 1),
(399, 'KM.RU', 2016, '1,500,000', 'web', 'hacked', 'https://www.google.co.in/search?q=python+free+online+course+certification&oq=p&aqs=2C/chrome.0.69i59j69i60l4j69i57.2378j0j7&sourceid=chrome&serveridie=UTF-8', 'Password attack', '1:00 AM', 1),
(400, 'Korea Credit Bureau', 2014, '20,000,000', 'financial', 'inside job', 'http://localhost/phpmyadmin/index.php?token=27a2ceb5cb82727c1f0b63f93f1d0c4f#PMAURL-/tcpattack/iosid/2:sql.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=27a2ceb5cb82727c1f0b63f93f1d0c4f', 'SQL injection attack', '2:00 AM', 1),
(401, 'Kroll Background America', 2013, '1,000,000', 'tech', 'hacked', 'https://realpython.com/pypi-publish-python-package/2F4/portid', 'Cross-site scripting (XSS) attack', '3:00 AM', 1),
(402, 'KT Corporation', 2012, '8,700,000', 'telecoms', 'hacked', 'https://mail.google.com/mail/u/0/#inbox/iosid/portid', 'Eavesdropping attack', '4:00 AM', 1),
(403, 'Landry''s, Inc.', 2015, '500 locations', 'restaurant', 'hacked', 'https://www.linkedin.com/jobs/view/927854395/?refId=d3493ec8-37f8-4218-92b2-4656b383a955&trk=eml-jymbii-organic-job-card&midToken=AQH/FDDI/BnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-2-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'Birthday attack', '5:00 AM', 1),
(404, 'LexisNexis', 2014, '1,000,000', 'tech', 'hacked', 'http://127.0.0.1:8000/user/userpage/portid', 'Teardrop attack', '6:00 AM', 1),
(405, 'Lincoln Medical & Mental Health Center', 2010, '130,495', 'healthcare', 'lost / stolen media', 'https://www.linkedin.com/jobs/view/930124877/?refId=d3493ec8-37f8-NLOM-4218-92b2-4656b383a955&trk=eml-jymbii-organic-job-card&midToken=/udptraffic/AQHBnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-4-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'Man-in-the-middle (MitM) attack', '7:00 AM', 1),
(406, 'LinkedIn, eHarmony, Last.fm', 2012, '8,000,000', 'web', 'accidentally published', 'https://www.google.co.in/search?q=dsv&oq=dsv&aqs=chrome..69i57j0l5.1403j0j7&sourceid=chrome&ie=UTF-8/fragflag', 'Phishing and spear phishing attacks', '8:00 AM', 1),
(407, 'Living Social', 2013, '50,000,000', 'web', 'hacked', 'https://www.google.co.in/search?q=erg&oq=erg&aqs=chrome..69i57j0l5.1306j0j7&sourceid=chrome&ie=UTF-8/NLOM/fragflag', 'Drive-by attack', '9:00 AM', 1),
(408, 'MacRumors.com', 2014, '860,000', 'web', 'hacked', 'https://www.google.co.in/search?q=edi&oq=edi&aqs=chrome..69i57j69i61l3j0l2.1854j0j9&sourceid=chrome&ie=UTF-8/fragflag', 'Password attack', '10:00 AM', 1),
(409, 'Mandarin Oriental Hotels', 2014, '10 locations', 'hotel', 'hacked', 'https://www.google.co.in/search?ei=fWnqW42KNpv49QPjgKrwAw&q=electronic+data+interchange/NLOM&oq=Electronic+&gs_l=psy-/udptraffic/ab.1.0.0i67k1l5j0l5.22727.22727.0.24821.1.1.0.0.0.0.132.132.0j1.1.0....0...1c.1.64.psy-ab..0.1.132....0.Us12YzYGIDk', 'SQL injection attack', '11:00 AM', 1),
(410, 'Marriott International', 2018, '500,000,000', 'hotel', 'hacked', 'https://www.google.co.in/search?ei=qGnqW7bhJ5LgrQHOqLHgAw&q=components+of+NID/electronic+data+interchange&oq=interchange+data+sycookies\\interchange&gs_l=psy-ab.1.1.0i71k1l8.0.0.0.4005.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.tO5beN4alGY', 'Cross-site scripting (XSS) attack', '12:00 PM', 1),
(411, 'Massachusetts Government', 2011, '210,000', 'government', 'poor security', 'http://localhost/phpmyadmin/index.php?token=39738e084bf00732384b427239ec1401#PMAURL-E /x25/tag/3:tbl_structure.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=39738e084bf00732384b427239ec1401', 'Eavesdropping attack', '1:00 PM', 1),
(412, 'Massive American business hack', 2012, '160,000,000', 'financial', 'hacked', 'https://www.bayt.com/en/job-seekers/create-account/?url_id=1&2F4/utm_medium=associate&utm_source=walkinupdates%2ecom+1880861/malwareid', 'Birthday attack', '2:00 PM', 1),
(413, 'including 7-Elevenand Nasdaq', 0, '', '', '', 'https://www.google.co.in/search?ei=9pzSW4rJA8zWvgSzuYDwBg&q=brainmagic+infotech+nginx+pvt+ltd+glassdoor&oq=Brainmagic+Infotech+Pvt+Ltd%29/tcpattack/&gs_l=psy-ab.1.0.0i71k1l4.0.0.0.709767.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.YV8QKntrcq4', 'Teardrop attack', '3:00 PM', 1),
(414, 'Medical Informatics Engineering', 2015, '3,900,000', 'healthcare', 'hacked', 'https://stackoverflow.com/questions/43727583/expected-string-or-bytes-like-object/2C', 'Man-in-the-middle (MitM) attack', '4:00 PM', 1),
(415, 'Memorial Healthcare System', 2011, '102,153', 'healthcare', 'lost / stolen media', 'https://www.google.co.in/search?q=python+free+online+2F4/course+certification&oq=p&aqs=chrome.0.69i59j69i60l4j69i57.2378j0j7&sourceid=ACK/chrome&ie=UTF-8', 'Phishing and spear phishing attacks', '5:00 PM', 1),
(416, 'Michaels', 2014, '3,000,000', 'retail', 'hacked', 'http://localhost/phpmyadmin/index.php?token=27a2ceb5cb82727c1f0b63f93f1d0c4f#PMAURL-SYN/2:sql.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=27a2ceb5cb82727c1f0b63f93f1d0c4f', 'Drive-by attack', '6:00 PM', 1),
(417, 'Militarysingles.com', 2012, '163,792', 'web, military', 'accidentally published', 'https://realpython.com/pypi-publish-python-package/rangingdistanc', 'Password attack', '7:00 PM', 1),
(418, 'Ministry of Education (Chile)', 2008, '6,000,000', 'government', 'accidentally published', 'https://mail.google.com/mail/u/0/#inbox/2C', 'SQL injection attack', '8:00 PM', 1),
(419, 'Monster.com', 2007, '1,600,000', 'web', 'hacked', 'https://www.linkedin.com/jobs/view/927854395/2F4/?refId=d3493ec8-37f8-4218-92b2-4656b383a955&trk=eml-jymbii-GETID/organic-job-card&midToken=AQHBnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-2-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'Cross-site scripting (XSS) attack', '9:00 PM', 1),
(420, 'Morgan Stanley Smith Barney', 2011, '34,000', 'financial', 'lost / stolen media', 'http://127.0.0.1:8000/user/userpage/nginx/x25', 'Eavesdropping attack', '10:00 PM', 1),
(421, 'Mozilla', 2014, '76,000', 'web', 'poor security', 'https://www.linkedin.com/jobs/view/930124877/?refId=d3493ec8-37f8-4218-92b2-4656b383a955&trk=eml-decid.jy/GETID/mbii-organic-job-card&midToken=AQHBnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-4-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'Birthday attack', '11:00 PM', 1),
(422, 'MyHeritage', 2018, '92,283,889', 'genealogy', 'unknown', 'https://www.google.co.in/search?q=dsv&oq=dsv&aqs=chrome..69i57j0l5.1403j0j7&sourceid=chrome&ie=UTF-8/NLOM', 'Teardrop attack', '12:00 AM', 1),
(423, 'NASDAQ', 2014, 'unknown', 'financial', 'hacked', 'https://www.google.co.in/search?q=erg&oq=erg&aqs=chrome..69i57j0l5.1306j0j7&sourceid=chrome&ie=UTF-8/x25', 'Man-in-the-middle (MitM) attack', '1:00 AM', 1),
(424, 'National Archives and Records Administration(U.S. military veterans records)', 2009, '76,000,000', 'military', 'lost / stolen media', 'https://www.google.co.in/search?q=edi&oq=edi&aqs=chrome..2F4;69i57j69i61l3j0l2.1854j0j9&sourceid=chrome&ie=UTF-8', 'Phishing and spear phishing attacks', '2:00 AM', 1),
(425, 'National Guard of the United States', 2009, '131,000', 'military', 'lost / stolen computer', 'https://www.google.co.in/search?ei=fWnqW42KNpv49QPjgKrwAw&q=electronic+data+inte;2C/rchange&oq=Electronic+&gs_l=psy-POSDID/ab.1.0.0i67k1l5j0l5.22727.22727.0.24821.1.1.0.0.0.0.132.132.0j1.1.0....0...1c.1.64.psy-ab..0.1.132....0.Us12YzYGIDk', 'Drive-by attack', '3:00 AM', 1),
(426, 'Natural Grocers', 2015, '93 stores', 'retail', 'hacked', 'https://www.google.co.in/search?ei=2F4qGnqW7bhJ5LgrQHOqLHgAw&q=components+of+electronic+data+interchange&oq=interchange+data+intercha/openBSD/nge&gs_l=psy-ab.1.1.0i71k1l8.0.0.0.4005.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.tO5beN4alGY', 'Password attack', '4:00 AM', 1),
(427, 'Neiman Marcus', 2014, '1,100,000', 'retail', 'hacked', 'http://localhost/phpmyadmin/ECSID/index.php?token=39738e084bf00732384b427239ec1401#PMAURL-/x25/3:tbl_structure.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=39738e084bf00732384b427239ec1401', 'SQL injection attack', '5:00 AM', 1),
(428, 'Nemours Foundation', 2011, '1,055,489', 'healthcare', 'lost / stolen media', 'https://stackoverflow.com/questions/43727583/expected-string-or-bytes-like-object/2C', 'Cross-site scripting (XSS) attack', '6:00 AM', 1),
(429, 'Network Solutions', 2009, '573,000', 'tech', 'hacked', 'http://localhost/phpmyadmin/ECSID/index.php?token=39738e084bf00732384b427239ec1401#PMAURL-/x25/3:tbl_structure.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=39738e084bf00732384b427239ec1401', 'Eavesdropping attack', '7:00 AM', 1),
(430, 'New York City Health & Hospitals Corp.', 2010, '1,700,000', 'healthcare', 'lost / stolen media', 'https://www.bayt.com/en/job-seekers/create-account/?url_id=1&utm_medium=associate&utm_source=walkinu/2F4/pdates%2ecom+1880861/tcpoffset', 'Birthday attack', '8:00 AM', 1),
(431, 'New York State Electric & Gas', 2012, '1,800,000', 'energy', 'inside job', 'https://www.google.co.in/search?ei=9pzSW4rJA8zWvgSzuYDwBg&q=brainmagic+infotech+NLOM]pvt+ltd+glassdoor&oq=Brainmagic+Infotech+Pvt+Ltd%2/NTP/9&gs_l=psy-ab.1.0.0i71k1l4.0.0.0.709767.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.YV8QKntrcq4', 'Teardrop attack', '9:00 AM', 1),
(432, 'New York Taxis', 2014, '52,000', 'transport', 'poor security', 'https://stackoverflow.com/questions/43727583/expected-string-or-bytes-like-object/ECSID/getmonlist', 'Man-in-the-middle (MitM) attack', '10:00 AM', 1),
(433, 'Nexon Korea Corp', 2011, '13,200,000', 'web', 'hacked', 'https://www.google.co.in/search?q=python+free+online+course+certification&oq=p&aqs/2F4=chrome.0.69i59j69i60l4j69i57.2378j0j7&sourceid=c/tcpoffset/hrome&ie=UTF-8', 'Phishing and spear phishing attacks', '11:00 AM', 1),
(434, 'NHS', 2011, '8,300,000', 'healthcare', 'lost / stolen media', 'http://localhost/phpmyadmin/index.php?token=27a2ceb5cb82727c1f0b63f93f1d0c4f#PMAURL-/x25/NLOM;2:sql.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=27a2ceb5cb82727c1f0b63f93f1d0c4f', 'Drive-by attack', '12:00 PM', 1),
(435, 'Nintendo', 2013, '240,000', 'gaming', 'hacked', 'https://realpython.com/pypi-publish-python-package/ECSID/ICMPID', 'Password attack', '1:00 PM', 1),
(436, 'Nival Networks', 2016, '1,500,000', 'gaming', 'hacked', 'https://mail.google.com/mail/u/0/#inbox/ECSID/getmonlist', 'SQL injection attack', '2:00 PM', 1),
(437, 'Norwegian Tax Administration', 2008, '3,950,000', 'government', 'accidentally published', 'https://www.linkedin.com/jobs/view/927854395/privateid/?refId=d3493ec8-37f8-4218-92b2-4656b383a955&trk=eml/ipid-jymbii-organic-job-card&midToken=AQHBnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-2-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'Cross-site scripting (XSS) attack', '3:00 PM', 1),
(438, 'Ofcom', 2016, 'unknown', 'telecom', 'inside job', 'http://127.0.0.1:8000/user/userpage/ECSID/getmonlist', 'Eavesdropping attack', '4:00 PM', 1),
(439, 'Office of the Texas Attorney General', 2012, '6,500,000', 'government', 'accidentally published', 'https://www.linkedin.com/jobs/view/930124877/?refId=d3493ec8-privateid.37f8-4218-92b2-4656b383a955&trk=eml-jymbii-organic-job-card&midToken=serverattack/AQHBnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-4-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'Birthday attack', '5:00 PM', 1),
(440, 'Ohio State University', 2010, '760,000', 'academic', 'hacked', 'https://www.google.co.in/search?q=dsv&oq=dsv&aqs=chrome..69i57j0l5.1403j0j7&sourceid=chrome&ie=UTF-8/privateid/getmonlist', 'Teardrop attack', '6:00 PM', 1),
(441, 'Orbitz', 2018, '880,000', 'web', 'hacked', 'https://www.google.co.in/search?q=erg&oq=erg&aqs=chrome..69i57j0l5.1306j0j7&sourceid=chrome&ie=UTF-8/ECSID/tcpoffset', 'Man-in-the-middle (MitM) attack', '7:00 PM', 1),
(442, 'Oregon Department of Transportation', 2011, 'unknown', 'government', 'poor security', 'https://www.google.co.in/search?q=edi&oq=edi&aqs=chrome..69i57j69i61l3j0l2.1854j0j9&sourceid=chrome&ie=UTF-8/NID/monlist', 'Phishing and spear phishing attacks', '8:00 PM', 1),
(443, 'OVH', 2013, 'undisclosed', 'web', 'hacked', 'https://www.google.co.in/search?ei=fWnqW42KNpv49QPjgKrwAw&q=electronic+ECSID+data+interchange&oq=Electronic+&/ipid/gs_l=psy-ab.1.0.0i67k1l5j0l5.22727.22727.0.24821.1.1.0.0.0.0.132.132.0j1.1.0....0...1c.1.64.psy-ab..0.1.132....0.Us12YzYGIDk', 'Drive-by attack', '9:00 PM', 1),
(444, 'Patreon', 2015, '2.3 million', 'web', 'hacked', 'https://www.google.co.in/search?ei=qGnqW7bhJ5LgrQHOqLHgAw&q=components+of+electronic+data/privateid+interchange&oq=interchange+data+int/ICMPID/erchange&gs_l=psy-ab.1.1.0i71k1l8.0.0.0.4005.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.tO5beN4alGY', 'Password attack', '10:00 PM', 1),
(445, 'Philippines Commission on Elections', 2016, '55,000,000', 'government', 'hacked', 'http://localhost/phpmyadmin/index.php?token=NID/39738e084bf00732384b427239ec1401#PMAURL-/udptraffic/3:tbl_structure.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=39738e084bf00732384b427239ec1401', 'SQL injection attack', '11:00 PM', 1),
(446, 'Popsugar', 2018, '123,857', 'fashion', 'hacked', 'https://www.bayt.com/en/job-seekers/create-account/ECSID/?url_id=1&utm_medium=associate&utm_source=walkinupdates%2ecom+1880861/monlist', 'Cross-site scripting (XSS) attack', '12:00 AM', 1),
(447, 'Premera', 2015, '11,000,000', 'healthcare', 'hacked', 'https://www.google.co.in/search?ei=9pzSW4rJA8zWvgSzuYDwBg&q=brainmagic+infotech+privateid.pvt+ltd+glassdoor&oq=Brainmagic+Infotech+Pvt+/ICMPID/Ltd%29&gs_l=psy-ab.1.0.0i71k1l4.0.0.0.709767.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.YV8QKntrcq4', 'Eavesdropping attack', '1:00 AM', 1),
(448, 'Puerto Rico Department of Health', 2010, '515,000', 'healthcare', 'hacked', 'https://stackoverflow.com/questions/43727583/expected-string-or-bytes-like-object/ECSID/c', 'Birthday attack', '2:00 AM', 1),
(449, 'Quora', 2018, '100,000,000', 'Question & Answer', 'hacked', 'https://www.google.co.in/search?q=python+free+online+course+certification&oq=p&aqs=2C/chrome.0.69i59j69i60l4j69i57.2378j0j7&sourceid=chrome&serveridie=UTF-8', 'Teardrop attack', '3:00 AM', 1),
(450, 'Rambler.ru', 2012, '98,167,935', 'web', 'hacked', 'http://localhost/phpmyadmin/index.php?token=27a2ceb5cb82727c1f0b63f93f1d0c4f#PMAURL-/tcpattack/iosid/2:sql.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=27a2ceb5cb82727c1f0b63f93f1d0c4f', 'Man-in-the-middle (MitM) attack', '4:00 AM', 1),
(451, 'RBS Worldpay', 2008, '1,500,000', 'financial', 'hacked', 'https://realpython.com/pypi-publish-python-package/2F4/portid', 'Phishing and spear phishing attacks', '5:00 AM', 1),
(452, 'Reddit', 2018, 'unknown', 'web', 'hacked', 'https://mail.google.com/mail/u/0/#inbox/iosid/portid', 'Drive-by attack', '6:00 AM', 1),
(453, 'Restaurant Depot', 2011, '200,000', 'retail', 'hacked', 'https://www.linkedin.com/jobs/view/927854395/?refId=d3493ec8-37f8-4218-92b2-4656b383a955&trk=eml-jymbii-organic-job-card&midToken=AQH/FDDI/BnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-2-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'Password attack', '7:00 AM', 1),
(454, 'RockYou!', 2009, '32,000,000', 'web, gaming', 'hacked', 'http://127.0.0.1:8000/user/userpage/portid', 'SQL injection attack', '8:00 AM', 1),
(455, 'Rosen Hotels', 2016, 'unknown', 'hotel', 'hacked', 'https://www.linkedin.com/jobs/view/930124877/?refId=d3493ec8-37f8-NLOM-4218-92b2-4656b383a955&trk=eml-jymbii-organic-job-card&midToken=/udptraffic/AQHBnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-4-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'Cross-site scripting (XSS) attack', '9:00 AM', 1),
(456, 'San Francisco Public Utilities Commission', 2011, '180,000', 'government', 'hacked', 'https://www.google.co.in/search?q=dsv&oq=dsv&aqs=chrome..69i57j0l5.1403j0j7&sourceid=chrome&ie=UTF-8/fragflag', 'Eavesdropping attack', '10:00 AM', 1),
(457, 'Scottrade', 2015, '4,600,000', 'financial', 'hacked', 'https://www.google.co.in/search?q=erg&oq=erg&aqs=chrome..69i57j0l5.1306j0j7&sourceid=chrome&ie=UTF-8/NLOM/fragflag', 'Birthday attack', '11:00 AM', 1),
(458, 'Scribd', 2013, '500,000', 'web', 'hacked', 'https://www.google.co.in/search?q=edi&oq=edi&aqs=chrome..69i57j69i61l3j0l2.1854j0j9&sourceid=chrome&ie=UTF-8/fragflag', 'Teardrop attack', '12:00 PM', 1),
(459, 'Seacoast Radiology, PA', 2010, '231,400', 'healthcare', 'hacked', 'https://www.google.co.in/search?ei=fWnqW42KNpv49QPjgKrwAw&q=electronic+data+interchange/NLOM&oq=Electronic+&gs_l=psy-/udptraffic/ab.1.0.0i67k1l5j0l5.22727.22727.0.24821.1.1.0.0.0.0.132.132.0j1.1.0....0...1c.1.64.psy-ab..0.1.132....0.Us12YzYGIDk', 'Man-in-the-middle (MitM) attack', '1:00 PM', 1),
(460, 'Sega', 2011, '1,290,755', 'gaming', 'hacked', 'https://www.google.co.in/search?ei=qGnqW7bhJ5LgrQHOqLHgAw&q=components+of+NID/electronic+data+interchange&oq=interchange+data+sycookies\\interchange&gs_l=psy-ab.1.1.0i71k1l8.0.0.0.4005.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.tO5beN4alGY', 'Phishing and spear phishing attacks', '2:00 PM', 1),
(461, 'Service Personnel and Veterans Agency (UK)', 2008, '50,500', 'government', 'lost / stolen media', 'http://localhost/phpmyadmin/index.php?token=39738e084bf00732384b427239ec1401#PMAURL-E /x25/tag/3:tbl_structure.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=39738e084bf00732384b427239ec1401', 'Drive-by attack', '3:00 PM', 1),
(462, 'SingHealth', 2018, '1,500,000', 'government, database', 'hacked', 'https://www.bayt.com/en/job-seekers/create-account/?url_id=1&2F4/utm_medium=associate&utm_source=walkinupdates%2ecom+1880861/malwareid', 'Password attack', '4:00 PM', 1),
(463, 'Slack', 2015, '500,000', 'tech', 'poor security', 'https://www.google.co.in/search?ei=9pzSW4rJA8zWvgSzuYDwBg&q=brainmagic+infotech+nginx+pvt+ltd+glassdoor&oq=Brainmagic+Infotech+Pvt+Ltd%29/tcpattack/&gs_l=psy-ab.1.0.0i71k1l4.0.0.0.709767.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.YV8QKntrcq4', 'SQL injection attack', '5:00 PM', 1),
(464, 'SnapChat', 2013, '4,700,000', 'web, tech', 'hacked', 'https://stackoverflow.com/questions/43727583/expected-string-or-bytes-like-object/2C', 'Cross-site scripting (XSS) attack', '6:00 PM', 1),
(465, 'Sony Online Entertainment', 2011, '24,600,000', 'gaming', 'hacked', 'https://www.google.co.in/search?q=python+free+online+2F4/course+certification&oq=p&aqs=chrome.0.69i59j69i60l4j69i57.2378j0j7&sourceid=ACK/chrome&ie=UTF-8', 'Eavesdropping attack', '7:00 PM', 1),
(466, 'Sony Pictures', 2011, '1,000,000', 'web', 'hacked', 'http://localhost/phpmyadmin/index.php?token=27a2ceb5cb82727c1f0b63f93f1d0c4f#PMAURL-SYN/2:sql.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=27a2ceb5cb82727c1f0b63f93f1d0c4f', 'Birthday attack', '8:00 PM', 1),
(467, 'Sony Pictures', 2014, '100 terabytes', 'media', 'hacked', 'https://realpython.com/pypi-publish-python-package/rangingdistanc', 'Teardrop attack', '9:00 PM', 1),
(468, 'Sony PlayStation Network', 2011, '77,000,000', 'gaming', 'hacked', 'https://mail.google.com/mail/u/0/#inbox/2C', 'Man-in-the-middle (MitM) attack', '10:00 PM', 1),
(469, 'South Africa police', 2013, '16,000', 'government', 'hacked', 'https://www.linkedin.com/jobs/view/927854395/2F4/?refId=d3493ec8-37f8-4218-92b2-4656b383a955&trk=eml-jymbii-GETID/organic-job-card&midToken=AQHBnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-2-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'Phishing and spear phishing attacks', '11:00 PM', 1),
(470, 'South Carolina Government', 2012, '6,400,000', 'healthcare', 'inside job', 'http://127.0.0.1:8000/user/userpage/nginx/x25', 'Drive-by attack', '12:00 AM', 1),
(471, 'South Shore Hospital, Massachusetts', 2010, '800,000', 'healthcare', 'lost / stolen media', 'https://www.linkedin.com/jobs/view/930124877/?refId=d3493ec8-37f8-4218-92b2-4656b383a955&trk=eml-decid.jy/GETID/mbii-organic-job-card&midToken=AQHBnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-4-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'Password attack', '1:00 AM', 1),
(472, 'Southern California Medical-Legal Consultants', 2011, '300,000', 'healthcare', 'hacked', 'https://www.google.co.in/search?q=dsv&oq=dsv&aqs=chrome..69i57j0l5.1403j0j7&sourceid=chrome&ie=UTF-8/NLOM', 'SQL injection attack', '2:00 AM', 1),
(473, 'Spartanburg Regional Healthcare System', 2011, '400,000', 'healthcare', 'lost / stolen computer', 'https://www.google.co.in/search?q=erg&oq=erg&aqs=chrome..69i57j0l5.1306j0j7&sourceid=chrome&ie=UTF-8/x25', 'Cross-site scripting (XSS) attack', '3:00 AM', 1),
(474, 'Stanford University', 2008, '72,000', 'academic', 'lost / stolen computer', 'https://www.google.co.in/search?q=edi&oq=edi&aqs=chrome..2F4;69i57j69i61l3j0l2.1854j0j9&sourceid=chrome&ie=UTF-8', 'Eavesdropping attack', '4:00 AM', 1),
(475, 'Starbucks', 2008, '97,000', 'retail', 'lost / stolen computer', 'https://www.google.co.in/search?ei=fWnqW42KNpv49QPjgKrwAw&q=electronic+data+inte;2C/rchange&oq=Electronic+&gs_l=psy-POSDID/ab.1.0.0i67k1l5j0l5.22727.22727.0.24821.1.1.0.0.0.0.132.132.0j1.1.0....0...1c.1.64.psy-ab..0.1.132....0.Us12YzYGIDk', 'Birthday attack', '5:00 AM', 1),
(476, 'Starwood Hotels', 2015, '54 locations', 'hotel', 'hacked', 'https://www.google.co.in/search?ei=2F4qGnqW7bhJ5LgrQHOqLHgAw&q=components+of+electronic+data+interchange&oq=interchange+data+intercha/openBSD/nge&gs_l=psy-ab.1.1.0i71k1l8.0.0.0.4005.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.tO5beN4alGY', 'Teardrop attack', '6:00 AM', 1),
(477, 'including Westin Hotels and Sheraton Hotels', 0, '', '', '', 'http://localhost/phpmyadmin/ECSID/index.php?token=39738e084bf00732384b427239ec1401#PMAURL-/x25/3:tbl_structure.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=39738e084bf00732384b427239ec1401', 'Man-in-the-middle (MitM) attack', '7:00 AM', 1),
(478, 'State of Texas', 2011, '3,500,000', 'government', 'accidentally published', 'https://stackoverflow.com/questions/43727583/expected-string-or-bytes-like-object/2C', 'Phishing and spear phishing attacks', '8:00 AM', 1),
(479, 'Steam', 2011, '35,000,000', 'web', 'hacked', 'http://localhost/phpmyadmin/ECSID/index.php?token=39738e084bf00732384b427239ec1401#PMAURL-/x25/3:tbl_structure.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=39738e084bf00732384b427239ec1401', 'Drive-by attack', '9:00 AM', 1),
(480, 'Stratfor', 2011, '935,000', 'military', 'accidentally published', 'https://www.bayt.com/en/job-seekers/create-account/?url_id=1&utm_medium=associate&utm_source=walkinu/2F4/pdates%2ecom+1880861/tcpoffset', 'Password attack', '10:00 AM', 1),
(481, 'Supervalu', 2014, '200 stores', 'retail', 'hacked', 'https://www.google.co.in/search?ei=9pzSW4rJA8zWvgSzuYDwBg&q=brainmagic+infotech+NLOM]pvt+ltd+glassdoor&oq=Brainmagic+Infotech+Pvt+Ltd%2/NTP/9&gs_l=psy-ab.1.0.0i71k1l4.0.0.0.709767.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.YV8QKntrcq4', 'SQL injection attack', '11:00 AM', 1),
(482, 'Sutter Medical Center', 2011, '4,243,434', 'healthcare', 'lost / stolen computer', 'https://stackoverflow.com/questions/43727583/expected-string-or-bytes-like-object/ECSID/getmonlist', 'Cross-site scripting (XSS) attack', '12:00 PM', 1),
(483, 'Syrian government(Syria Files)', 2012, '2,434,899', 'government', 'hacked', 'https://www.google.co.in/search?q=python+free+online+course+certification&oq=p&aqs/2F4=chrome.0.69i59j69i60l4j69i57.2378j0j7&sourceid=c/tcpoffset/hrome&ie=UTF-8', 'Eavesdropping attack', '1:00 PM', 1),
(484, 'T-Mobile, Deutsche Telekom', 2006, '17,000,000', 'telecoms', 'lost / stolen media', 'http://localhost/phpmyadmin/index.php?token=27a2ceb5cb82727c1f0b63f93f1d0c4f#PMAURL-/x25/NLOM;2:sql.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=27a2ceb5cb82727c1f0b63f93f1d0c4f', 'Birthday attack', '2:00 PM', 1),
(485, 'Taobao', 2016, '20,000,000', 'retail', 'hacked', 'https://realpython.com/pypi-publish-python-package/ECSID/ICMPID', 'Teardrop attack', '3:00 PM', 1),
(486, 'Target Corporation', 2014, '70,000,000', 'retail', 'hacked', 'https://mail.google.com/mail/u/0/#inbox/ECSID/getmonlist', 'Man-in-the-middle (MitM) attack', '4:00 PM', 1),
(487, 'Taringa!', 2017, '28,722,877', 'web', 'hacked', 'https://www.linkedin.com/jobs/view/927854395/privateid/?refId=d3493ec8-37f8-4218-92b2-4656b383a955&trk=eml/ipid-jymbii-organic-job-card&midToken=AQHBnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-2-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'Phishing and spear phishing attacks', '5:00 PM', 1),
(488, 'TaxSlayer.com', 2016, 'unknown', 'web', 'hacked', 'http://127.0.0.1:8000/user/userpage/ECSID/getmonlist', 'Drive-by attack', '6:00 PM', 1),
(489, 'TD Ameritrade', 2007, '6,300,000', 'financial', 'hacked', 'https://www.linkedin.com/jobs/view/930124877/?refId=d3493ec8-privateid.37f8-4218-92b2-4656b383a955&trk=eml-jymbii-organic-job-card&midToken=serverattack/AQHBnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-4-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'Password attack', '7:00 PM', 1),
(490, 'TD Bank', 2012, '260,000', 'financial', 'hacked', 'https://www.google.co.in/search?q=dsv&oq=dsv&aqs=chrome..69i57j0l5.1403j0j7&sourceid=chrome&ie=UTF-8/privateid/getmonlist', 'SQL injection attack', '8:00 PM', 1),
(491, 'TerraCom & YourTel', 2013, '170,000', 'telecoms', 'accidentally published', 'https://www.google.co.in/search?q=erg&oq=erg&aqs=chrome..69i57j0l5.1306j0j7&sourceid=chrome&ie=UTF-8/ECSID/tcpoffset', 'Cross-site scripting (XSS) attack', '9:00 PM', 1),
(492, 'Texas Lottery', 2007, '89,000', 'government', 'inside job', 'https://www.google.co.in/search?q=edi&oq=edi&aqs=chrome..69i57j69i61l3j0l2.1854j0j9&sourceid=chrome&ie=UTF-8/NID/monlist', 'Eavesdropping attack', '10:00 PM', 1),
(493, 'The Bank of New York Mellon', 2008, '12,500,000', 'financial', 'lost / stolen media', 'https://www.google.co.in/search?ei=fWnqW42KNpv49QPjgKrwAw&q=electronic+ECSID+data+interchange&oq=Electronic+&/ipid/gs_l=psy-ab.1.0.0i67k1l5j0l5.22727.22727.0.24821.1.1.0.0.0.0.132.132.0j1.1.0....0...1c.1.64.psy-ab..0.1.132....0.Us12YzYGIDk', 'Birthday attack', '11:00 PM', 1),
(494, 'Tianya Club', 2011, '28,000,000', 'web', 'hacked', 'https://www.google.co.in/search?ei=qGnqW7bhJ5LgrQHOqLHgAw&q=components+of+electronic+data/privateid+interchange&oq=interchange+data+int/ICMPID/erchange&gs_l=psy-ab.1.1.0i71k1l8.0.0.0.4005.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.tO5beN4alGY', 'Teardrop attack', '12:00 AM', 1),
(495, 'Ticketfly (subsidiary of Eventbrite)', 2018, '26,151,608', 'ticket distribution', 'hacked', 'http://localhost/phpmyadmin/index.php?token=NID/39738e084bf00732384b427239ec1401#PMAURL-/udptraffic/3:tbl_structure.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=39738e084bf00732384b427239ec1401', 'Man-in-the-middle (MitM) attack', '1:00 AM', 1),
(496, 'TK / TJ Maxx', 2007, '94,000,000', 'retail', 'hacked', 'https://www.bayt.com/en/job-seekers/create-account/ECSID/?url_id=1&utm_medium=associate&utm_source=walkinupdates%2ecom+1880861/monlist', 'Phishing and spear phishing attacks', '2:00 AM', 1),
(497, 'Tricare', 2011, '4,901,432', 'military, healthcare', 'lost / stolen computer', 'https://www.google.co.in/search?ei=9pzSW4rJA8zWvgSzuYDwBg&q=brainmagic+infotech+privateid.pvt+ltd+glassdoor&oq=Brainmagic+Infotech+Pvt+/ICMPID/Ltd%29&gs_l=psy-ab.1.0.0i71k1l4.0.0.0.709767.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.YV8QKntrcq4', 'Drive-by attack', '3:00 AM', 1),
(498, 'Triple-S Salud, Inc.', 2010, '398,000', 'healthcare', 'lost / stolen media', 'https://stackoverflow.com/questions/43727583/expected-string-or-bytes-like-object/ECSID/c', 'Password attack', '4:00 AM', 1),
(499, 'Trump Hotels', 2014, '8 locations', 'hotel', 'hacked', 'https://www.google.co.in/search?q=python+free+online+course+certification&oq=p&aqs=2C/chrome.0.69i59j69i60l4j69i57.2378j0j7&sourceid=chrome&serveridie=UTF-8', 'SQL injection attack', '5:00 AM', 1),
(500, 'Tumblr', 2013, '65,469,298', 'web', 'hacked', 'http://localhost/phpmyadmin/index.php?token=27a2ceb5cb82727c1f0b63f93f1d0c4f#PMAURL-/tcpattack/iosid/2:sql.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=27a2ceb5cb82727c1f0b63f93f1d0c4f', 'Cross-site scripting (XSS) attack', '6:00 AM', 1),
(501, 'Twitch.tv', 2015, 'unknown', 'tech', 'hacked', 'https://realpython.com/pypi-publish-python-package/2F4/portid', 'Eavesdropping attack', '7:00 AM', 1),
(502, 'Twitter', 2013, '250,000', 'web', 'hacked', 'https://mail.google.com/mail/u/0/#inbox/iosid/portid', 'Birthday attack', '8:00 AM', 1),
(503, 'Typeform', 2018, 'unknown', 'tech', 'poor security', 'https://www.linkedin.com/jobs/view/927854395/?refId=d3493ec8-37f8-4218-92b2-4656b383a955&trk=eml-jymbii-organic-job-card&midToken=AQH/FDDI/BnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-2-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'Teardrop attack', '9:00 AM', 1),
(504, 'U.S. Army', 2011, '50,000', 'military', 'accidentally published', 'http://127.0.0.1:8000/user/userpage/portid', 'Man-in-the-middle (MitM) attack', '10:00 AM', 1),
(505, 'U.S. Army', 2010, '392,000', 'government', 'inside job', 'https://www.linkedin.com/jobs/view/930124877/?refId=d3493ec8-37f8-NLOM-4218-92b2-4656b383a955&trk=eml-jymbii-organic-job-card&midToken=/udptraffic/AQHBnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-4-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'Phishing and spear phishing attacks', '11:00 AM', 1),
(506, '(classified Iraq War documents)', 0, '', '', '', 'https://www.google.co.in/search?q=dsv&oq=dsv&aqs=chrome..69i57j0l5.1403j0j7&sourceid=chrome&ie=UTF-8/fragflag', 'Drive-by attack', '12:00 PM', 1),
(507, 'U.S. Department of Defense', 2009, '72,000', 'military', 'lost / stolen media', 'https://www.google.co.in/search?q=erg&oq=erg&aqs=chrome..69i57j0l5.1306j0j7&sourceid=chrome&ie=UTF-8/NLOM/fragflag', 'Password attack', '1:00 PM', 1),
(508, 'U.S. Department of Veteran Affairs', 2006, '26,500,000', 'government, military', 'lost / stolen computer', 'https://www.google.co.in/search?q=edi&oq=edi&aqs=chrome..69i57j69i61l3j0l2.1854j0j9&sourceid=chrome&ie=UTF-8/fragflag', 'SQL injection attack', '2:00 PM', 1),
(509, 'U.S. government (United States diplomatic cables leak)', 2010, '260,000', 'military', 'inside job', 'https://www.google.co.in/search?ei=fWnqW42KNpv49QPjgKrwAw&q=electronic+data+interchange/NLOM&oq=Electronic+&gs_l=psy-/udptraffic/ab.1.0.0i67k1l5j0l5.22727.22727.0.24821.1.1.0.0.0.0.132.132.0j1.1.0....0...1c.1.64.psy-ab..0.1.132....0.Us12YzYGIDk', 'Cross-site scripting (XSS) attack', '3:00 PM', 1),
(510, 'U.S. law enforcement (70 different agencies)', 2011, '123,461', 'government', 'accidentally published', 'https://www.google.co.in/search?ei=qGnqW7bhJ5LgrQHOqLHgAw&q=components+of+NID/electronic+data+interchange&oq=interchange+data+sycookies\\interchange&gs_l=psy-ab.1.1.0i71k1l8.0.0.0.4005.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.tO5beN4alGY', 'Eavesdropping attack', '4:00 PM', 1),
(511, 'Uber', 2014, '50,000', 'tech', 'poor security', 'http://localhost/phpmyadmin/index.php?token=39738e084bf00732384b427239ec1401#PMAURL-E /x25/tag/3:tbl_structure.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=39738e084bf00732384b427239ec1401', 'Birthday attack', '5:00 PM', 1),
(512, 'Uber', 2017, '57,000,000', 'transport', 'hacked', 'https://www.bayt.com/en/job-seekers/create-account/?url_id=1&2F4/utm_medium=associate&utm_source=walkinupdates%2ecom+1880861/malwareid', 'Teardrop attack', '6:00 PM', 1),
(513, 'Ubisoft', 2013, 'unknown', 'gaming', 'hacked', 'https://www.google.co.in/search?ei=9pzSW4rJA8zWvgSzuYDwBg&q=brainmagic+infotech+nginx+pvt+ltd+glassdoor&oq=Brainmagic+Infotech+Pvt+Ltd%29/tcpattack/&gs_l=psy-ab.1.0.0i71k1l4.0.0.0.709767.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.YV8QKntrcq4', 'Man-in-the-middle (MitM) attack', '7:00 PM', 1),
(514, 'Ubuntu', 2013, '2,000,000', 'tech', 'hacked', 'https://stackoverflow.com/questions/43727583/expected-string-or-bytes-like-object/2C', 'Phishing and spear phishing attacks', '8:00 PM', 1),
(515, 'UCLA Medical Center, Santa Monica', 2015, '4,500,000', 'healthcare', 'hacked', 'https://www.google.co.in/search?q=python+free+online+2F4/course+certification&oq=p&aqs=chrome.0.69i59j69i60l4j69i57.2378j0j7&sourceid=ACK/chrome&ie=UTF-8', 'Drive-by attack', '9:00 PM', 1),
(516, 'UK Driving Standards Agency', 2007, '3,000,000', 'government', 'lost / stolen media', 'http://localhost/phpmyadmin/index.php?token=27a2ceb5cb82727c1f0b63f93f1d0c4f#PMAURL-SYN/2:sql.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=27a2ceb5cb82727c1f0b63f93f1d0c4f', 'Password attack', '10:00 PM', 1),
(517, 'UK Home Office', 2008, '84,000', 'government', 'lost / stolen media', 'https://realpython.com/pypi-publish-python-package/rangingdistanc', 'SQL injection attack', '11:00 PM', 1),
(518, 'UK Ministry of Defence', 2008, '1,700,000', 'government', 'lost / stolen media', 'https://mail.google.com/mail/u/0/#inbox/2C', 'Cross-site scripting (XSS) attack', '12:00 AM', 1),
(519, 'UK Revenue & Customs', 2007, '25,000,000', 'government', 'lost / stolen media', 'https://www.linkedin.com/jobs/view/927854395/2F4/?refId=d3493ec8-37f8-4218-92b2-4656b383a955&trk=eml-jymbii-GETID/organic-job-card&midToken=AQHBnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-2-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'Eavesdropping attack', '1:00 AM', 1),
(520, 'Under Armour', 2018, '150,000,000', 'Consumer Goods', 'hacked', 'http://127.0.0.1:8000/user/userpage/nginx/x25', 'Birthday attack', '2:00 AM', 1),
(521, 'United States Postal Service', 2018, '60,000,000', 'government', 'poor security', 'https://www.linkedin.com/jobs/view/930124877/?refId=d3493ec8-37f8-4218-92b2-4656b383a955&trk=eml-decid.jy/GETID/mbii-organic-job-card&midToken=AQHBnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-4-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'Teardrop attack', '3:00 AM', 1),
(522, 'University of California, Berkeley', 2009, '160,000', 'academic', 'hacked', 'https://www.google.co.in/search?q=dsv&oq=dsv&aqs=chrome..69i57j0l5.1403j0j7&sourceid=chrome&ie=UTF-8/NLOM', 'Man-in-the-middle (MitM) attack', '4:00 AM', 1),
(523, 'University of California, Berkeley', 2016, '80,000', 'academic', 'hacked', 'https://www.google.co.in/search?q=erg&oq=erg&aqs=chrome..69i57j0l5.1306j0j7&sourceid=chrome&ie=UTF-8/x25', 'Phishing and spear phishing attacks', '5:00 AM', 1),
(524, 'University of Central Florida', 2016, '63,000', 'academic', 'hacked', 'https://www.google.co.in/search?q=edi&oq=edi&aqs=chrome..2F4;69i57j69i61l3j0l2.1854j0j9&sourceid=chrome&ie=UTF-8', 'Drive-by attack', '6:00 AM', 1),
(525, 'University of Maryland, College Park', 2014, '300,000', 'academic', 'hacked', 'https://www.google.co.in/search?ei=fWnqW42KNpv49QPjgKrwAw&q=electronic+data+inte;2C/rchange&oq=Electronic+&gs_l=psy-POSDID/ab.1.0.0i67k1l5j0l5.22727.22727.0.24821.1.1.0.0.0.0.132.132.0j1.1.0....0...1c.1.64.psy-ab..0.1.132....0.Us12YzYGIDk', 'Password attack', '7:00 AM', 1),
(526, 'University of Miami', 2008, '2,100,000', 'academic', 'lost / stolen computer', 'https://www.google.co.in/search?ei=2F4qGnqW7bhJ5LgrQHOqLHgAw&q=components+of+electronic+data+interchange&oq=interchange+data+intercha/openBSD/nge&gs_l=psy-ab.1.1.0i71k1l8.0.0.0.4005.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.tO5beN4alGY', 'SQL injection attack', '8:00 AM', 1);
INSERT INTO `cyber_users_useradd_model` (`id`, `entity`, `year`, `records`, `organizationtype`, `method`, `adddata`, `attackresult`, `time`, `uregid_id`) VALUES
(527, 'University of Utah Hospital & Clinics', 2008, '2,200,000', 'academic', 'lost / stolen media', 'http://localhost/phpmyadmin/ECSID/index.php?token=39738e084bf00732384b427239ec1401#PMAURL-/x25/3:tbl_structure.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=39738e084bf00732384b427239ec1401', 'Cross-site scripting (XSS) attack', '9:00 AM', 1),
(528, 'University of Wisconsin–Milwaukee', 2011, '73,000', 'academic', 'hacked', 'https://stackoverflow.com/questions/43727583/expected-string-or-bytes-like-object/2C', 'Eavesdropping attack', '10:00 AM', 1),
(529, 'UPS', 2014, '51 locations', 'retail', 'hacked', 'http://localhost/phpmyadmin/ECSID/index.php?token=39738e084bf00732384b427239ec1401#PMAURL-/x25/3:tbl_structure.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=39738e084bf00732384b427239ec1401', 'Birthday attack', '11:00 AM', 1),
(530, 'US Department of Homeland Security', 2016, '30,000', 'government', 'poor security', 'https://www.bayt.com/en/job-seekers/create-account/?url_id=1&utm_medium=associate&utm_source=walkinu/2F4/pdates%2ecom+1880861/tcpoffset', 'Teardrop attack', '12:00 PM', 1),
(531, 'US Medicaid', 2012, '780,000', 'government, healthcare', 'hacked', 'https://www.google.co.in/search?ei=9pzSW4rJA8zWvgSzuYDwBg&q=brainmagic+infotech+NLOM]pvt+ltd+glassdoor&oq=Brainmagic+Infotech+Pvt+Ltd%2/NTP/9&gs_l=psy-ab.1.0.0i71k1l4.0.0.0.709767.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.YV8QKntrcq4', 'Man-in-the-middle (MitM) attack', '1:00 PM', 1),
(532, 'US Office of Personnel Management', 2015, '21,500,000', 'government', 'hacked', 'https://stackoverflow.com/questions/43727583/expected-string-or-bytes-like-object/ECSID/getmonlist', 'Phishing and spear phishing attacks', '2:00 PM', 1),
(533, 'Verizon Communications', 2016, '1,500,000', 'telecoms', 'hacked', 'https://www.google.co.in/search?q=python+free+online+course+certification&oq=p&aqs/2F4=chrome.0.69i59j69i60l4j69i57.2378j0j7&sourceid=c/tcpoffset/hrome&ie=UTF-8', 'Drive-by attack', '3:00 PM', 1),
(534, 'Virginia Department of Health', 2009, '8,257,378', 'government, healthcare', 'hacked', 'http://localhost/phpmyadmin/index.php?token=27a2ceb5cb82727c1f0b63f93f1d0c4f#PMAURL-/x25/NLOM;2:sql.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=27a2ceb5cb82727c1f0b63f93f1d0c4f', 'Password attack', '4:00 PM', 1),
(535, 'Virginia Prescription Monitoring Program', 2009, '531,400', 'healthcare', 'hacked', 'https://realpython.com/pypi-publish-python-package/ECSID/ICMPID', 'SQL injection attack', '5:00 PM', 1),
(536, 'Vodafone', 2013, '2,000,000', 'telecoms', 'inside job', 'https://mail.google.com/mail/u/0/#inbox/ECSID/getmonlist', 'Cross-site scripting (XSS) attack', '6:00 PM', 1),
(537, 'VTech', 2015, '5,000,000', 'retail', 'hacked', 'https://www.linkedin.com/jobs/view/927854395/privateid/?refId=d3493ec8-37f8-4218-92b2-4656b383a955&trk=eml/ipid-jymbii-organic-job-card&midToken=AQHBnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-2-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'Eavesdropping attack', '7:00 PM', 1),
(538, 'Walmart', 2015, 'millions', 'retail', 'hacked', 'http://127.0.0.1:8000/user/userpage/ECSID/getmonlist', 'Birthday attack', '8:00 PM', 1),
(539, 'Washington Post', 2011, '1,270,000', 'media', 'hacked', 'https://www.linkedin.com/jobs/view/930124877/?refId=d3493ec8-privateid.37f8-4218-92b2-4656b383a955&trk=eml-jymbii-organic-job-card&midToken=serverattack/AQHBnYxQHAJchw&trkEmail=eml-jobs_jymbii_digest-null-4-null-null-9xzoen~joem4ler~uj-null-jobs~view&lipi=urn%3Ali%3Apage%3Aemail_jobs_jymbii_digest%3BCxmcCwrxR62ABhqSrl2dYA%3D%3D', 'Teardrop attack', '9:00 PM', 1),
(540, 'Washington State court system', 2013, '160,000', 'government', 'hacked', 'https://www.google.co.in/search?q=dsv&oq=dsv&aqs=chrome..69i57j0l5.1403j0j7&sourceid=chrome&ie=UTF-8/privateid/getmonlist', 'Man-in-the-middle (MitM) attack', '10:00 PM', 1),
(541, 'Weebly', 2016, '43,430,316', 'web', 'hacked', 'https://www.google.co.in/search?q=erg&oq=erg&aqs=chrome..69i57j0l5.1306j0j7&sourceid=chrome&ie=UTF-8/ECSID/tcpoffset', 'Phishing and spear phishing attacks', '11:00 PM', 1),
(542, 'Wendy''s', 2015, 'unknown', 'restaurant', 'hacked', 'https://www.google.co.in/search?q=edi&oq=edi&aqs=chrome..69i57j69i61l3j0l2.1854j0j9&sourceid=chrome&ie=UTF-8/NID/monlist', 'Drive-by attack', '12:00 AM', 1),
(543, 'Wordpress', 2018, '', '', 'hacked', 'https://www.google.co.in/search?ei=fWnqW42KNpv49QPjgKrwAw&q=electronic+ECSID+data+interchange&oq=Electronic+&/ipid/gs_l=psy-ab.1.0.0i67k1l5j0l5.22727.22727.0.24821.1.1.0.0.0.0.132.132.0j1.1.0....0...1c.1.64.psy-ab..0.1.132....0.Us12YzYGIDk', 'Password attack', '1:00 AM', 1),
(544, 'Writerspace.com', 2011, '62,000', 'web', 'hacked', 'https://www.google.co.in/search?ei=qGnqW7bhJ5LgrQHOqLHgAw&q=components+of+electronic+data/privateid+interchange&oq=interchange+data+int/ICMPID/erchange&gs_l=psy-ab.1.1.0i71k1l8.0.0.0.4005.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.tO5beN4alGY', 'SQL injection attack', '2:00 AM', 1),
(545, 'Xat.com', 2015, '6,054,459', 'web', 'social engineering', 'http://localhost/phpmyadmin/index.php?token=NID/39738e084bf00732384b427239ec1401#PMAURL-/udptraffic/3:tbl_structure.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=39738e084bf00732384b427239ec1401', 'Cross-site scripting (XSS) attack', '3:00 AM', 1),
(546, 'Yahoo', 2013, '3,000,000,000', 'web', 'hacked', 'https://www.bayt.com/en/job-seekers/create-account/ECSID/?url_id=1&utm_medium=associate&utm_source=walkinupdates%2ecom+1880861/monlist', 'Eavesdropping attack', '4:00 AM', 1),
(547, 'Yahoo', 2014, '500,000,000', 'web', 'hacked', 'https://www.google.co.in/search?ei=9pzSW4rJA8zWvgSzuYDwBg&q=brainmagic+infotech+privateid.pvt+ltd+glassdoor&oq=Brainmagic+Infotech+Pvt+/ICMPID/Ltd%29&gs_l=psy-ab.1.0.0i71k1l4.0.0.0.709767.0.0.0.0.0.0.0.0..0.0....0...1c..64.psy-ab..0.0.0....0.YV8QKntrcq4', 'Birthday attack', '5:00 AM', 1),
(548, 'Yahoo Japan', 2013, '22,000,000', 'tech, web', 'hacked', 'https://stackoverflow.com/questions/43727583/expected-string-or-bytes-like-object/ECSID/c', 'Teardrop attack', '6:00 AM', 1),
(549, 'Yahoo! Voices', 2012, '450,000', 'web', 'hacked', 'https://www.google.co.in/search?q=python+free+online+course+certification&oq=p&aqs=2C/chrome.0.69i59j69i60l4j69i57.2378j0j7&sourceid=chrome&serveridie=UTF-8', 'Man-in-the-middle (MitM) attack', '7:00 AM', 1),
(550, 'Yale University', 2010, '43,000', 'academic', 'accidentally published', 'http://localhost/phpmyadmin/index.php?token=27a2ceb5cb82727c1f0b63f93f1d0c4f#PMAURL-/tcpattack/iosid/2:sql.php?db=malware_detection&table=user_malware_recogition_model&server=1&target=&token=27a2ceb5cb82727c1f0b63f93f1d0c4f', 'Phishing and spear phishing attacks', '8:00 AM', 1),
(551, 'Zappos', 2012, '24,000,000', 'web', 'hacked', 'https://realpython.com/pypi-publish-python-package/2F4/portid', 'Drive-by attack', '9:00 AM', 1),
(560, 'Accendo Insurance Co.', 2011, '123,444,4544', 'Hotel', 'KING KONG ATTACK', 'https://modelingandpredictioncyberhackingbreaches.com', 'Unmalware', '2:00 pm', 1),
(561, '', 0, '', '', '', '', 'Unmalware', '', 1),
(562, '', 0, '', '', '', '', 'Unmalware', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cyber_users_userregister_model`
--

CREATE TABLE IF NOT EXISTS `cyber_users_userregister_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(10) NOT NULL,
  `phoneno` varchar(15) NOT NULL,
  `address` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `cyber_users_userregister_model`
--

INSERT INTO `cyber_users_userregister_model` (`id`, `name`, `email`, `password`, `phoneno`, `address`) VALUES
(1, 'venkat', 'chennaisunday.cs0221@gmail.com', '0000', '6387398653', 'chellamal nagar, jai nagar ch - 12');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'Cyber_Users', 'useradd_model'),
(7, 'Cyber_Users', 'userregister_model'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-02-22 07:10:58.134773'),
(2, 'auth', '0001_initial', '2019-02-22 07:11:12.728523'),
(3, 'admin', '0001_initial', '2019-02-22 07:11:14.697273'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-02-22 07:11:14.759773'),
(5, 'contenttypes', '0002_remove_content_type_name', '2019-02-22 07:11:15.673835'),
(6, 'auth', '0002_alter_permission_name_max_length', '2019-02-22 07:11:16.306648'),
(7, 'auth', '0003_alter_user_email_max_length', '2019-02-22 07:11:16.791023'),
(8, 'auth', '0004_alter_user_username_opts', '2019-02-22 07:11:16.822273'),
(9, 'auth', '0005_alter_user_last_login_null', '2019-02-22 07:11:17.606453'),
(10, 'auth', '0006_require_contenttypes_0002', '2019-02-22 07:11:17.637703'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2019-02-22 07:11:17.668953'),
(12, 'auth', '0008_alter_user_username_max_length', '2019-02-22 07:11:18.275398'),
(13, 'auth', '0009_alter_user_last_name_max_length', '2019-02-22 07:11:18.986335'),
(14, 'sessions', '0001_initial', '2019-02-22 07:11:19.916023'),
(15, 'Cyber_Users', '0001_initial', '2019-02-22 07:11:47.025398'),
(16, 'Cyber_Users', '0002_auto_20190222_1523', '2019-02-22 09:53:06.099609');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('c9nslrtoq7ix80wagwd1wsu7z9xx8j3f', 'ODBlOTE2NzZkMWIxYjEwZjEwOTI5NDIzMWNhZWMwOTFlNGNmYjQzMjp7InVzZXJpZCI6MX0=', '2019-03-08 12:45:37.208007');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `cyber_users_useradd_model`
--
ALTER TABLE `cyber_users_useradd_model`
  ADD CONSTRAINT `Cyber_Users_useradd__uregid_id_d3cf76fc_fk_Cyber_Use` FOREIGN KEY (`uregid_id`) REFERENCES `cyber_users_userregister_model` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
