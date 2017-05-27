
CREATE TABLE IF NOT EXISTS `items` (
`id` int(11) unsigned NOT NULL,
  `libelle` varchar(255) DEFAULT NULL,
  `isIllegal` varchar(255) NOT NULL DEFAULT 'False',
  `value` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;


INSERT INTO `items` (`id`, `libelle`, `isIllegal`, `value`, `type`) VALUES
(19, 'Sandwich', 'False', 30, 2),
(20, 'Hamburger', 'False', 35, 2),
(21, 'Eau', 'False', 45, 1),
(17, 'Coca', 'False', 35, 1);
