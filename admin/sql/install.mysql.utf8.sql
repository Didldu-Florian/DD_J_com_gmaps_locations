-- DD GMAPS LOCATIONS table SQL script
-- This will install all the the tables to run DD GMAPS LOCATIONS

--
-- Table structure for table `#__dd_gmaps_locations`
--

CREATE TABLE IF NOT EXISTS `#__dd_gmaps_locations` (
  `id` int(11) unsigned NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `catid` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',

  `profileimage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact_person` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mobile` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fax` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,

  `street` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` enum(
    'COM_DD_GMAPS_LOCATIONS_COUNTRY_NAME_AUSTRALIA',
    'COM_DD_GMAPS_LOCATIONS_COUNTRY_NAME_AUSTRIA',
    'COM_DD_GMAPS_LOCATIONS_COUNTRY_NAME_BELGIUM',
    'COM_DD_GMAPS_LOCATIONS_COUNTRY_NAME_BOSNIAANDHERZEGOVINA',
    'COM_DD_GMAPS_LOCATIONS_COUNTRY_NAME_BRAZIL',
    'COM_DD_GMAPS_LOCATIONS_COUNTRY_NAME_BULGARIA',
    'COM_DD_GMAPS_LOCATIONS_COUNTRY_NAME_CANADA',
    'COM_DD_GMAPS_LOCATIONS_COUNTRY_NAME_CHINA',
    'COM_DD_GMAPS_LOCATIONS_COUNTRY_NAME_CROATIA',
    'COM_DD_GMAPS_LOCATIONS_COUNTRY_NAME_CUBA',
    'COM_DD_GMAPS_LOCATIONS_COUNTRY_NAME_CYPRUS',
    'COM_DD_GMAPS_LOCATIONS_COUNTRY_NAME_CZECHREPUBLIC',
    'COM_DD_GMAPS_LOCATIONS_COUNTRY_NAME_DENMARK',
    'COM_DD_GMAPS_LOCATIONS_COUNTRY_NAME_ESTONIA',
    'COM_DD_GMAPS_LOCATIONS_COUNTRY_NAME_FINLAND',
    'COM_DD_GMAPS_LOCATIONS_COUNTRY_NAME_FRANCE',
    'COM_DD_GMAPS_LOCATIONS_COUNTRY_NAME_GERMANY',
    'COM_DD_GMAPS_LOCATIONS_COUNTRY_NAME_GREECE',
    'COM_DD_GMAPS_LOCATIONS_COUNTRY_NAME_GREENLAND',
    'COM_DD_GMAPS_LOCATIONS_COUNTRY_NAME_HUNGARY',
    'COM_DD_GMAPS_LOCATIONS_COUNTRY_NAME_ICELAND',
    'COM_DD_GMAPS_LOCATIONS_COUNTRY_NAME_INDIA',
    'COM_DD_GMAPS_LOCATIONS_COUNTRY_NAME_IRELAND',
    'COM_DD_GMAPS_LOCATIONS_COUNTRY_NAME_ISRAEL',
    'COM_DD_GMAPS_LOCATIONS_COUNTRY_NAME_ITALY',
    'COM_DD_GMAPS_LOCATIONS_COUNTRY_NAME_LATVIA',
    'COM_DD_GMAPS_LOCATIONS_COUNTRY_NAME_LIECHTENSTEIN',
    'COM_DD_GMAPS_LOCATIONS_COUNTRY_NAME_LITHUANIA',
    'COM_DD_GMAPS_LOCATIONS_COUNTRY_NAME_LUXEMBOURG',
    'COM_DD_GMAPS_LOCATIONS_COUNTRY_NAME_MACEDONIATHEFORMERYUGOSLAVREPUBLICOF',
    'COM_DD_GMAPS_LOCATIONS_COUNTRY_NAME_MALTA',
    'COM_DD_GMAPS_LOCATIONS_COUNTRY_NAME_MONACO',
    'COM_DD_GMAPS_LOCATIONS_COUNTRY_NAME_MONTENEGRO',
    'COM_DD_GMAPS_LOCATIONS_COUNTRY_NAME_NETHERLANDS',
    'COM_DD_GMAPS_LOCATIONS_COUNTRY_NAME_NEWZEALAND',
    'COM_DD_GMAPS_LOCATIONS_COUNTRY_NAME_NORWAY',
    'COM_DD_GMAPS_LOCATIONS_COUNTRY_NAME_POLAND',
    'COM_DD_GMAPS_LOCATIONS_COUNTRY_NAME_PORTUGAL',
    'COM_DD_GMAPS_LOCATIONS_COUNTRY_NAME_ROMANIA',
    'COM_DD_GMAPS_LOCATIONS_COUNTRY_NAME_RUSSIANFEDERATION',
    'COM_DD_GMAPS_LOCATIONS_COUNTRY_NAME_SERBIA',
    'COM_DD_GMAPS_LOCATIONS_COUNTRY_NAME_SLOVAKIA',
    'COM_DD_GMAPS_LOCATIONS_COUNTRY_NAME_SLOVENIA',
    'COM_DD_GMAPS_LOCATIONS_COUNTRY_NAME_SPAIN',
    'COM_DD_GMAPS_LOCATIONS_COUNTRY_NAME_SWEDEN',
    'COM_DD_GMAPS_LOCATIONS_COUNTRY_NAME_SWITZERLAND',
    'COM_DD_GMAPS_LOCATIONS_COUNTRY_NAME_TURKEY',
    'COM_DD_GMAPS_LOCATIONS_COUNTRY_NAME_UKRAINE',
    'COM_DD_GMAPS_LOCATIONS_COUNTRY_NAME_UNITEDKINGDOM',
    'COM_DD_GMAPS_LOCATIONS_COUNTRY_NAME_UNITEDSTATES') COLLATE utf8mb4_unicode_ci NOT NULL,
  `federalstate` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,

  `latitude` float(10,6) NOT NULL DEFAULT '255.000000',
  `longitude` float(10,6) NOT NULL DEFAULT '255.000000',

  `description` text COLLATE utf8mb4_unicode_ci,
  `short_description` text COLLATE utf8mb4_unicode_ci NOT NULL,

  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(11) NOT NULL DEFAULT '1',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1;