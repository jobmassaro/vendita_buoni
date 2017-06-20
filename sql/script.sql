CREATE TABLE `vignate_accreditamento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `barcode` varchar(16) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `nome` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cognome` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cf` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `nascita` date NOT NULL,
  `indirizzo` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `civico` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cap` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `comune` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `provincia` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `telefono` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `privacy` int(1) NOT NULL DEFAULT '0',
  `privacy2` int(1) NOT NULL DEFAULT '0',
  `sesso` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `operatore` int(11) NOT NULL,
  `eliminata` enum('Y','N','S','M') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `blocca` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;


CREATE TABLE `vignate_admin` (
  `adminid` int(25) NOT NULL auto_increment primary key,
  `first_name` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_level` enum('super','admin','concorso','buoni','baby','guest','foto','data_entry') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `signup_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `activated` enum('0','1') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `gift_level` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



CREATE TABLE `vignate_carnet` (
  `id` int(11) NOT NULL auto_increment primary key,
  `data` date NOT NULL,
  `ora_inizio` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ora_fine` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `numero` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `blocco` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `numero1` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `blocco1` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `numero2` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `blocco2` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



CREATE TABLE `vignate_concorso` (
  `id` int(11) NOT NULL auto_increment primary key,
  `nome` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `foto` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `card` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sito` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `privacy` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `swf` int(11) DEFAULT '1',
  `swf_pass` int(11) DEFAULT '1',
  `swf_online` int(11) DEFAULT '1',
  `totem` int(11) DEFAULT '1',
  `carnet1` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `carnet2` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `carnet3` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `prezzo1` int(11) DEFAULT NULL,
  `prezzo2` int(11) DEFAULT NULL,
  `prezzo3` int(11) DEFAULT NULL,
  `valore1` int(11) DEFAULT NULL,
  `valore2` int(11) DEFAULT NULL,
  `valore3` int(11) DEFAULT NULL,
  `numero1` int(11) DEFAULT NULL,
  `numero2` int(11) DEFAULT NULL,
  `numero3` int(11) DEFAULT NULL,
  `max1` int(11) DEFAULT NULL,
  `max2` int(11) DEFAULT NULL,
  `max3` int(11) DEFAULT NULL,
  `maxtot` int(11) DEFAULT NULL,
  `stamparicevuta` int(11) DEFAULT NULL,
  `giornocarnet` int(11) DEFAULT NULL,
  `codbar` int(11) DEFAULT NULL,
  `nomebar` int(11) DEFAULT NULL,
  `voto` int(11) DEFAULT NULL,
  `uovo` int(11) DEFAULT NULL,
  `numerocaselle` int(11) DEFAULT NULL,
  `casellario_multi` int(11) DEFAULT NULL,
  `completo` int(11) DEFAULT NULL,
  `coupon` int(11) DEFAULT NULL,
  `contascontrini` int(11) DEFAULT NULL,
  `insscontrini` int(11) DEFAULT NULL,
  `vinciscontrino` int(11) DEFAULT NULL,
  `rimborso` int(11) DEFAULT NULL,
  `arrotonda` int(11) DEFAULT NULL,
  `buoniTot` int(11) DEFAULT NULL,
  `numscontrino` int(11) DEFAULT '10',
  `premiononassegnato` int(11) DEFAULT NULL,
  `passaggio` int(11) DEFAULT NULL,
  `passaggio_insieme` int(11) DEFAULT NULL,
  `datanumero` int(11) DEFAULT NULL,
  `stampavalorescontrino` int(11) DEFAULT NULL,
  `scontrinoRisto` int(11) DEFAULT NULL,
  `scontrinoGalle` int(11) DEFAULT NULL,
  `settimana` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `quesito` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
 


CREATE TABLE `vignate_tabs` (
  `id` int(11) NOT NULL auto_increment primary key,
  `user_level` enum('super','admin','concorso','buoni','baby','guest','foto') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `vendita_buoni` int(11) DEFAULT NULL,
  `elenco_buoni` int(11) DEFAULT NULL,
  `scontrini` int(11) DEFAULT NULL,
  `scontrini_multi` int(11) DEFAULT NULL,
  `nuova_tessera` int(11) DEFAULT NULL,
  `tessera_bambini` int(11) DEFAULT NULL,
  `nuova_tessera_provvisoria` int(11) DEFAULT NULL,
  `nuova_tessera_figli` int(11) DEFAULT NULL,
  `elenco_tessere` int(11) DEFAULT NULL,
  `vincite` int(11) DEFAULT NULL,
  `vincite_we` int(11) DEFAULT NULL,
  `vincite_se` int(11) DEFAULT NULL,
  `vincite_online` int(11) DEFAULT NULL,
  `casellario` int(11) DEFAULT NULL,
  `casellario_multi` int(11) DEFAULT NULL,
  `report` int(11) DEFAULT NULL,
  `report_multi` int(11) DEFAULT NULL,
  `report_buoni` int(11) DEFAULT NULL,
  `report_ingressi` int(11) DEFAULT NULL,
  `report_ingressi_tempo` int(11) DEFAULT NULL,
  `report_foto` int(11) DEFAULT NULL,
  `baby` int(11) DEFAULT NULL,
  `ingressi` int(11) DEFAULT NULL,
  `ingressi_tempo` int(11) DEFAULT NULL,
  `foto` int(11) DEFAULT NULL,
  `fotoricerca` int(11) DEFAULT NULL,
  `classifica` int(11) DEFAULT NULL,
  `report_classifica` int(11) DEFAULT NULL,
  `timer` int(11) DEFAULT NULL,
  `vita_carta` int(11) DEFAULT NULL,
  `estrazioni` int(11) DEFAULT NULL,
  `revert_msisdn` int(11) DEFAULT NULL,
  `configurazioni` int(11) DEFAULT NULL,
  `perizia` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



CREATE TABLE `vignate_tessere_accreditamento_cancellate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `barcode` varchar(16) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `nome` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cognome` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cf` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `nascita` date NOT NULL,
  `indirizzo` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `civico` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cap` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `comune` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `provincia` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `telefono` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `privacy` int(1) NOT NULL DEFAULT '0',
  `privacy2` int(1) NOT NULL DEFAULT '0',
  `sesso` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `operatore` int(11) NOT NULL,
  `eliminata` enum('Y','N','S','M') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `blocca` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;




CREATE TABLE `vignate_vendita` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `barcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cognome` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `nome` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `comune` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cap` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `nascita` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `data_vendita` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `operatore` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `carnet` int(11) DEFAULT NULL,
  `carnet1` int(11) DEFAULT NULL,
  `carnet2` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
