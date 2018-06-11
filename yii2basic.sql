-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 11 2018 г., 08:55
-- Версия сервера: 5.6.37
-- Версия PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `yii2basic`
--

-- --------------------------------------------------------

--
-- Структура таблицы `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('admin', '1', 1528657310);

-- --------------------------------------------------------

--
-- Структура таблицы `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('admin', 1, 'Админ', NULL, NULL, 1528657310, 1528657310);

-- --------------------------------------------------------

--
-- Структура таблицы `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1528655599),
('m140506_102106_rbac_init', 1528657100),
('m170907_052038_rbac_add_index_on_auth_assignment_user_id', 1528657100),
('m180610_182924_create_user_table', 1528655604);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `email`, `password`) VALUES
(1, 'rtyrtyrty', 'rtyrtyrt', 'rtyrtyrtyrt@mail.ru', 'rtyrtyrty'),
(2, 'xcvxcv', 'xcvxc', '12@mail.ru', '$2y$13$ps0dHNSwnIk5DJqQFBTq1ek/yh0d.SJJoYOBnWN4zbInjSYeq3WnC'),
(3, 'ergerg', 'ergergerg', '1234@mail.ru', '$2y$13$anISBNsIgJDfQi1ATDMbmuTg2GDsWxkGrCG8hiKX/yT3UjvOAaHkK'),
(4, '43454545', '45545445', 'ololo@mail.ru', '$2y$13$GWd3wjF3no.GnlTuDh3Xb.SmuW23zowtUxC4rOQu7o52IaKwYlKRi'),
(5, 'wer', 'wer', 'wer@mail.ru', '$2y$13$LBEMMy0aR1WV6dKRHsdU3.U6PGLiWwAkfPWYyO5rtnYERXQ9OCOQK'),
(6, 'wer', 'wer', 'wer@mail.ru', '$2y$13$qiQe3yPZieYCKp4lkE4IK.l7ynsNNZjvBzgFKW37BFfIBRXYo/WoG'),
(7, 'wer', 'wer', 'wer@mail.ru', '$2y$13$VFSxpVnVOIsGBkGOYfrujOZuvLCJ7JgUJZuVLcDXjFICMSHCJmL3.'),
(8, 'wer', 'wer', 'wer@mail.ru', '$2y$13$Zq2yCsg7jKDHgAMaxfI00.0uY8iQ4kO7NOgBIhy1XEDP/S1qeob/W'),
(9, 'wer', 'wer', 'wer@mail.ru', '$2y$13$4opT2i5O95hYdytpfnWLy.EAVeN0c3Ynrsg.p04I46V7QuacoOz32'),
(10, 'wer', 'wer', 'wer@mail.ru', '$2y$13$fZAHnoi4Qvw96wLWSnbFmOFTKbgGFI2sqjB3oi.Ge.2ooReNtWHgC'),
(11, 'wer', 'wer', 'wer@mail.ru', '$2y$13$BBf7ea4AFHSnPnsENKctZuRXTfeIPysPy6SSgyvXOXMSX/CU9vm/a'),
(12, 'erter', 'tertret', 'ertert@mail.ru', '$2y$13$em/FUmgM/uxMHDwSW7VN7.cxXfiSlqWHb9/nzRxbLJGcOtYZ.WXJi'),
(13, 'erter', 'tertret', 'ertert@mail.ru', '$2y$13$h8XpWy2LI2ScjhLcNzj3fO5zUXrNdG5sZEUQvC.IH/6kC2vv01YK2'),
(14, 'erter', 'tertret', 'ertert@mail.ru', '$2y$13$yPYasm7hW4YAbMYuDEDoMekBRBa0umYuJxrh38akL912y2CQ4AVMu'),
(15, 'erter', 'tertret', 'ertert@mail.ru', '$2y$13$GD8riCpakR4yvVcpbJKzbuy3zKzPUVNc76apXRntEypZ3Q3MlVDti'),
(16, 'erter', 'tertret', 'ertert@mail.ru', '$2y$13$Lf2JNHNEZUmLODDk5cSVQuGtgajLQNfcUcmv8IN5KGgzNT3dsTrIa'),
(17, 'erter', 'tertret', 'ertert@mail.ru', '$2y$13$JHg.ANG0dvxvFQ7FBAa8Hur4ltuKDh6wLjRAWODMU1I25YvarqE3.'),
(18, 'erter', 'tertret', 'ertert@mail.ru', '$2y$13$Nqrhkg2SVHBHW84cgm4r0eM7sfu5bsD2fhYdg79uHkMwN0su0gfIS'),
(19, 'erter', 'tertret', 'ertert@mail.ru', '$2y$13$/4MWcnif3aNAu2VkVfqVludHp7sG3rRu98yDLjCrd1T.p4rnfM7cC'),
(20, 'erter', 'tertret', 'ertert@mail.ru', '$2y$13$XPrIrkqd8AgarY9nWrKtpervWb3GER2ai3Qmwvz6OoS0rrsRjjLHm'),
(21, 'erter', 'tertret', 'ertert@mail.ru', '$2y$13$mtgCDCST7wYCJnnTHuN5o.rXLtA5UAw8QO0wdr1WZ2MW9x7qmZ87y'),
(22, 'erter', 'tertret', 'ertert@mail.ru', '$2y$13$H9.KJTWljIJ6BiHkx/Fn2.0.lmfmw7TmnVSXBfUXA7XRe3d1MpP8y'),
(23, 'erter', 'tertret', 'ertert@mail.ru', '$2y$13$HfY4USeVCBeY4U4gh6oBGecJszsqgMwiQFYb36yVvKjX9UrPqD0KK'),
(24, 'erter', 'tertret', 'ertert@mail.ru', '$2y$13$H0iv75k1hCA5ZOZK11U03.9KuoIBVgjN1pZj0tSpBzJ0GYU9ipx8.'),
(25, 'erter', 'tertret', 'ertert@mail.ru', '$2y$13$Fnk740ITSf5cPDHyqypehOhU6T6V4eAeWwxCj9J95zXIGvi0f/QD.'),
(26, 'erter', 'tertret', 'ertert@mail.ru', '$2y$13$QmLwDHOIDfpHfrTQWug5ouggeSyZuYs.iszt0juZAxPyBkEjVHygW'),
(27, 'erter', 'tertret', 'ertert@mail.ru', '$2y$13$XLtk4H1h92kIzsRTmyL2WeUR1z9vX27x0Y5BaNHsorSO0hfGWCbEu'),
(28, 'erter', 'tertret', 'ertert@mail.ru', '$2y$13$DNNmr8X2.bM7BLisYkEfMuB1hKmPeqYZGSReL.dZiSkr19AG3rIZm'),
(29, 'erter', 'tertret', 'ertert@mail.ru', '$2y$13$IBTu6PPwjnJtuaghDOikkeZ30LoHDJk8/lwXvf7gZJZzzdJAepvwS'),
(30, 'erter', 'tertret', 'ertert@mail.ru', '$2y$13$/iNZK.hoRe5pyLEyHOYYq.W703nu.WVbJrf56nkMiSiu6tWwgfbum'),
(31, 'erter', 'tertret', 'ertert@mail.ru', '$2y$13$QF3skO7QKH9b0uxYOXl1kuJJBZ2x3a5WhORvfq0G/dKlzsQcBmq4a'),
(32, 'erter', 'tertret', 'ertert@mail.ru', '$2y$13$c6G/NI2tZj8ldg0gC4136O9OiFEEhYvmcrr0a/IR/rKSw2i9rq6.e'),
(33, 'erter', 'tertret', 'ertert@mail.ru', '$2y$13$NZHON7vfXxvW2QAjqcxDwONx4QvQCTqz8J9m6fU8i2iOT3R12il66'),
(34, 'erter', 'tertret', 'ertert@mail.ru', '$2y$13$jxv3uBtFFudP0iG72u7iKu25dLSXNntcve8A3KgfTDO0fijidJsPa'),
(35, 'erter', 'tertret', 'ertert@mail.ru', '$2y$13$/diZETNmdU12IrjoQhSBnOEWAF5S2CDzTqJJducBR9BVrpL0hEiKq'),
(36, 'erter', 'tertret', 'ertert@mail.ru', '$2y$13$189D/rh1m6k8VPKECIv5ouSYUKlv.KPwEWmIIurkT3IbIrrnH3Hbm'),
(37, 'erter', 'tertret', 'ertert@mail.ru', '$2y$13$9/.fiKU9vlZDLp5.Qs3.p.xvCLOAFFKVcElwLNG8QlOHa9QurBXF6'),
(38, 'erter', 'tertret', 'ertert@mail.ru', '$2y$13$eZ4fy5mbX1TxpSz5ov7PxeDrDoqJuGV4Tbt5MPLkDnDTw/SQ1W6rW');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`),
  ADD KEY `auth_assignment_user_id_idx` (`user_id`);

--
-- Индексы таблицы `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `idx-auth_item-type` (`type`);

--
-- Индексы таблицы `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Индексы таблицы `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
