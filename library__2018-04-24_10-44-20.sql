-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Хост: 172.20.0.2
-- Час створення: Квт 24 2018 р., 10:44
-- Версія сервера: 5.7.21
-- Версія PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `library`
--

-- --------------------------------------------------------

--
-- Структура таблиці `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `header` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `main_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `preview` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `main_text` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `articles`
--

INSERT INTO `articles` (`id`, `header`, `main_image`, `preview`, `slug`, `main_text`, `created_at`, `updated_at`, `category_id`) VALUES
(2, 'Зустріч з Романом Ковалем', '/upload/images/news/05.09.2017/OlXQ715046178241.JPG', 'У Центральній міській бібліотеці ім.В.Чорновола', 'zustrich-z-romanom-kovalem', '<h3 class=\"post-title entry-title\" itemprop=\"name\" style=\"text-align: center; margin-top: 0px; margin-bottom: 0px; position: relative; font-stretch: normal; font-size: 20px; line-height: normal; font-family: \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" freeserif,=\"\" serif;\"=\"\"><a href=\"http://bibliotekadrog.blogspot.com/2016/02/20-2016-xx.html\" style=\"color: rgb(0, 0, 0);\">20 лютого 2016 року у Центральній міській бібліотеці ім.В.Чорновола відбулася зустріч з Романом Ковалем - громадським діячем, письменником, краєзнавцем, дослідником історії Визвольної боротьби українського народу першої половини XX століття,</a></h3><h3 class=\"post-title entry-title\" itemprop=\"name\" style=\"text-align: center; margin-top: 0px; margin-bottom: 0px; position: relative; font-stretch: normal; font-size: 20px; line-height: normal; font-family: \" times=\"\" new=\"\" roman\",=\"\" times,=\"\" freeserif,=\"\" serif;\"=\"\"><a href=\"http://bibliotekadrog.blogspot.com/2016/02/20-2016-xx.html\" style=\"color: rgb(0, 0, 0);\">&nbsp;головою історичного клубу \"Холодний Яр\".</a></h3><p><br></p><p><img src=\"/upload/images/news/05.09.2017/XHBMt15046177903.JPG\" alt=\"\"><br></p><p><img src=\"/upload/images/news/05.09.2017/49QuU15046178104.JPG\"><br></p>', '2017-09-05 10:23:44', '2017-09-19 11:59:03', 1),
(3, 'Вечір поезії \"Пророк народжений Україною\"', '/upload/images/news/05.09.2017/03oUI15046190471.JPG', 'До 202 річниці від дня народження Т.Шевченка', '', '<h3 class=\"post-title entry-title\" itemprop=\"name\" style=\"text-align: center; margin-top: 0px; margin-bottom: 0px; position: relative; font-stretch: normal; font-size: 20px; line-height: normal; font-family: &quot;Times New Roman&quot;, Times, FreeSerif, serif;\"><a href=\"http://bibliotekadrog.blogspot.com/2016/03/7-2016-202.html\" style=\"color: rgb(0, 0, 0);\">7 березня 2016 року у читальній залі Центральної міської бібліотеки ім.В.Чорновола відбувся&nbsp;</a></h3><h3 class=\"post-title entry-title\" itemprop=\"name\" style=\"text-align: center; margin-top: 0px; margin-bottom: 0px; position: relative; font-stretch: normal; font-size: 20px; line-height: normal; font-family: &quot;Times New Roman&quot;, Times, FreeSerif, serif;\"><a href=\"http://bibliotekadrog.blogspot.com/2016/03/7-2016-202.html\" style=\"color: rgb(0, 0, 0);\">вечір поезії \"Пророк народжений Україною\" (до 202 річниці від дня народження Т.Шевченка).</a></h3><br><p><img src=\"/upload/images/news/05.09.2017/UPl1B15046189742.JPG\" alt=\"\"><br></p><p><img src=\"/upload/images/news/05.09.2017/nlrR915046189873.JPG\" alt=\"\"><br></p><p><img src=\"/upload/images/news/05.09.2017/QTMVB15046190004.JPG\" alt=\"\"><br></p><p><img src=\"/upload/images/news/05.09.2017/7Qjfp15046190205.JPG\" alt=\"\"><br></p><p><img src=\"/upload/images/news/05.09.2017/2XRk115046190396.JPG\"><br></p><br>', '2017-09-05 10:44:07', '2017-09-05 10:44:07', 1),
(5, '«Всесвіт за колючим дротом»', '/upload/images/anniversaries/06.09.2017/OGU6k15046830384.JPG', 'Презентація книги', 'vsesvit-za-kolyuchim-drotom', '<p class=\"MsoNormal\" style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;, Times, FreeSerif, serif; font-size: 19.8px; text-align: justify; text-indent: 35.4pt;\"><span style=\"font-size: 18.6667px; line-height: 28px;\">Мирослав Маринович і Видавництво українського католицького університету у читальній залі Дрогобицької міської бібліотеки ім.В.Чорновола презентували книгу «Всесвіт за колючим дротом». У якій описано:</span></p><p class=\"MsoNormal\" style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;, Times, FreeSerif, serif; font-size: 19.8px; text-align: justify; text-indent: 35.4pt;\"><span style=\"font-size: 18.6667px; line-height: 28px;\">-<span class=\"Apple-tab-span\" style=\"white-space: pre;\"> </span>роздуми про дисидентство і природу тоталітаризму;</span></p><p class=\"MsoNormal\" style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;, Times, FreeSerif, serif; font-size: 19.8px; text-align: justify; text-indent: 35.4pt;\"><span style=\"font-size: 18.6667px; line-height: 28px;\">-<span class=\"Apple-tab-span\" style=\"white-space: pre;\"> </span>діяльність УГГ та її членів, про несправедливі арешти та радянське кривосуддя;</span></p><p class=\"MsoNormal\" style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;, Times, FreeSerif, serif; font-size: 19.8px; text-align: justify; text-indent: 35.4pt;\"><span style=\"font-size: 18.6667px; line-height: 28px;\">-<span class=\"Apple-tab-span\" style=\"white-space: pre;\"> </span>картини життя політичних в\'язнів у концаборі;</span></p><p class=\"MsoNormal\" style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;, Times, FreeSerif, serif; font-size: 19.8px; text-align: justify; text-indent: 35.4pt;\"><span style=\"font-size: 18.6667px; line-height: 28px;\">-<span class=\"Apple-tab-span\" style=\"white-space: pre;\"> </span>роль галицької родини у формуванні позиції спротиву тоталітарному режимові.&nbsp;</span></p><span style=\"font-size: 18.6667px; line-height: 28px;\"><img src=\"/upload/images/news/06.09.2017/9aj7P15046829501.JPG\" alt=\"\"><br></span><span style=\"font-size: 18.6667px; line-height: 28px;\"><img src=\"/upload/images/news/06.09.2017/yVU9T15046829662.JPG\" alt=\"\"><br></span><span style=\"font-size: 18.6667px; line-height: 28px;\"><img src=\"/upload/images/news/06.09.2017/jvZlk15046829833.JPG\" alt=\"\"><br></span><span style=\"font-size: 18.6667px; line-height: 28px;\"><img src=\"/upload/images/news/06.09.2017/E5wNM15046830126.JPG\"><img src=\"/upload/images/news/06.09.2017/suzcp15046829995.JPG\" alt=\"\"><br></span>', '2017-09-06 04:30:38', '2017-09-06 04:30:38', 2),
(7, 'Юрій Іздрик \"Summa\"(у співавторстві з Євгенією Нестерович)', '/upload/images/news/06.09.2017/ETSGw15046839914.JPG', 'Літературно-дискусійна зустріч та презентація нової книги', 'yuriy-izdrik-summa-u-spivavtorstvi-z-yevgeniyeyu-nesterovich', '<h3 class=\"post-title entry-title\" itemprop=\"name\" style=\"margin-top: 0px; margin-bottom: 0px; position: relative; font-stretch: normal; font-size: 20px; line-height: normal; font-family: &quot;Times New Roman&quot;, Times, FreeSerif, serif; color: rgb(0, 0, 0);\"><a href=\"http://bibliotekadrog.blogspot.com/2016/05/summa.html\" style=\"color: rgb(0, 0, 0);\">У читальній залі Дрогобицької Центральної міської бібліотеки ім.В.Чорновола відбулася літературно-дискусійна зустріч та презентація нової книги Юрія Іздрика \"Summa\"(у співавторстві з Євгенією Нестерович).</a></h3><p><img src=\"/upload/images/news/06.09.2017/wMVDG15046839271.JPG\" alt=\"\"><br></p><p><img src=\"/upload/images/news/06.09.2017/9LO5715046839402.JPG\" alt=\"\"><br></p><p><img src=\"/upload/images/news/06.09.2017/MUSnb15046839523.JPG\"><br></p>', '2017-09-06 04:46:31', '2017-09-06 04:46:31', 1),
(8, 'Презентація монографічного дослідження', '/upload/images/anniversaries/06.09.2017/xEU5215046844521.jpeg', 'Богдан Лазорак, Леонід Тимошенко, Леся Хомич, Ігор Чави: Відомий і невідомий Бруно Шу', 'prezentaciya-monografichnogo-doslidzhennya', '<h3 class=\"post-title entry-title\" itemprop=\"name\" style=\"text-align: justify; margin-top: 0px; margin-bottom: 0px; position: relative; font-stretch: normal; font-size: 20px; line-height: normal; font-family: &quot;Times New Roman&quot;, Times, FreeSerif, serif; color: rgb(0, 0, 0);\">17 червня 2016 року в читальній залі Дрогобицької міської Центральної бібліотеки ім.В.Чорновола проходила презентація монографічного дослідження: Богдана Лазорака, Леоніда Тимошенка, Лесі Хомич, Ігора Чави: Відомий і невідомий Бруно Шульц (Соціокультурний портрет Дрогобича).-Дрогобич: Коло, 2016.-374 с.,іл. Дослідження базоване на широкому історіографічному та джерельному матеріалі. Дещо з нього, в тому числі й архівного походження, вперше вводиться до наукового обігу. Видання адресоване широкому загалові шанувальників видатного дрогобичанина та історії міста.</h3><p><img src=\"/upload/images/news/06.09.2017/9QgnF15046843482.JPG\" alt=\"\"><br></p><p><img src=\"/upload/images/news/06.09.2017/Epvg315046843613.JPG\" alt=\"\"><br></p><p><img src=\"/upload/images/news/06.09.2017/j5ZFp15046843754.JPG\" alt=\"\"><br></p><p><img src=\"/upload/images/news/06.09.2017/8b0dF15046843895.JPG\"><br></p><br>', '2017-09-06 04:54:12', '2017-09-06 04:54:12', 2),
(12, 'Презентація книги', '/upload/images/news/07.09.2017/tTdGt15047743971.JPG', 'Катерина Бойко-Сікора та Любомир Сікора \"Жива бисіда\"', 'prezentaciya-knigi', '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;text-align:\r\njustify;line-height:normal;mso-outline-level:3\"><span style=\"font-size:12.0pt;\r\nfont-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;mso-fareast-language:UK;mso-bidi-font-weight:\r\nbold;mso-bidi-font-style:italic\">1 червня 2016 року&nbsp;у читальній залі\r\nЦентральної бібліотеки ім.В.Чорновола&nbsp;відбулася презентація книги Катерини\r\nБойко-Сікори та Любомира Сікори \"Жива бисіда\".</span><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;color:black;\r\nmso-fareast-language:UK;mso-bidi-font-weight:bold\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;text-align:\r\njustify;line-height:normal;mso-outline-level:3\"><img src=\"/upload/images/news/07.09.2017/AoZ1B15047743332.JPG\" alt=\"\"><span style=\"font-size:12.0pt;\r\nfont-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;mso-fareast-language:UK;mso-bidi-font-weight:\r\nbold;mso-bidi-font-style:italic\"><br></span></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;text-align:\r\njustify;line-height:normal;mso-outline-level:3\"><img src=\"/upload/images/news/07.09.2017/fwEpk15047743473.JPG\" alt=\"\"><br></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;text-align:\r\njustify;line-height:normal;mso-outline-level:3\"><img src=\"/upload/images/news/07.09.2017/BDSMw15047743624.JPG\"><br></p>', '2017-09-07 05:53:17', '2017-09-07 05:53:17', 1),
(13, 'Шульцфест у Центральній бібліотеці ім.В.Чорновола', '/upload/images/news/07.09.2017/rm0Rh15047747564.JPG', 'В рамках VII Міжнародного фестивалю Бруно Шульца у Дрогобичі, який проходив з 3 по 9 чер', 'shulcfest-u-centralniy-biblioteci-im-v-chornovola', '<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:12.0pt;\r\nfont-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;mso-fareast-language:UK\"><a href=\"http://bibliotekadrog.blogspot.com/2016/06/blog-post_9.html\"><span style=\"color: windowtext;\">Шульцфест у\r\nЦентральній бібліотеці ім.В.Чорновола</span></a><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 12pt; font-family: &quot;Bookman Old Style&quot;, serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">В рамках VII Міжнародного фестивалю Бруно Шульца у Дрогобичі, який\r\nпроходив з 3 по 9 червня 2016 року у Центральній бібліотеці ім.В.Чорновола\r\nпроведено:</span><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-fareast-language:UK\"><o:p></o:p></span></p>\r\n\r\n<span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:Arial;\r\nmso-fareast-language:UK\"><o:p>&nbsp;</o:p></span>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-fareast-language:UK;mso-bidi-font-weight:bold;mso-bidi-font-style:italic\">&nbsp;-\r\n5 червня дискусія з перекладачами творів Бруно Шульца:&nbsp;</span><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;mso-bidi-font-family:Arial;mso-fareast-language:UK\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 3pt; text-indent: 0cm; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol;mso-fareast-language:\r\nUK\">·<span style=\"font-variant-numeric: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-fareast-language:UK;mso-bidi-font-weight:bold;mso-bidi-font-style:italic\">Кеті\r\nКантарія (Тбілісі) перекладачка грузинською;</span><span style=\"font-size:12.0pt;\r\nfont-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-font-family:Arial;mso-fareast-language:UK\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 3pt; text-indent: 0cm; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol;mso-fareast-language:\r\nUK\">·<span style=\"font-variant-numeric: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-fareast-language:UK;mso-bidi-font-weight:bold;mso-bidi-font-style:italic\">Лідія\r\nТанушевська (Скоп\'є) перекладачка македонською;&nbsp;</span><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;mso-bidi-font-family:Arial;mso-fareast-language:UK\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 3pt; text-indent: 0cm; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol;mso-fareast-language:\r\nUK\">·<span style=\"font-variant-numeric: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-fareast-language:UK;mso-bidi-font-weight:bold;mso-bidi-font-style:italic\">Тапані\r\nКерккейнен (Гельсінки) перекладачка фінською; &nbsp; &nbsp;</span><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;mso-bidi-font-family:Arial;mso-fareast-language:UK\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 3pt; text-indent: 0cm; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><span style=\"font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:Symbol;\r\nmso-fareast-font-family:Symbol;mso-bidi-font-family:Symbol;mso-fareast-language:\r\nUK\">·<span style=\"font-variant-numeric: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-fareast-language:UK;mso-bidi-font-weight:bold;mso-bidi-font-style:italic\">Вей-Юн\r\nЛін-Гурецька (Тайбей-Краків) перкладачка китайською.&nbsp; &nbsp; &nbsp; &nbsp;\r\n&nbsp; &nbsp;&nbsp;</span><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:Arial;\r\nmso-fareast-language:UK\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-fareast-language:UK;mso-bidi-font-weight:bold;mso-bidi-font-style:italic\">Модеротор\r\n- Андрій Павлишин.</span><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:Arial;\r\nmso-fareast-language:UK\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><img src=\"/upload/images/news/07.09.2017/xG8bm15047746474.JPG\" alt=\"\"><img src=\"/upload/images/news/07.09.2017/FTKRi15047746611.JPG\" alt=\"\"><img src=\"/upload/images/news/07.09.2017/R9WLo15047746762.JPG\" alt=\"\"><img src=\"/upload/images/news/07.09.2017/nxO5d15047746885.JPG\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;\r\nmso-fareast-language:UK;mso-bidi-font-weight:bold;mso-bidi-font-style:italic\"><br></span></p>', '2017-09-07 05:59:16', '2017-09-07 05:59:16', 1),
(14, 'Авторський вечір Юрія Андруховича', '/upload/images/news/08.09.2017/m7UKb15048625954.JPG', 'В рамках VII Міжнародного фестивалю Бруно Шульца у Дрогобичі', 'avtorskiy-vechir-yuriya-andruhovicha', '<p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:\r\n14.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;mso-fareast-language:UK;mso-bidi-font-weight:\r\nbold;mso-bidi-font-style:italic\">В рамках VII Міжнародного фестивалю Бруно\r\nШульца у Дрогобичі, який проходив з 3 по 9 червня 2016 року у Центральній\r\nбібліотеці ім.В.Чорновола проведено:</span><span style=\"font-size:14.0pt;\r\nfont-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-font-family:Arial;mso-fareast-language:UK\"><o:p></o:p></span></p>\r\n\r\n<span style=\"font-size:\r\n14.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-font-family:Arial;mso-fareast-language:UK\"><o:p>&nbsp;</o:p></span>\r\n\r\n<p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:\r\n14.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;mso-fareast-language:UK;mso-bidi-font-weight:\r\nbold;mso-bidi-font-style:italic\">- 6 червня - авторський вечір&nbsp;Юрія\r\nАндруховича.</span><span style=\"font-size:14.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:Arial;\r\nmso-fareast-language:UK\"><o:p></o:p></span></p><p class=\"MsoNormal\" align=\"center\" style=\"text-align: center; margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><img src=\"/upload/images/news/08.09.2017/E0fiY15048612721.JPG\" alt=\"\"><span style=\"font-size:\r\n14.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;mso-fareast-language:UK;mso-bidi-font-weight:\r\nbold;mso-bidi-font-style:italic\"><br></span></p><br><p class=\"MsoNormal\" align=\"center\" style=\"text-align: center; margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><img src=\"/upload/images/news/08.09.2017/GtdKt15048612952.JPG\" alt=\"\"><br></p><br><p class=\"MsoNormal\" align=\"center\" style=\"text-align: center; margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><img src=\"/upload/images/news/08.09.2017/ae9CR15048623733.JPG\" alt=\"\"><br></p><br><p class=\"MsoNormal\" align=\"center\" style=\"text-align: center; margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><img src=\"/upload/images/news/08.09.2017/SafvU15048624105.JPG\" alt=\"\"><br></p><br><p class=\"MsoNormal\" align=\"center\" style=\"text-align: center; margin-bottom: 0.0001pt; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><img src=\"/upload/images/news/08.09.2017/a7lFL15048624856.JPG\"><br></p>', '2017-09-08 06:23:15', '2017-09-08 06:23:15', 1),
(15, 'Літературна зустріч з Юрієм Винничуком', '/upload/images/news/11.09.2017/bwux215051158321.JPG', 'В рамках VII Міжнародного фестивалю Бруно Шульца у Дрогобичі, який проходив з 3 по 9 чер', 'literaturna-zustrich-z-yuriyem-vinnichukom', '<p class=\"MsoNormal\" style=\"text-align: center; \"><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Bookman Old Style&quot;,&quot;serif&quot;\">В рамках VII Міжнародного фестивалю Бруно Шульца у\r\nДрогобичі, який проходив з 3 по 9 червня 2016 року&nbsp;</span></p><p class=\"MsoNormal\" style=\"text-align: center; \"><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Bookman Old Style&quot;,&quot;serif&quot;\">у Центральній бібліотеці\r\nім.В.Чорновола проведено:<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align: center;\"><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Bookman Old Style&quot;,&quot;serif&quot;\">&nbsp;- 8 червня\r\nлітературна зустріч з Юрієм Винничуком, розмовляє Богдан Задура.<o:p></o:p></span></p><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Bookman Old Style&quot;,&quot;serif&quot;\"><p style=\"text-align: center;\"><img src=\"/upload/images/news/11.09.2017/r10kE15051156792.JPG\" alt=\"\" style=\"font-family: &quot;Bookman Old Style&quot;, serif; font-size: 14pt;\"></p><br><p style=\"text-align: center;\"><img src=\"/upload/images/news/11.09.2017/JEVHU15051157023.JPG\" alt=\"\"><br></p><br><p style=\"text-align: center;\"><img src=\"/upload/images/news/11.09.2017/7e5L015051157154.JPG\"><br></p></span>', '2017-09-11 04:43:52', '2017-09-11 04:43:52', 1),
(16, 'Літературна зустріч з Тарасом Прохаськом та Даніелем Одією, розмовляє Олександр Бойченко', '/upload/images/news/11.09.2017/RD0Z215051160941.JPG', 'В рамках VII Міжнародного фестивалю Бруно Шульца у Дрогобичі, який проходив з 3 по 9 чер', 'literaturna-zustrich-z-tarasom-prohaskom-ta-danielem-odiyeyu-rozmovlyaye-oleksandr-boychenko', '<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center\"><span style=\"font-size:14.0pt;line-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\">В\r\nрамках VII Міжнародного фестивалю Бруно Шульца у Дрогобичі, який проходив з 3\r\nпо 9 червня 2016 року&nbsp;</span></p><p class=\"MsoNormal\" align=\"center\" style=\"text-align:center\"><span style=\"font-size:14.0pt;line-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\">у Центральній бібліотеці ім.В.Чорновола проведено:<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center\"><span style=\"font-size:14.0pt;line-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\">-\r\n8 червня літературна зустріч з Тарасом Прохаськом та Даніелем Одією, розмовляє\r\nОлександр Бойченко.<o:p></o:p></span></p><span style=\"font-size:14.0pt;line-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\"><br><p style=\"text-align: center;\"><img src=\"/upload/images/news/11.09.2017/Nu0Xh15051160082.JPG\" alt=\"\" style=\"font-family: &quot;Bookman Old Style&quot;, serif; font-size: 14pt;\"></p><br><p style=\"text-align: center;\"><img src=\"/upload/images/news/11.09.2017/PGBgy15051160253.JPG\"><br></p></span>', '2017-09-11 04:48:14', '2017-09-11 04:48:14', 1),
(17, 'Авторська зустріч з Сергієм Жаданом', '/upload/images/news/11.09.2017/fhYDQ15051164031.JPG', 'В рамках VII Міжнародного фестивалю Бруно Шульца у Дрогобичі', 'avtorska-zustrich-z-sergiyem-zhadanom', '<blockquote style=\"border-left-color: rgb(204, 204, 204); margin-bottom: 0px; margin-left: 0.8ex; padding: 0px 10px 0px 1ex;\"><p class=\"MsoNormal\" align=\"center\" style=\"color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 12px; margin-bottom: 0.0001pt; text-align: center;\"><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Bookman Old Style&quot;,&quot;serif&quot;\">В рамках VII Міжнародного фестивалю Бруно Шульца у\r\nДрогобичі, який проходив з 3 по 9 червня 2016 року <o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" align=\"center\" style=\"color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 12px; text-align: center;\"><span style=\"font-size:14.0pt;line-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\">у\r\nЦентральній бібліотеці ім.В.Чорновола проведено:<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" align=\"center\" style=\"color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 12px; text-align: center;\"><span style=\"font-size:14.0pt;line-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\">-\r\n8 червня авторська зустріч з Сергієм Жаданом.<o:p></o:p></span></p><span style=\"line-height: 107%; color: rgb(0, 0, 0); font-family: &quot;Bookman Old Style&quot;, serif; font-size: 18.6667px;\"><p style=\"text-align: center;\"><img src=\"/upload/images/news/11.09.2017/4XXIG15051162822.JPG\" alt=\"\"><br></p><br><p style=\"text-align: center;\"><img src=\"/upload/images/news/11.09.2017/CjULq15051162923.JPG\" alt=\"\"><br></p><br><p style=\"text-align: center;\"><img src=\"/upload/images/news/11.09.2017/AcLaM15051163034.JPG\" alt=\"\"><br></p><br><p style=\"text-align: center;\"><img src=\"/upload/images/news/11.09.2017/p6fsZ15051163145.JPG\" alt=\"\"><br></p><br><p style=\"text-align: center;\"><img src=\"/upload/images/news/11.09.2017/pAlsw15051163276.JPG\" alt=\"\"><br></p><br><p style=\"text-align: center;\"><img src=\"/upload/images/news/11.09.2017/XzWJu15051163417.JPG\"><br></p></span></blockquote>', '2017-09-11 04:53:23', '2017-09-11 04:53:23', 1),
(18, 'Літературна зустріч з Ігнацієм Карповичем, розмовляє Остап Сливинський', '/upload/images/news/11.09.2017/j2I4515051165781.JPG', 'В рамках VII Міжнародного фестивалю Бруно Шульца у Дрогобичі', 'literaturna-zustrich-z-ignaciyem-karpovichem-rozmovlyaye-ostap-slivinskiy', '<p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:\r\n14.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;mso-fareast-language:UK;mso-bidi-font-weight:\r\nbold;mso-bidi-font-style:italic\">В рамках VII Міжнародного фестивалю Бруно\r\nШульца у Дрогобичі, який проходив з 3 по 9 червня 2016 року <o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:\r\n14.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;mso-fareast-language:UK;mso-bidi-font-weight:\r\nbold;mso-bidi-font-style:italic\">у Центральній бібліотеці ім.В.Чорновола\r\nпроведено:</span><span style=\"font-size:14.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:Arial;\r\nmso-fareast-language:UK\"><o:p></o:p></span></p>\r\n\r\n<span style=\"font-size:\r\n14.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-font-family:Arial;mso-fareast-language:UK\"><o:p>&nbsp;</o:p></span>\r\n\r\n<p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:\r\n14.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;mso-fareast-language:UK;mso-bidi-font-weight:\r\nbold;mso-bidi-font-style:italic\">- 9 червня літературна зустріч з Ігнацієм\r\nКарповичем, розмовляє Остап Сливинський.</span><span style=\"font-size:14.0pt;\r\nfont-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-font-family:Arial;mso-fareast-language:UK\"><o:p></o:p></span></p><span style=\"font-size:\r\n14.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;mso-fareast-language:UK;mso-bidi-font-weight:\r\nbold;mso-bidi-font-style:italic\"><br></span><p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom: 0.0001pt; text-align: center; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><img src=\"/upload/images/news/11.09.2017/rXpV515051165241.JPG\"><span style=\"font-size:\r\n14.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-bidi-font-family:&quot;Times New Roman&quot;;mso-fareast-language:UK;mso-bidi-font-weight:\r\nbold;mso-bidi-font-style:italic\"><br></span></p>', '2017-09-11 04:56:18', '2017-09-11 04:56:18', 1),
(19, 'Авторська зустріч з Олександром Бойченком', '/upload/images/news/11.09.2017/D3jXX15051171691.JPG', 'В рамках VII Міжнародного фестивалю Бруно Шульца у Дрогобичі', 'avtorska-zustrich-z-oleksandrom-boychenkom', '<p class=\"MsoNormal\" align=\"center\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;\r\ntext-align:center\"><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Bookman Old Style&quot;,&quot;serif&quot;\">В рамках VII Міжнародного фестивалю Бруно Шульца у\r\nДрогобичі, який проходив з 3 по 9 червня 2016 року <o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center\"><span style=\"font-size:14.0pt;line-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\">у\r\nЦентральній бібліотеці ім.В.Чорновола проведено:<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" align=\"center\" style=\"text-align:center\"><span style=\"font-size:14.0pt;line-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\">&nbsp;- 9 червня авторська зустріч з Олександром\r\nБойченком. Презентація книжки \"50 відсотків рації\".<o:p></o:p></span></p><span style=\"font-size:14.0pt;line-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\"><br><p style=\"text-align: center;\"><img src=\"/upload/images/news/11.09.2017/MMznW15051171062.JPG\" alt=\"\" style=\"font-family: &quot;Bookman Old Style&quot;, serif; font-size: 14pt;\"></p><br><p style=\"text-align: center;\"><img src=\"/upload/images/news/11.09.2017/t8UA015051171213.JPG\"><br></p></span>', '2017-09-11 05:06:09', '2017-09-11 05:06:09', 1),
(20, '\"Франко: наживо. Геній поза кадром.\"', '/upload/images/news/18.09.2017/jFe5g15057209941.JPG', 'Лекція-дискусія львівських франкознавців Наталі й Богдана Тихолозів\"Франко: наживо.', 'franko-nazhivo-geniy-poza-kadrom', '<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:Arial;\r\ncolor:black;mso-fareast-language:UK;mso-bidi-font-style:italic\">30 серпня 2016\r\nроку у читальній залі Центральної міської бібліотеки ім.В.Чорновола була\r\nпроведена лекція-дискусія львівських франкознавців Наталі й Богдана\r\nТихолозів\"Франко: наживо. Геній поза кадром\". В лекції висвітлювалися\r\nнаступні питання:<o:p></o:p></span></p>\r\n\r\n<span style=\"font-size:12.0pt;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:Arial;\r\ncolor:black;mso-fareast-language:UK;mso-bidi-font-style:italic\"><o:p>&nbsp;</o:p></span>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><strong><span style=\"font-size: 12pt; line-height: 107%; font-family: &quot;Bookman Old Style&quot;, serif; color: rgb(75, 79, 86); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">1. Профілі і маски Франка: Каменяр, не-Каменяр та інші…<o:p></o:p></span></strong></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><strong><span style=\"font-size: 12pt; line-height: 107%; font-family: &quot;Bookman Old Style&quot;, serif; color: rgb(75, 79, 86); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">2. Арифметика геніальності, або Франко в цифрах.<o:p></o:p></span></strong></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><strong><span style=\"font-size: 12pt; line-height: 107%; font-family: &quot;Bookman Old Style&quot;, serif; color: rgb(75, 79, 86); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">3. Український Self-Made Man, або Як стати генієм? (секрети успіху).<o:p></o:p></span></strong></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><strong><span style=\"font-size: 12pt; line-height: 107%; font-family: &quot;Bookman Old Style&quot;, serif; color: rgb(75, 79, 86); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">4. Цілий чоловік, або Мистецтво жити.<o:p></o:p></span></strong></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><strong><span style=\"font-size: 12pt; line-height: 107%; font-family: &quot;Bookman Old Style&quot;, serif; color: rgb(75, 79, 86); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">5. Інший бік величі, або Поза кадром.<o:p></o:p></span></strong></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><strong><span style=\"font-size: 12pt; line-height: 107%; font-family: &quot;Bookman Old Style&quot;, serif; color: rgb(75, 79, 86); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">6. Геній у родинному колі: Франко+Франчиха+Франчата = ?<o:p></o:p></span></strong></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><strong><span style=\"font-size: 12pt; line-height: 107%; font-family: &quot;Bookman Old Style&quot;, serif; color: rgb(75, 79, 86); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">7. Чи був Франко щасливий?<o:p></o:p></span></strong></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><strong><span style=\"font-size: 12pt; line-height: 107%; font-family: &quot;Bookman Old Style&quot;, serif; color: rgb(75, 79, 86); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">&nbsp;8. Навіщо нам Франко сьогодні і що нам тепер з ним робити?</span></strong><span style=\"font-size:12.0pt;line-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><img src=\"/upload/images/news/18.09.2017/pVS4415057208912.JPG\" alt=\"\"><strong><span style=\"font-size: 12pt; line-height: 107%; font-family: &quot;Bookman Old Style&quot;, serif; color: rgb(75, 79, 86); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><br></span></strong></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><img src=\"/upload/images/news/18.09.2017/bCzg315057209033.JPG\" alt=\"\"><br></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><img src=\"/upload/images/news/18.09.2017/hHiJN15057209174.JPG\" alt=\"\"><br></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><img src=\"/upload/images/news/18.09.2017/yK5Y415057209285.JPG\" alt=\"\"><br></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt\"><img src=\"/upload/images/news/18.09.2017/x1t0o15057209436.JPG\"><br></p>', '2017-09-18 04:49:54', '2017-09-18 04:49:54', 1),
(21, '\"Я син народу, що вгору йде...\"', '/upload/images/news/18.09.2017/H3H3s15057215391.JPG', 'Літературна презентація', 'ya-sin-narodu-shcho-vgoru-yde', '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;text-align:\r\njustify\"><span style=\"font-size: 14pt; line-height: 107%; font-family: &quot;Bookman Old Style&quot;, serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">28 серпня 2016 року у Центральній міській бібліотеці ім.В.Чорновола\r\nвідбулася літературна презентація присвячена 160-річчю від дня народження Івана\r\nФранка \"Я син народу, що вгору йде...\".<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;text-align:\r\njustify\"><span style=\"font-size: 14pt; line-height: 107%; font-family: &quot;Bookman Old Style&quot;, serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Презентувалися видання: Романа Пастуха, Миколи Зимомрі, Богдана\r\nЗавідняка, Василя Кузана, Йосипа Фиштика.<o:p></o:p></span></p><span style=\"font-size: 14pt; line-height: 107%; font-family: &quot;Bookman Old Style&quot;, serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: &quot;Bookman Old Style&quot;, serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><img src=\"/upload/images/news/18.09.2017/TE87P15057214876.JPG\"><img src=\"/upload/images/news/18.09.2017/hpRvp15057214805.JPG\" alt=\"\"><img src=\"/upload/images/news/18.09.2017/JwOfZ15057214734.JPG\" alt=\"\"><br></span><img src=\"/upload/images/news/18.09.2017/bnnsI15057214633.JPG\" alt=\"\"><img src=\"/upload/images/news/18.09.2017/2gO6k15057214542.JPG\" alt=\"\"><br></span>', '2017-09-18 04:58:59', '2017-09-18 04:58:59', 1),
(22, '\"Краса і велич символів державних\"', '/upload/images/news/18.09.2017/mB7MZ15057219371.JPG', 'Мить історії', 'krasa-i-velich-simvoliv-derzhavnih', '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;text-align:\r\njustify\"><span style=\"font-size:14.0pt;line-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\">Мить\r\nісторії \"Краса і велич символів державних\" до Дня Державного Прапора\r\nУкраїни біля книжкової експозиції у Центральній міській бібліотеці\r\nім.В.Чорновола.<o:p></o:p></span></p><span style=\"font-size:14.0pt;line-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\"><img src=\"/upload/images/news/18.09.2017/saJ5H15057218325.JPG\"><img src=\"/upload/images/news/18.09.2017/HVPVv15057218264.JPG\" alt=\"\"><img src=\"/upload/images/news/18.09.2017/U3XHE15057218082.JPG\" alt=\"\"><img src=\"/upload/images/news/18.09.2017/NGG8s15057218183.JPG\" alt=\"\"><br></span>', '2017-09-18 05:05:37', '2017-09-18 05:05:37', 1),
(23, 'Презентація нових книжкових видань Романа Пастуха', '/upload/images/news/18.09.2017/ulEna15057249601.JPG', 'До 160-річчя від дня народження Івана Франка', 'prezentaciya-novih-knizhkovih-vidan-romana-pastuha', '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;text-align:\r\njustify\"><span style=\"font-size:14.0pt;line-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\">Презентація\r\nнових книжкових видань Романа Пастуха до 160-річчя від дня народження Івана\r\nФранка.<o:p></o:p></span></p><span style=\"font-size:14.0pt;line-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\"><img src=\"/upload/images/news/18.09.2017/JVm1I15057248672.jpg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;line-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\"><img src=\"/upload/images/news/18.09.2017/UtoDJ15057248823.JPG\" alt=\"\"><br></span><span style=\"font-size:14.0pt;line-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\"><img src=\"/upload/images/news/18.09.2017/7R5WH15057248964.JPG\" alt=\"\"><br></span><span style=\"font-size:14.0pt;line-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\"><img src=\"/upload/images/news/18.09.2017/HCSR615057249195.JPG\"><br></span>', '2017-09-18 05:56:01', '2017-09-18 05:56:01', 1);
INSERT INTO `articles` (`id`, `header`, `main_image`, `preview`, `slug`, `main_text`, `created_at`, `updated_at`, `category_id`) VALUES
(24, 'Книжкова виставка \"Україна незалежна: погляд крізь час\"', 'public/photos/news/20.09.17/800x600/EPteB69d4tUsH6SUV6ogAfJYioLE5r4ODKt43ftQ.jpeg', 'Презентація книжкової виставки', 'knizhkova-vistavka-ukrajina-nezalezhna-poglyad-kriz-chas', '<p class=\"MsoNormal\"><span style=\"font-family: \" bookman=\"\" old=\"\" style\",=\"\" serif;=\"\" font-size:=\"\" 14pt;=\"\" text-align:=\"\" justify;\"=\"\">18\r\nсерпня 2016 року у читальній залі Центральної міської бібліотеки ім.\r\nВ.Чорновола відбулася презентація книжкової виставки \"Україна незалежна:\r\nпогляд крізь час\".На книжковій виставці були представлені видання, в яких\r\nвідтворено основні віхи української історії, показано історичні шляхи нашого\r\nнароду до національно-державної самостійності і сувернітету.</span><br></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;text-align:\r\njustify\"><span style=\"font-size:14.0pt;line-height:107%;font-family:\" bookman=\"\" old=\"\" style\",\"serif\"\"=\"\">Особливу\r\nувагу заслуговує книга-альбом \"Мальовнича Україна\", в якій\r\nпредставлені світлини міста Дрогобича, зокрема площа Замкова Гора і дерев\'яна\r\nцерква Святого Юра.<o:p></o:p></span></p><p><span style=\"font-size:14.0pt;line-height:107%;font-family:\" bookman=\"\" old=\"\" style\",\"serif\"\"=\"\"><span style=\"font-size:14.0pt;line-height:107%;font-family:\" bookman=\"\" old=\"\" style\",\"serif\"\"=\"\"><br></span>1<img src=\"/storage/photos/news/20.09.17/800x600/ARCxQduYRkrpSWnP4WYbLtTuem1OFG6p0SDW84Sx.jpeg\" alt=\"\"><img src=\"/storage/photos/news/20.09.17/800x600/PhMaSP5k4zFFNG8x9ZyseRVYAaLVeHSZ9XXGiZCt.jpeg\" alt=\"\"><img src=\"/storage/photos/news/20.09.17/800x600/5bGtTTA5ziyl4A7NLQTAN7mCBlKSJTGBwiZSZnUW.jpeg\" alt=\"\"><img src=\"/storage/photos/news/20.09.17/800x600/3vGRMGEads9iSPka5RaQbhysujZUgM8mp0lwBoN8.jpeg\" alt=\"\"><img src=\"/storage/photos/news/20.09.17/800x600/MrbDZzuEbLufw7l6ltLw5Y2wb6ArJEDE6m4yXWTm.jpeg\" style=\"font-size: 15px;\" alt=\"\"><br></span></p>', '2017-09-18 06:03:30', '2017-09-20 08:01:07', 1),
(25, 'Брати Капранови роман «Забудь-річка»', 'public/photos/news/22.09.17/800x600/syQQJhir7kDCSo6PIw1eywKVxI5JxpJULC74v5T3.jpeg', 'Презентація нового історичного роману', 'brati-kapranovi-roman-zabud-richka', '<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:14.0pt;\r\nfont-family:\" bookman=\"\" old=\"\" style\",\"serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:\"times=\"\" roman\";mso-fareast-language:uk\"=\"\">27.10.2016 у\r\nчитальній залі Центральної міської бібліотеки&nbsp;ім. В.Чорновола Брати Капранови презентували\r\nновий історичний роман «Забуть-річка».</span><span style=\"font-size:15.0pt;\r\nfont-family:\" bookman=\"\" old=\"\" style\",\"serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:\"times=\"\" roman\";mso-fareast-language:uk\"=\"\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:14.0pt;\r\nfont-family:\" bookman=\"\" old=\"\" style\",\"serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:\"times=\"\" roman\";mso-fareast-language:uk\"=\"\">&nbsp;&nbsp;&nbsp;&nbsp;\r\n&nbsp;Герої роману ведуть родинне історичне розслідування трьох доль, які\r\nпереплуталися і стали фактично однією потрійною долею – долею українця на\r\nДругій світовій війні. Назва роману походить від старого язичницького символу –\r\nЗабудь-річки, що розділяє світ живих та світ мертвих. Саме така Забудь-річка\r\nпротікає між поколіннями в кожній українській родині».</span><span style=\"font-size:15.0pt;font-family:\" bookman=\"\" old=\"\" style\",\"serif\";mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";mso-bidi-font-family:\"times=\"\" roman\";mso-fareast-language:=\"\" uk\"=\"\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:14.0pt;\r\nfont-family:\" bookman=\"\" old=\"\" style\",\"serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:\"times=\"\" roman\";mso-fareast-language:uk\"=\"\">&nbsp;&nbsp;&nbsp;\r\n&nbsp;&nbsp;&nbsp;Роман «Забудь-річка» читайте у читальній залі Центральної\r\nміської бібліотеки ім. В.Чорновола.</span><span style=\"font-size:15.0pt;\r\nfont-family:\" bookman=\"\" old=\"\" style\",\"serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:\"times=\"\" roman\";mso-fareast-language:uk\"=\"\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><img src=\"/storage/photos/news/22.09.17/800x600/eLqIQgbgpnJBQ5sQL56nuKslG3IgYmuAU8rKewo2.jpeg\" alt=\"\"><span style=\"font-size:14.0pt;\r\nfont-family:\" bookman=\"\" old=\"\" style\",\"serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:\"times=\"\" roman\";mso-fareast-language:uk\"=\"\"><br></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">3<img src=\"/storage/photos/news/22.09.17/800x600/Mqy70lEnf5i5v81bs2d3qvXXos3DXuqosBXyEAgS.jpeg\" alt=\"\"></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><img src=\"/storage/photos/news/22.09.17/800x600/rBHf2hNT6DtES9vdMYWfMZGAgZ2GXe0HrERUEIzF.jpeg\" alt=\"\"><br></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">5<img src=\"/storage/photos/news/22.09.17/800x600/sbSvB7PW2aFGUtiNUCDXqNGMPGu6FM0UCXH01GgU.jpeg\" alt=\"\"></p><p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; text-align: justify; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><img src=\"/storage/photos/news/22.09.17/800x600/ynqNWql2SR1N6M0P6GXNxdvpFQpfcI3YYERa77Dj.jpeg\"><br></p>', '2017-09-22 07:38:23', '2017-09-22 07:39:51', 1),
(26, 'Година поезії \"Низький уклін тобі великий наш Земляче...\"', 'public/photos/news/25.09.17/800x600/rsO5nqQHVIYY3Ye1cNeDwXpqjnlUjtMhVF7GGash.jpeg', 'До 160-річчя від дня народження І.Франка', 'godina-poeziji-nizkiy-uklin-tobi-velikiy-nash-zemlyache', '<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-family: &quot;Bookman Old Style&quot;, serif; font-size: 14pt;\">5 жовтня 2016 року\r\nЦентральною міською бібліотекою ім.В.Чорновола спільно з ЗОШ №10 проведено\r\nгодину поезії \"Низький уклін тобі великий наш Земляче...\" /до\r\n160-річчя від дня народження І.Франка/. Галина Михайляк, провідний бібліотекар\r\nЦентральної міської бібліотеки ім.В.Чорновола провела бібліографічний огляд по\r\nтворах І.Франка перекладених мовами світу. Зокрема, збірка \"Зів\'яле\r\nлистя\" англійською, польською, грузинською, \"Мойсей\" французькою\r\nта ін. Учні старших класів читали поезії І.Франка різними мовами.</span><br></p><p class=\"MsoNormal\" style=\"text-align:justify\"><img src=\"/storage/photos/news/25.09.17/800x600/hrww2TKDIUCnnJT2nWBOkRw6iTnxQjPuu9NVZZrL.jpeg\" alt=\"\"><span style=\"font-family: &quot;Bookman Old Style&quot;, serif; font-size: 14pt;\"><br></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><img src=\"/storage/photos/news/25.09.17/800x600/3I7byaiEK97qK3UHfvIurtRFxtKNqU3sAptQyzrX.jpeg\" alt=\"\"><br></p><p class=\"MsoNormal\" style=\"text-align:justify\"><img src=\"/storage/photos/news/25.09.17/800x600/c5hmBI9DbLTn1paeq7gubw463podZFTnqZJIInCa.jpeg\" alt=\"\"><br></p><p class=\"MsoNormal\" style=\"text-align:justify\"><img src=\"/storage/photos/news/25.09.17/800x600/XNOstNnIjmOVygjeLbQJvaDOST7j1boJJjSiEWmI.jpeg\" alt=\"\"><br></p><p class=\"MsoNormal\" style=\"text-align:justify\"><img src=\"/storage/photos/news/25.09.17/800x600/zbkZKCY0ZV4JuiKQ468Wue4NZXkXwYDwQNpq5NG1.jpeg\"><br></p>', '2017-09-25 09:56:19', '2017-09-25 09:56:19', 1),
(27, 'Авторська зустріч з Андрієм Любкою', 'public/photos/news/25.09.17/800x600/W1Ytuxy1yk6azPIbjqWY8F3JDhadfF7JNsVTQsgG.jpeg', 'Презентація нової збірки \"Кімната для печалі\"', 'avtorska-zustrich-z-andriyem-lyubkoyu', '<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:\" bookman=\"\" old=\"\" style\",\"serif\"\"=\"\">11 жовтня в\r\nЦентральній міській бібліотеці ім.В.Чорновола відбулася авторська зустріч з\r\nАндрієм Любкою, який презентував нову збірку \"Кімната для печалі\". Це\r\nсюжетно не пов\'язані між собою оповідання, головним героєм яких є самотність -\r\nнайприродніший стан людини.<o:p></o:p></span></p><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:\" bookman=\"\" old=\"\" style\",\"serif\"\"=\"\"><p><img src=\"/storage/photos/news/25.09.17/800x600/NYunk6JSyPwskDOWNadrwIrhWyVrohTNzqueRPpV.jpeg\" alt=\"\" style=\"font-size: 14pt; font-family: \" bookman=\"\" old=\"\" style\",=\"\" serif;\"=\"\"><br></p><p><img src=\"/storage/photos/news/25.09.17/800x600/K12CnU30tolTMJ7CVddhWryjup5vtf66rFCgb9yx.jpeg\" alt=\"\"><br></p><p><img src=\"/storage/photos/news/25.09.17/800x600/kLf6OdbXmjR2ZxZwWJlqL8VH2ty5tzECXvMCN6cv.jpeg\" alt=\"\"><br></p><p><img src=\"/storage/photos/news/25.09.17/800x600/tTXcIYm1qwZ7FrACmjxiAQOqPqgEVvm7P98zA3sV.jpeg\" alt=\"\"><br></p><p><img src=\"/storage/photos/news/25.09.17/800x600/8rD91vNi8o9IXdFrOlRq0k8qxg8iuk0al0JYZhM8.jpeg\" alt=\"\"><br></p><p><img src=\"/storage/photos/news/25.09.17/800x600/DkExKuZADaj2nRG23BVgxvdAHnyyAHslKXauW2pE.jpeg\"><br></p></span>', '2017-09-25 10:11:30', '2017-09-25 10:51:42', 1),
(28, 'Авторська зустріч з Галиною Пагутяк', 'public/photos/news/25.09.17/800x600/ualOnkw4nxKqurlz27tptOyB9y4HmC8ATRHH51jI.jpeg', 'Презентація книги \"Гіркі Землі\"', 'avtorska-zustrich-z-galinoyu-pagutyak', '<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-family: &quot;Bookman Old Style&quot;, serif; font-size: 14pt;\">&nbsp; &nbsp;</span><span style=\"font-family: &quot;Bookman Old Style&quot;, serif; font-size: 14pt;\">12 жовтня 2016 року у читальній залі\r\nЦентральної бібліотеки ім.В.Чорновола відбулася літературна зустріч з Галиною Пагутяк\r\n- дрогобичанкою, письменницею, авторкою тридцяти книг, лауреатом Шевченківської\r\nпремії.</span><br></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Галина Пагутяк - яскрава письменниця\r\nнової літературної генерації, безсумнівний майстер сучасної української прози.\r\nЇй властиві фантастично-символічна манера письма, прорив до \"вигаданого\r\nсвіту\", потяг до містики та безнастанних пошуків спасіння людської душі у\r\nжорстокому світі.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Широкому загалу була презентована нова\r\nкнига Галини Пагутяк \"Гіркі Землі\", у якій розповідається про долю\r\nзаробітчан з міста Борислав. Колись у місті були заводи, фабрики, а зараз -\r\nруїни. У своїй книзі авторка хотіла передати страшний біль і приниження людей.</span></p><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/25.09.17/800x600/1arZFkcTKxFqW4WFAjhz9jOiTZBtCgkE6jk5dbvm.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/25.09.17/800x600/3CaSDyjcChbPcrd5KQnlutX7C8ozm2ci7UnRTmDd.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/25.09.17/800x600/GKAWqxr4Uil0KbHoGPrwBppZWlfPNaT3XpyTMG59.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/25.09.17/800x600/DfX75DCGztEDymyg8fhCbJgD2uq5nPS4t06gkn1E.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/25.09.17/800x600/5Z3pcO9toOetQhYp8ZXq7Dt7DowAZJqyONx44Zh3.jpeg\" alt=\"\"><br></span><p><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\"><br></span></p>', '2017-09-25 10:49:37', '2017-09-25 10:49:37', 1),
(29, 'Західно-Українська Народна Республіка', 'public/photos/news/25.09.17/800x600/YTNXozF6D0jC4CkWTtjd4fgJU92rWZ12eum0XLhd.jpeg', 'Урочистості з нагоди 98-ої річниці утворення ЗУНР', 'zahidno-ukrajinska-narodna-respublika', '<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\">31 жовтня 2016 року у\r\nчитальній залі Центральної бібліотеки ім. В.Чорновола пройшли урочистості з\r\nнагоди 98-ої річниці утворення Західно-Української Народної Республіки.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Історичну довідку виголосив Микола\r\nДмитрович Галів – кандидат педагогічних наук, доцент кафедри нової та новітньої\r\nісторії України Дрогобицького Державного Педагогічного Університету ім.\r\nІ.Франка.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Пісні «Україна», «Балада про мальви»,\r\n«Прошу неба не беріть їх собі», «Я не очу гратись у війну», «Я в Україні живу»\r\nвиконали учні загальноосвітніх шкіл №1, №5, №9 – Мар’яна Коцеміра, Юлія\r\nГубицька, Віталія Деренько та Олександр Шутов.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Історичну довідку «Дрогобичани, які\r\nвзяли активну участь у створенні ЗУНР» виголосили студентки III-го курсу\r\nісторичного факультету Дрогобицького Державного Педагогічного Університету ім.\r\nІ.Франка Аліна Звіринська та Лілія Гриник.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Вірш Василя Гусина «Перший листопад»\r\nчитала студентка II-го курсу історичного факультету Дрогобицького Державного\r\nПедагогічного Університету ім. І.Франка Тамара Дуда.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Презентацію книжкової виставки «ЗУНР –\r\nперший пагінець державності України XX-го століття» провела провідний\r\nбібліотекар міської центральної бібліотеки ім.В.Чорновола Галина Михайляк.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Пісню «Моя Україна»&nbsp; виконав дівочий ансамбль «Десята нота»\r\nзагальноосвітньої школи №1.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; На завершення звучить у записі гімн\r\n«Боже, Великий Єдиний».<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ведуча заходу – завідувач сектору з\r\nнаціонального відродження<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\">Народного дому імені\r\nІвана Франка Уляна Воят.<o:p></o:p></span></p><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/25.09.17/800x600/DRxZrDV9Tt97i03gqQDIVX5kGH8dgBmtelGQ9PXC.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/25.09.17/800x600/PHCTQ9XBYMUWvOipThY6sTmgBZxk8nBu6oAawarU.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/25.09.17/800x600/v40C4iwjoXfSnVVH7UdHNKB840L9aHsL99hvrciA.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/25.09.17/800x600/Xq68x1NY51VBycjIBbgvGldePZUUe9RtLghMEkke.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/25.09.17/800x600/jc2lrwHqVArg0gsSonBla95jPIroHczm4V7FGj5E.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/25.09.17/800x600/18dFTezNJe0oeay0xi2bbGICZvp5Yxb0IkxF4oii.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/25.09.17/800x600/SHcuAH9cdloL8Z1ZbVnJB640HTir8vTeAaOZYP7L.jpeg\" alt=\"\"><br></span><p><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\"><br></span></p>', '2017-09-25 11:04:34', '2017-09-25 11:04:34', 1),
(30, 'Авторська зустріч з Олександром Ірванцем', 'public/photos/news/25.09.17/800x600/asSxrUFtrwnj4P82dNLiwfr9F6cKCN0F9hD4lSOp.jpeg', 'Презентація двох збіркок - «Вибране за 33 роки» і «Санітарочка Рая».', 'avtorska-zustrich-z-oleksandrom-irvancem', '<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\">11 листопада в\r\nЦентральній міській бібліотеці ім. В.Чорновола відбулася творча зустріч з\r\nвидатним сучасним майстром українського слова поетом, прозаїком, драматургом,\r\nперекладачем Олександром Ірванцем, автором понад двох десятків книг та\r\nчисленних публікацій у часописах і альманахах Європи й Америки.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\">&nbsp;&nbsp;&nbsp;&nbsp; Олександр Ірванець представив дві збірки\r\nсвого вибраного – «Вибране за 33 роки» і «Санітарочка Рая».<o:p></o:p></span></p><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/25.09.17/800x600/ntIIc0ujgJAmQfoCc8pisMIT0aHXa7Nwv7bMMWyP.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/25.09.17/800x600/0BD4PmhMV3ThMSqd15bP9E0sSWLBDCsqcgxTlcme.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/25.09.17/800x600/BiIgDEkE8hOjv16TGHCNPX0acdGazCZe4Soi43TO.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/25.09.17/800x600/FiIM14jbMvAChLy7IdRGXAx8zo5qR1mxykTky8CR.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/25.09.17/800x600/QUuk9NA7jUJN94n5JH7AMQ7oaODMH0wK7snS0cdF.jpeg\" alt=\"\"><br></span><p><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\"><br></span></p>', '2017-09-25 11:19:18', '2017-09-25 11:19:18', 1),
(31, 'Екскурсія для учнів ЗОШ №4', 'public/photos/news/25.09.17/800x600/0XnkiBCTJr4YWlrQjdwtAflTM7O5GAdV8IY3HjY8.jpeg', 'У Центральній міській бібліотеці ім.В.Чорновола', 'ekskursiya-dlya-uchniv-zosh-4', '<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-family: &quot;Bookman Old Style&quot;, serif; font-size: 14pt;\">23 листопада 2016\r\nроку до Центральної міської бібліотеки ім. В.Чорновола завітали учні ЗОШ №4.\r\nЛариса Благодир, заступник директора МЦБС провела екскурсію по бібліотеці,\r\nпознайомила школярів з Кімнатою пам\'яті В\'ячеслава Чорновола.</span><br></p><p class=\"MsoNormal\" style=\"text-align:justify\"><img src=\"/storage/photos/news/25.09.17/800x600/DJagKZxtR7cHhmm0xqQaxs4garEuPJDSs1QEaImg.jpeg\" alt=\"\"><span style=\"font-family: &quot;Bookman Old Style&quot;, serif; font-size: 14pt;\"><br></span></p><p class=\"MsoNormal\" style=\"text-align:justify\"><img src=\"/storage/photos/news/25.09.17/800x600/2YvNCba5H2vYgc3oCrhmvw9cKDPEHLHwhoTxXyvX.jpeg\" alt=\"\"><br></p><p class=\"MsoNormal\" style=\"text-align:justify\"><img src=\"/storage/photos/news/25.09.17/800x600/7xAFi6JsCJHRKByR8M25uAoVk1dpjjnwbY9Vr2PI.jpeg\"><br></p>', '2017-09-25 11:33:33', '2017-09-25 11:33:33', 1),
(32, 'Авторська зустріч з Любов Проць', 'public/photos/news/26.09.17/800x600/J5ozbHJHDrjsYtg3odklEr4lr1RkSHejGmA6DXWl.jpeg', 'Презентація нової дитячої книжки  \"Ластів\'ятко\"', 'avtorska-zustrich-z-lyubov-proc', '<br>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\">23 ЛИСТОПАДА 2016\r\nРОКУ У ЧИТАЛЬНІЙ ЗАЛІ ЦЕНТРАЛЬНОЇ МІСЬКОЇ БІБЛІОТЕКИ ІМ.В.ЧОРНОВОЛА ВІДБУЛАСЯ\r\nПРЕЗЕНТАЦІЯ НОВОЇ ДИТЯЧОЇ КНИЖКИ \"ЛАСТІВ\'ЯТКО\" ЛЮБОВІ ПРОЦЬ, ПОЕТЕСИ,\r\nВЧИТЕЛЬКИ, ЛЮДИНИ З ВЕЛИКИМ ПОКЛИКОМ ДУШІ І СЕРЦЯ. <o:p></o:p></span></p>\r\n\r\n<span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\"><o:p>&nbsp;</o:p></span>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\">Любов Проць – одна з\r\nкращих майстринь сучасної української поезії, Член Національної спілки\r\nписьменників України, Лауреат&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\nпремій&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; імені&nbsp;&nbsp; Василя Симоненка, «Благовіст». Видала\r\nпоетичні збірки: «Дубляни» (1990), «Горобина ніч» (1995), «Сріберні ключі»\r\n(2001), «Дух&nbsp; євшану» (2002), «Група\r\nкрові» (2009).<o:p></o:p></span></p><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/26.09.17/800x600/6Lm9SKgD8IaB9RBopoWCrxBNUd7rgOwVQZr8wQoo.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/26.09.17/800x600/qy6NfNx9RXrGuoxKka6XKUYp6aCPdrEdBo0EtKmB.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/26.09.17/800x600/y2VLxACdpL0n6rIKSUvSZN77sY5MY0IaRxMnvjOu.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/26.09.17/800x600/YYSgFaSC4x3BRJcSCR4apQBSz330n9rdJPAvDdei.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/26.09.17/800x600/2FBbuGUM9MbyLfZoQxPK6K1eR5sIoitjk7zybjvb.jpeg\" alt=\"\"><br></span><p><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\"><br></span></p>', '2017-09-26 04:28:06', '2017-09-26 04:28:06', 1),
(33, 'Передноворічна літературна зустріч', 'public/photos/news/26.09.17/800x600/MqpK6QRhfveAGijXgb2h5CG7WTXUUEiLbljRl98y.jpeg', 'Юрій Андрухович, Софія Андрухович та Андрій Бондар.', 'perednovorichna-literaturna-zustrich', '<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\">24 грудня 2016 року в\r\nЦентральній міській бібліотеці ім.В.Чорновола відбулися передноворічні\r\nлітературні зустрічі з відомими українськими письменниками Юрієм Андруховичем,\r\nСофією Андрухович та Андрієм Бондарем.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\">&nbsp;&nbsp;&nbsp;&nbsp; Софія Андрухович презентувала роман\r\n\"Фелікс Австрія\", переможець конкурсу \"Книга року ВВС -\r\n2014\".&nbsp; Андрій Бондар - збірку малої\r\nпрози \"І тим, що в гробах\". Обидві книги видані \"Видавництвом\r\nСтарого Лева\".<o:p></o:p></span></p><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/26.09.17/800x600/yImTRJIESnyWOOeojOJSkLBknaFcq8zfbBef92Gf.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/26.09.17/800x600/RCG2ZsYTaCBa4aJJfw34fZlnTG6DPUlafgJPpU7x.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/26.09.17/800x600/xcbbkb8fNOGixRcjmar7sGAFFyiYh3IWF0Vhd17r.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/26.09.17/800x600/rQBYBq992od5I4ZQSwkpL5Z3m2fG1vt0udTgiEb9.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/26.09.17/800x600/6Ydoan9XmNquRJGNesmHSuDcbFyX08bb64KWzyK8.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/26.09.17/800x600/OCu4s3eICwVbzYeQlUg61PYz2is8PbFJn5o8QWWA.jpeg\" alt=\"\"><br></span><p><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\"><br></span></p>', '2017-09-26 05:29:07', '2017-09-26 05:29:07', 1),
(34, 'Авторська зустріч з Максимом Дупешко', 'public/photos/news/26.09.17/800x600/9b15JYXj3t7CrElRfJEYhs3r0CnP3GUHOJ8RTMu2.jpeg', 'Презентація книги \"Історія, варта цілого яблуневого саду\"', 'avtorska-zustrich-z-maksimom-dupeshko', '<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\">26 січня 2017 року у\r\nДрогобицькій Центральній міській бібліотеці ім.В.Чорновола відбулася\r\nлітературна зустріч з Максимом Дупешко, письменником із Чернівців, який\r\nпрезентував свій роман \"Історія, варта цілого яблуневого саду\"\r\nвиданого видавництвом \"Книги -XXI\".<o:p></o:p></span></p><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/26.09.17/800x600/8gvN1H8T5LNqiYnIhueE4PF6XcVPgtxMF3vHung9.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/26.09.17/800x600/ztXAXQbuLNUsScnW6YhU82LtoQmujDOPgEH9angZ.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Bookman Old Style&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/26.09.17/800x600/AgRybu902uerWqhUkVR9OLI7UJmwWTcEKf8hxUpQ.jpeg\"><br></span>', '2017-09-26 05:48:59', '2017-09-26 05:48:59', 1),
(38, 'До 160-річчя від дня народження Івана Франка', 'public/photos/news/15.11.17/800x600/6qugTmrnCVv9vtD7TH4KDpf6VM4wGc06GnVvSsXA.jpeg', 'Мультимедійна презентація', 'do-160-richchya-vid-dnya-narodzhennya-ivana-franka', NULL, '2017-11-15 06:54:42', '2017-11-15 06:54:42', 1),
(39, '\"Дні Австрії у Дрогобичі\"', 'public/photos/news/27.11.17/800x600/AltKWP3LixSoPWePN3iD2PkitNiAOISIjInBe2Cv.jpeg', 'книжкова виставка \"Австрія - перлина Європи\"', 'dni-avstriji-u-drogobichi', '<p class=\"MsoNormal\"><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;\">23-30 квітня у Дрогобичі вп\'яте відбувся Міжнародний\r\nФорум \"Дні Австрії у Дрогобичі\", який проходить&nbsp; один раз на два роки. <o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;\">У Центральній міській бібліотеці ім. В.Чорновола\r\nвідкрита книжкова виставка \"Австрія - перлина Європи\". На виставці\r\nпредставлені видання про Австрію наявні у фондах бібліотеки.<o:p></o:p></span></p>', '2017-11-27 07:47:10', '2017-11-27 07:47:10', 1),
(40, '\"Писанки Українських Карпат\"', 'public/photos/news/27.11.17/800x600/WHiSP0fdOqOINkUfcMbJtJZGFH3Rd8OyTc98znc8.jpeg', 'Мультимедійна презентація', 'pisanki-ukrajinskih-karpat', NULL, '2017-11-27 07:54:51', '2017-11-27 07:54:51', 1),
(41, 'Презентація книги', 'public/photos/news/27.11.17/800x600/qAxg2tqrC3lfRfFvBhipwDOELl46PenWxe23bDJU.jpeg', 'Тарас Метик \"Нескорима\"', 'prezentaciya-knigi-1', '<h3 class=\"post-title entry-title\" itemprop=\"name\" style=\"margin-top: 0px; margin-bottom: 0px; position: relative; font-stretch: normal; font-size: 20px; line-height: normal; font-family: &quot;Times New Roman&quot;, Times, FreeSerif, serif; color: rgb(0, 0, 0);\"><a href=\"http://bibliotekadrog.blogspot.com/2017/05/75.html\" style=\"color: rgb(0, 0, 0);\">З нагоди Свята Героїв у Центральні міській бібліотеці ім. В.Чорновола відбулася презентація книжки драматичних творів «Нескорима» Тараса Метика. Книга присвячується 75-літтю створення Української Повстанської Армії. Захід відбувся за участю Тараса Метика - член Національної спілки журналістів України, автора книги «Нескорима» та артистів Львівського академічного обласного музично-драматичного театру ім. Юрія Дрогобича.</a></h3><p><img src=\"/storage/photos/news/27.11.17/800x600/2oCNOFmyQkA1TqLp1Q8K1jb9YgEaNCihsJJQ8ktm.jpeg\" alt=\"\"></p><p><img src=\"/storage/photos/news/27.11.17/800x600/ausjyJ5FUmFvElb6GQSJL4rqqN5LjyqSi7nSCtln.jpeg\" alt=\"\"><br></p><p><img src=\"/storage/photos/news/27.11.17/800x600/k3cuBfA5rGpJOPrSkcV8vqXCsBU3KvMBNuJbYVof.jpeg\" alt=\"\"><br></p><p><img src=\"/storage/photos/news/27.11.17/800x600/qsr0DYSAAeVuwokMX5ycoTayamnQwx7yKPOjtiGI.jpeg\" alt=\"\"><br></p><p><img src=\"/storage/photos/news/27.11.17/800x600/HZCW5ggTO1GETGSp7yDwTsfA2UmWpabmBrRrlFzJ.jpeg\" alt=\"\"><br></p><p><img src=\"/storage/photos/news/27.11.17/800x600/3E8eKgy9InmjK9tBzbi1JLtshInF51xMDM4eMumV.jpeg\" alt=\"\"><br></p><p><img src=\"/storage/photos/news/27.11.17/800x600/kWqyJYG5k1Xd0ighexGFFN2DNE9UTMjstiTO62VU.jpeg\" alt=\"\"><br></p><p><img src=\"/storage/photos/news/27.11.17/800x600/L0t35lHluEPDaVhUFJL2ckwbUlUdDquJJBRSu3n6.jpeg\"><br></p><br><br><p class=\"post-header\" style=\"line-height: 1.6; margin-bottom: 1.5em; color: rgb(142, 142, 142); font-family: &quot;Times New Roman&quot;, Times, FreeSerif, serif; font-size: 18px;\"><p class=\"post-header-line-1\"><p class=\"post-header-line-1\"><p class=\"post-header-line-1\"><p class=\"post-header-line-1\"><p class=\"post-header-line-1\"><p class=\"post-header-line-1\"><p class=\"post-header-line-1\"><p class=\"post-header-line-1\"><p class=\"post-header-line-1\"><div class=\"post-header-line-1\"></div></p></p></p></p></p></p></p></p></p></p><p class=\"post-body entry-content\" id=\"post-body-7623064001067580229\" itemprop=\"description articleBody\" style=\"width: 578px; line-height: 1.4; font-size: 19.8px; position: relative; color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;, Times, FreeSerif, serif;\"><p dir=\"ltr\" trbidi=\"on\"><p dir=\"ltr\" trbidi=\"on\"><p dir=\"ltr\" trbidi=\"on\"><p dir=\"ltr\" trbidi=\"on\"><p dir=\"ltr\" trbidi=\"on\"><p dir=\"ltr\" trbidi=\"on\"><p dir=\"ltr\" trbidi=\"on\"><p dir=\"ltr\" trbidi=\"on\"><p dir=\"ltr\" trbidi=\"on\"><div dir=\"ltr\" trbidi=\"on\"></div></p></p></p></p></p></p></p></p></p></p>', '2017-11-27 08:07:22', '2017-11-27 08:07:22', 1),
(42, 'Година спілкування', 'public/photos/news/27.11.17/800x600/NbtHHLPAZkfDwLJRE6M17BJm7gxsYxQJk3VLPd0H.jpeg', '\"Книга в моєму житті\"', 'godina-spilkuvannya', '<p class=\"MsoNormal\"><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;\">&nbsp; &nbsp;Годину спілкування «Книга в моєму житті» було\r\nпроведено з студентами II курсу ДДПУ факультету початкової та мистецької освіти\r\n(керівник доцент ДДПУ Скалич Любов Йосипівна) в читальній залі Дрогобицької\r\nЦентральної міської бібліотеки ім. В. Чорновола.<o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;\">&nbsp; Модератор\r\nзустрічі Галина Михайляк – зав. відділом обслуговування Центральної міської\r\nбібліотеки ім. В. Чорновола висловила свою позиції про роль книги щодо вибору\r\nпрофесії. Цікаво і грамотно, в словесній формі, провела екскурсію по\r\nбібліотеці. Студенти приймали активну участь у спілкуванні. На завершення\r\nзустрічі Наталя Чайківська, провідний бібліотекар ознайомила присутніх з\r\nкнижково-ілюстративною виставкою «Нові книги», які надійшли у фонд бібліотеки\r\nпротягом лютого- березня 2017 року.<o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;\">&nbsp; Також\r\nстуденти відвідали сектор обслуговування дошкільників та учнів 1-4 класів\r\nміської бібліотеки для дітей. Ганна Биків, провідний бібліотекар міської\r\nбібліотеки для дітей з великим задоволенням провела інформаційну годину «Роль\r\nкниги в спілкуванні дитини і батьків», під час якої навела важливі аргументи\r\nпро значущість, цінність книги в спілкуванні між дітьми і батьками.<o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n«Якщо ви хочете, щоб ваші діти були розумні, читайте їм казок.<o:p></o:p></span></p><p class=\"MsoNormal\"><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\nЯкщо ви хочете, щоб були ще розумніші, читайте ще більше казок».&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></span></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p class=\"MsoNormal\"><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\nА. Енштейн<o:p></o:p></span></p><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;\"><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;\"><br></span><img src=\"/storage/photos/news/27.11.17/800x600/ceSoSMiTRukMQ8R9ujeLge2ETisBrlef7hCkF4Cl.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/27.11.17/800x600/obf8puthZ5dBageimwV7ttJz4tkINBEifiL3th4O.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/27.11.17/800x600/b7fhfjmsjPbpHk92gDc4WUrXZRCm92poR5cdg23R.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/27.11.17/800x600/dSCtxPvS2AeRRbdyNHOquK3agI3qDUhjAkfWiyHA.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/27.11.17/800x600/eauCimuA0VCEnCr8bbogARghd0DerVGIwDj7wHcM.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/27.11.17/800x600/iyl3iz7O9YdByDcUpGHFlVlpqgri6vzI7YONFZ74.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/27.11.17/800x600/oBGI9VnaGLTIRbq54jXKmmmTee2Z3OCsWJwrbsZG.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/27.11.17/800x600/sJhIY20kEFUU8gqx9c5lyw4qd2unZwf4GAJtQRxB.jpeg\"><br></span>', '2017-11-27 08:18:06', '2017-11-27 08:18:06', 1),
(43, 'Презентація книги', 'public/photos/news/27.11.17/800x600/h0ND2jP6B4xiGsJ7zLLUQ8ANYG6zlC3wcCIiEpSM.jpeg', '\"Пам\'ятники, пам\'ятні таблиці та знаки Дрогобича\"', 'prezentaciya-knigi-2', '<h3 class=\"post-title entry-title\" itemprop=\"name\" style=\"margin-top: 0px; margin-bottom: 0px; position: relative; font-stretch: normal; font-size: 20px; line-height: normal; font-family: &quot;Times New Roman&quot;, Times, FreeSerif, serif; color: rgb(0, 0, 0);\"><a href=\"http://bibliotekadrog.blogspot.com/2017/06/14-2017.html\" style=\"color: rgb(0, 0, 0);\">14 червня 2017 року у читальній залі Дрогобицької Центральної міської бібліотеки ім. В.Чорновола відбулась презентація книги-довідника \"Пам\'ятники, пам\'ятні таблиці та знаки Дрогобича\" упорядниками якої є Григорій Сивохіп та Юрій Кульчицький.</a></h3><p><img src=\"/storage/photos/news/27.11.17/800x600/uoz9VKJjX1e5Fb09VLjM2UZNAuqQ2eaq9REMb7H4.jpeg\" alt=\"\"><br></p><p><img src=\"/storage/photos/news/27.11.17/800x600/4HF0Q2dlJLb2NOE1fg9r0RiejSr27BsjDwSv6ff4.jpeg\" alt=\"\"><br></p><p><img src=\"/storage/photos/news/27.11.17/800x600/BIC8EUeB2d23hy1TRH9Abzq94wZhpxD1NK1XSpWp.jpeg\" alt=\"\"><br></p><p><img src=\"/storage/photos/news/27.11.17/800x600/Edl9ePLufz2tFFOrG0k6xw7MQUnG6bIk3WSr3Uhh.jpeg\" alt=\"\"><br></p><p><img src=\"/storage/photos/news/27.11.17/800x600/5PeRGZuCoLAX4FiqkE3EXaaNUHiBSoPGtKD2HtNh.jpeg\"><br></p>', '2017-11-27 08:24:16', '2017-11-27 08:24:16', 1),
(44, 'Творча зустріч', 'public/photos/news/27.11.17/800x600/c8qGPszkvy5QBjJ8NewGK3gOG4iGiIiNjwEv1yq9.jpeg', 'з Адасом Якубаускасом', 'tvorcha-zustrich', '<h3 class=\"post-title entry-title\" itemprop=\"name\" style=\"margin-top: 0px; margin-bottom: 0px; position: relative; font-stretch: normal; font-size: 20px; line-height: normal; font-family: &quot;Times New Roman&quot;, Times, FreeSerif, serif;\"><a href=\"http://bibliotekadrog.blogspot.com/2017/09/13-east-european-cooperation-rytu.html\" style=\"color: rgb(0, 0, 0);\">13 вересня у читальній залі Дрогобицької Центральної міської бібліотеки ім. В. Чорновола відбулась творча зустріч із поетом, публіцистом, політологом, головою Спілки татар Литви Адасом Якубаускасом. У своїх книгах Адас Якубаускас розповідає про нелегке життя та поневіряння кримськотатарського народу. В ході зустрічі в теплій атмосфері був налагоджений міжкультурний діалог між громадою кримських татар Дрогобича та спільнотою литовських татар. Організатори події - ГО «East European Cooperation - Rytų Europos bendradarbiavimas» (Литва), ГО «Арекет» (Дрогобич-Україна).</a></h3><p><img src=\"/storage/photos/news/27.11.17/800x600/6u7SzZKO9FSVWQIN8JsEQAvdMHOiKEJW28za7bXH.jpeg\" alt=\"\"><br></p><p><img src=\"/storage/photos/news/27.11.17/800x600/KabLtJer62Lc0rXCysaaOKFk2xmhyzDmgVqZShGH.jpeg\" alt=\"\"><br></p><p><img src=\"/storage/photos/news/27.11.17/800x600/d35who8duWsKSXBJVM4fOIHATlzGn1vXVFi6jBPe.jpeg\" alt=\"\"><br></p><p><img src=\"/storage/photos/news/27.11.17/800x600/hgzMYKiLW8TIGbVQMHn2JsW6caRVP4sZDtsO5G2J.jpeg\" alt=\"\"><br></p><p><img src=\"/storage/photos/news/27.11.17/800x600/EiRYub71QfchY85AxXpVCQMn5wJpFslp2GePtSBV.jpeg\" alt=\"\"><br></p><p><img src=\"/storage/photos/news/27.11.17/800x600/RsN8HZ3rjrWq19Y6L2iByhpYTPceMeE1nAgsEEOr.jpeg\" alt=\"\"><br></p><p><img src=\"/storage/photos/news/27.11.17/800x600/yi8BfIpfRr7DBb7dX2xb57dM6JOGZlIWgRbv4wSO.jpeg\"><br></p>', '2017-11-27 11:08:03', '2017-11-27 11:08:03', 1),
(45, '«Україна – США: грані співробітництва»', 'public/photos/news/27.11.17/800x600/bUp6wkWeb435zQV5F3k3ITxSruVuwE3oSTKpGF8Q.jpeg', 'Книжкова експозиція', 'ukrajina-ssha-grani-spivrobitnictva', '<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">До 25-річчя\r\nвстановлення дипломатичних відносин між Україною і Сполученими &nbsp;Штатами &nbsp;Америки &nbsp;в &nbsp;Дрогобицькій\r\n&nbsp;Центральній &nbsp;бібліотеці &nbsp;ім. &nbsp;В.\r\nЧорновола організовано книжкову експозицію «Україна – США: грані\r\nспівробітництва».<o:p></o:p></span></p>', '2017-11-27 11:12:59', '2017-11-27 11:12:59', 1),
(46, 'Презентація книг', 'public/photos/news/27.11.17/800x600/4QeKDx0lU6GwyWu3KEDxWV6ooQqPwQ5kdE2G4max.jpeg', 'Літературно-мистецький проект «Есе про все»', 'prezentaciya-knig', '<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">&nbsp; &nbsp;14 вересня у читальному залі Дрогобицької\r\nЦентральної міської бібліотеки ім.В.Чорновола відбулась презентація\r\nлітературно-мистецького проекту «Есе про все». Автор проекту Олександр Гейдек.\r\nСвої книги презентували: Єва Райська(Дрогобич) – «Півтора неба», Андрій\r\nЮркевич(Дрогобич) – «Трансклімат», Наталка Янушевич(Дрогобич) – «Фотограф\r\nснів», Уляна Кацал (Львів) – «Кава і бруківка» та Роман Онишкевич (Львів) –\r\n«Історії до пива».<o:p></o:p></span></p><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/27.11.17/800x600/qAcLkLKyNe4UrPKxaQVwcYR1ngKQkyA3KoNGZXWy.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/27.11.17/800x600/sLVtYyXwxPYbpyU9pXeFeuwumDgwC1cEV3zJ5HHV.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/27.11.17/800x600/9Cw3W1juI9MvqwjSgdeMUQhsdk0RzCKuKkiylSgi.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/27.11.17/800x600/s7Ea0zVEWu6UIHTmK5fyRXTM3GZFabdoSsVUeF92.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/27.11.17/800x600/CAoZuNbG9NVTA9kc2vlRDUnixeJEuxTX8Y6FNLvs.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/27.11.17/800x600/SU3egYvVaxtlMQUhWo2fdEY3YBfiUI61fosbxb4f.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/27.11.17/800x600/ze2UCvvvJpRl3GZC5JijJPR33kPlY6YbeZjiYqjR.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/27.11.17/800x600/lG74GuDzKUVusmM5BS5Kkde6kw8hAjOzA739vHA9.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/27.11.17/800x600/MOME2XSuoIkGuj8DQxHjJtsYWeNv45dgJUhxz8vm.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/27.11.17/800x600/ydMjKGHBPLyST4hS2lQSF8z5uZjGAtxjaar1UM6S.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/27.11.17/800x600/iInF5wQdFlpfV4r8dyMdmEkrs9Xdlk3C2eQsBree.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/27.11.17/800x600/VpenUr4HXs9r47v472K120SmaKGmqa9POsGq9AdJ.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/27.11.17/800x600/EIcIxRvrMVgJwkWnzjvrq09HUEAEQa4l8NWcFca1.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/27.11.17/800x600/BtQYY86o9ftSqZNBrm4AdHfPXOL7jEk0bIBtDdiW.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/27.11.17/800x600/HHb8tHOrV8IoPo5HvPAi58xPflVbNA8P2QQEu1gm.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/27.11.17/800x600/tXiWxaIaFMrX5uwNpFFAK2d8sbeoN4Ro17f3NX5m.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/27.11.17/800x600/DQp40uw28sy8SkHT6jUq16hPTTCOeYoFSVjRWsAd.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/27.11.17/800x600/B24QgZKaWBk6DOsjOLH3SwxseNmi5JY6FxDyHDHH.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/27.11.17/800x600/XjUs9QwctBf7lrvXflkWztbnrR6C1JcmZ2Ay78Gy.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/27.11.17/800x600/QRxcsn5FV5iHnKsaiKYkrAHKPN12mJIvgQ8YYhVF.jpeg\"><br></span>', '2017-11-27 11:35:25', '2017-11-27 11:35:25', 1);
INSERT INTO `articles` (`id`, `header`, `main_image`, `preview`, `slug`, `main_text`, `created_at`, `updated_at`, `category_id`) VALUES
(47, 'Презентація книги', 'public/photos/news/27.11.17/800x600/njRR01YuzZMUAjcAjW6sUMKrrcrMCToc0iiMQsR8.jpeg', 'Анізії Онищак \"Ярина\"', 'prezentaciya-knigi-3', '<p class=\"MsoNormal\"><o:p>&nbsp; &nbsp;</o:p><span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 14pt;\">З нагоди 25-річчя Союзу Українок Дрогобиччини 20\r\nвересня у читальному залі Дрогобицької Центральної міської бібліотеки ім.\r\nВ.Чорновола відбулась презентація книги Анізії Онищак «Ярина» (друге видання,\r\nдоповнене). На сторінках книги зібрані нариси відомої дрогобицької журналістка\r\nАнізії Онищак про Нагуєвичі – село, де народився Іван Франко. Основою збірки є\r\nнарис «Ярина» про сакральну і меморіальну пам’ятку Нагуєвич – криничку із\r\nцілющою водою в лісовому урочищі «Ярина», де, за переказами нагуєвичан,\r\nз’явилася Матір Божа… Окрасою вечора стала виставка світлин улюблених квітів\r\nАнізії Онищак.</span></p><p class=\"MsoNormal\"><img src=\"/storage/photos/news/27.11.17/800x600/bsmcCo43yWWNEQIxWPp1dtPw2cZGDw6F28kHSLL3.jpeg\" alt=\"\"><span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 14pt;\"><br></span></p><p class=\"MsoNormal\"><img src=\"/storage/photos/news/27.11.17/800x600/GrvLVZDSZc4zVhHKfexO1273vfn5fHGDxWv7LYHX.jpeg\" alt=\"\"><br></p><p class=\"MsoNormal\"><img src=\"/storage/photos/news/27.11.17/800x600/GDt4L0ZpDe2DsBCPyZ1C40JVylBGXZi7s7j9RuBC.jpeg\" alt=\"\"><br></p><p class=\"MsoNormal\"><img src=\"/storage/photos/news/27.11.17/800x600/Or1FqeEF6kihFWOTIFsM7TZXhU7B3CVWxQUiNYKB.jpeg\" alt=\"\"><br></p><p class=\"MsoNormal\"><img src=\"/storage/photos/news/27.11.17/800x600/2598lpje6G0Q6huVsKclWF2yWes0ioM2xUKfKNkU.jpeg\" alt=\"\"><br></p><p class=\"MsoNormal\"><img src=\"/storage/photos/news/27.11.17/800x600/31J5RYyZ8FRKS2iAH7bLdGfgpxZWThX8wRQKgRmT.jpeg\" alt=\"\"><br></p><p class=\"MsoNormal\"><img src=\"/storage/photos/news/27.11.17/800x600/8FrtHoNBvQ8mbNKaTHrnklNxJIPOrCiwlqpoL6He.jpeg\" alt=\"\"><br></p><p class=\"MsoNormal\"><img src=\"/storage/photos/news/27.11.17/800x600/0qRYQoBgu3UlVTTnrXiXTI94ccPk47HfWaPyEG84.jpeg\" alt=\"\"><br></p><p class=\"MsoNormal\"><img src=\"/storage/photos/news/27.11.17/800x600/SKv5kpeceLhMK5nZq0XPOkXVS7G0hVr6bxi7NHoy.jpeg\" alt=\"\"><br></p><p class=\"MsoNormal\"><img src=\"/storage/photos/news/27.11.17/800x600/jF7tYNjz9CKEWLxcPcCPEIizC0d2hLYwqKs7e8cf.jpeg\" alt=\"\"><br></p><p class=\"MsoNormal\"><img src=\"/storage/photos/news/27.11.17/800x600/HYjy835CAOhK0k71x2fjyBRSylo43Bt0aclMKweY.jpeg\" alt=\"\"><br></p><p class=\"MsoNormal\"><img src=\"/storage/photos/news/27.11.17/800x600/uXh2IBsj1LxYgwWHbqNk5gp0lIc3rxCKh4QxLKpa.jpeg\" alt=\"\"><br></p><p class=\"MsoNormal\"><img src=\"/storage/photos/news/27.11.17/800x600/YqUlnt6n3Zmcswl03znZ9LprdM94PoNDxrCnjEYY.jpeg\" alt=\"\"><br></p><p class=\"MsoNormal\"><img src=\"/storage/photos/news/27.11.17/800x600/bTvCa4OFnqeqEjyEus5GXso5qFbazUoBXutteBHX.jpeg\" alt=\"\"><br></p><p class=\"MsoNormal\"><img src=\"/storage/photos/news/27.11.17/800x600/aC5TSSRwyO9SAihjvFXUdRfuuBjx1zH4PymPrQwb.jpeg\" alt=\"\"><br></p><p class=\"MsoNormal\"><img src=\"/storage/photos/news/27.11.17/800x600/aErs5ftOfwNgZiExio2BRCg0B3mKCRsMHq64yFN4.jpeg\" alt=\"\"><br></p><p class=\"MsoNormal\"><img src=\"/storage/photos/news/27.11.17/800x600/GqSQTQ9oR3xtCWZYjz1gPIHaPr29hGGHGpG0DWqH.jpeg\" alt=\"\"><br></p><p class=\"MsoNormal\"><img src=\"/storage/photos/news/27.11.17/800x600/3oCh8jZMtjrkvS0rZaZSDqeCqyEPFTXo0UkdOIw2.jpeg\" alt=\"\"><br></p><p class=\"MsoNormal\"><img src=\"/storage/photos/news/27.11.17/800x600/Fl845UGB6OtiXjz8B6NdwYt0HaVb8ioiDj7zBP2z.jpeg\" alt=\"\"><br></p><p class=\"MsoNormal\"><img src=\"/storage/photos/news/27.11.17/800x600/rJqNGPlicUGgkMNImgVCc82gmEcqvw9ISyJCMrlK.jpeg\" alt=\"\"><br></p><p class=\"MsoNormal\"><img src=\"/storage/photos/news/27.11.17/800x600/ol1B869L5yI0mxfBIvaZic1iqrnwClF1LeuenmE5.jpeg\"><br></p><span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 14pt;\"><br></span><span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 14pt;\"><br></span><span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 14pt;\"><br></span>', '2017-11-27 12:41:23', '2017-11-27 12:41:23', 1),
(48, 'За честь , за долю, за українську волю: сучасні Герої України', 'public/photos/news/28.11.17/800x600/reBHjj8JS6JhFLm61PPvdHk7kL2Tt8DI3PXAMzvM.jpeg', 'мультимедійна презентація видань до Дня Захисника України', 'za-chest-za-dolyu-za-ukrajinsku-volyu-suchasni-geroji-ukrajini', NULL, '2017-11-28 07:11:18', '2017-11-28 07:11:18', 1),
(49, 'Авторський вечір Антоніни Листопад', 'public/photos/news/28.11.17/800x600/IEMlutQevxmEhzppsiOBRvnRcQmHfG7h79P9KtVI.jpeg', '«…Не торкай мою землю бо священна вона!..»', 'avtorskiy-vechir-antonini-listopad', '<p class=\"MsoNormal\"><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;\">У Дрогобицькій Центральній міській бібліотеці 8\r\nжовтня 2017 року відбувся авторський вечір української поетеси Антоніни\r\nЛистопад «…Не торкай мою землю бо священна вона!..».<o:p></o:p></span></p><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/RyfMeG0fwRSXiQP72Of7NVXDNp9DDsyLMofaeBS1.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/3UhMX3Nwx75W0sUPQnIAetezyYdZq8sWVFsai7jm.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/0PuH8pTSo1AwAolBeyBN7p5LOK8CV9a6G3kqAqGh.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/kp5HvL2iOvMvfFWjzFfm1CL1H31FKAUivpgDwS60.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/s04nVxcylIl3BOTZq96EeoE3ES4EmfLCQoViXfOG.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/w54NhiMX3cIUyHNLUbteiMViX0SgTN3XMJ6jo9c3.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/2AojNrFv6XVLlQ5PeKtbliyTui7atIYJa7rizjl2.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/eOV6zFPpBwOOLb8TFFBrczr0KQiM2rpBotE21e0t.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/3BZQWtLA4a2HFtgUgL64oTwQ9XsSETR7xBtg0hpX.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/B6GzX1jTw63ECIylcCBpUmno4sgY4KgerPeUxDkv.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/kKQ2XkncUApxH6iQMbadx5ha5dhWoRqiETwXOeaD.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/LyGtIzpxTSjAA2kpMzYjmfAGUavoimZZ5b0rwgjq.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/Lf2KMs16qLdWwbZTQivxP5nHAkKEkwtD9WNx7yQ9.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/fXx653YIXsY3v47GNpKbFV8AHLbel2lNpkhdT52P.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/dfpZzm5z6fmLoDRht5oWlt5WsWLODF0jhg6nXlt9.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/1qx2zOoBhKqunpCXn6RaQN4E9r1dad6usy8MfHN1.jpeg\"><br></span>', '2017-11-28 07:33:16', '2017-11-28 07:33:16', 1),
(50, 'Книжкова виставка', 'public/photos/news/28.11.17/800x600/YmadGf6kqE6OVqFPAZ5cAl2vSfi5S8y5oCNCRhMB.jpeg', '«Тріумф і трагедія ЗУНР»', 'knizhkova-vistavka', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;, serif; font-size: 18.6667px;\">Західно-Українська Народна Республіка (ЗУНР)- держава, створена в листопаді 1918 року на частині українських земель, що входили до Австро-Угорської імперії. Після розпаду в жовтні 1918 року Австро-Угорської імперії на кілька незалежних держав, патріотичні сили Західної України вдалися до ряду заходів зі створення власної держави. Зокрема, в період із вересня 1918 року у Львові було створено: Український Генеральний Військовий Комісаріат, голова - сотник Легіону Українських Січових Стрільців Дмитро Вітовський, Українську Народну Раду - політичний представницький орган українського народу в Австро-Угорській імперії. 19 жовтня 1918 року було проголошено Українську державу на всій українській етнічній території Галичини, Буковини і Закарпаття. Президентом Української Народної Ради було обрано Євгена Петрушевича. УНРада, мотивуючи свої наміри правом українського народу на власну державу, звернулася до австрійського уряду з питання про передачу їй усієї повноти влади в Галичині та Буковині, на що отримала категоричну відмову. Тоді було вирішено взяти владу у Львові збройним шляхом. У ніч із 31 жовтня на 1 листопада 1918 року стрілецькі частини, які очолював сотник Дмитро Вітовський, зайняли всі найважливіші урядові установи в місті. Таким чином, було створено Західно-Українську Народну Республіку, до складу якої увійшли українські етнічні землі - Галичина, Буковина та Закарпаття. У той час Польща, не бажаючи втратити Галичину розпочала військові дії, внаслідок яких уряд ЗУНР переїжджав до Тернополя, Станіславова (тепер Івано-Франківськ), а також перебував у екзилі в Кам\'янці-Подільському. Важливим здобутком діяльності ЗУНР було урочисте проголошення 22 січня 1919 року в Києві Акту про Злуку ЗУНР і УНР (Наддніпрянська Україна) в єдину соборну Українську Народну Республіку. Екзильний уряд ЗУНР припинив існування 15 березня 1923 року.</span></p>', '2017-11-28 07:37:00', '2017-11-28 07:37:00', 1),
(51, 'Година спілкування', 'public/photos/news/28.11.17/800x600/ZwpB15RJafptm4lZJFcJZHP2iAE6v0UnWx9XQ570.jpeg', '\"Книга у моєму житті\"', 'godina-spilkuvannya-1', '<p class=\"MsoNormal\"><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;\">25 жовтня у Центральній міській бібліотеці ім. В.Чорновола\r\nвідбулася година спілкування \"Книга у моєму житті\" із студентами\r\nфакультету початкової та мистецької освіти ДДПУ ім. І.Франка. Організатор\r\nзустрічі - Скалич Любов Йосипівна, доцент ДДПУ ім. І.Франка. Захід вела Галина\r\nМихайляк, провідний бібліотекар Центральної міської бібліотеки ім. В.Чорновола.<o:p></o:p></span></p><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/ph8RkUYe3Q6jHQv86oloGTOByVxvR8SFdTNTcsOu.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/6OYByTMJEKFOqKsL3sSrpPqxM6FzMmr4KnC92oSE.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/v4AQqZSZyyPYalDsJg2sXjw9QZEy28QYzlOFPyg4.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/VvrSgoVu2x0ZkovuNioXs4CVcmytfXuACIqSKtS6.jpeg\" alt=\"\"><br></span><p><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;\"><br></span></p>', '2017-11-28 07:45:52', '2017-11-28 07:45:52', 1),
(52, 'Творча зустріч', 'public/photos/news/28.11.17/800x600/o5hpMEVNb5sl7Fz5lbGOOhvMgt3Kp6mJv20dxhZF.jpeg', 'з Еліною Свенцицькою', 'tvorcha-zustrich-1', '<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">27 жовтня 2017 року в\r\nчитальній залі Дрогобицької Центральної міської бібліотеки ім. В. Чорновола\r\nвідбулась творча зустріч з Еліною Свенцицькою – поеткою, письменницею,\r\nлітературознавицею, доктором філологічних наук.<o:p></o:p></span></p><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/13j2DvZaZXIzgy7AO88lGzcSO8XRjnXEa4KwPSxm.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/LsB4Jvqrl1mIn9QgbQmMckId4e8NocrlnscntVYp.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/cN6UG6BUvZKvpG0kAM42anFVWxqtPDsZ1yI9ko24.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/aomT4v4Pqw43iZmj1eLDvcf7VXfIxkt17tRpAHbU.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/LB9U4XLqEQOAhn3hfqRYrAPSMevwdQ61enZkKLf3.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/GC4sphDxzHcGxxhUg9LqOPxYdSr2H7VYj4ntSmsJ.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/5FqOFwUEmqSqttUGWPzHWjxtohivRbFrE91VhugP.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/Jbtb1A8hzVg5ktG5QlCTAii39lML5BC9GIvtJa5x.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/gWtiirvdZXe1QZTrJILgNiChgj93QfqJk5fe4XpA.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/ZFoXmaVKpthNrqSgr28kEy0PhSOfgbq2ts2WsGkj.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/tU4f5MRzkwXAB4QaA4FpgdFaNbwcZzPpTguvaSiO.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/tmc3Hx3fqxHI8NueIwqbXIPvco2WMUoLbur0D8YF.jpeg\"><br></span>', '2017-11-28 07:58:10', '2017-11-28 07:58:10', 1),
(53, 'Годину спілкування «Єднаймося навколо книги»', 'public/photos/news/28.11.17/800x600/WGXzqTeDksR2cCBOfnoqOeRBMeIBirIjGQkJh16J.jpeg', 'із циклу «Книга в моєму житті»', 'godinu-spilkuvannya-yednaymosya-navkolo-knigi', '<p class=\"MsoNormal\" style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;, Times, FreeSerif, serif; font-size: 19.8px; margin-bottom: 0cm; text-align: justify;\"><span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 14pt; line-height: 19.9733px;\"><span lang=\"RU\">&nbsp; &nbsp; &nbsp; &nbsp;8 листопада &nbsp;в &nbsp;</span></span><span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 14pt; line-height: 19.9733px;\">читальній залі</span><span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 14pt; line-height: 19.9733px;\">&nbsp;&nbsp;</span><span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 14pt; line-height: 19.9733px;\">Дрогобицької</span><span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 14pt; line-height: 19.9733px;\">&nbsp;</span><span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 14pt; line-height: 19.9733px;\">Центральної</span><span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 14pt; line-height: 19.9733px;\">&nbsp;</span><span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 14pt; line-height: 19.9733px;\">міської</span><span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 14pt; line-height: 19.9733px;\">&nbsp;</span><span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 14pt; line-height: 19.9733px;\">бібліотеки&nbsp;</span><span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 14pt;\">ім. В. Чорновола було проведено годину спілкування «Єднаймося навколо книги» із циклу «Книга в моєму житті» спільно з студентами ДДПУ факультету початкової та мистецької освіти (керівник доцент ДДПУ Скалич Любов Йосипівна).</span></p><p class=\"MsoNormal\" style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;, Times, FreeSerif, serif; font-size: 19.8px; margin-bottom: 0cm; text-align: justify;\"><span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 14pt; line-height: 19.9733px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Модератор зустрічі Галина Михайляк – зав. відділом обслуговування Центральної міської бібліотеки ім. В. Чорновола провела екскурсію по бібліотеці, зробила огляд фотоальбомів, що висвітлюють культурну спадщину України та ознайомила з репродукціями картин відомих художників України. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;, Times, FreeSerif, serif; font-size: 19.8px; margin-bottom: 0cm; text-align: justify;\"><span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 14pt; line-height: 19.9733px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Напередодні святкування 80-ї річниці від дня народження В’ячеслава Чорновола &nbsp;провідний бібліограф Тетяна Ворончак зробила огляд бібліографічного покажчика «В’ячеслав Чорновіл - політичний діяч, Герой України» та ознайомила з буклетом «Найвідоміші пам’ятники, пам’ятні таблиці В’ячеславу Чорноволу».</span></p><span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 14pt; line-height: 19.9733px;\"><img src=\"/storage/photos/news/28.11.17/800x600/W9POufHYjUMCvGYUp5nxPLwQoCq4OGpMOKCWNH3i.jpeg\" alt=\"\"><br></span><span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 14pt; line-height: 19.9733px;\"><img src=\"/storage/photos/news/28.11.17/800x600/6uLAoR1oWRAvLG1QCNAHiD4waKdwFQoRDgsZ8vof.jpeg\" alt=\"\"><br></span><span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 14pt; line-height: 19.9733px;\"><img src=\"/storage/photos/news/28.11.17/800x600/WrTaiFH2mnGQUlTfuHFfJItaejM7t06J0BrNYBcE.jpeg\" alt=\"\"><br></span><span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 14pt; line-height: 19.9733px;\"><img src=\"/storage/photos/news/28.11.17/800x600/W6TQedpUPG9RQcMpudr0T1WgYWHQyNRM1hgOSQS3.jpeg\" alt=\"\"><br></span><span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 14pt; line-height: 19.9733px;\"><img src=\"/storage/photos/news/28.11.17/800x600/wNJbDs2HT3VnFnwVieTeYZx0QmItsIqr821ik2kZ.jpeg\" alt=\"\"><br></span><span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 14pt; line-height: 19.9733px;\"><img src=\"/storage/photos/news/28.11.17/800x600/nPJOVV5pyKsyxtMfUO8UxkqYUHzwN7jfRtU6gMj3.jpeg\" alt=\"\"><br></span><span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 14pt; line-height: 19.9733px;\"><img src=\"/storage/photos/news/28.11.17/800x600/84Mavlntr9uxNrnEUAIOcztxc6ZJV4ofRfZVKhPG.jpeg\" alt=\"\"><br></span><span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 14pt; line-height: 19.9733px;\"><img src=\"/storage/photos/news/28.11.17/800x600/73xkiETADTVj5mrmduP379kzzvsRjTDIX5wVng8e.jpeg\" alt=\"\"><br></span><span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 14pt; line-height: 19.9733px;\"><img src=\"/storage/photos/news/28.11.17/800x600/G8s5aTQubhSN41apNchC868xVTG4zzfqKaaXMX5R.jpeg\" alt=\"\"><br></span><span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 14pt; line-height: 19.9733px;\"><img src=\"/storage/photos/news/28.11.17/800x600/9yq8h4H819npf838BQwQhP2Hr1LrUEIOkYuqPVcD.jpeg\" alt=\"\"><br></span><span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 14pt; line-height: 19.9733px;\"><img src=\"/storage/photos/news/28.11.17/800x600/wFw8K4vPQTjC4nPxzRsabHwxoah48oPZDmpoZn4h.jpeg\"><br></span>', '2017-11-28 08:21:09', '2017-11-28 08:21:09', 1),
(54, 'Літературно-мистецький проект «Друга осінь - 2017»', 'public/photos/news/28.11.17/800x600/nv11Dwqu78TjSP4TvVHwefXHbjWdEuCBLaDsbfOt.jpeg', 'Презентація книжки «Друга Осінь. Листопадові читання у Дрогобичі»', 'literaturno-misteckiy-proekt-druga-osin-2017', '<h3 class=\"post-title entry-title\" itemprop=\"name\" style=\"margin-top: 0px; margin-bottom: 0px; position: relative; font-stretch: normal; font-size: 20px; line-height: normal; font-family: &quot;Times New Roman&quot;, Times, FreeSerif, serif; color: rgb(0, 0, 0);\"><p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">В рамках\r\nлітературно-мистецького проекту «Друга осінь - 2017» 19 листопада у\r\nДрогобицькій центральній міській бібліотеці ім. В.Чорновола відбулась презентація\r\nкнижки «Друга Осінь. Листопадові читання у Дрогобичі» за участі Наталії\r\nФілевич, Павла Прухняка, Юрка Прохаська, Лесі Хомич, Єжи Ковалевського. Лекцію\r\n«О, ці просвітлені малюнки, що виростали наче з-під чужої руки! О прозоросте\r\nкольорів і тіней! … фігури, пейзажі, обличчя!» провів Іван Дудич (Львівська\r\nнаціональна галерея мистецтва ім. Бориса Возницького).<o:p></o:p></span></p><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/9oruxt0GP0rtTytV5vx3pRSdNkwqcUL2dDcgbhj3.jpeg\" alt=\"\"><br></span></h3><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/91IU4WKo7Un6qh59s0yLAYyq41NrKLMpPxEC7Htn.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/jaapB8jDRi6HEXTl9yVzYLArUUeuIwUh7I4ReGVn.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/EoNGUmQ6tlpr5OgnzhhtPVBReOouq2JdH93KrRvT.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/MBZLybZdKo0rayRmxbPO8RWCXQ54xQK1nC0JQult.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/vrDQMRMYIN6vhUcg1gT1XKCPTjgxtosjFcANcV8K.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/hCKIGvuRpaLkbCkfxjpfyALgRWkkMlYsMl9gp5mN.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/B4NqRIL8aX02am9sUZJhi1IrfYvrmxRth5AX9eOV.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/6kWNJQFwS9BRkH7lpddFIjvWEENHJGeHragqqKME.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/3h4J6edRhN95IhfcuG4NKJj2m43Nsgg0wbY3UfEc.jpeg\"><br></span>', '2017-11-28 11:18:04', '2017-11-28 11:18:04', 1),
(55, 'Літературно-мистецький проект «Друга Осінь - 2017» .', 'public/photos/news/28.11.17/800x600/josdFxiYx0hwDPF89OYnUvXko9L8Ru1njDjNlW9R.jpeg', 'Продовження листопадових зустрічей в бібліотеці', 'literaturno-misteckiy-proekt-druga-osin-2017-1', '<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">У Дрогобицькій\r\nЦентральній міській бібліотеці ім. В.Чорновола 20 листопада відбулось\r\nпродовження листопадових зустрічей в бібліотеці в рамках літературно-мистецького\r\nпроекту «Друга Осінь - 2017» .<o:p></o:p></span></p><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/XX6l9c8bMLom07SLDeelU5UqLVzZgIioYpjsYDmU.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/NQicSDIGpAXGaJnzCklaFYULoRgs2Ils6gva4aKp.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/YYmZKL7Kbi03Zi6ryUPCChuaviEAsCziaMeTfk5E.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/grVCGz8IhpcuExpmJpev1RNBRUpw97RJXAS6Yn6K.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/yjOWPDH79ATG687pRuhA6gHK89VzlhyMMOL2hZet.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/Lo7mC1N3fFblAEnPIc5ozI8Ge6aSPRH7Yadfaj2e.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/961t38WAGaMBog1DAqSom8GnuXm8TcGF8IShg0oa.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/ditbzmHWtFNh6oYvhua5qCgKj3TWIEzXlvFbncW5.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/z36HAiPEWxW3i95QP9bQRJtpXAe5Y6o7ulUykdkb.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/g9OI8QTQQQKGYiNkWaH6kQFgNdt1Z0LrvEIdZ12S.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/e5hkrDo1GXJXTJ7KudSO4ZJXmOjZ6bQVBFA12uZ5.jpeg\" alt=\"\"><br></span><p><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><br></span></p>', '2017-11-28 11:29:12', '2017-11-28 11:29:12', 1),
(56, 'День Гідності та Свободи', 'public/photos/news/28.11.17/800x600/W9SFL8Vq5rbu7UK1iIAkT7hhRhsEY4MvagCDc1aI.jpeg', 'Книжкова виставка «Україна понад усе!»', 'den-gidnosti-ta-svobodi', '<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">&nbsp;21 листопада українці святкують День Гідності\r\nта Свободи, в цей день наша країна згадує патріотів-героїв, які загинули під\r\nчас Революції Гідності. У Дрогобицькій Центральній міській бібліотеці ім.\r\nВ.Чорновола організована книжкова виставка «Україна понад усе!» на якій\r\nпредставлені видання, які висвітлюють героїчні події Майдану та патріотизм і\r\nмужність воїнів АТО. Біля книжкової виставки бібліотекарі проводять діалог з\r\nчитачами. Це болюча тема, тому у кожного українця виникає багато запитань. які\r\nспонукають до діалогу, роздумів і сподівань на краще майбутнє.<o:p></o:p></span></p><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/5fc7ItTQfzeS74Eat42Jewn93v3xyBIqCVqC3qzf.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/BQggTuvcYtZFLUFEp6WgCviLPmjP7GAz52jDODqy.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/FGakMZRtWqu2Cv5Gw5Rmh6PfBO6SJId7LBJ8F71o.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/EVbeS2eXzOp3qSWi31CZqtobMIVjnXBsfPZGgEg4.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/JUcB4laFK7o7eLODX1R4PdV3ie8OUx5mqnd3WrL0.jpeg\"><br></span>', '2017-11-28 11:35:21', '2017-11-28 11:35:21', 1),
(57, 'Соня Кошкіна «Майдан. Нерозказана історія»', 'public/photos/news/28.11.17/800x600/r1TDC7s2waQke8ZhsfVtca2mhY7fN6tsT5XBnjj0.jpeg', 'Мультимедійний огляд книги', 'sonya-koshkina-maydan-nerozkazana-istoriya', '<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">Мультимедійний огляд\r\nкниги Соні Кошкіної «Майдан. Нерозказана історія»<o:p></o:p></span></p>', '2017-11-28 11:57:04', '2017-11-28 11:57:04', 1),
(58, '«Спільна пам’ять, спільна біль»', 'public/photos/news/28.11.17/800x600/VP2PHmb2gAh9ZuamM83wyr1tGOUcZQPLvmekVvoU.jpeg', '/пам’яті жертв Голодомору/', 'spilna-pam-yat-spilna-bil', '<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">Прес-реліз по книжкових\r\nвиданнях «Спільна пам’ять, спільна біль» /пам’яті жертв Голодомору/<o:p></o:p></span></p>', '2017-11-28 12:10:16', '2017-11-28 12:10:16', 1),
(59, 'Літературна зустріч', 'public/photos/news/28.11.17/800x600/n5rx4QLL2glKU7O01QC8WvUEMOfWnbl9ZL0tOxN1.jpeg', 'з Галиною Фесюк та Людмилою Пуляєвою', 'literaturna-zustrich', '<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">23 листопада 2017 року\r\nу Дрогобицькій Центральній міській бібліотеці ім.В.Чорновола відбулась\r\nлітературна зустріч з Галиною Фесюк та Людмилою Пуляєвою. Галина Фесюк -\r\nукраїнська поетеса, краєзнавець, журналіст, громадський діяч у сфері культури.\r\nЧлен правління Української асоціації письменників Західного регіону. Авторка\r\nкниг: «Історія пасажирського вагонного депо Львів», «До тебе, Господи, іду»,\r\n«Свічадо Жовківського краю», «Слова душі моєї», «Із полум\'я любові». Людмила\r\nПуляєва – поетка, журналістка, член Української асоціації письменників\r\nЗахідного регіону та Національної спілки письменників України, автор збірок\r\n«Несвоєчасність», «Друзі мої, заньківчани…», «Тест на вірність», «Ми ще\r\nзустрінемось у часі…», «На дні мого ковша».<o:p></o:p></span></p><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/jMJURRLWzhBEHdagDCZ07FB3lVLaOZl69sEZKeQn.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/MDoPmTklH4qmxWXt3WxqvGuBJn7wwLhxFeD4Aq0x.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/SmezU7TPCu6hZo7kCeF22n1tqIwEXe9AL2dZbKI2.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/joEUtJzdOagi3dvm2IVEJU8FJUdj2vwQF27LaxUj.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/CDhk6O4d5DlgTCi0w1o4u7OXZ7dmeGEidkStTYFB.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;\r\nline-height:107%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/28.11.17/800x600/dLNvxiNs88BVsACZnGokNiSoSb41tVNMzoPrAZV0.jpeg\"><br></span>', '2017-11-28 12:18:03', '2017-11-28 12:18:03', 1),
(60, 'hfghfthft', 'public/photos/anniversaries/04.12.17/640x480/DEkWjDFMUYtbLK1fXUWjWPpOjQ5C0blIXFetxXXk.png', 'cfhbcfbcfb', 'hfghfthft', 'fcbcfbcfbcfbfc', '2017-12-04 10:56:48', '2017-12-04 10:56:48', 2),
(61, 'івапекрп', 'public/photos/anniversaries/04.12.17/640x480/uC28SKVsLU8Rv8I8xBvcvCdrvqHQJfCaIWqUJ9p7.jpeg', 'енр67гш87', 'ivapekrp', '67г6767', '2017-12-04 10:58:27', '2017-12-04 10:58:27', 2),
(62, 'Літературна зустріч', 'public/photos/news/04.12.17/800x600/DfQYWzeJcBnCNrOvSDjylecSc5KqEkWQbkaZyb2T.jpeg', 'з Максом Кідруком', 'literaturna-zustrich-1', '<p class=\"MsoNormal\"><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;\">1 грудня 2017 року у Дрогобицькій Центральній\r\nміській бібліотеці ім. В.Чорновола відбулася літературна зустріч з Максом\r\nКідруком – українським письменником, мандрівником і популяризатором науки, який\r\nпрезентував свій роман «Не озирайся і мовчи». Макс Кідрук автор книжок\r\n«Твердиня», «Жорстоке небо», дилогії «Бот», а також роману «Зазирни у мої сни»,\r\nякий увійшов до короткого списку премії «Книга року ВВС 2016». Твори\r\nперекладені польською, російською, німецькою та чеською мовами.<o:p></o:p></span></p><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/04.12.17/800x600/CnSiuW8f7WUXdRjOhiZvvdCQ1GmJj71EZfWMOm6a.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/04.12.17/800x600/KfN7qoMaPHzlJdWR6Snvk48m0ags5nKHozxqzxZt.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/04.12.17/800x600/AjMsd36cdAEBZK5oYBenz2vlShEqmyjMSE0KYGHA.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/04.12.17/800x600/Foi1P9mfsOgQA3O6hZhxxZmBCnWHxhsyXE355R8L.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/04.12.17/800x600/f1Zzy6Ktdo6xmZkgJnnaXs9tf43rNVfkGPgNImqd.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/04.12.17/800x600/gnactuyA5XfiyPCE1z6F61HVLOGkF08jvUDWz6P4.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/04.12.17/800x600/YW2WpSBmRBGoKn2sJQvXzshXviTFm9mzuGr23zX5.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/04.12.17/800x600/jjTBVA2yvgz7vtUHU6VCWbMs21kEhvZUZv4WuDPU.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/04.12.17/800x600/JJjOMF8Dy4RkXhquigN5LcAz8Uah7ZoqFj9SiwKT.jpeg\" alt=\"\"><br></span><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;\"><img src=\"/storage/photos/news/04.12.17/800x600/VrT8HQAqoWXWwShgT6cofiPMRkAqDrPrqfmHHgLc.jpeg\" alt=\"\"><br></span><p><span style=\"font-size:14.0pt;line-height:107%;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;\"><br></span></p>', '2017-12-04 12:32:25', '2017-12-04 12:32:25', 1),
(63, '\"Бібліотекар Миколай зустрічаю своїх читачів\"', 'public/photos/news/27.12.17/800x600/HealcmwNV6Vip822llGVjVG3rmPM4wkR6rFvV5aS.jpeg', 'Свято для дітей', 'bibliotekar-mikolay-zustrichayu-svojih-chitachiv', '<p style=\"color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 12px;\"><span style=\"line-height: 17pt; font-size: 14pt; font-family: &quot;Times new roman&quot;;\">Найулюбленішим святом для дітей в усьому християнському світі є Святий Миколай Чудотворець, бо він найдобріший, а доброта і милосердя є виявом Господньої любові.</span></p><p style=\"color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 12px;\"><span style=\"font-family: &quot;Times new roman&quot;; font-size: 14pt;\">День Святого Миколая – найрадісніший день усього року. І сьогодні таким радісним і веселим пройшов день Святого Миколая у міській бібліотеці для дітей.</span></p><p style=\"color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 12px;\"><span style=\"line-height: 17pt; font-size: 14pt; font-family: &quot;Times new roman&quot;;\">Миколай подарував читачам бібліотеки подарунки та книжечки, а взамін отримав задоволення від віршів і пісеньок діточок. Миколай побажав всім присутнім любові, добра, достатку в кожній родині, і доброти і милосердя у кожній душі.</span><img src=\"/storage/photos/news/27.12.17/800x600/4Hf7YMTc9EHO5cakecr4HfmY7F80X7KpzpmfztHH.jpeg\" style=\"font-family: &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\" alt=\"\"></p><p style=\"color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 12px;\"><img src=\"/storage/photos/news/27.12.17/800x600/Z9tlfPSmfw3and8LUEfoG2vetqjgBIJB4MYmKw08.jpeg\" alt=\"\"><br></p><p style=\"color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 12px;\"><img src=\"/storage/photos/news/27.12.17/800x600/rZ0FEvaMCJGiTzKNr0JaWjEaToA6objtk9rkbgfe.jpeg\" alt=\"\"><br></p><p style=\"color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 12px;\"><img src=\"/storage/photos/news/27.12.17/800x600/q2e5EtbYAX1xjcgsKBwWYTh4lnjarhxwaInhFtqn.jpeg\" alt=\"\"><br></p><p style=\"color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 12px;\"><img src=\"/storage/photos/news/27.12.17/800x600/8cHWinQR7n7ubJT5cFKgnoP6swYQgiwBnymWKVaO.jpeg\" alt=\"\"><br></p><p style=\"color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 12px;\"><img src=\"/storage/photos/news/27.12.17/800x600/mg2wDdw7nzmoD4qE2937Rb6msnZG2iPtXdQmamZ3.jpeg\" alt=\"\"><br></p><p style=\"color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 12px;\"><img src=\"/storage/photos/news/27.12.17/800x600/OLP8BoaUea8DGYeHyAMUN1f6myx3ZEjxydvyIrYW.jpeg\" alt=\"\"><br></p><p style=\"color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 12px;\"><img src=\"/storage/photos/news/27.12.17/800x600/RRlyCwX0SQ2NaVoZX1Wg6DuqZ2GSiEWTcGwSpBkM.jpeg\" alt=\"\"><br></p><p style=\"color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 12px;\"><img src=\"/storage/photos/news/27.12.17/800x600/KlgV2GtvMU8biPcKAWbkquVFIG8M2e1a3q0c2Wxj.jpeg\" alt=\"\"><br></p><p style=\"color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 12px;\"><img src=\"/storage/photos/news/27.12.17/800x600/nde1XryyxCRdHKQ1MICyDifwM9agXcsnEJHavvVW.jpeg\" alt=\"\"><br></p><p style=\"color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 12px;\"><img src=\"/storage/photos/news/27.12.17/800x600/utQ5gBdTS9XjNZKf7ohJw8ux2d7XsWC0pxLUf9uX.jpeg\" alt=\"\"><br></p><p style=\"color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 12px;\"><img src=\"/storage/photos/news/27.12.17/800x600/VgXe3tQ9qT5rpdsUi6z6Jd1ZfORnoLUO4it6nv0L.jpeg\" alt=\"\"><br></p><p style=\"color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 12px;\"><img src=\"/storage/photos/news/27.12.17/800x600/o02Vs8uVBSegfctuhhDh43Woa9zFS2xqD0a7nGZn.jpeg\" alt=\"\"><br></p><p style=\"color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 12px;\"><img src=\"/storage/photos/news/27.12.17/800x600/7AS0ocFVFlJM9nzTBQ1yZ5qPNVzhRSJYhLXiNUja.jpeg\"><br></p><br>', '2017-12-27 07:06:19', '2017-12-27 07:06:19', 1),
(64, 'Читацька конференція «Україна починається з тебе»', 'public/photos/news/27.12.17/800x600/tQ1nkK0IyPsET9Siddqk6vjfV79c9PXUjCxoUyv5.jpeg', 'до 80-річчя від дня народження В’ячеслава Чорновола', 'chitacka-konferenciya-ukrajina-pochinayetsya-z-tebe', '<p><span style=\"color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\">21 грудня 2017 року за ініціативи міського методичного кабінету відділу освіти виконавчих органів Дрогобицької міської ради до 80-річчя від дня народження В’ячеслава Чорновола у читальному залі Дрогобицької Центральної міської бібліотеки ім. В.Чорновола відбулась читацька конференція «Україна починається з тебе». У конференції взяли участь учні, бібліотекарі та вчителі шкіл міста Дрогобича. На конференції виступила також соратниця В.Чорновола Віра Байса. Огляд видань біля книжкової виставки «…я б обрав життя, яке прожив» (В.Чорновіл) провела провідний бібліотекар Галина Михайляк.</span></p><p><img src=\"/storage/photos/news/27.12.17/800x600/1xS3K6Qirp4nVC2SzUjzN8eoxYXHGjbLObOXjZCo.jpeg\" alt=\"\"><span style=\"color: rgb(29, 33, 41); font-family: Helvetica, Arial, sans-serif; font-size: 14px;\"><br></span></p><p><img src=\"/storage/photos/news/27.12.17/800x600/AEOfoV4Btt7W1evhU36RkQRvPCBP9CuIoupRCsjG.jpeg\" alt=\"\"><br></p><p><img src=\"/storage/photos/news/27.12.17/800x600/c2GhMQ5SOovCT2aJR4NFhS64R841OAVACTXj1088.jpeg\" alt=\"\"><br></p><p><img src=\"/storage/photos/news/27.12.17/800x600/uvyRO2R87ZyAvFEEi3VqVc74L0GYnd8Fii9S8xRk.jpeg\" alt=\"\"><br></p><p><img src=\"/storage/photos/news/27.12.17/800x600/p2fOhxGZbGwfkk91Atl48NXypHkPZIzyIEWs9aBH.jpeg\" alt=\"\"><br></p><p><img src=\"/storage/photos/news/27.12.17/800x600/RKT8s2Zb22T1kU9aOCu3lo995Ukp6FVidTSJop7d.jpeg\" alt=\"\"><br></p><p><img src=\"/storage/photos/news/27.12.17/800x600/BlNCw5pgch6Fh8Rt0IRFwyvkbaVSfIoa9nOvVDi0.jpeg\" alt=\"\"><br></p><p><img src=\"/storage/photos/news/27.12.17/800x600/5mEQoyfFhcZw9bsDPOjz4R6TJiFBTAKUCDOzTd76.jpeg\" alt=\"\"><br></p><p><img src=\"/storage/photos/news/27.12.17/800x600/nWeqhfB1ISUfkiLEGei6tVr3er0APMXXg9q4a4OQ.jpeg\" alt=\"\"><br></p><p><img src=\"/storage/photos/news/27.12.17/800x600/VFXlP3l2oCv8SVld6Sjtu5xbpNFbD9usRewud8tN.jpeg\" alt=\"\"><br></p><p><img src=\"/storage/photos/news/27.12.17/800x600/lrEzEPSigC3gpiJj57NQh3y95qt1dAgGeQZYB0qL.jpeg\" alt=\"\"><br></p><p><img src=\"/storage/photos/news/27.12.17/800x600/8Gl3Dc8zLz77DnDQZvFtnIxvBrCWFqqstEAyO0Q9.jpeg\" alt=\"\"><br></p><p><img src=\"/storage/photos/news/27.12.17/800x600/pftVrwmFMcoRcty3Xaw1j50Dggy0gmJ5M0c4CiRy.jpeg\" alt=\"\"><br></p><p><img src=\"/storage/photos/news/27.12.17/800x600/StsmlXFEMjRUkm2bydc0PQgt9UNWgIlvbc6PwhjQ.jpeg\" alt=\"\"><br></p><p><img src=\"/storage/photos/news/27.12.17/800x600/cXSwxFKEjQWbI10uNq9Dt8nwXkcvaUwIZE0nbwOA.jpeg\"><br></p>', '2017-12-27 07:27:23', '2017-12-27 07:27:23', 1),
(65, '«У сяйві Різдва»', 'public/photos/expos/10.01.18/800x600/3We6OlYGa5tDKfrcan3IJ9MxGC9BZuO4p7g7IQ7q.jpeg', 'мультимедійна презентація книжково-ілюстративної виставки', 'u-syayvi-rizdva', NULL, '2018-01-10 08:28:36', '2018-01-10 08:28:36', 3),
(66, 'Виставка-вшанування «Патріоти України – вихідці з Дрогобиччини»', 'public/photos/news/20.02.18/800x600/L9M6sGaemo0xE1EDOzFNzysVCzzQeBv6EfVfIcPV.jpeg', 'До Дня Героїв Небесної Сотні', 'vistavka-vshanuvannya-patrioti-ukrajini-vihidci-z-drogobichchini', NULL, '2018-02-20 06:34:06', '2018-02-20 06:34:06', 1),
(67, 'Книжкова виставка', 'public/photos/news/20.02.18/800x600/979zIUIotVxTyrrh2SYdpADPCzPgLCaZLkdE2BaI.jpeg', '\"Книги одного автора\"', 'knizhkova-vistavka-1', '<h3 class=\"post-title entry-title\" itemprop=\"name\" style=\"margin-top: 0px; margin-bottom: 0px; position: relative; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 20px; line-height: normal; font-family: &quot;Times New Roman&quot;, Times, FreeSerif, serif; color: rgb(0, 0, 0);\"><a href=\"http://bibliotekadrog.blogspot.com/2018/02/blog-post_20.html\" style=\"color: rgb(0, 0, 0);\">У читальній залі Дрогобицької Центральної міської бібліотеки ім. В. Чорновола організовано книжкову виставку \"Книги одного автора\".</a></h3>', '2018-02-20 06:41:28', '2018-02-20 06:41:28', 1);

-- --------------------------------------------------------

--
-- Структура таблиці `article_book`
--

CREATE TABLE `article_book` (
  `article_id` int(10) UNSIGNED DEFAULT NULL,
  `book_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `article_categories`
--

CREATE TABLE `article_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `article_categories`
--

INSERT INTO `article_categories` (`id`, `value`, `created_at`, `updated_at`) VALUES
(1, 'news', '2017-09-06 03:19:25', '2017-09-13 04:22:30'),
(2, 'anniversaries', '2017-09-20 01:35:25', '2017-09-06 07:34:19'),
(3, 'expos', '2017-10-31 22:00:00', '2017-11-13 22:00:00'),
(4, 'virtual_reference', '2017-11-01 22:00:00', '2017-11-21 22:00:00');

-- --------------------------------------------------------

--
-- Структура таблиці `article_event`
--

CREATE TABLE `article_event` (
  `articles_id` int(10) UNSIGNED DEFAULT NULL,
  `events_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `article_photo`
--

CREATE TABLE `article_photo` (
  `article_id` int(10) UNSIGNED DEFAULT NULL,
  `photo_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `article_photo`
--

INSERT INTO `article_photo` (`article_id`, `photo_id`) VALUES
(24, 151),
(24, 145),
(24, 146),
(24, 147),
(24, 148),
(24, 149),
(24, 150),
(25, 158),
(25, 152),
(25, 153),
(25, 154),
(25, 155),
(25, 156),
(25, 157),
(26, 170),
(26, 159),
(26, 160),
(26, 161),
(26, 162),
(26, 163),
(26, 164),
(26, 165),
(26, 166),
(26, 167),
(26, 168),
(26, 169),
(27, 177),
(27, 171),
(27, 172),
(27, 173),
(27, 174),
(27, 175),
(27, 176),
(28, 184),
(28, 178),
(28, 179),
(28, 180),
(28, 181),
(28, 182),
(28, 183),
(29, 192),
(29, 185),
(29, 186),
(29, 187),
(29, 188),
(29, 189),
(29, 190),
(29, 191),
(30, 198),
(30, 193),
(30, 194),
(30, 195),
(30, 196),
(30, 197),
(31, 202),
(31, 199),
(31, 200),
(31, 201),
(32, 208),
(32, 203),
(32, 204),
(32, 205),
(32, 206),
(32, 207),
(33, 215),
(33, 209),
(33, 210),
(33, 211),
(33, 212),
(33, 213),
(33, 214),
(34, 219),
(34, 216),
(34, 217),
(34, 218),
(38, 227),
(39, 228),
(40, 229),
(41, 238),
(41, 230),
(41, 231),
(41, 232),
(41, 233),
(41, 234),
(41, 235),
(41, 236),
(41, 237),
(42, 247),
(42, 239),
(42, 240),
(42, 241),
(42, 242),
(42, 243),
(42, 244),
(42, 245),
(42, 246),
(43, 253),
(43, 248),
(43, 249),
(43, 250),
(43, 251),
(43, 252),
(44, 261),
(44, 254),
(44, 255),
(44, 256),
(44, 257),
(44, 258),
(44, 259),
(44, 260),
(45, 262),
(46, 283),
(46, 263),
(46, 264),
(46, 265),
(46, 266),
(46, 267),
(46, 268),
(46, 269),
(46, 270),
(46, 271),
(46, 272),
(46, 273),
(46, 274),
(46, 275),
(46, 276),
(46, 277),
(46, 278),
(46, 279),
(46, 280),
(46, 281),
(46, 282),
(47, 305),
(47, 284),
(47, 285),
(47, 286),
(47, 287),
(47, 288),
(47, 289),
(47, 290),
(47, 291),
(47, 292),
(47, 293),
(47, 294),
(47, 295),
(47, 296),
(47, 297),
(47, 298),
(47, 299),
(47, 300),
(47, 301),
(47, 302),
(47, 303),
(47, 304),
(48, 306),
(49, 324),
(49, 307),
(49, 308),
(49, 309),
(49, 310),
(49, 311),
(49, 312),
(49, 313),
(49, 314),
(49, 315),
(49, 316),
(49, 317),
(49, 318),
(49, 319),
(49, 320),
(49, 321),
(49, 322),
(49, 323),
(50, 325),
(51, 330),
(51, 326),
(51, 327),
(51, 328),
(51, 329),
(52, 343),
(52, 331),
(52, 332),
(52, 333),
(52, 334),
(52, 335),
(52, 336),
(52, 337),
(52, 338),
(52, 339),
(52, 340),
(52, 341),
(52, 342),
(53, 355),
(53, 344),
(53, 345),
(53, 346),
(53, 347),
(53, 348),
(53, 349),
(53, 350),
(53, 351),
(53, 352),
(53, 353),
(53, 354),
(54, 366),
(54, 356),
(54, 357),
(54, 358),
(54, 359),
(54, 360),
(54, 361),
(54, 362),
(54, 363),
(54, 364),
(54, 365),
(55, 378),
(55, 367),
(55, 368),
(55, 369),
(55, 370),
(55, 371),
(55, 372),
(55, 373),
(55, 374),
(55, 375),
(55, 376),
(55, 377),
(56, 384),
(56, 379),
(56, 380),
(56, 381),
(56, 382),
(56, 383),
(57, 385),
(58, 386),
(59, 393),
(59, 387),
(59, 388),
(59, 389),
(59, 390),
(59, 391),
(59, 392),
(NULL, 394),
(60, 394),
(NULL, 395),
(61, 395),
(62, 406),
(62, 396),
(62, 397),
(62, 398),
(62, 399),
(62, 400),
(62, 401),
(62, 402),
(62, 403),
(62, 404),
(62, 405),
(63, 423),
(63, 407),
(63, 408),
(63, 409),
(63, 410),
(63, 411),
(63, 412),
(63, 413),
(63, 414),
(63, 415),
(63, 416),
(63, 417),
(63, 418),
(63, 419),
(63, 420),
(63, 421),
(63, 422),
(64, 439),
(64, 424),
(64, 425),
(64, 426),
(64, 427),
(64, 428),
(64, 429),
(64, 430),
(64, 431),
(64, 432),
(64, 433),
(64, 434),
(64, 435),
(64, 436),
(64, 437),
(64, 438),
(65, 442),
(65, 440),
(65, 441),
(66, 443),
(67, 444);

-- --------------------------------------------------------

--
-- Структура таблиці `article_tag`
--

CREATE TABLE `article_tag` (
  `tag_id` int(10) UNSIGNED DEFAULT NULL,
  `article_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `article_tag`
--

INSERT INTO `article_tag` (`tag_id`, `article_id`) VALUES
(15, 3),
(16, 3),
(28, NULL),
(29, NULL),
(44, 7),
(45, 7),
(46, 7),
(51, 12),
(52, 12),
(53, 13),
(54, 13),
(64, 15),
(65, 15),
(66, 15),
(72, 16),
(73, 16),
(74, 16),
(75, 16),
(76, 16),
(77, 17),
(78, 17),
(79, 17),
(80, 18),
(81, 18),
(82, 18),
(83, 18),
(90, 19),
(91, 19),
(92, 19),
(93, 14),
(94, 14),
(95, 14),
(98, 20),
(99, 20),
(100, 20),
(101, 21),
(102, 21),
(103, 22),
(104, 22),
(105, 23),
(106, 23),
(111, 2),
(112, 2),
(117, 24),
(118, 24),
(121, 25),
(122, 25),
(123, 26),
(124, 26),
(125, 26),
(130, 28),
(131, 28),
(132, 28),
(133, 27),
(134, 27),
(135, 27),
(136, 27),
(137, 29),
(138, 30),
(139, 30),
(140, 31),
(141, 31),
(142, 32),
(143, 32),
(144, 32),
(145, 32),
(146, 33),
(147, 33),
(148, 33),
(149, 33),
(150, 34),
(151, 34),
(152, 34),
(153, 34),
(169, 38),
(170, 38),
(171, 38),
(172, 39),
(173, 39),
(174, 39),
(175, 39),
(176, 40),
(177, 40),
(178, 40),
(179, 41),
(180, 41),
(181, 41),
(182, 41),
(183, 42),
(184, 42),
(185, 43),
(186, 43),
(187, 44),
(188, 44),
(189, 45),
(190, 45),
(191, 46),
(192, 46),
(193, 46),
(194, 46),
(195, 46),
(196, 46),
(197, 46),
(198, 47),
(199, 47),
(200, 47),
(201, 47),
(202, 48),
(203, 48),
(204, 48),
(205, 48),
(206, 49),
(207, 49),
(208, 49),
(209, 50),
(210, 50),
(211, 50),
(212, 51),
(213, 51),
(214, 52),
(215, 52),
(216, 53),
(217, 53),
(218, 54),
(219, 54),
(220, 55),
(221, 55),
(222, 56),
(223, 56),
(224, 56),
(225, 57),
(226, 57),
(227, 58),
(228, 58),
(229, 58),
(230, 58),
(231, 59),
(232, 59),
(233, 59),
(234, 62),
(235, 62),
(236, 62),
(237, 63),
(238, 63),
(239, 64),
(240, 64),
(241, 64),
(242, 65),
(243, 65),
(244, 65),
(245, 66),
(246, 66),
(247, 66),
(248, 67),
(249, 67),
(250, 67);

-- --------------------------------------------------------

--
-- Структура таблиці `article_video`
--

CREATE TABLE `article_video` (
  `article_id` int(10) UNSIGNED DEFAULT NULL,
  `video_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `article_video`
--

INSERT INTO `article_video` (`article_id`, `video_id`) VALUES
(38, 4),
(39, 5),
(40, 6),
(48, 7),
(57, 8),
(58, 9),
(65, 10);

-- --------------------------------------------------------

--
-- Структура таблиці `authors`
--

CREATE TABLE `authors` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `author_book`
--

CREATE TABLE `author_book` (
  `book_id` int(10) UNSIGNED DEFAULT NULL,
  `author_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `author_photo`
--

CREATE TABLE `author_photo` (
  `authors_id` int(10) UNSIGNED DEFAULT NULL,
  `photo_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `books`
--

CREATE TABLE `books` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `annotation` text COLLATE utf8mb4_unicode_ci,
  `publication_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `book_categories`
--

CREATE TABLE `book_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `book_edition`
--

CREATE TABLE `book_edition` (
  `book_id` int(10) UNSIGNED DEFAULT NULL,
  `edition_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `book_genre`
--

CREATE TABLE `book_genre` (
  `book_id` int(10) UNSIGNED DEFAULT NULL,
  `genre_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `book_language`
--

CREATE TABLE `book_language` (
  `book_id` int(10) UNSIGNED DEFAULT NULL,
  `language_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `book_photo`
--

CREATE TABLE `book_photo` (
  `book_id` int(10) UNSIGNED DEFAULT NULL,
  `photo_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `book_tag`
--

CREATE TABLE `book_tag` (
  `tag_id` int(10) UNSIGNED DEFAULT NULL,
  `book_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `editions`
--

CREATE TABLE `editions` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `info` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `edition_photo`
--

CREATE TABLE `edition_photo` (
  `editions_id` int(10) UNSIGNED DEFAULT NULL,
  `photo_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `events`
--

CREATE TABLE `events` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci,
  `start_date` date DEFAULT NULL,
  `end_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `event_categories`
--

CREATE TABLE `event_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `event_photo`
--

CREATE TABLE `event_photo` (
  `events_id` int(10) UNSIGNED DEFAULT NULL,
  `photo_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `event_video`
--

CREATE TABLE `event_video` (
  `events_id` int(10) UNSIGNED DEFAULT NULL,
  `video_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `genres`
--

CREATE TABLE `genres` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `info` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(16, '2017_08_18_100540_create_article_tables', 1),
(17, '2017_08_18_100757_create_books_tables', 1),
(18, '2017_08_18_101233_create_content_tables', 1),
(19, '2017_08_18_101614_create_many-to-many_tables', 1),
(20, '2017_08_18_123606_drop_tables', 1),
(81, '2018_04_23_200423_drop_tables', 2),
(82, '2018_04_23_200727_create_auth_tables', 2),
(83, '2018_04_23_201027_create_article_tables', 2),
(84, '2018_04_23_201037_create_events_tables', 2),
(85, '2018_04_23_201043_create_book_tables', 2),
(86, '2018_04_23_201157_create_content_tables', 2),
(87, '2018_04_23_201202_create_many-to-many_tables', 2);

-- --------------------------------------------------------

--
-- Структура таблиці `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `photos`
--

CREATE TABLE `photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_main` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `photos`
--

INSERT INTO `photos` (`id`, `image`, `is_main`, `created_at`, `updated_at`) VALUES
(145, 'public/photos/news/20.09.17/800x600/p4M2CPglpEOFrTnjeKgOuu7R58jBkiXiR3pCw9zB.jpeg', 0, '2017-09-20 07:57:04', '2017-09-20 07:57:04'),
(146, 'public/photos/news/20.09.17/800x600/MrbDZzuEbLufw7l6ltLw5Y2wb6ArJEDE6m4yXWTm.jpeg', 0, '2017-09-20 07:58:12', '2017-09-20 07:58:12'),
(147, 'public/photos/news/20.09.17/800x600/ARCxQduYRkrpSWnP4WYbLtTuem1OFG6p0SDW84Sx.jpeg', 0, '2017-09-20 07:58:42', '2017-09-20 07:58:42'),
(148, 'public/photos/news/20.09.17/800x600/PhMaSP5k4zFFNG8x9ZyseRVYAaLVeHSZ9XXGiZCt.jpeg', 0, '2017-09-20 07:59:20', '2017-09-20 07:59:20'),
(149, 'public/photos/news/20.09.17/800x600/5bGtTTA5ziyl4A7NLQTAN7mCBlKSJTGBwiZSZnUW.jpeg', 0, '2017-09-20 08:00:01', '2017-09-20 08:00:01'),
(150, 'public/photos/news/20.09.17/800x600/3vGRMGEads9iSPka5RaQbhysujZUgM8mp0lwBoN8.jpeg', 0, '2017-09-20 08:00:32', '2017-09-20 08:00:32'),
(151, 'public/photos/news/20.09.17/800x600/EPteB69d4tUsH6SUV6ogAfJYioLE5r4ODKt43ftQ.jpeg', 1, '2017-09-20 08:01:07', '2017-09-20 08:01:07'),
(152, 'public/photos/news/22.09.17/800x600/ezRrcilKPqfeMrAdL3hjvjehjnKY0uHDTvbtxOrr.jpeg', 0, '2017-09-22 07:27:55', '2017-09-22 07:27:55'),
(153, 'public/photos/news/22.09.17/800x600/eLqIQgbgpnJBQ5sQL56nuKslG3IgYmuAU8rKewo2.jpeg', 0, '2017-09-22 07:36:06', '2017-09-22 07:36:06'),
(154, 'public/photos/news/22.09.17/800x600/Mqy70lEnf5i5v81bs2d3qvXXos3DXuqosBXyEAgS.jpeg', 0, '2017-09-22 07:36:20', '2017-09-22 07:36:20'),
(155, 'public/photos/news/22.09.17/800x600/rBHf2hNT6DtES9vdMYWfMZGAgZ2GXe0HrERUEIzF.jpeg', 0, '2017-09-22 07:36:31', '2017-09-22 07:36:31'),
(156, 'public/photos/news/22.09.17/800x600/sbSvB7PW2aFGUtiNUCDXqNGMPGu6FM0UCXH01GgU.jpeg', 0, '2017-09-22 07:37:12', '2017-09-22 07:37:12'),
(157, 'public/photos/news/22.09.17/800x600/ynqNWql2SR1N6M0P6GXNxdvpFQpfcI3YYERa77Dj.jpeg', 0, '2017-09-22 07:37:23', '2017-09-22 07:37:23'),
(158, 'public/photos/news/22.09.17/800x600/syQQJhir7kDCSo6PIw1eywKVxI5JxpJULC74v5T3.jpeg', 0, '2017-09-22 07:38:23', '2017-09-22 07:38:23'),
(159, 'public/photos/news/25.09.17/800x600/mw0Fji8phGkXBJjpLysGYPWywXY84dY7h65xSG5K.jpeg', 0, '2017-09-25 05:08:34', '2017-09-25 05:08:34'),
(160, 'public/photos/news/25.09.17/800x600/7ZTcqpqf3w2cnkWokpeiLGKqUG7UeLn067BmPbZc.jpeg', 0, '2017-09-25 05:09:10', '2017-09-25 05:09:10'),
(161, 'public/photos/news/25.09.17/800x600/LmHhmS6Nq3EcuJ0afvgcVz1NMFQ0dzzq0l6xUKVx.jpeg', 0, '2017-09-25 05:09:49', '2017-09-25 05:09:49'),
(162, 'public/photos/news/25.09.17/800x600/A5SnM70DOEnGAnGT4WTcCIx5XB9JuDG2juWiLEKE.jpeg', 0, '2017-09-25 05:10:07', '2017-09-25 05:10:07'),
(163, 'public/photos/news/25.09.17/800x600/s6b2noIEzJsaNA2mFd1Y3x9ZxPLpal5c3hWOYQjL.jpeg', 0, '2017-09-25 05:10:30', '2017-09-25 05:10:30'),
(164, 'public/photos/news/25.09.17/800x600/NYlY6mEfqqjRRRQXwFLP627zOqRlez7O863octqm.jpeg', 0, '2017-09-25 09:53:13', '2017-09-25 09:53:13'),
(165, 'public/photos/news/25.09.17/800x600/hrww2TKDIUCnnJT2nWBOkRw6iTnxQjPuu9NVZZrL.jpeg', 0, '2017-09-25 09:53:31', '2017-09-25 09:53:31'),
(166, 'public/photos/news/25.09.17/800x600/3I7byaiEK97qK3UHfvIurtRFxtKNqU3sAptQyzrX.jpeg', 0, '2017-09-25 09:53:47', '2017-09-25 09:53:47'),
(167, 'public/photos/news/25.09.17/800x600/c5hmBI9DbLTn1paeq7gubw463podZFTnqZJIInCa.jpeg', 0, '2017-09-25 09:54:07', '2017-09-25 09:54:07'),
(168, 'public/photos/news/25.09.17/800x600/XNOstNnIjmOVygjeLbQJvaDOST7j1boJJjSiEWmI.jpeg', 0, '2017-09-25 09:54:23', '2017-09-25 09:54:23'),
(169, 'public/photos/news/25.09.17/800x600/zbkZKCY0ZV4JuiKQ468Wue4NZXkXwYDwQNpq5NG1.jpeg', 0, '2017-09-25 09:54:42', '2017-09-25 09:54:42'),
(170, 'public/photos/news/25.09.17/800x600/rsO5nqQHVIYY3Ye1cNeDwXpqjnlUjtMhVF7GGash.jpeg', 0, '2017-09-25 09:56:19', '2017-09-25 09:56:19'),
(171, 'public/photos/news/25.09.17/800x600/NYunk6JSyPwskDOWNadrwIrhWyVrohTNzqueRPpV.jpeg', 0, '2017-09-25 10:02:56', '2017-09-25 10:02:56'),
(172, 'public/photos/news/25.09.17/800x600/K12CnU30tolTMJ7CVddhWryjup5vtf66rFCgb9yx.jpeg', 0, '2017-09-25 10:03:25', '2017-09-25 10:03:25'),
(173, 'public/photos/news/25.09.17/800x600/kLf6OdbXmjR2ZxZwWJlqL8VH2ty5tzECXvMCN6cv.jpeg', 0, '2017-09-25 10:05:12', '2017-09-25 10:05:12'),
(174, 'public/photos/news/25.09.17/800x600/tTXcIYm1qwZ7FrACmjxiAQOqPqgEVvm7P98zA3sV.jpeg', 0, '2017-09-25 10:05:46', '2017-09-25 10:05:46'),
(175, 'public/photos/news/25.09.17/800x600/8rD91vNi8o9IXdFrOlRq0k8qxg8iuk0al0JYZhM8.jpeg', 0, '2017-09-25 10:06:10', '2017-09-25 10:06:10'),
(176, 'public/photos/news/25.09.17/800x600/DkExKuZADaj2nRG23BVgxvdAHnyyAHslKXauW2pE.jpeg', 0, '2017-09-25 10:07:07', '2017-09-25 10:07:07'),
(177, 'public/photos/news/25.09.17/800x600/W1Ytuxy1yk6azPIbjqWY8F3JDhadfF7JNsVTQsgG.jpeg', 0, '2017-09-25 10:11:30', '2017-09-25 10:11:30'),
(178, 'public/photos/news/25.09.17/800x600/e1uytdQI6lY44gF0UV6RcBKGNN38x2QEhuULQbq2.jpeg', 0, '2017-09-25 10:43:13', '2017-09-25 10:43:13'),
(179, 'public/photos/news/25.09.17/800x600/1arZFkcTKxFqW4WFAjhz9jOiTZBtCgkE6jk5dbvm.jpeg', 0, '2017-09-25 10:43:38', '2017-09-25 10:43:38'),
(180, 'public/photos/news/25.09.17/800x600/3CaSDyjcChbPcrd5KQnlutX7C8ozm2ci7UnRTmDd.jpeg', 0, '2017-09-25 10:43:59', '2017-09-25 10:43:59'),
(181, 'public/photos/news/25.09.17/800x600/GKAWqxr4Uil0KbHoGPrwBppZWlfPNaT3XpyTMG59.jpeg', 0, '2017-09-25 10:44:31', '2017-09-25 10:44:31'),
(182, 'public/photos/news/25.09.17/800x600/DfX75DCGztEDymyg8fhCbJgD2uq5nPS4t06gkn1E.jpeg', 0, '2017-09-25 10:44:53', '2017-09-25 10:44:53'),
(183, 'public/photos/news/25.09.17/800x600/5Z3pcO9toOetQhYp8ZXq7Dt7DowAZJqyONx44Zh3.jpeg', 0, '2017-09-25 10:45:13', '2017-09-25 10:45:13'),
(184, 'public/photos/news/25.09.17/800x600/ualOnkw4nxKqurlz27tptOyB9y4HmC8ATRHH51jI.jpeg', 0, '2017-09-25 10:49:37', '2017-09-25 10:49:37'),
(185, 'public/photos/news/25.09.17/800x600/DRxZrDV9Tt97i03gqQDIVX5kGH8dgBmtelGQ9PXC.jpeg', 0, '2017-09-25 11:00:32', '2017-09-25 11:00:32'),
(186, 'public/photos/news/25.09.17/800x600/PHCTQ9XBYMUWvOipThY6sTmgBZxk8nBu6oAawarU.jpeg', 0, '2017-09-25 11:00:52', '2017-09-25 11:00:52'),
(187, 'public/photos/news/25.09.17/800x600/v40C4iwjoXfSnVVH7UdHNKB840L9aHsL99hvrciA.jpeg', 0, '2017-09-25 11:01:33', '2017-09-25 11:01:33'),
(188, 'public/photos/news/25.09.17/800x600/Xq68x1NY51VBycjIBbgvGldePZUUe9RtLghMEkke.jpeg', 0, '2017-09-25 11:01:53', '2017-09-25 11:01:53'),
(189, 'public/photos/news/25.09.17/800x600/jc2lrwHqVArg0gsSonBla95jPIroHczm4V7FGj5E.jpeg', 0, '2017-09-25 11:02:19', '2017-09-25 11:02:19'),
(190, 'public/photos/news/25.09.17/800x600/18dFTezNJe0oeay0xi2bbGICZvp5Yxb0IkxF4oii.jpeg', 0, '2017-09-25 11:02:45', '2017-09-25 11:02:45'),
(191, 'public/photos/news/25.09.17/800x600/SHcuAH9cdloL8Z1ZbVnJB640HTir8vTeAaOZYP7L.jpeg', 0, '2017-09-25 11:03:17', '2017-09-25 11:03:17'),
(192, 'public/photos/news/25.09.17/800x600/YTNXozF6D0jC4CkWTtjd4fgJU92rWZ12eum0XLhd.jpeg', 0, '2017-09-25 11:04:34', '2017-09-25 11:04:34'),
(193, 'public/photos/news/25.09.17/800x600/ntIIc0ujgJAmQfoCc8pisMIT0aHXa7Nwv7bMMWyP.jpeg', 0, '2017-09-25 11:16:28', '2017-09-25 11:16:28'),
(194, 'public/photos/news/25.09.17/800x600/0BD4PmhMV3ThMSqd15bP9E0sSWLBDCsqcgxTlcme.jpeg', 0, '2017-09-25 11:16:45', '2017-09-25 11:16:45'),
(195, 'public/photos/news/25.09.17/800x600/BiIgDEkE8hOjv16TGHCNPX0acdGazCZe4Soi43TO.jpeg', 0, '2017-09-25 11:17:06', '2017-09-25 11:17:06'),
(196, 'public/photos/news/25.09.17/800x600/FiIM14jbMvAChLy7IdRGXAx8zo5qR1mxykTky8CR.jpeg', 0, '2017-09-25 11:17:26', '2017-09-25 11:17:26'),
(197, 'public/photos/news/25.09.17/800x600/QUuk9NA7jUJN94n5JH7AMQ7oaODMH0wK7snS0cdF.jpeg', 0, '2017-09-25 11:17:46', '2017-09-25 11:17:46'),
(198, 'public/photos/news/25.09.17/800x600/asSxrUFtrwnj4P82dNLiwfr9F6cKCN0F9hD4lSOp.jpeg', 0, '2017-09-25 11:19:18', '2017-09-25 11:19:18'),
(199, 'public/photos/news/25.09.17/800x600/DJagKZxtR7cHhmm0xqQaxs4garEuPJDSs1QEaImg.jpeg', 0, '2017-09-25 11:25:46', '2017-09-25 11:25:46'),
(200, 'public/photos/news/25.09.17/800x600/2YvNCba5H2vYgc3oCrhmvw9cKDPEHLHwhoTxXyvX.jpeg', 0, '2017-09-25 11:26:01', '2017-09-25 11:26:01'),
(201, 'public/photos/news/25.09.17/800x600/7xAFi6JsCJHRKByR8M25uAoVk1dpjjnwbY9Vr2PI.jpeg', 0, '2017-09-25 11:26:17', '2017-09-25 11:26:17'),
(202, 'public/photos/news/25.09.17/800x600/0XnkiBCTJr4YWlrQjdwtAflTM7O5GAdV8IY3HjY8.jpeg', 0, '2017-09-25 11:33:33', '2017-09-25 11:33:33'),
(203, 'public/photos/news/26.09.17/800x600/6Lm9SKgD8IaB9RBopoWCrxBNUd7rgOwVQZr8wQoo.jpeg', 0, '2017-09-26 04:24:09', '2017-09-26 04:24:09'),
(204, 'public/photos/news/26.09.17/800x600/qy6NfNx9RXrGuoxKka6XKUYp6aCPdrEdBo0EtKmB.jpeg', 0, '2017-09-26 04:24:25', '2017-09-26 04:24:25'),
(205, 'public/photos/news/26.09.17/800x600/y2VLxACdpL0n6rIKSUvSZN77sY5MY0IaRxMnvjOu.jpeg', 0, '2017-09-26 04:24:53', '2017-09-26 04:24:53'),
(206, 'public/photos/news/26.09.17/800x600/YYSgFaSC4x3BRJcSCR4apQBSz330n9rdJPAvDdei.jpeg', 0, '2017-09-26 04:25:14', '2017-09-26 04:25:14'),
(207, 'public/photos/news/26.09.17/800x600/2FBbuGUM9MbyLfZoQxPK6K1eR5sIoitjk7zybjvb.jpeg', 0, '2017-09-26 04:25:32', '2017-09-26 04:25:32'),
(208, 'public/photos/news/26.09.17/800x600/J5ozbHJHDrjsYtg3odklEr4lr1RkSHejGmA6DXWl.jpeg', 0, '2017-09-26 04:28:06', '2017-09-26 04:28:06'),
(209, 'public/photos/news/26.09.17/800x600/yImTRJIESnyWOOeojOJSkLBknaFcq8zfbBef92Gf.jpeg', 0, '2017-09-26 05:23:50', '2017-09-26 05:23:50'),
(210, 'public/photos/news/26.09.17/800x600/RCG2ZsYTaCBa4aJJfw34fZlnTG6DPUlafgJPpU7x.jpeg', 0, '2017-09-26 05:24:06', '2017-09-26 05:24:06'),
(211, 'public/photos/news/26.09.17/800x600/xcbbkb8fNOGixRcjmar7sGAFFyiYh3IWF0Vhd17r.jpeg', 0, '2017-09-26 05:24:21', '2017-09-26 05:24:21'),
(212, 'public/photos/news/26.09.17/800x600/rQBYBq992od5I4ZQSwkpL5Z3m2fG1vt0udTgiEb9.jpeg', 0, '2017-09-26 05:24:43', '2017-09-26 05:24:43'),
(213, 'public/photos/news/26.09.17/800x600/6Ydoan9XmNquRJGNesmHSuDcbFyX08bb64KWzyK8.jpeg', 0, '2017-09-26 05:25:01', '2017-09-26 05:25:01'),
(214, 'public/photos/news/26.09.17/800x600/OCu4s3eICwVbzYeQlUg61PYz2is8PbFJn5o8QWWA.jpeg', 0, '2017-09-26 05:25:21', '2017-09-26 05:25:21'),
(215, 'public/photos/news/26.09.17/800x600/MqpK6QRhfveAGijXgb2h5CG7WTXUUEiLbljRl98y.jpeg', 0, '2017-09-26 05:29:07', '2017-09-26 05:29:07'),
(216, 'public/photos/news/26.09.17/800x600/8gvN1H8T5LNqiYnIhueE4PF6XcVPgtxMF3vHung9.jpeg', 0, '2017-09-26 05:48:09', '2017-09-26 05:48:09'),
(217, 'public/photos/news/26.09.17/800x600/ztXAXQbuLNUsScnW6YhU82LtoQmujDOPgEH9angZ.jpeg', 0, '2017-09-26 05:48:26', '2017-09-26 05:48:26'),
(218, 'public/photos/news/26.09.17/800x600/AgRybu902uerWqhUkVR9OLI7UJmwWTcEKf8hxUpQ.jpeg', 0, '2017-09-26 05:48:45', '2017-09-26 05:48:45'),
(219, 'public/photos/news/26.09.17/800x600/9b15JYXj3t7CrElRfJEYhs3r0CnP3GUHOJ8RTMu2.jpeg', 0, '2017-09-26 05:48:59', '2017-09-26 05:48:59'),
(220, 'public/photos/news/13.11.17/800x600/feHpOHwZeRnQQNyB8obVf5ph9Qmko0VWAUO07Xya.jpeg', 0, '2017-11-13 12:44:34', '2017-11-13 12:44:34'),
(221, 'public/photos/news/13.11.17/800x600/sGOCJYbIILKZ6Z3fRQ0R2mGi6GAtPbXE4JL2c8rJ.jpeg', 0, '2017-11-13 12:47:24', '2017-11-13 12:47:24'),
(222, 'public/photos/news/13.11.17/800x600/R8jQ6TsYPvhoK0u8RTBQG3AOLrPkR5Rw8logW5qY.jpeg', 0, '2017-11-13 12:48:10', '2017-11-13 12:48:10'),
(223, 'public/photos/news/14.11.17/800x600/tqcwcQvzvls0RqcGEa0oHKcPXM3QEENhupJIjEwx.jpeg', 1, '2017-11-14 08:06:29', '2017-11-14 08:06:29'),
(224, 'public/photos/news/15.11.17/800x600/mnEtCMP1lMCBII3SkQHZ5boTxfrPkZ10HRcM7bEg.jpeg', 1, '2017-11-15 06:32:15', '2017-11-15 06:32:15'),
(225, 'public/photos/news/15.11.17/800x600/9Cp6TQti0eaaLcmyBJwtwle6NQ5Z8dlRGUwrA40Y.jpeg', 0, '2017-11-15 06:34:24', '2017-11-15 06:34:24'),
(226, 'public/photos/news/15.11.17/800x600/YLOHaAJbqYhFZc2YHFvtTHjmt0GSSWwnIe8ulw8m.jpeg', 1, '2017-11-15 06:34:32', '2017-11-15 06:34:32'),
(227, 'public/photos/news/15.11.17/800x600/6qugTmrnCVv9vtD7TH4KDpf6VM4wGc06GnVvSsXA.jpeg', 0, '2017-11-15 06:54:42', '2017-11-15 06:54:42'),
(228, 'public/photos/news/27.11.17/800x600/AltKWP3LixSoPWePN3iD2PkitNiAOISIjInBe2Cv.jpeg', 0, '2017-11-27 07:47:10', '2017-11-27 07:47:10'),
(229, 'public/photos/news/27.11.17/800x600/WHiSP0fdOqOINkUfcMbJtJZGFH3Rd8OyTc98znc8.jpeg', 0, '2017-11-27 07:54:51', '2017-11-27 07:54:51'),
(230, 'public/photos/news/27.11.17/800x600/2oCNOFmyQkA1TqLp1Q8K1jb9YgEaNCihsJJQ8ktm.jpeg', 0, '2017-11-27 08:00:14', '2017-11-27 08:00:14'),
(231, 'public/photos/news/27.11.17/800x600/ausjyJ5FUmFvElb6GQSJL4rqqN5LjyqSi7nSCtln.jpeg', 0, '2017-11-27 08:02:33', '2017-11-27 08:02:33'),
(232, 'public/photos/news/27.11.17/800x600/k3cuBfA5rGpJOPrSkcV8vqXCsBU3KvMBNuJbYVof.jpeg', 0, '2017-11-27 08:03:07', '2017-11-27 08:03:07'),
(233, 'public/photos/news/27.11.17/800x600/qsr0DYSAAeVuwokMX5ycoTayamnQwx7yKPOjtiGI.jpeg', 0, '2017-11-27 08:03:28', '2017-11-27 08:03:28'),
(234, 'public/photos/news/27.11.17/800x600/HZCW5ggTO1GETGSp7yDwTsfA2UmWpabmBrRrlFzJ.jpeg', 0, '2017-11-27 08:04:04', '2017-11-27 08:04:04'),
(235, 'public/photos/news/27.11.17/800x600/3E8eKgy9InmjK9tBzbi1JLtshInF51xMDM4eMumV.jpeg', 0, '2017-11-27 08:04:26', '2017-11-27 08:04:26'),
(236, 'public/photos/news/27.11.17/800x600/kWqyJYG5k1Xd0ighexGFFN2DNE9UTMjstiTO62VU.jpeg', 0, '2017-11-27 08:04:52', '2017-11-27 08:04:52'),
(237, 'public/photos/news/27.11.17/800x600/L0t35lHluEPDaVhUFJL2ckwbUlUdDquJJBRSu3n6.jpeg', 0, '2017-11-27 08:05:27', '2017-11-27 08:05:27'),
(238, 'public/photos/news/27.11.17/800x600/qAxg2tqrC3lfRfFvBhipwDOELl46PenWxe23bDJU.jpeg', 0, '2017-11-27 08:07:22', '2017-11-27 08:07:22'),
(239, 'public/photos/news/27.11.17/800x600/ceSoSMiTRukMQ8R9ujeLge2ETisBrlef7hCkF4Cl.jpeg', 0, '2017-11-27 08:13:10', '2017-11-27 08:13:10'),
(240, 'public/photos/news/27.11.17/800x600/obf8puthZ5dBageimwV7ttJz4tkINBEifiL3th4O.jpeg', 0, '2017-11-27 08:13:35', '2017-11-27 08:13:35'),
(241, 'public/photos/news/27.11.17/800x600/b7fhfjmsjPbpHk92gDc4WUrXZRCm92poR5cdg23R.jpeg', 0, '2017-11-27 08:14:28', '2017-11-27 08:14:28'),
(242, 'public/photos/news/27.11.17/800x600/dSCtxPvS2AeRRbdyNHOquK3agI3qDUhjAkfWiyHA.jpeg', 0, '2017-11-27 08:14:50', '2017-11-27 08:14:50'),
(243, 'public/photos/news/27.11.17/800x600/eauCimuA0VCEnCr8bbogARghd0DerVGIwDj7wHcM.jpeg', 0, '2017-11-27 08:15:31', '2017-11-27 08:15:31'),
(244, 'public/photos/news/27.11.17/800x600/iyl3iz7O9YdByDcUpGHFlVlpqgri6vzI7YONFZ74.jpeg', 0, '2017-11-27 08:15:54', '2017-11-27 08:15:54'),
(245, 'public/photos/news/27.11.17/800x600/oBGI9VnaGLTIRbq54jXKmmmTee2Z3OCsWJwrbsZG.jpeg', 0, '2017-11-27 08:16:21', '2017-11-27 08:16:21'),
(246, 'public/photos/news/27.11.17/800x600/sJhIY20kEFUU8gqx9c5lyw4qd2unZwf4GAJtQRxB.jpeg', 0, '2017-11-27 08:16:45', '2017-11-27 08:16:45'),
(247, 'public/photos/news/27.11.17/800x600/NbtHHLPAZkfDwLJRE6M17BJm7gxsYxQJk3VLPd0H.jpeg', 0, '2017-11-27 08:18:06', '2017-11-27 08:18:06'),
(248, 'public/photos/news/27.11.17/800x600/uoz9VKJjX1e5Fb09VLjM2UZNAuqQ2eaq9REMb7H4.jpeg', 0, '2017-11-27 08:22:00', '2017-11-27 08:22:00'),
(249, 'public/photos/news/27.11.17/800x600/4HF0Q2dlJLb2NOE1fg9r0RiejSr27BsjDwSv6ff4.jpeg', 0, '2017-11-27 08:22:19', '2017-11-27 08:22:19'),
(250, 'public/photos/news/27.11.17/800x600/BIC8EUeB2d23hy1TRH9Abzq94wZhpxD1NK1XSpWp.jpeg', 0, '2017-11-27 08:22:44', '2017-11-27 08:22:44'),
(251, 'public/photos/news/27.11.17/800x600/Edl9ePLufz2tFFOrG0k6xw7MQUnG6bIk3WSr3Uhh.jpeg', 0, '2017-11-27 08:23:08', '2017-11-27 08:23:08'),
(252, 'public/photos/news/27.11.17/800x600/5PeRGZuCoLAX4FiqkE3EXaaNUHiBSoPGtKD2HtNh.jpeg', 0, '2017-11-27 08:23:35', '2017-11-27 08:23:35'),
(253, 'public/photos/news/27.11.17/800x600/h0ND2jP6B4xiGsJ7zLLUQ8ANYG6zlC3wcCIiEpSM.jpeg', 0, '2017-11-27 08:24:16', '2017-11-27 08:24:16'),
(254, 'public/photos/news/27.11.17/800x600/6u7SzZKO9FSVWQIN8JsEQAvdMHOiKEJW28za7bXH.jpeg', 0, '2017-11-27 11:04:33', '2017-11-27 11:04:33'),
(255, 'public/photos/news/27.11.17/800x600/KabLtJer62Lc0rXCysaaOKFk2xmhyzDmgVqZShGH.jpeg', 0, '2017-11-27 11:04:50', '2017-11-27 11:04:50'),
(256, 'public/photos/news/27.11.17/800x600/d35who8duWsKSXBJVM4fOIHATlzGn1vXVFi6jBPe.jpeg', 0, '2017-11-27 11:05:10', '2017-11-27 11:05:10'),
(257, 'public/photos/news/27.11.17/800x600/hgzMYKiLW8TIGbVQMHn2JsW6caRVP4sZDtsO5G2J.jpeg', 0, '2017-11-27 11:05:29', '2017-11-27 11:05:29'),
(258, 'public/photos/news/27.11.17/800x600/EiRYub71QfchY85AxXpVCQMn5wJpFslp2GePtSBV.jpeg', 0, '2017-11-27 11:05:52', '2017-11-27 11:05:52'),
(259, 'public/photos/news/27.11.17/800x600/RsN8HZ3rjrWq19Y6L2iByhpYTPceMeE1nAgsEEOr.jpeg', 0, '2017-11-27 11:06:18', '2017-11-27 11:06:18'),
(260, 'public/photos/news/27.11.17/800x600/yi8BfIpfRr7DBb7dX2xb57dM6JOGZlIWgRbv4wSO.jpeg', 0, '2017-11-27 11:06:40', '2017-11-27 11:06:40'),
(261, 'public/photos/news/27.11.17/800x600/c8qGPszkvy5QBjJ8NewGK3gOG4iGiIiNjwEv1yq9.jpeg', 0, '2017-11-27 11:08:03', '2017-11-27 11:08:03'),
(262, 'public/photos/news/27.11.17/800x600/bUp6wkWeb435zQV5F3k3ITxSruVuwE3oSTKpGF8Q.jpeg', 0, '2017-11-27 11:12:59', '2017-11-27 11:12:59'),
(263, 'public/photos/news/27.11.17/800x600/qAcLkLKyNe4UrPKxaQVwcYR1ngKQkyA3KoNGZXWy.jpeg', 0, '2017-11-27 11:18:22', '2017-11-27 11:18:22'),
(264, 'public/photos/news/27.11.17/800x600/sLVtYyXwxPYbpyU9pXeFeuwumDgwC1cEV3zJ5HHV.jpeg', 0, '2017-11-27 11:18:40', '2017-11-27 11:18:40'),
(265, 'public/photos/news/27.11.17/800x600/9Cw3W1juI9MvqwjSgdeMUQhsdk0RzCKuKkiylSgi.jpeg', 0, '2017-11-27 11:19:02', '2017-11-27 11:19:02'),
(266, 'public/photos/news/27.11.17/800x600/s7Ea0zVEWu6UIHTmK5fyRXTM3GZFabdoSsVUeF92.jpeg', 0, '2017-11-27 11:19:19', '2017-11-27 11:19:19'),
(267, 'public/photos/news/27.11.17/800x600/CAoZuNbG9NVTA9kc2vlRDUnixeJEuxTX8Y6FNLvs.jpeg', 0, '2017-11-27 11:19:35', '2017-11-27 11:19:35'),
(268, 'public/photos/news/27.11.17/800x600/SU3egYvVaxtlMQUhWo2fdEY3YBfiUI61fosbxb4f.jpeg', 0, '2017-11-27 11:20:00', '2017-11-27 11:20:00'),
(269, 'public/photos/news/27.11.17/800x600/ze2UCvvvJpRl3GZC5JijJPR33kPlY6YbeZjiYqjR.jpeg', 0, '2017-11-27 11:20:19', '2017-11-27 11:20:19'),
(270, 'public/photos/news/27.11.17/800x600/lG74GuDzKUVusmM5BS5Kkde6kw8hAjOzA739vHA9.jpeg', 0, '2017-11-27 11:20:45', '2017-11-27 11:20:45'),
(271, 'public/photos/news/27.11.17/800x600/MOME2XSuoIkGuj8DQxHjJtsYWeNv45dgJUhxz8vm.jpeg', 0, '2017-11-27 11:21:07', '2017-11-27 11:21:07'),
(272, 'public/photos/news/27.11.17/800x600/ydMjKGHBPLyST4hS2lQSF8z5uZjGAtxjaar1UM6S.jpeg', 0, '2017-11-27 11:21:32', '2017-11-27 11:21:32'),
(273, 'public/photos/news/27.11.17/800x600/iInF5wQdFlpfV4r8dyMdmEkrs9Xdlk3C2eQsBree.jpeg', 0, '2017-11-27 11:22:18', '2017-11-27 11:22:18'),
(274, 'public/photos/news/27.11.17/800x600/VpenUr4HXs9r47v472K120SmaKGmqa9POsGq9AdJ.jpeg', 0, '2017-11-27 11:23:03', '2017-11-27 11:23:03'),
(275, 'public/photos/news/27.11.17/800x600/EIcIxRvrMVgJwkWnzjvrq09HUEAEQa4l8NWcFca1.jpeg', 0, '2017-11-27 11:23:49', '2017-11-27 11:23:49'),
(276, 'public/photos/news/27.11.17/800x600/BtQYY86o9ftSqZNBrm4AdHfPXOL7jEk0bIBtDdiW.jpeg', 0, '2017-11-27 11:24:26', '2017-11-27 11:24:26'),
(277, 'public/photos/news/27.11.17/800x600/HHb8tHOrV8IoPo5HvPAi58xPflVbNA8P2QQEu1gm.jpeg', 0, '2017-11-27 11:24:54', '2017-11-27 11:24:54'),
(278, 'public/photos/news/27.11.17/800x600/tXiWxaIaFMrX5uwNpFFAK2d8sbeoN4Ro17f3NX5m.jpeg', 0, '2017-11-27 11:25:27', '2017-11-27 11:25:27'),
(279, 'public/photos/news/27.11.17/800x600/DQp40uw28sy8SkHT6jUq16hPTTCOeYoFSVjRWsAd.jpeg', 0, '2017-11-27 11:27:20', '2017-11-27 11:27:20'),
(280, 'public/photos/news/27.11.17/800x600/B24QgZKaWBk6DOsjOLH3SwxseNmi5JY6FxDyHDHH.jpeg', 0, '2017-11-27 11:29:44', '2017-11-27 11:29:44'),
(281, 'public/photos/news/27.11.17/800x600/XjUs9QwctBf7lrvXflkWztbnrR6C1JcmZ2Ay78Gy.jpeg', 0, '2017-11-27 11:30:26', '2017-11-27 11:30:26'),
(282, 'public/photos/news/27.11.17/800x600/QRxcsn5FV5iHnKsaiKYkrAHKPN12mJIvgQ8YYhVF.jpeg', 0, '2017-11-27 11:31:10', '2017-11-27 11:31:10'),
(283, 'public/photos/news/27.11.17/800x600/4QeKDx0lU6GwyWu3KEDxWV6ooQqPwQ5kdE2G4max.jpeg', 0, '2017-11-27 11:35:25', '2017-11-27 11:35:25'),
(284, 'public/photos/news/27.11.17/800x600/bsmcCo43yWWNEQIxWPp1dtPw2cZGDw6F28kHSLL3.jpeg', 0, '2017-11-27 12:31:34', '2017-11-27 12:31:34'),
(285, 'public/photos/news/27.11.17/800x600/GrvLVZDSZc4zVhHKfexO1273vfn5fHGDxWv7LYHX.jpeg', 0, '2017-11-27 12:31:59', '2017-11-27 12:31:59'),
(286, 'public/photos/news/27.11.17/800x600/GDt4L0ZpDe2DsBCPyZ1C40JVylBGXZi7s7j9RuBC.jpeg', 0, '2017-11-27 12:32:20', '2017-11-27 12:32:20'),
(287, 'public/photos/news/27.11.17/800x600/Or1FqeEF6kihFWOTIFsM7TZXhU7B3CVWxQUiNYKB.jpeg', 0, '2017-11-27 12:32:42', '2017-11-27 12:32:42'),
(288, 'public/photos/news/27.11.17/800x600/2598lpje6G0Q6huVsKclWF2yWes0ioM2xUKfKNkU.jpeg', 0, '2017-11-27 12:33:02', '2017-11-27 12:33:02'),
(289, 'public/photos/news/27.11.17/800x600/31J5RYyZ8FRKS2iAH7bLdGfgpxZWThX8wRQKgRmT.jpeg', 0, '2017-11-27 12:33:27', '2017-11-27 12:33:27'),
(290, 'public/photos/news/27.11.17/800x600/8FrtHoNBvQ8mbNKaTHrnklNxJIPOrCiwlqpoL6He.jpeg', 0, '2017-11-27 12:33:54', '2017-11-27 12:33:54'),
(291, 'public/photos/news/27.11.17/800x600/0qRYQoBgu3UlVTTnrXiXTI94ccPk47HfWaPyEG84.jpeg', 0, '2017-11-27 12:34:18', '2017-11-27 12:34:18'),
(292, 'public/photos/news/27.11.17/800x600/SKv5kpeceLhMK5nZq0XPOkXVS7G0hVr6bxi7NHoy.jpeg', 0, '2017-11-27 12:34:46', '2017-11-27 12:34:46'),
(293, 'public/photos/news/27.11.17/800x600/jF7tYNjz9CKEWLxcPcCPEIizC0d2hLYwqKs7e8cf.jpeg', 0, '2017-11-27 12:35:17', '2017-11-27 12:35:17'),
(294, 'public/photos/news/27.11.17/800x600/HYjy835CAOhK0k71x2fjyBRSylo43Bt0aclMKweY.jpeg', 0, '2017-11-27 12:35:50', '2017-11-27 12:35:50'),
(295, 'public/photos/news/27.11.17/800x600/uXh2IBsj1LxYgwWHbqNk5gp0lIc3rxCKh4QxLKpa.jpeg', 0, '2017-11-27 12:36:23', '2017-11-27 12:36:23'),
(296, 'public/photos/news/27.11.17/800x600/YqUlnt6n3Zmcswl03znZ9LprdM94PoNDxrCnjEYY.jpeg', 0, '2017-11-27 12:36:51', '2017-11-27 12:36:51'),
(297, 'public/photos/news/27.11.17/800x600/bTvCa4OFnqeqEjyEus5GXso5qFbazUoBXutteBHX.jpeg', 0, '2017-11-27 12:37:28', '2017-11-27 12:37:28'),
(298, 'public/photos/news/27.11.17/800x600/aC5TSSRwyO9SAihjvFXUdRfuuBjx1zH4PymPrQwb.jpeg', 0, '2017-11-27 12:38:00', '2017-11-27 12:38:00'),
(299, 'public/photos/news/27.11.17/800x600/aErs5ftOfwNgZiExio2BRCg0B3mKCRsMHq64yFN4.jpeg', 0, '2017-11-27 12:38:25', '2017-11-27 12:38:25'),
(300, 'public/photos/news/27.11.17/800x600/GqSQTQ9oR3xtCWZYjz1gPIHaPr29hGGHGpG0DWqH.jpeg', 0, '2017-11-27 12:38:52', '2017-11-27 12:38:52'),
(301, 'public/photos/news/27.11.17/800x600/3oCh8jZMtjrkvS0rZaZSDqeCqyEPFTXo0UkdOIw2.jpeg', 0, '2017-11-27 12:39:18', '2017-11-27 12:39:18'),
(302, 'public/photos/news/27.11.17/800x600/Fl845UGB6OtiXjz8B6NdwYt0HaVb8ioiDj7zBP2z.jpeg', 0, '2017-11-27 12:39:46', '2017-11-27 12:39:46'),
(303, 'public/photos/news/27.11.17/800x600/rJqNGPlicUGgkMNImgVCc82gmEcqvw9ISyJCMrlK.jpeg', 0, '2017-11-27 12:40:31', '2017-11-27 12:40:31'),
(304, 'public/photos/news/27.11.17/800x600/ol1B869L5yI0mxfBIvaZic1iqrnwClF1LeuenmE5.jpeg', 0, '2017-11-27 12:40:59', '2017-11-27 12:40:59'),
(305, 'public/photos/news/27.11.17/800x600/njRR01YuzZMUAjcAjW6sUMKrrcrMCToc0iiMQsR8.jpeg', 0, '2017-11-27 12:41:23', '2017-11-27 12:41:23'),
(306, 'public/photos/news/28.11.17/800x600/reBHjj8JS6JhFLm61PPvdHk7kL2Tt8DI3PXAMzvM.jpeg', 0, '2017-11-28 07:11:18', '2017-11-28 07:11:18'),
(307, 'public/photos/news/28.11.17/800x600/RyfMeG0fwRSXiQP72Of7NVXDNp9DDsyLMofaeBS1.jpeg', 0, '2017-11-28 07:22:25', '2017-11-28 07:22:25'),
(308, 'public/photos/news/28.11.17/800x600/hd8y4udrk0AIGv1MOWmDZCf5SmZHNeLEnqPLkDQQ.jpeg', 0, '2017-11-28 07:22:42', '2017-11-28 07:22:42'),
(309, 'public/photos/news/28.11.17/800x600/3UhMX3Nwx75W0sUPQnIAetezyYdZq8sWVFsai7jm.jpeg', 0, '2017-11-28 07:23:12', '2017-11-28 07:23:12'),
(310, 'public/photos/news/28.11.17/800x600/0PuH8pTSo1AwAolBeyBN7p5LOK8CV9a6G3kqAqGh.jpeg', 0, '2017-11-28 07:23:33', '2017-11-28 07:23:33'),
(311, 'public/photos/news/28.11.17/800x600/kp5HvL2iOvMvfFWjzFfm1CL1H31FKAUivpgDwS60.jpeg', 0, '2017-11-28 07:23:50', '2017-11-28 07:23:50'),
(312, 'public/photos/news/28.11.17/800x600/s04nVxcylIl3BOTZq96EeoE3ES4EmfLCQoViXfOG.jpeg', 0, '2017-11-28 07:24:09', '2017-11-28 07:24:09'),
(313, 'public/photos/news/28.11.17/800x600/w54NhiMX3cIUyHNLUbteiMViX0SgTN3XMJ6jo9c3.jpeg', 0, '2017-11-28 07:24:49', '2017-11-28 07:24:49'),
(314, 'public/photos/news/28.11.17/800x600/2AojNrFv6XVLlQ5PeKtbliyTui7atIYJa7rizjl2.jpeg', 0, '2017-11-28 07:25:08', '2017-11-28 07:25:08'),
(315, 'public/photos/news/28.11.17/800x600/eOV6zFPpBwOOLb8TFFBrczr0KQiM2rpBotE21e0t.jpeg', 0, '2017-11-28 07:25:30', '2017-11-28 07:25:30'),
(316, 'public/photos/news/28.11.17/800x600/3BZQWtLA4a2HFtgUgL64oTwQ9XsSETR7xBtg0hpX.jpeg', 0, '2017-11-28 07:25:53', '2017-11-28 07:25:53'),
(317, 'public/photos/news/28.11.17/800x600/B6GzX1jTw63ECIylcCBpUmno4sgY4KgerPeUxDkv.jpeg', 0, '2017-11-28 07:26:15', '2017-11-28 07:26:15'),
(318, 'public/photos/news/28.11.17/800x600/kKQ2XkncUApxH6iQMbadx5ha5dhWoRqiETwXOeaD.jpeg', 0, '2017-11-28 07:26:43', '2017-11-28 07:26:43'),
(319, 'public/photos/news/28.11.17/800x600/LyGtIzpxTSjAA2kpMzYjmfAGUavoimZZ5b0rwgjq.jpeg', 0, '2017-11-28 07:27:10', '2017-11-28 07:27:10'),
(320, 'public/photos/news/28.11.17/800x600/Lf2KMs16qLdWwbZTQivxP5nHAkKEkwtD9WNx7yQ9.jpeg', 0, '2017-11-28 07:31:06', '2017-11-28 07:31:06'),
(321, 'public/photos/news/28.11.17/800x600/fXx653YIXsY3v47GNpKbFV8AHLbel2lNpkhdT52P.jpeg', 0, '2017-11-28 07:31:32', '2017-11-28 07:31:32'),
(322, 'public/photos/news/28.11.17/800x600/dfpZzm5z6fmLoDRht5oWlt5WsWLODF0jhg6nXlt9.jpeg', 0, '2017-11-28 07:31:59', '2017-11-28 07:31:59'),
(323, 'public/photos/news/28.11.17/800x600/1qx2zOoBhKqunpCXn6RaQN4E9r1dad6usy8MfHN1.jpeg', 0, '2017-11-28 07:32:26', '2017-11-28 07:32:26'),
(324, 'public/photos/news/28.11.17/800x600/IEMlutQevxmEhzppsiOBRvnRcQmHfG7h79P9KtVI.jpeg', 0, '2017-11-28 07:33:16', '2017-11-28 07:33:16'),
(325, 'public/photos/news/28.11.17/800x600/YmadGf6kqE6OVqFPAZ5cAl2vSfi5S8y5oCNCRhMB.jpeg', 0, '2017-11-28 07:37:00', '2017-11-28 07:37:00'),
(326, 'public/photos/news/28.11.17/800x600/ph8RkUYe3Q6jHQv86oloGTOByVxvR8SFdTNTcsOu.jpeg', 0, '2017-11-28 07:44:34', '2017-11-28 07:44:34'),
(327, 'public/photos/news/28.11.17/800x600/6OYByTMJEKFOqKsL3sSrpPqxM6FzMmr4KnC92oSE.jpeg', 0, '2017-11-28 07:44:51', '2017-11-28 07:44:51'),
(328, 'public/photos/news/28.11.17/800x600/v4AQqZSZyyPYalDsJg2sXjw9QZEy28QYzlOFPyg4.jpeg', 0, '2017-11-28 07:45:10', '2017-11-28 07:45:10'),
(329, 'public/photos/news/28.11.17/800x600/VvrSgoVu2x0ZkovuNioXs4CVcmytfXuACIqSKtS6.jpeg', 0, '2017-11-28 07:45:31', '2017-11-28 07:45:31'),
(330, 'public/photos/news/28.11.17/800x600/ZwpB15RJafptm4lZJFcJZHP2iAE6v0UnWx9XQ570.jpeg', 0, '2017-11-28 07:45:52', '2017-11-28 07:45:52'),
(331, 'public/photos/news/28.11.17/800x600/13j2DvZaZXIzgy7AO88lGzcSO8XRjnXEa4KwPSxm.jpeg', 0, '2017-11-28 07:52:20', '2017-11-28 07:52:20'),
(332, 'public/photos/news/28.11.17/800x600/LsB4Jvqrl1mIn9QgbQmMckId4e8NocrlnscntVYp.jpeg', 0, '2017-11-28 07:52:55', '2017-11-28 07:52:55'),
(333, 'public/photos/news/28.11.17/800x600/cN6UG6BUvZKvpG0kAM42anFVWxqtPDsZ1yI9ko24.jpeg', 0, '2017-11-28 07:53:18', '2017-11-28 07:53:18'),
(334, 'public/photos/news/28.11.17/800x600/aomT4v4Pqw43iZmj1eLDvcf7VXfIxkt17tRpAHbU.jpeg', 0, '2017-11-28 07:53:57', '2017-11-28 07:53:57'),
(335, 'public/photos/news/28.11.17/800x600/LB9U4XLqEQOAhn3hfqRYrAPSMevwdQ61enZkKLf3.jpeg', 0, '2017-11-28 07:54:16', '2017-11-28 07:54:16'),
(336, 'public/photos/news/28.11.17/800x600/GC4sphDxzHcGxxhUg9LqOPxYdSr2H7VYj4ntSmsJ.jpeg', 0, '2017-11-28 07:54:41', '2017-11-28 07:54:41'),
(337, 'public/photos/news/28.11.17/800x600/5FqOFwUEmqSqttUGWPzHWjxtohivRbFrE91VhugP.jpeg', 0, '2017-11-28 07:55:04', '2017-11-28 07:55:04'),
(338, 'public/photos/news/28.11.17/800x600/Jbtb1A8hzVg5ktG5QlCTAii39lML5BC9GIvtJa5x.jpeg', 0, '2017-11-28 07:55:57', '2017-11-28 07:55:57'),
(339, 'public/photos/news/28.11.17/800x600/gWtiirvdZXe1QZTrJILgNiChgj93QfqJk5fe4XpA.jpeg', 0, '2017-11-28 07:56:18', '2017-11-28 07:56:18'),
(340, 'public/photos/news/28.11.17/800x600/ZFoXmaVKpthNrqSgr28kEy0PhSOfgbq2ts2WsGkj.jpeg', 0, '2017-11-28 07:57:12', '2017-11-28 07:57:12'),
(341, 'public/photos/news/28.11.17/800x600/tU4f5MRzkwXAB4QaA4FpgdFaNbwcZzPpTguvaSiO.jpeg', 0, '2017-11-28 07:57:32', '2017-11-28 07:57:32'),
(342, 'public/photos/news/28.11.17/800x600/tmc3Hx3fqxHI8NueIwqbXIPvco2WMUoLbur0D8YF.jpeg', 0, '2017-11-28 07:57:51', '2017-11-28 07:57:51'),
(343, 'public/photos/news/28.11.17/800x600/o5hpMEVNb5sl7Fz5lbGOOhvMgt3Kp6mJv20dxhZF.jpeg', 0, '2017-11-28 07:58:10', '2017-11-28 07:58:10'),
(344, 'public/photos/news/28.11.17/800x600/W9POufHYjUMCvGYUp5nxPLwQoCq4OGpMOKCWNH3i.jpeg', 0, '2017-11-28 08:12:55', '2017-11-28 08:12:55'),
(345, 'public/photos/news/28.11.17/800x600/6uLAoR1oWRAvLG1QCNAHiD4waKdwFQoRDgsZ8vof.jpeg', 0, '2017-11-28 08:13:11', '2017-11-28 08:13:11'),
(346, 'public/photos/news/28.11.17/800x600/WrTaiFH2mnGQUlTfuHFfJItaejM7t06J0BrNYBcE.jpeg', 0, '2017-11-28 08:13:28', '2017-11-28 08:13:28'),
(347, 'public/photos/news/28.11.17/800x600/W6TQedpUPG9RQcMpudr0T1WgYWHQyNRM1hgOSQS3.jpeg', 0, '2017-11-28 08:13:46', '2017-11-28 08:13:46'),
(348, 'public/photos/news/28.11.17/800x600/wNJbDs2HT3VnFnwVieTeYZx0QmItsIqr821ik2kZ.jpeg', 0, '2017-11-28 08:14:08', '2017-11-28 08:14:08'),
(349, 'public/photos/news/28.11.17/800x600/nPJOVV5pyKsyxtMfUO8UxkqYUHzwN7jfRtU6gMj3.jpeg', 0, '2017-11-28 08:14:32', '2017-11-28 08:14:32'),
(350, 'public/photos/news/28.11.17/800x600/84Mavlntr9uxNrnEUAIOcztxc6ZJV4ofRfZVKhPG.jpeg', 0, '2017-11-28 08:14:54', '2017-11-28 08:14:54'),
(351, 'public/photos/news/28.11.17/800x600/73xkiETADTVj5mrmduP379kzzvsRjTDIX5wVng8e.jpeg', 0, '2017-11-28 08:15:19', '2017-11-28 08:15:19'),
(352, 'public/photos/news/28.11.17/800x600/G8s5aTQubhSN41apNchC868xVTG4zzfqKaaXMX5R.jpeg', 0, '2017-11-28 08:15:42', '2017-11-28 08:15:42'),
(353, 'public/photos/news/28.11.17/800x600/9yq8h4H819npf838BQwQhP2Hr1LrUEIOkYuqPVcD.jpeg', 0, '2017-11-28 08:16:05', '2017-11-28 08:16:05'),
(354, 'public/photos/news/28.11.17/800x600/wFw8K4vPQTjC4nPxzRsabHwxoah48oPZDmpoZn4h.jpeg', 0, '2017-11-28 08:16:46', '2017-11-28 08:16:46'),
(355, 'public/photos/news/28.11.17/800x600/WGXzqTeDksR2cCBOfnoqOeRBMeIBirIjGQkJh16J.jpeg', 0, '2017-11-28 08:21:09', '2017-11-28 08:21:09'),
(356, 'public/photos/news/28.11.17/800x600/9oruxt0GP0rtTytV5vx3pRSdNkwqcUL2dDcgbhj3.jpeg', 0, '2017-11-28 11:13:27', '2017-11-28 11:13:27'),
(357, 'public/photos/news/28.11.17/800x600/91IU4WKo7Un6qh59s0yLAYyq41NrKLMpPxEC7Htn.jpeg', 0, '2017-11-28 11:13:43', '2017-11-28 11:13:43'),
(358, 'public/photos/news/28.11.17/800x600/jaapB8jDRi6HEXTl9yVzYLArUUeuIwUh7I4ReGVn.jpeg', 0, '2017-11-28 11:14:07', '2017-11-28 11:14:07'),
(359, 'public/photos/news/28.11.17/800x600/EoNGUmQ6tlpr5OgnzhhtPVBReOouq2JdH93KrRvT.jpeg', 0, '2017-11-28 11:14:41', '2017-11-28 11:14:41'),
(360, 'public/photos/news/28.11.17/800x600/MBZLybZdKo0rayRmxbPO8RWCXQ54xQK1nC0JQult.jpeg', 0, '2017-11-28 11:15:07', '2017-11-28 11:15:07'),
(361, 'public/photos/news/28.11.17/800x600/vrDQMRMYIN6vhUcg1gT1XKCPTjgxtosjFcANcV8K.jpeg', 0, '2017-11-28 11:15:47', '2017-11-28 11:15:47'),
(362, 'public/photos/news/28.11.17/800x600/hCKIGvuRpaLkbCkfxjpfyALgRWkkMlYsMl9gp5mN.jpeg', 0, '2017-11-28 11:16:09', '2017-11-28 11:16:09'),
(363, 'public/photos/news/28.11.17/800x600/B4NqRIL8aX02am9sUZJhi1IrfYvrmxRth5AX9eOV.jpeg', 0, '2017-11-28 11:16:33', '2017-11-28 11:16:33'),
(364, 'public/photos/news/28.11.17/800x600/6kWNJQFwS9BRkH7lpddFIjvWEENHJGeHragqqKME.jpeg', 0, '2017-11-28 11:17:13', '2017-11-28 11:17:13'),
(365, 'public/photos/news/28.11.17/800x600/3h4J6edRhN95IhfcuG4NKJj2m43Nsgg0wbY3UfEc.jpeg', 0, '2017-11-28 11:17:37', '2017-11-28 11:17:37'),
(366, 'public/photos/news/28.11.17/800x600/nv11Dwqu78TjSP4TvVHwefXHbjWdEuCBLaDsbfOt.jpeg', 0, '2017-11-28 11:18:04', '2017-11-28 11:18:04'),
(367, 'public/photos/news/28.11.17/800x600/XX6l9c8bMLom07SLDeelU5UqLVzZgIioYpjsYDmU.jpeg', 0, '2017-11-28 11:22:55', '2017-11-28 11:22:55'),
(368, 'public/photos/news/28.11.17/800x600/NQicSDIGpAXGaJnzCklaFYULoRgs2Ils6gva4aKp.jpeg', 0, '2017-11-28 11:23:17', '2017-11-28 11:23:17'),
(369, 'public/photos/news/28.11.17/800x600/YYmZKL7Kbi03Zi6ryUPCChuaviEAsCziaMeTfk5E.jpeg', 0, '2017-11-28 11:23:35', '2017-11-28 11:23:35'),
(370, 'public/photos/news/28.11.17/800x600/grVCGz8IhpcuExpmJpev1RNBRUpw97RJXAS6Yn6K.jpeg', 0, '2017-11-28 11:23:52', '2017-11-28 11:23:52'),
(371, 'public/photos/news/28.11.17/800x600/yjOWPDH79ATG687pRuhA6gHK89VzlhyMMOL2hZet.jpeg', 0, '2017-11-28 11:24:14', '2017-11-28 11:24:14'),
(372, 'public/photos/news/28.11.17/800x600/Lo7mC1N3fFblAEnPIc5ozI8Ge6aSPRH7Yadfaj2e.jpeg', 0, '2017-11-28 11:24:33', '2017-11-28 11:24:33'),
(373, 'public/photos/news/28.11.17/800x600/961t38WAGaMBog1DAqSom8GnuXm8TcGF8IShg0oa.jpeg', 0, '2017-11-28 11:24:56', '2017-11-28 11:24:56'),
(374, 'public/photos/news/28.11.17/800x600/ditbzmHWtFNh6oYvhua5qCgKj3TWIEzXlvFbncW5.jpeg', 0, '2017-11-28 11:26:31', '2017-11-28 11:26:31'),
(375, 'public/photos/news/28.11.17/800x600/z36HAiPEWxW3i95QP9bQRJtpXAe5Y6o7ulUykdkb.jpeg', 0, '2017-11-28 11:26:59', '2017-11-28 11:26:59'),
(376, 'public/photos/news/28.11.17/800x600/g9OI8QTQQQKGYiNkWaH6kQFgNdt1Z0LrvEIdZ12S.jpeg', 0, '2017-11-28 11:27:34', '2017-11-28 11:27:34'),
(377, 'public/photos/news/28.11.17/800x600/e5hkrDo1GXJXTJ7KudSO4ZJXmOjZ6bQVBFA12uZ5.jpeg', 0, '2017-11-28 11:27:58', '2017-11-28 11:27:58'),
(378, 'public/photos/news/28.11.17/800x600/josdFxiYx0hwDPF89OYnUvXko9L8Ru1njDjNlW9R.jpeg', 0, '2017-11-28 11:29:12', '2017-11-28 11:29:12'),
(379, 'public/photos/news/28.11.17/800x600/5fc7ItTQfzeS74Eat42Jewn93v3xyBIqCVqC3qzf.jpeg', 0, '2017-11-28 11:33:25', '2017-11-28 11:33:25'),
(380, 'public/photos/news/28.11.17/800x600/BQggTuvcYtZFLUFEp6WgCviLPmjP7GAz52jDODqy.jpeg', 0, '2017-11-28 11:34:13', '2017-11-28 11:34:13'),
(381, 'public/photos/news/28.11.17/800x600/FGakMZRtWqu2Cv5Gw5Rmh6PfBO6SJId7LBJ8F71o.jpeg', 0, '2017-11-28 11:34:29', '2017-11-28 11:34:29'),
(382, 'public/photos/news/28.11.17/800x600/EVbeS2eXzOp3qSWi31CZqtobMIVjnXBsfPZGgEg4.jpeg', 0, '2017-11-28 11:34:46', '2017-11-28 11:34:46'),
(383, 'public/photos/news/28.11.17/800x600/JUcB4laFK7o7eLODX1R4PdV3ie8OUx5mqnd3WrL0.jpeg', 0, '2017-11-28 11:35:04', '2017-11-28 11:35:04'),
(384, 'public/photos/news/28.11.17/800x600/W9SFL8Vq5rbu7UK1iIAkT7hhRhsEY4MvagCDc1aI.jpeg', 0, '2017-11-28 11:35:21', '2017-11-28 11:35:21'),
(385, 'public/photos/news/28.11.17/800x600/r1TDC7s2waQke8ZhsfVtca2mhY7fN6tsT5XBnjj0.jpeg', 0, '2017-11-28 11:57:04', '2017-11-28 11:57:04'),
(386, 'public/photos/news/28.11.17/800x600/VP2PHmb2gAh9ZuamM83wyr1tGOUcZQPLvmekVvoU.jpeg', 0, '2017-11-28 12:10:16', '2017-11-28 12:10:16'),
(387, 'public/photos/news/28.11.17/800x600/jMJURRLWzhBEHdagDCZ07FB3lVLaOZl69sEZKeQn.jpeg', 0, '2017-11-28 12:15:48', '2017-11-28 12:15:48'),
(388, 'public/photos/news/28.11.17/800x600/MDoPmTklH4qmxWXt3WxqvGuBJn7wwLhxFeD4Aq0x.jpeg', 0, '2017-11-28 12:16:13', '2017-11-28 12:16:13'),
(389, 'public/photos/news/28.11.17/800x600/SmezU7TPCu6hZo7kCeF22n1tqIwEXe9AL2dZbKI2.jpeg', 0, '2017-11-28 12:16:33', '2017-11-28 12:16:33'),
(390, 'public/photos/news/28.11.17/800x600/joEUtJzdOagi3dvm2IVEJU8FJUdj2vwQF27LaxUj.jpeg', 0, '2017-11-28 12:16:53', '2017-11-28 12:16:53'),
(391, 'public/photos/news/28.11.17/800x600/CDhk6O4d5DlgTCi0w1o4u7OXZ7dmeGEidkStTYFB.jpeg', 0, '2017-11-28 12:17:13', '2017-11-28 12:17:13'),
(392, 'public/photos/news/28.11.17/800x600/dLNvxiNs88BVsACZnGokNiSoSb41tVNMzoPrAZV0.jpeg', 0, '2017-11-28 12:17:46', '2017-11-28 12:17:46'),
(393, 'public/photos/news/28.11.17/800x600/n5rx4QLL2glKU7O01QC8WvUEMOfWnbl9ZL0tOxN1.jpeg', 0, '2017-11-28 12:18:03', '2017-11-28 12:18:03'),
(394, 'public/photos/anniversaries/04.12.17/640x480/DEkWjDFMUYtbLK1fXUWjWPpOjQ5C0blIXFetxXXk.png', 0, '2017-12-04 10:56:48', '2017-12-04 10:56:48'),
(395, 'public/photos/anniversaries/04.12.17/640x480/uC28SKVsLU8Rv8I8xBvcvCdrvqHQJfCaIWqUJ9p7.jpeg', 0, '2017-12-04 10:58:27', '2017-12-04 10:58:27'),
(396, 'public/photos/news/04.12.17/800x600/CnSiuW8f7WUXdRjOhiZvvdCQ1GmJj71EZfWMOm6a.jpeg', 0, '2017-12-04 12:03:48', '2017-12-04 12:03:48'),
(397, 'public/photos/news/04.12.17/800x600/KfN7qoMaPHzlJdWR6Snvk48m0ags5nKHozxqzxZt.jpeg', 0, '2017-12-04 12:04:20', '2017-12-04 12:04:20'),
(398, 'public/photos/news/04.12.17/800x600/AjMsd36cdAEBZK5oYBenz2vlShEqmyjMSE0KYGHA.jpeg', 0, '2017-12-04 12:04:38', '2017-12-04 12:04:38'),
(399, 'public/photos/news/04.12.17/800x600/Foi1P9mfsOgQA3O6hZhxxZmBCnWHxhsyXE355R8L.jpeg', 0, '2017-12-04 12:05:12', '2017-12-04 12:05:12'),
(400, 'public/photos/news/04.12.17/800x600/f1Zzy6Ktdo6xmZkgJnnaXs9tf43rNVfkGPgNImqd.jpeg', 0, '2017-12-04 12:05:46', '2017-12-04 12:05:46'),
(401, 'public/photos/news/04.12.17/800x600/gnactuyA5XfiyPCE1z6F61HVLOGkF08jvUDWz6P4.jpeg', 0, '2017-12-04 12:06:35', '2017-12-04 12:06:35'),
(402, 'public/photos/news/04.12.17/800x600/YW2WpSBmRBGoKn2sJQvXzshXviTFm9mzuGr23zX5.jpeg', 0, '2017-12-04 12:07:07', '2017-12-04 12:07:07'),
(403, 'public/photos/news/04.12.17/800x600/jjTBVA2yvgz7vtUHU6VCWbMs21kEhvZUZv4WuDPU.jpeg', 0, '2017-12-04 12:08:43', '2017-12-04 12:08:43'),
(404, 'public/photos/news/04.12.17/800x600/JJjOMF8Dy4RkXhquigN5LcAz8Uah7ZoqFj9SiwKT.jpeg', 0, '2017-12-04 12:09:06', '2017-12-04 12:09:06'),
(405, 'public/photos/news/04.12.17/800x600/VrT8HQAqoWXWwShgT6cofiPMRkAqDrPrqfmHHgLc.jpeg', 0, '2017-12-04 12:09:26', '2017-12-04 12:09:26'),
(406, 'public/photos/news/04.12.17/800x600/DfQYWzeJcBnCNrOvSDjylecSc5KqEkWQbkaZyb2T.jpeg', 0, '2017-12-04 12:32:25', '2017-12-04 12:32:25'),
(407, 'public/photos/news/27.12.17/800x600/4Hf7YMTc9EHO5cakecr4HfmY7F80X7KpzpmfztHH.jpeg', 0, '2017-12-27 06:27:31', '2017-12-27 06:27:31'),
(408, 'public/photos/news/27.12.17/800x600/oQFKBCeY5kDALNSkU3YWsohoXRskrNVcYyJ3TJHW.jpeg', 0, '2017-12-27 06:27:48', '2017-12-27 06:27:48'),
(409, 'public/photos/news/27.12.17/800x600/Z9tlfPSmfw3and8LUEfoG2vetqjgBIJB4MYmKw08.jpeg', 0, '2017-12-27 06:30:05', '2017-12-27 06:30:05'),
(410, 'public/photos/news/27.12.17/800x600/cDgR77yQtubnTJT2HTQBSJO29OC4NshNAKBuscak.jpeg', 0, '2017-12-27 06:30:58', '2017-12-27 06:30:58'),
(411, 'public/photos/news/27.12.17/800x600/rZ0FEvaMCJGiTzKNr0JaWjEaToA6objtk9rkbgfe.jpeg', 0, '2017-12-27 06:34:49', '2017-12-27 06:34:49'),
(412, 'public/photos/news/27.12.17/800x600/q2e5EtbYAX1xjcgsKBwWYTh4lnjarhxwaInhFtqn.jpeg', 0, '2017-12-27 06:51:10', '2017-12-27 06:51:10'),
(413, 'public/photos/news/27.12.17/800x600/8cHWinQR7n7ubJT5cFKgnoP6swYQgiwBnymWKVaO.jpeg', 0, '2017-12-27 06:51:31', '2017-12-27 06:51:31'),
(414, 'public/photos/news/27.12.17/800x600/mg2wDdw7nzmoD4qE2937Rb6msnZG2iPtXdQmamZ3.jpeg', 0, '2017-12-27 06:51:48', '2017-12-27 06:51:48'),
(415, 'public/photos/news/27.12.17/800x600/OLP8BoaUea8DGYeHyAMUN1f6myx3ZEjxydvyIrYW.jpeg', 0, '2017-12-27 06:52:06', '2017-12-27 06:52:06'),
(416, 'public/photos/news/27.12.17/800x600/RRlyCwX0SQ2NaVoZX1Wg6DuqZ2GSiEWTcGwSpBkM.jpeg', 0, '2017-12-27 06:52:26', '2017-12-27 06:52:26'),
(417, 'public/photos/news/27.12.17/800x600/KlgV2GtvMU8biPcKAWbkquVFIG8M2e1a3q0c2Wxj.jpeg', 0, '2017-12-27 06:52:48', '2017-12-27 06:52:48'),
(418, 'public/photos/news/27.12.17/800x600/nde1XryyxCRdHKQ1MICyDifwM9agXcsnEJHavvVW.jpeg', 0, '2017-12-27 06:53:11', '2017-12-27 06:53:11'),
(419, 'public/photos/news/27.12.17/800x600/utQ5gBdTS9XjNZKf7ohJw8ux2d7XsWC0pxLUf9uX.jpeg', 0, '2017-12-27 06:53:36', '2017-12-27 06:53:36'),
(420, 'public/photos/news/27.12.17/800x600/VgXe3tQ9qT5rpdsUi6z6Jd1ZfORnoLUO4it6nv0L.jpeg', 0, '2017-12-27 06:53:59', '2017-12-27 06:53:59'),
(421, 'public/photos/news/27.12.17/800x600/o02Vs8uVBSegfctuhhDh43Woa9zFS2xqD0a7nGZn.jpeg', 0, '2017-12-27 06:54:22', '2017-12-27 06:54:22'),
(422, 'public/photos/news/27.12.17/800x600/7AS0ocFVFlJM9nzTBQ1yZ5qPNVzhRSJYhLXiNUja.jpeg', 0, '2017-12-27 06:55:01', '2017-12-27 06:55:01'),
(423, 'public/photos/news/27.12.17/800x600/HealcmwNV6Vip822llGVjVG3rmPM4wkR6rFvV5aS.jpeg', 0, '2017-12-27 07:06:19', '2017-12-27 07:06:19'),
(424, 'public/photos/news/27.12.17/800x600/1xS3K6Qirp4nVC2SzUjzN8eoxYXHGjbLObOXjZCo.jpeg', 0, '2017-12-27 07:13:24', '2017-12-27 07:13:24'),
(425, 'public/photos/news/27.12.17/800x600/AEOfoV4Btt7W1evhU36RkQRvPCBP9CuIoupRCsjG.jpeg', 0, '2017-12-27 07:13:38', '2017-12-27 07:13:38'),
(426, 'public/photos/news/27.12.17/800x600/c2GhMQ5SOovCT2aJR4NFhS64R841OAVACTXj1088.jpeg', 0, '2017-12-27 07:13:55', '2017-12-27 07:13:55'),
(427, 'public/photos/news/27.12.17/800x600/uvyRO2R87ZyAvFEEi3VqVc74L0GYnd8Fii9S8xRk.jpeg', 0, '2017-12-27 07:14:16', '2017-12-27 07:14:16'),
(428, 'public/photos/news/27.12.17/800x600/p2fOhxGZbGwfkk91Atl48NXypHkPZIzyIEWs9aBH.jpeg', 0, '2017-12-27 07:14:33', '2017-12-27 07:14:33'),
(429, 'public/photos/news/27.12.17/800x600/RKT8s2Zb22T1kU9aOCu3lo995Ukp6FVidTSJop7d.jpeg', 0, '2017-12-27 07:14:52', '2017-12-27 07:14:52'),
(430, 'public/photos/news/27.12.17/800x600/BlNCw5pgch6Fh8Rt0IRFwyvkbaVSfIoa9nOvVDi0.jpeg', 0, '2017-12-27 07:15:10', '2017-12-27 07:15:10'),
(431, 'public/photos/news/27.12.17/800x600/5mEQoyfFhcZw9bsDPOjz4R6TJiFBTAKUCDOzTd76.jpeg', 0, '2017-12-27 07:22:41', '2017-12-27 07:22:41'),
(432, 'public/photos/news/27.12.17/800x600/nWeqhfB1ISUfkiLEGei6tVr3er0APMXXg9q4a4OQ.jpeg', 0, '2017-12-27 07:22:59', '2017-12-27 07:22:59'),
(433, 'public/photos/news/27.12.17/800x600/VFXlP3l2oCv8SVld6Sjtu5xbpNFbD9usRewud8tN.jpeg', 0, '2017-12-27 07:23:18', '2017-12-27 07:23:18'),
(434, 'public/photos/news/27.12.17/800x600/lrEzEPSigC3gpiJj57NQh3y95qt1dAgGeQZYB0qL.jpeg', 0, '2017-12-27 07:23:38', '2017-12-27 07:23:38'),
(435, 'public/photos/news/27.12.17/800x600/8Gl3Dc8zLz77DnDQZvFtnIxvBrCWFqqstEAyO0Q9.jpeg', 0, '2017-12-27 07:23:58', '2017-12-27 07:23:58'),
(436, 'public/photos/news/27.12.17/800x600/pftVrwmFMcoRcty3Xaw1j50Dggy0gmJ5M0c4CiRy.jpeg', 0, '2017-12-27 07:24:23', '2017-12-27 07:24:23'),
(437, 'public/photos/news/27.12.17/800x600/StsmlXFEMjRUkm2bydc0PQgt9UNWgIlvbc6PwhjQ.jpeg', 0, '2017-12-27 07:24:49', '2017-12-27 07:24:49'),
(438, 'public/photos/news/27.12.17/800x600/cXSwxFKEjQWbI10uNq9Dt8nwXkcvaUwIZE0nbwOA.jpeg', 0, '2017-12-27 07:25:19', '2017-12-27 07:25:19'),
(439, 'public/photos/news/27.12.17/800x600/tQ1nkK0IyPsET9Siddqk6vjfV79c9PXUjCxoUyv5.jpeg', 0, '2017-12-27 07:27:23', '2017-12-27 07:27:23'),
(440, 'public/photos/news/10.01.18/800x600/HPrIqXvsYuDNGbBeoyPRk3JSC4zMi1WrxsYEH17N.jpeg', 0, '2018-01-10 08:17:25', '2018-01-10 08:17:25'),
(441, 'public/photos/news/10.01.18/800x600/ev1tNEN5t8wRDFelLQNdjtiegLqnYhnwfs6fsM2b.jpeg', 0, '2018-01-10 08:26:50', '2018-01-10 08:26:50'),
(442, 'public/photos/expos/10.01.18/800x600/3We6OlYGa5tDKfrcan3IJ9MxGC9BZuO4p7g7IQ7q.jpeg', 0, '2018-01-10 08:28:36', '2018-01-10 08:28:36'),
(443, 'public/photos/news/20.02.18/800x600/L9M6sGaemo0xE1EDOzFNzysVCzzQeBv6EfVfIcPV.jpeg', 0, '2018-02-20 06:34:05', '2018-02-20 06:34:05'),
(444, 'public/photos/news/20.02.18/800x600/979zIUIotVxTyrrh2SYdpADPCzPgLCaZLkdE2BaI.jpeg', 0, '2018-02-20 06:41:28', '2018-02-20 06:41:28');

-- --------------------------------------------------------

--
-- Структура таблиці `photo_tag`
--

CREATE TABLE `photo_tag` (
  `tag_id` int(10) UNSIGNED DEFAULT NULL,
  `photo_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `tags`
--

INSERT INTO `tags` (`id`, `value`, `created_at`, `updated_at`) VALUES
(1, 'Роман Коваль', '2017-09-05 09:36:33', '2017-09-05 09:36:33'),
(2, 'Холодний Яр', '2017-09-05 09:36:33', '2017-09-05 09:36:33'),
(3, 'Роман Коваль', '2017-09-05 09:39:11', '2017-09-05 09:39:11'),
(4, 'Холодний Яр', '2017-09-05 09:39:11', '2017-09-05 09:39:11'),
(5, 'Роман Коваль', '2017-09-05 09:41:10', '2017-09-05 09:41:10'),
(6, 'Холодний Яр', '2017-09-05 09:41:10', '2017-09-05 09:41:10'),
(7, 'Роман Коваль', '2017-09-05 09:42:09', '2017-09-05 09:42:09'),
(8, 'Холодний Яр', '2017-09-05 09:42:09', '2017-09-05 09:42:09'),
(9, 'Роман Коваль', '2017-09-05 09:42:17', '2017-09-05 09:42:17'),
(10, 'Холодний Яр', '2017-09-05 09:42:17', '2017-09-05 09:42:17'),
(11, 'Роман Коваль', '2017-09-05 09:42:32', '2017-09-05 09:42:32'),
(12, 'Холодний Яр', '2017-09-05 09:42:32', '2017-09-05 09:42:32'),
(13, 'Роман Коваль', '2017-09-05 10:23:44', '2017-09-05 10:23:44'),
(14, 'Холодний Яр', '2017-09-05 10:23:44', '2017-09-05 10:23:44'),
(15, 'вечір поезії \"Пророк народжений Україною\"', '2017-09-05 10:44:07', '2017-09-05 10:44:07'),
(16, 'до 202 річниці від дня народження Т.Шевченка', '2017-09-05 10:44:07', '2017-09-05 10:44:07'),
(17, 'Мирослав Маринович', '2017-09-06 04:30:38', '2017-09-06 04:30:38'),
(18, '«Всесвіт за колючим дротом»', '2017-09-06 04:30:38', '2017-09-06 04:30:38'),
(19, 'Юрій Іздрик', '2017-09-06 04:42:53', '2017-09-06 04:42:53'),
(20, '\"Summa\"', '2017-09-06 04:42:53', '2017-09-06 04:42:53'),
(21, 'Презентація книги', '2017-09-06 04:42:53', '2017-09-06 04:42:53'),
(22, 'Юрій Іздрик', '2017-09-06 04:43:52', '2017-09-06 04:43:52'),
(23, '&quot;Summa&quot;', '2017-09-06 04:43:52', '2017-09-06 04:43:52'),
(24, 'Презентація книги', '2017-09-06 04:43:52', '2017-09-06 04:43:52'),
(25, '\"Summa\"', '2017-09-06 04:46:31', '2017-09-06 04:46:31'),
(26, 'Юрій Іздрик', '2017-09-06 04:46:31', '2017-09-06 04:46:31'),
(27, 'Презентація книги', '2017-09-06 04:46:31', '2017-09-06 04:46:31'),
(28, 'презентація монографічного дослідження', '2017-09-06 04:54:12', '2017-09-06 04:54:12'),
(29, 'Відомий і невідомий Бруно Шульц', '2017-09-06 04:54:12', '2017-09-06 04:54:12'),
(30, 'Лекція-дискусія', '2017-09-06 05:30:25', '2017-09-06 05:30:25'),
(31, 'львівські франкознавці', '2017-09-06 05:30:25', '2017-09-06 05:30:25'),
(32, 'Наталя й Богдан Тихолоз', '2017-09-06 05:30:25', '2017-09-06 05:30:25'),
(33, '\"Франко: наживо. Геній поза кадром\"', '2017-09-06 05:30:25', '2017-09-06 05:30:25'),
(34, 'Роман Коваль', '2017-09-06 05:50:58', '2017-09-06 05:50:58'),
(35, 'Холодний Яр', '2017-09-06 05:50:58', '2017-09-06 05:50:58'),
(36, 'Літературна презентація', '2017-09-06 05:59:41', '2017-09-06 05:59:41'),
(37, 'Іван Франко \"Я син народу, що вгору йде...\"', '2017-09-06 05:59:41', '2017-09-06 05:59:41'),
(38, '&quot;Summa&quot;', '2017-09-06 13:21:02', '2017-09-06 13:21:02'),
(39, 'Юрій Іздрик', '2017-09-06 13:21:02', '2017-09-06 13:21:02'),
(40, 'Презентація книги', '2017-09-06 13:21:02', '2017-09-06 13:21:02'),
(41, '&quot;Summa&quot;', '2017-09-06 13:38:13', '2017-09-06 13:38:13'),
(42, 'Юрій Іздрик', '2017-09-06 13:38:13', '2017-09-06 13:38:13'),
(43, 'Презентація книги', '2017-09-06 13:38:13', '2017-09-06 13:38:13'),
(44, '&quot;Summa&quot;', '2017-09-06 13:41:43', '2017-09-06 13:41:43'),
(45, 'Юрій Іздрик', '2017-09-06 13:41:43', '2017-09-06 13:41:43'),
(46, 'Презентація книги', '2017-09-06 13:41:43', '2017-09-06 13:41:43'),
(47, 'Презентація книги', '2017-09-07 05:49:48', '2017-09-07 05:49:48'),
(48, 'Катерина Бойко-Сікори та Любомир Сікори \"Жива бисіда\"', '2017-09-07 05:49:48', '2017-09-07 05:49:48'),
(49, 'Презентація книги', '2017-09-07 05:50:46', '2017-09-07 05:50:46'),
(50, 'Катерина Бойко-Сікори та Любомир Сікори &quot;Жива бисіда&quot;', '2017-09-07 05:50:46', '2017-09-07 05:50:46'),
(51, 'Презентація книги', '2017-09-07 05:53:17', '2017-09-07 05:53:17'),
(52, 'Катерина Бойко-Сікора та Любомир Сікора \"Жива бисіда\"', '2017-09-07 05:53:17', '2017-09-07 05:53:17'),
(53, 'Шульцфест у Центральній бібліотеці ім.В.Чорновола', '2017-09-07 05:59:16', '2017-09-07 05:59:16'),
(54, 'фестиваль Бруно Шульца у Дрогобичі', '2017-09-07 05:59:16', '2017-09-07 05:59:16'),
(55, 'Шульцфест у Центральній бібліотеці ім.В.Чорновола', '2017-09-07 06:06:22', '2017-09-07 06:06:22'),
(56, 'Агата Тушинська', '2017-09-07 06:06:22', '2017-09-07 06:06:22'),
(57, '\"Наречена Шульца\"', '2017-09-07 06:06:22', '2017-09-07 06:06:22'),
(58, 'Шульцфест у Центральній бібліотеці ім.В.Чорновола', '2017-09-07 07:20:47', '2017-09-07 07:20:47'),
(59, 'Агата Тушинська', '2017-09-07 07:20:47', '2017-09-07 07:20:47'),
(60, '&quot;Наречена Шульца&quot;', '2017-09-07 07:20:47', '2017-09-07 07:20:47'),
(61, 'Юрій Андрухович', '2017-09-08 06:23:15', '2017-09-08 06:23:15'),
(62, 'Авторський вечір', '2017-09-08 06:23:15', '2017-09-08 06:23:15'),
(63, 'VII Міжнародний фестиваль Бруно Шульца у Дрогобичі', '2017-09-08 06:23:15', '2017-09-08 06:23:15'),
(64, 'Літературна зустріч', '2017-09-11 04:43:52', '2017-09-11 04:43:52'),
(65, 'Юрій Винничук', '2017-09-11 04:43:52', '2017-09-11 04:43:52'),
(66, 'VII Міжнародний фестиваль Бруно Шульца у Дрогобичі', '2017-09-11 04:43:52', '2017-09-11 04:43:52'),
(67, 'Літературна зустріч', '2017-09-11 04:48:14', '2017-09-11 04:48:14'),
(68, 'Тарас Прохасько', '2017-09-11 04:48:14', '2017-09-11 04:48:14'),
(69, 'Даніель Одія', '2017-09-11 04:48:14', '2017-09-11 04:48:14'),
(70, 'Олександр Бойченко', '2017-09-11 04:48:14', '2017-09-11 04:48:14'),
(71, 'VII Міжнародний фестиваль Бруно Шульца у Дрогобичі', '2017-09-11 04:48:14', '2017-09-11 04:48:14'),
(72, 'Літературна зустріч', '2017-09-11 04:48:41', '2017-09-11 04:48:41'),
(73, 'Тарас Прохасько', '2017-09-11 04:48:41', '2017-09-11 04:48:41'),
(74, 'Даніель Одія', '2017-09-11 04:48:41', '2017-09-11 04:48:41'),
(75, 'Олександр Бойченко', '2017-09-11 04:48:41', '2017-09-11 04:48:41'),
(76, 'VII Міжнародний фестиваль Бруно Шульца у Дрогобичі', '2017-09-11 04:48:41', '2017-09-11 04:48:41'),
(77, 'Авторська зустріч', '2017-09-11 04:53:23', '2017-09-11 04:53:23'),
(78, 'Сергій Жадан', '2017-09-11 04:53:23', '2017-09-11 04:53:23'),
(79, 'фестиваль Бруно Шульца у Дрогобичі', '2017-09-11 04:53:23', '2017-09-11 04:53:23'),
(80, 'Літературна зустріч', '2017-09-11 04:56:18', '2017-09-11 04:56:18'),
(81, 'Ігнацій Карпович', '2017-09-11 04:56:18', '2017-09-11 04:56:18'),
(82, 'Остап Сливинський', '2017-09-11 04:56:18', '2017-09-11 04:56:18'),
(83, 'VII Міжнародний фестиваль Бруно Шульца у Дрогобичі', '2017-09-11 04:56:18', '2017-09-11 04:56:18'),
(84, 'Авторська зустріч', '2017-09-11 05:06:09', '2017-09-11 05:06:09'),
(85, 'Олександр Бойченко', '2017-09-11 05:06:09', '2017-09-11 05:06:09'),
(86, 'VII Міжнародний фестиваль Бруно Шульца у Дрогобичі', '2017-09-11 05:06:09', '2017-09-11 05:06:09'),
(87, 'Авторська зустріч', '2017-09-12 04:33:14', '2017-09-12 04:33:14'),
(88, 'Олександр Бойченко', '2017-09-12 04:33:14', '2017-09-12 04:33:14'),
(89, 'VII Міжнародний фестиваль Бруно Шульца у Дрогобичі', '2017-09-12 04:33:14', '2017-09-12 04:33:14'),
(90, 'Авторська зустріч', '2017-09-13 04:16:13', '2017-09-13 04:16:13'),
(91, 'Олександр Бойченко', '2017-09-13 04:16:13', '2017-09-13 04:16:13'),
(92, 'VII Міжнародний фестиваль Бруно Шульца у Дрогобичі', '2017-09-13 04:16:13', '2017-09-13 04:16:13'),
(93, 'Юрій Андрухович', '2017-09-14 04:43:12', '2017-09-14 04:43:12'),
(94, 'Авторський вечір', '2017-09-14 04:43:12', '2017-09-14 04:43:12'),
(95, 'VII Міжнародний фестиваль Бруно Шульца у Дрогобичі', '2017-09-14 04:43:12', '2017-09-14 04:43:12'),
(96, 'Роман Коваль', '2017-09-14 05:50:12', '2017-09-14 05:50:12'),
(97, 'Холодний Яр', '2017-09-14 05:50:12', '2017-09-14 05:50:12'),
(98, '\"Франко: наживо. Геній поза кадром.\"', '2017-09-18 04:49:54', '2017-09-18 04:49:54'),
(99, 'Лекція-дискусія', '2017-09-18 04:49:54', '2017-09-18 04:49:54'),
(100, 'Наталя й Богдан Тихолоз', '2017-09-18 04:49:54', '2017-09-18 04:49:54'),
(101, 'Літературна презентація', '2017-09-18 04:58:59', '2017-09-18 04:58:59'),
(102, '\"Я син народу, що вгору йде...\"', '2017-09-18 04:58:59', '2017-09-18 04:58:59'),
(103, '\"Краса і велич символів державних\"', '2017-09-18 05:05:37', '2017-09-18 05:05:37'),
(104, 'Мить історії', '2017-09-18 05:05:37', '2017-09-18 05:05:37'),
(105, 'Презентація нових книжкових видань Романа Пастуха', '2017-09-18 05:56:01', '2017-09-18 05:56:01'),
(106, 'До 160-річчя від дня народження Івана Франка', '2017-09-18 05:56:01', '2017-09-18 05:56:01'),
(107, 'Книжкова виставка', '2017-09-18 06:03:30', '2017-09-18 06:03:30'),
(108, '\"Україна незалежна: погляд крізь час\"', '2017-09-18 06:03:30', '2017-09-18 06:03:30'),
(109, 'Роман Коваль', '2017-09-19 10:23:16', '2017-09-19 10:23:16'),
(110, 'Холодний Яр', '2017-09-19 10:23:16', '2017-09-19 10:23:16'),
(111, 'Роман Коваль', '2017-09-19 12:16:18', '2017-09-19 12:16:18'),
(112, 'Холодний Яр', '2017-09-19 12:16:18', '2017-09-19 12:16:18'),
(113, 'Книжкова виставка', '2017-09-20 07:50:49', '2017-09-20 07:50:49'),
(114, '&quot;Україна незалежна: погляд крізь час&quot;', '2017-09-20 07:50:49', '2017-09-20 07:50:49'),
(115, 'Книжкова виставка', '2017-09-20 08:01:07', '2017-09-20 08:01:07'),
(116, '&quot;Україна незалежна: погляд крізь час&quot;', '2017-09-20 08:01:07', '2017-09-20 08:01:07'),
(117, 'Книжкова виставка', '2017-09-20 08:08:57', '2017-09-20 08:08:57'),
(118, '&quot;Україна незалежна: погляд крізь час&quot;', '2017-09-20 08:08:57', '2017-09-20 08:08:57'),
(119, 'Брати Капранови', '2017-09-22 07:38:23', '2017-09-22 07:38:23'),
(120, 'роман «Забуть-річка»', '2017-09-22 07:38:23', '2017-09-22 07:38:23'),
(121, 'Брати Капранови', '2017-09-22 07:39:51', '2017-09-22 07:39:51'),
(122, 'роман «Забуть-річка»', '2017-09-22 07:39:51', '2017-09-22 07:39:51'),
(123, 'До 160-річчя від дня народження Івана Франка', '2017-09-25 09:56:19', '2017-09-25 09:56:19'),
(124, '\"Низький уклін тобі великий наш Земляче...\"', '2017-09-25 09:56:19', '2017-09-25 09:56:19'),
(125, 'Година поезії', '2017-09-25 09:56:19', '2017-09-25 09:56:19'),
(126, 'Андрій Любко', '2017-09-25 10:11:31', '2017-09-25 10:11:31'),
(127, '\"Кімната для печалі\"', '2017-09-25 10:11:31', '2017-09-25 10:11:31'),
(128, 'Авторська зустріч', '2017-09-25 10:11:31', '2017-09-25 10:11:31'),
(129, 'Презентація книги', '2017-09-25 10:11:31', '2017-09-25 10:11:31'),
(130, 'Авторська зустріч з Галиною Пагутяк', '2017-09-25 10:49:37', '2017-09-25 10:49:37'),
(131, 'Презентація книги', '2017-09-25 10:49:37', '2017-09-25 10:49:37'),
(132, '\"Гіркі Землі\"', '2017-09-25 10:49:37', '2017-09-25 10:49:37'),
(133, '&quot;Кімната для печалі&quot;', '2017-09-25 10:51:42', '2017-09-25 10:51:42'),
(134, 'Авторська зустріч', '2017-09-25 10:51:42', '2017-09-25 10:51:42'),
(135, 'Презентація книги', '2017-09-25 10:51:42', '2017-09-25 10:51:42'),
(136, 'Андрій Любка', '2017-09-25 10:51:42', '2017-09-25 10:51:42'),
(137, 'ЗУНР', '2017-09-25 11:04:34', '2017-09-25 11:04:34'),
(138, 'Олександр Ірванець', '2017-09-25 11:19:18', '2017-09-25 11:19:18'),
(139, 'Презентація книги', '2017-09-25 11:19:18', '2017-09-25 11:19:18'),
(140, 'Екскурсія', '2017-09-25 11:33:33', '2017-09-25 11:33:33'),
(141, 'екскурсія по бібліотеці', '2017-09-25 11:33:33', '2017-09-25 11:33:33'),
(142, 'Авторська зустріч', '2017-09-26 04:28:06', '2017-09-26 04:28:06'),
(143, 'Презентація книги', '2017-09-26 04:28:06', '2017-09-26 04:28:06'),
(144, 'Любов Проць', '2017-09-26 04:28:06', '2017-09-26 04:28:06'),
(145, '\"ЛАСТІВ\'ЯТКО\"', '2017-09-26 04:28:06', '2017-09-26 04:28:06'),
(146, 'Літературна зустріч', '2017-09-26 05:29:07', '2017-09-26 05:29:07'),
(147, 'Юрій Андрухович', '2017-09-26 05:29:07', '2017-09-26 05:29:07'),
(148, 'Софія Андрухович', '2017-09-26 05:29:07', '2017-09-26 05:29:07'),
(149, 'Андрій Бондар', '2017-09-26 05:29:07', '2017-09-26 05:29:07'),
(150, '\"Історія, варта цілого яблуневого саду\"', '2017-09-26 05:48:59', '2017-09-26 05:48:59'),
(151, 'Максим Дупешко', '2017-09-26 05:48:59', '2017-09-26 05:48:59'),
(152, 'Літературна зустріч', '2017-09-26 05:48:59', '2017-09-26 05:48:59'),
(153, 'Презентація книги', '2017-09-26 05:48:59', '2017-09-26 05:48:59'),
(154, 'До 160-річчя від дня народження Івана Франка', '2017-11-13 12:44:34', '2017-11-13 12:44:34'),
(155, 'Мультимедійна презентація', '2017-11-13 12:44:34', '2017-11-13 12:44:34'),
(156, 'Іван Франко', '2017-11-13 12:44:34', '2017-11-13 12:44:34'),
(157, 'Іван Франко', '2017-11-13 12:48:10', '2017-11-13 12:48:10'),
(158, 'До 160-річчя від дня народження Івана Франка', '2017-11-13 12:48:10', '2017-11-13 12:48:10'),
(159, 'Мультимедійна презентація', '2017-11-13 12:48:10', '2017-11-13 12:48:10'),
(160, 'Іван Франко', '2017-11-14 08:06:29', '2017-11-14 08:06:29'),
(161, 'До 160-річчя від дня народження Івана Франка', '2017-11-14 08:06:29', '2017-11-14 08:06:29'),
(162, 'Мультимедійна презентація', '2017-11-14 08:06:29', '2017-11-14 08:06:29'),
(163, 'Іван Франко', '2017-11-15 06:32:15', '2017-11-15 06:32:15'),
(164, 'До 160-річчя від дня народження Івана Франка', '2017-11-15 06:32:15', '2017-11-15 06:32:15'),
(165, 'Мультимедійна презентація', '2017-11-15 06:32:15', '2017-11-15 06:32:15'),
(166, 'Іван Франко', '2017-11-15 06:36:46', '2017-11-15 06:36:46'),
(167, 'До 160-річчя від дня народження Івана Франка', '2017-11-15 06:36:46', '2017-11-15 06:36:46'),
(168, 'Мультимедійна презентація', '2017-11-15 06:36:46', '2017-11-15 06:36:46'),
(169, 'До 160-річчя від дня народження Івана Франка', '2017-11-15 06:54:42', '2017-11-15 06:54:42'),
(170, 'Мультимедійна презентація', '2017-11-15 06:54:42', '2017-11-15 06:54:42'),
(171, 'Іван Франко', '2017-11-15 06:54:42', '2017-11-15 06:54:42'),
(172, 'Австрія', '2017-11-27 07:47:10', '2017-11-27 07:47:10'),
(173, 'Дні Австрії у Дрогобичі', '2017-11-27 07:47:10', '2017-11-27 07:47:10'),
(174, 'Австрія - перлина Європи', '2017-11-27 07:47:10', '2017-11-27 07:47:10'),
(175, 'Книжкова виставка', '2017-11-27 07:47:10', '2017-11-27 07:47:10'),
(176, 'Писанки Український Карпат', '2017-11-27 07:54:51', '2017-11-27 07:54:51'),
(177, 'Мультимедійна презентація', '2017-11-27 07:54:51', '2017-11-27 07:54:51'),
(178, 'писанки', '2017-11-27 07:54:51', '2017-11-27 07:54:51'),
(179, 'Презентація книги', '2017-11-27 08:07:22', '2017-11-27 08:07:22'),
(180, 'Тарас Метик', '2017-11-27 08:07:22', '2017-11-27 08:07:22'),
(181, 'Нескорима', '2017-11-27 08:07:22', '2017-11-27 08:07:22'),
(182, 'До 75-ліття створення Української Повстанської Армії', '2017-11-27 08:07:22', '2017-11-27 08:07:22'),
(183, 'Година спілкування', '2017-11-27 08:18:06', '2017-11-27 08:18:06'),
(184, '\"Книга в моєму житті\"', '2017-11-27 08:18:06', '2017-11-27 08:18:06'),
(185, 'Презентація книги', '2017-11-27 08:24:16', '2017-11-27 08:24:16'),
(186, '\"Пам\'ятники, пам\'ятні таблиці та знаки Дрогобича\"', '2017-11-27 08:24:16', '2017-11-27 08:24:16'),
(187, 'Адас Якубаускас', '2017-11-27 11:08:03', '2017-11-27 11:08:03'),
(188, 'творча зустріч', '2017-11-27 11:08:03', '2017-11-27 11:08:03'),
(189, 'книжкова експозиція', '2017-11-27 11:12:59', '2017-11-27 11:12:59'),
(190, 'Україна – США', '2017-11-27 11:12:59', '2017-11-27 11:12:59'),
(191, 'Презентація книги', '2017-11-27 11:35:25', '2017-11-27 11:35:25'),
(192, 'есе про все', '2017-11-27 11:35:25', '2017-11-27 11:35:25'),
(193, 'Єва Райська «Півтора неба»', '2017-11-27 11:35:25', '2017-11-27 11:35:25'),
(194, 'Андрій Юркевич «Трансклімат»', '2017-11-27 11:35:25', '2017-11-27 11:35:25'),
(195, 'Наталка Янушевич «Фотограф снів»', '2017-11-27 11:35:25', '2017-11-27 11:35:25'),
(196, 'Уляна Кацал «Кава і бруківка»', '2017-11-27 11:35:25', '2017-11-27 11:35:25'),
(197, 'Роман Онишкевич  «Історії до пива»', '2017-11-27 11:35:25', '2017-11-27 11:35:25'),
(198, 'Презентація книги', '2017-11-27 12:41:23', '2017-11-27 12:41:23'),
(199, 'Анізія Онищак', '2017-11-27 12:41:23', '2017-11-27 12:41:23'),
(200, '\"Ярина\"', '2017-11-27 12:41:23', '2017-11-27 12:41:23'),
(201, 'Союз Українок Дрогобиччини', '2017-11-27 12:41:23', '2017-11-27 12:41:23'),
(202, 'сучасні Герої України', '2017-11-28 07:11:18', '2017-11-28 07:11:18'),
(203, 'мультимедійна презентація видань', '2017-11-28 07:11:18', '2017-11-28 07:11:18'),
(204, 'День Захисника України', '2017-11-28 07:11:18', '2017-11-28 07:11:18'),
(205, 'За честь , за долю, за українську волю', '2017-11-28 07:11:18', '2017-11-28 07:11:18'),
(206, '«…Не торкай мою землю бо священна вона!..»', '2017-11-28 07:33:16', '2017-11-28 07:33:16'),
(207, 'Авторський вечір', '2017-11-28 07:33:16', '2017-11-28 07:33:16'),
(208, 'Антоніна Листопад', '2017-11-28 07:33:16', '2017-11-28 07:33:16'),
(209, 'Книжкова виставка', '2017-11-28 07:37:00', '2017-11-28 07:37:00'),
(210, '«Тріумф і трагедія ЗУНР»', '2017-11-28 07:37:00', '2017-11-28 07:37:00'),
(211, 'ЗУНР', '2017-11-28 07:37:00', '2017-11-28 07:37:00'),
(212, 'Година спілкування', '2017-11-28 07:45:52', '2017-11-28 07:45:52'),
(213, '\"Книга у моєму житті\"', '2017-11-28 07:45:52', '2017-11-28 07:45:52'),
(214, 'Творча зустріч', '2017-11-28 07:58:10', '2017-11-28 07:58:10'),
(215, 'Еліна Свенцицька', '2017-11-28 07:58:10', '2017-11-28 07:58:10'),
(216, 'Годину спілкування', '2017-11-28 08:21:09', '2017-11-28 08:21:09'),
(217, '«Книга в моєму житті»', '2017-11-28 08:21:09', '2017-11-28 08:21:09'),
(218, '«Друга осінь - 2017»', '2017-11-28 11:18:04', '2017-11-28 11:18:04'),
(219, 'презентація книжки', '2017-11-28 11:18:04', '2017-11-28 11:18:04'),
(220, '«Друга Осінь - 2017»', '2017-11-28 11:29:12', '2017-11-28 11:29:12'),
(221, 'листопадові зустрічі в бібліотеці', '2017-11-28 11:29:12', '2017-11-28 11:29:12'),
(222, 'книжкова виставка «Україна понад усе!»', '2017-11-28 11:35:21', '2017-11-28 11:35:21'),
(223, 'День Гідності та Свободи', '2017-11-28 11:35:21', '2017-11-28 11:35:21'),
(224, 'книжкова виставка', '2017-11-28 11:35:21', '2017-11-28 11:35:21'),
(225, 'Соня Кошкіна «Майдан. Нерозказана історія»', '2017-11-28 11:57:04', '2017-11-28 11:57:04'),
(226, 'Мультимедійний огляд книги', '2017-11-28 11:57:04', '2017-11-28 11:57:04'),
(227, 'Прес-реліз по книжкових виданнях', '2017-11-28 12:10:16', '2017-11-28 12:10:16'),
(228, 'Голодомор', '2017-11-28 12:10:16', '2017-11-28 12:10:16'),
(229, 'пам’яті жертв Голодомору', '2017-11-28 12:10:16', '2017-11-28 12:10:16'),
(230, '«Спільна пам’ять, спільна біль»', '2017-11-28 12:10:16', '2017-11-28 12:10:16'),
(231, 'Галина Фесюк', '2017-11-28 12:18:03', '2017-11-28 12:18:03'),
(232, 'Людмила Пуляєва', '2017-11-28 12:18:03', '2017-11-28 12:18:03'),
(233, 'літературна зустріч', '2017-11-28 12:18:03', '2017-11-28 12:18:03'),
(234, 'Макс Кідрук', '2017-12-04 12:32:25', '2017-12-04 12:32:25'),
(235, 'Літературна зустріч', '2017-12-04 12:32:25', '2017-12-04 12:32:25'),
(236, '«Не озирайся і мовчи»', '2017-12-04 12:32:25', '2017-12-04 12:32:25'),
(237, 'День Святого Миколая', '2017-12-27 07:06:19', '2017-12-27 07:06:19'),
(238, 'Бібіліотека для дітей', '2017-12-27 07:06:19', '2017-12-27 07:06:19'),
(239, 'Читацька конференція «Україна починається з тебе»', '2017-12-27 07:27:23', '2017-12-27 07:27:23'),
(240, 'до 80-річчя від дня народження В’ячеслава Чорновола', '2017-12-27 07:27:23', '2017-12-27 07:27:23'),
(241, 'В’ячеслав Чорновіл', '2017-12-27 07:27:23', '2017-12-27 07:27:23'),
(242, 'мультимедійна презентація', '2018-01-10 08:28:36', '2018-01-10 08:28:36'),
(243, 'книжково-ілюстративна виставка', '2018-01-10 08:28:36', '2018-01-10 08:28:36'),
(244, '«У сяйві Різдва»', '2018-01-10 08:28:36', '2018-01-10 08:28:36'),
(245, 'Небесна Сотня', '2018-02-20 06:34:06', '2018-02-20 06:34:06'),
(246, '«Патріоти України – вихідці з Дрогобиччини»', '2018-02-20 06:34:06', '2018-02-20 06:34:06'),
(247, 'Виставка-вшанування', '2018-02-20 06:34:06', '2018-02-20 06:34:06'),
(248, 'Книжкова виставка', '2018-02-20 06:41:28', '2018-02-20 06:41:28'),
(249, 'Роман Пастух', '2018-02-20 06:41:28', '2018-02-20 06:41:28'),
(250, 'Книги одного автора', '2018-02-20 06:41:28', '2018-02-20 06:41:28');

-- --------------------------------------------------------

--
-- Структура таблиці `tag_video`
--

CREATE TABLE `tag_video` (
  `tag_id` int(10) UNSIGNED DEFAULT NULL,
  `video_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `superuser` tinyint(1) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `username`, `superuser`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'for.a.kvadrat@gmail.com', '$2y$10$wjJRvJmdY2T3s0mrMGL9suf8.VMGg0uYZoYPsHsdAjtKayTvGmnTS', 'root', 0, 'Izn42R6oy5Ea4rEMWTGg2ZRWsjHLOhTM6RitA27x3kZM7NGydIoy0uMUctop', '2017-09-04 17:50:08', '2017-09-04 17:50:08');

-- --------------------------------------------------------

--
-- Структура таблиці `videos`
--

CREATE TABLE `videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `videos`
--

INSERT INTO `videos` (`id`, `link`, `created_at`, `updated_at`) VALUES
(1, '<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/LIqQNG_q2us\" frameborder=\"0\" gesture=\"media\" allowfullscreen></iframe>', '2017-11-13 12:32:11', '2017-11-13 12:32:11'),
(2, 'https://youtu.be/eR8QdRwD0Nc', '2017-11-13 12:44:34', '2017-11-13 12:44:34'),
(3, '<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/eR8QdRwD0Nc\" frameborder=\"0\" gesture=\"media\" allowfullscreen></iframe>', '2017-11-13 12:48:10', '2017-11-13 12:48:10'),
(4, '<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/eR8QdRwD0Nc\" frameborder=\"0\" gesture=\"media\" allowfullscreen></iframe>', '2017-11-15 06:54:42', '2017-11-15 06:54:42'),
(5, '<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/05xs2hFNLvE\" frameborder=\"0\" gesture=\"media\" allowfullscreen></iframe>', '2017-11-27 07:47:10', '2017-11-27 07:47:10'),
(6, '<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/h4Gk_qfJlD0\" frameborder=\"0\" gesture=\"media\" allowfullscreen></iframe>', '2017-11-27 07:54:51', '2017-11-27 07:54:51'),
(7, '<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/DSLwjWioJXA\" frameborder=\"0\" gesture=\"media\" allowfullscreen></iframe>', '2017-11-28 07:11:18', '2017-11-28 07:11:18'),
(8, '<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/4oksh4Thw0M\" frameborder=\"0\" gesture=\"media\" allow=\"encrypted-media\" allowfullscreen></iframe>', '2017-11-28 11:57:04', '2017-11-28 11:57:04'),
(9, '<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/tUrjnR9BkA8\" frameborder=\"0\" gesture=\"media\" allow=\"encrypted-media\" allowfullscreen></iframe>', '2017-11-28 12:10:16', '2017-11-28 12:10:16'),
(10, '<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/OpfXLysSVWM\" frameborder=\"0\" gesture=\"media\" allow=\"encrypted-media\" allowfullscreen></iframe>', '2018-01-10 08:28:36', '2018-01-10 08:28:36');

-- --------------------------------------------------------

--
-- Структура таблиці `video_tag`
--

CREATE TABLE `video_tag` (
  `tag_id` int(10) UNSIGNED DEFAULT NULL,
  `video_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_category_id_foreign` (`category_id`);

--
-- Індекси таблиці `article_book`
--
ALTER TABLE `article_book`
  ADD KEY `book_article_article_id_foreign` (`article_id`),
  ADD KEY `book_article_book_id_foreign` (`book_id`);

--
-- Індекси таблиці `article_categories`
--
ALTER TABLE `article_categories`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `article_event`
--
ALTER TABLE `article_event`
  ADD KEY `article_event_articles_id_foreign` (`articles_id`),
  ADD KEY `article_event_events_id_foreign` (`events_id`);

--
-- Індекси таблиці `article_photo`
--
ALTER TABLE `article_photo`
  ADD KEY `article_photo_article_id_foreign` (`article_id`),
  ADD KEY `article_photo_photo_id_foreign` (`photo_id`);

--
-- Індекси таблиці `article_tag`
--
ALTER TABLE `article_tag`
  ADD KEY `article_tag_tag_id_foreign` (`tag_id`),
  ADD KEY `article_tag_article_id_foreign` (`article_id`);

--
-- Індекси таблиці `article_video`
--
ALTER TABLE `article_video`
  ADD KEY `video_article_article_id_foreign` (`article_id`),
  ADD KEY `video_article_video_id_foreign` (`video_id`);

--
-- Індекси таблиці `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `author_book`
--
ALTER TABLE `author_book`
  ADD KEY `book_author_book_id_foreign` (`book_id`),
  ADD KEY `book_author_author_id_foreign` (`author_id`);

--
-- Індекси таблиці `author_photo`
--
ALTER TABLE `author_photo`
  ADD KEY `author_photo_authors_id_foreign` (`authors_id`),
  ADD KEY `author_photo_photo_id_foreign` (`photo_id`);

--
-- Індекси таблиці `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_category_id_foreign` (`category_id`);

--
-- Індекси таблиці `book_categories`
--
ALTER TABLE `book_categories`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `book_edition`
--
ALTER TABLE `book_edition`
  ADD KEY `book_edition_book_id_foreign` (`book_id`),
  ADD KEY `book_edition_edition_id_foreign` (`edition_id`);

--
-- Індекси таблиці `book_genre`
--
ALTER TABLE `book_genre`
  ADD KEY `book_genre_book_id_foreign` (`book_id`),
  ADD KEY `book_genre_genre_id_foreign` (`genre_id`);

--
-- Індекси таблиці `book_language`
--
ALTER TABLE `book_language`
  ADD KEY `book_language_book_id_foreign` (`book_id`),
  ADD KEY `book_language_language_id_foreign` (`language_id`);

--
-- Індекси таблиці `book_photo`
--
ALTER TABLE `book_photo`
  ADD KEY `book_photo_book_id_foreign` (`book_id`),
  ADD KEY `book_photo_photo_id_foreign` (`photo_id`);

--
-- Індекси таблиці `book_tag`
--
ALTER TABLE `book_tag`
  ADD KEY `book_tag_tag_id_foreign` (`tag_id`),
  ADD KEY `book_tag_book_id_foreign` (`book_id`);

--
-- Індекси таблиці `editions`
--
ALTER TABLE `editions`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `edition_photo`
--
ALTER TABLE `edition_photo`
  ADD KEY `edition_photo_editions_id_foreign` (`editions_id`),
  ADD KEY `edition_photo_photo_id_foreign` (`photo_id`);

--
-- Індекси таблиці `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `events_category_id_foreign` (`category_id`);

--
-- Індекси таблиці `event_categories`
--
ALTER TABLE `event_categories`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `event_photo`
--
ALTER TABLE `event_photo`
  ADD KEY `event_photo_events_id_foreign` (`events_id`),
  ADD KEY `event_photo_photo_id_foreign` (`photo_id`);

--
-- Індекси таблиці `event_video`
--
ALTER TABLE `event_video`
  ADD KEY `event_video_events_id_foreign` (`events_id`),
  ADD KEY `event_video_video_id_foreign` (`video_id`);

--
-- Індекси таблиці `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Індекси таблиці `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `photo_tag`
--
ALTER TABLE `photo_tag`
  ADD KEY `photo_tag_tag_id_foreign` (`tag_id`),
  ADD KEY `photo_tag_photo_id_foreign` (`photo_id`);

--
-- Індекси таблиці `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `tag_video`
--
ALTER TABLE `tag_video`
  ADD KEY `tag_video_tag_id_foreign` (`tag_id`),
  ADD KEY `tag_video_video_id_foreign` (`video_id`);

--
-- Індекси таблиці `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `video_tag`
--
ALTER TABLE `video_tag`
  ADD KEY `video_tag_tag_id_foreign` (`tag_id`),
  ADD KEY `video_tag_video_id_foreign` (`video_id`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT для таблиці `article_categories`
--
ALTER TABLE `article_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблиці `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `book_categories`
--
ALTER TABLE `book_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `editions`
--
ALTER TABLE `editions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `event_categories`
--
ALTER TABLE `event_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT для таблиці `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=445;

--
-- AUTO_INCREMENT для таблиці `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT для таблиці `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблиці `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Обмеження зовнішнього ключа збережених таблиць
--

--
-- Обмеження зовнішнього ключа таблиці `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `article_categories` (`id`) ON DELETE CASCADE;

--
-- Обмеження зовнішнього ключа таблиці `article_book`
--
ALTER TABLE `article_book`
  ADD CONSTRAINT `book_article_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `book_article_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE;

--
-- Обмеження зовнішнього ключа таблиці `article_event`
--
ALTER TABLE `article_event`
  ADD CONSTRAINT `article_event_articles_id_foreign` FOREIGN KEY (`articles_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `article_event_events_id_foreign` FOREIGN KEY (`events_id`) REFERENCES `events` (`id`) ON DELETE CASCADE;

--
-- Обмеження зовнішнього ключа таблиці `article_photo`
--
ALTER TABLE `article_photo`
  ADD CONSTRAINT `article_photo_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `article_photo_photo_id_foreign` FOREIGN KEY (`photo_id`) REFERENCES `photos` (`id`) ON DELETE CASCADE;

--
-- Обмеження зовнішнього ключа таблиці `article_tag`
--
ALTER TABLE `article_tag`
  ADD CONSTRAINT `article_tag_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `article_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Обмеження зовнішнього ключа таблиці `article_video`
--
ALTER TABLE `article_video`
  ADD CONSTRAINT `video_article_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `video_article_video_id_foreign` FOREIGN KEY (`video_id`) REFERENCES `videos` (`id`) ON DELETE CASCADE;

--
-- Обмеження зовнішнього ключа таблиці `author_book`
--
ALTER TABLE `author_book`
  ADD CONSTRAINT `book_author_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `book_author_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE;

--
-- Обмеження зовнішнього ключа таблиці `author_photo`
--
ALTER TABLE `author_photo`
  ADD CONSTRAINT `author_photo_authors_id_foreign` FOREIGN KEY (`authors_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `author_photo_photo_id_foreign` FOREIGN KEY (`photo_id`) REFERENCES `photos` (`id`) ON DELETE CASCADE;

--
-- Обмеження зовнішнього ключа таблиці `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `book_categories` (`id`) ON DELETE CASCADE;

--
-- Обмеження зовнішнього ключа таблиці `book_edition`
--
ALTER TABLE `book_edition`
  ADD CONSTRAINT `book_edition_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `book_edition_edition_id_foreign` FOREIGN KEY (`edition_id`) REFERENCES `editions` (`id`) ON DELETE CASCADE;

--
-- Обмеження зовнішнього ключа таблиці `book_genre`
--
ALTER TABLE `book_genre`
  ADD CONSTRAINT `book_genre_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `book_genre_genre_id_foreign` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`) ON DELETE CASCADE;

--
-- Обмеження зовнішнього ключа таблиці `book_language`
--
ALTER TABLE `book_language`
  ADD CONSTRAINT `book_language_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `book_language_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Обмеження зовнішнього ключа таблиці `book_photo`
--
ALTER TABLE `book_photo`
  ADD CONSTRAINT `book_photo_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `book_photo_photo_id_foreign` FOREIGN KEY (`photo_id`) REFERENCES `photos` (`id`) ON DELETE CASCADE;

--
-- Обмеження зовнішнього ключа таблиці `book_tag`
--
ALTER TABLE `book_tag`
  ADD CONSTRAINT `book_tag_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `book_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Обмеження зовнішнього ключа таблиці `edition_photo`
--
ALTER TABLE `edition_photo`
  ADD CONSTRAINT `edition_photo_editions_id_foreign` FOREIGN KEY (`editions_id`) REFERENCES `editions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `edition_photo_photo_id_foreign` FOREIGN KEY (`photo_id`) REFERENCES `photos` (`id`) ON DELETE CASCADE;

--
-- Обмеження зовнішнього ключа таблиці `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `event_categories` (`id`) ON DELETE CASCADE;

--
-- Обмеження зовнішнього ключа таблиці `event_photo`
--
ALTER TABLE `event_photo`
  ADD CONSTRAINT `event_photo_events_id_foreign` FOREIGN KEY (`events_id`) REFERENCES `events` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `event_photo_photo_id_foreign` FOREIGN KEY (`photo_id`) REFERENCES `photos` (`id`) ON DELETE CASCADE;

--
-- Обмеження зовнішнього ключа таблиці `event_video`
--
ALTER TABLE `event_video`
  ADD CONSTRAINT `event_video_events_id_foreign` FOREIGN KEY (`events_id`) REFERENCES `events` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `event_video_video_id_foreign` FOREIGN KEY (`video_id`) REFERENCES `videos` (`id`) ON DELETE CASCADE;

--
-- Обмеження зовнішнього ключа таблиці `photo_tag`
--
ALTER TABLE `photo_tag`
  ADD CONSTRAINT `photo_tag_photo_id_foreign` FOREIGN KEY (`photo_id`) REFERENCES `photos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `photo_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Обмеження зовнішнього ключа таблиці `tag_video`
--
ALTER TABLE `tag_video`
  ADD CONSTRAINT `tag_video_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tag_video_video_id_foreign` FOREIGN KEY (`video_id`) REFERENCES `videos` (`id`) ON DELETE CASCADE;

--
-- Обмеження зовнішнього ключа таблиці `video_tag`
--
ALTER TABLE `video_tag`
  ADD CONSTRAINT `video_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `video_tag_video_id_foreign` FOREIGN KEY (`video_id`) REFERENCES `videos` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
