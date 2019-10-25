-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Окт 23 2019 г., 15:56
-- Версия сервера: 5.6.41
-- Версия PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `sublimebd`
--

-- --------------------------------------------------------

--
-- Структура таблицы `buyers`
--

CREATE TABLE `buyers` (
  `id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `surname` varchar(30) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `address_delivery` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `buyers`
--

INSERT INTO `buyers` (`id`, `firstname`, `lastname`, `surname`, `phone`, `address_delivery`) VALUES
(10, 'Владислав', 'Зворыгин', 'Юрьевич', '79138779196', 'dasdad'),
(14, 'Владислав', 'Зворыгин', 'Юрьевич', '79138779196', 'dasdad'),
(15, 'Владислав', 'Зворыгин', 'Юрьевич', '79138779196', 'dasdad'),
(16, 'Владислав', 'Зворыгин', 'Юрьевич', '79138779196', 'dasdad'),
(17, 'Владислав', 'Зворыгин', 'Юрьевич', '79138779196', 'dasdad'),
(18, 'Владислав', 'Зворыгин', 'Юрьевич', '79138779196', 'Бердская 5'),
(19, 'Владислав', 'Зворыгин', 'Юрьевич', '79138779196', 'Бердская 5'),
(20, 'Владислав', 'Зворыгин', 'Юрьевич', '79138779196', 'Бердская 5'),
(21, 'Владислав', 'Зворыгин', 'Юрьевич', '79138779196', 'Бердская 5'),
(22, 'Владислав', 'Зворыгин', 'Юрьевич', '79138779196', 'Бердская 5'),
(23, 'Николай', 'Гаврюшков', 'Михайлович', '79138779196', 'Бердская 5'),
(24, 'Владислав', 'Зворыгин', 'Юрьевич', '79138779196', 'Бердская 5');

-- --------------------------------------------------------

--
-- Структура таблицы `catalog`
--

CREATE TABLE `catalog` (
  `id_product` int(11) NOT NULL,
  `titleproduct` varchar(255) NOT NULL,
  `price` varchar(10) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `os` varchar(255) DEFAULT NULL,
  `display` varchar(70) DEFAULT NULL,
  `cpu` varchar(70) DEFAULT NULL,
  `camera` varchar(70) DEFAULT NULL,
  `ram` varchar(10) DEFAULT NULL,
  `rom` varchar(10) DEFAULT NULL,
  `battery` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `catalog`
--

INSERT INTO `catalog` (`id_product`, `titleproduct`, `price`, `image`, `description`, `quantity`, `os`, `display`, `cpu`, `camera`, `ram`, `rom`, `battery`) VALUES
(97, 'Apple Iphone XS', '1235$', 'web/uploads/phone_Rb5UsGbRsqf6f7V.jpeg', 'Герой большого экрана.  Дисплей Super Retina 5,8 дюйма. Улучшенный Face ID. Самый мощный и умный процессор iPhone. И потрясающая двойная камера. В iPhone Xs воплощено всё, что вы любите в iPhone. На новом уровне.  iPhone Xs оснащён HDR-дисплеем Super Retina с диагональю 5,8 дюйма. Панели OLED обеспечивают наилучшую цветопередачу, глубокие чёрные цвета и впечатляющую яркость. С улучшенной технологией Face ID можно безопасно разблокировать iPhone, входить в учётные записи приложений и оплачивать покупки буквально одним взглядом. Процессор A12 Bionic с системой Neural Engine нового поколения использует технологии машинного обучения и открывает невероятные возможности для фотографии, игр, дополненной реальности и многого другого. А потрясающая двойная камера 12 Мп с режимом «Портрет», функцией портретного освещения, улучшенным эффектом боке и совершенно новой функцией «Глубина» позволяет взглянуть на портретную съёмку по-новому. ', 40, 'Ios', '5.8\"/2436x1125 pix', 'A12 Bionic', '12 Mpix + 12 Mpix', '4 Gb', '128 Gb', '2568 maCh'),
(98, 'Samsung galaxy s10', '900$', 'web/uploads/phone_95VwrYIJ7aF3mVd.jpg', 'Новый Galaxy стал выше на голову. Возможности шире, производительность лучше, полезная площадь экрана больше, плюс три камеры (12+12+16 Мп) и стереодинамики от гигантов звуковой индустрии AKG.  БЕЗГРАНИЧНЫЙ ЭКРАН Динамический AMOLED-дисплей диагональю 6,1 дюйма выдаёт картинку в разрешении Quad HD+ с невероятно естественными, живыми цветами. Фронтальная камера расположилась в правом верхнем углу, не занимая полезное пространство «чёлкой». А за счёт соотношения сторон 19:9 смартфон с таким дисплеем очень удобно лежит даже в небольшой руке.  ЯРКИЕ ФОТО Три основные камеры – ультраширокоугольная разрешением 16 Мп и две 12-мегапиксельные (широкоугольная и телеобъектив) – помогут вам сделать чёткие, сочные фото как при ярком освещении, так и в сложных условиях. А селфи вы легко снимете на «фронталку» с матрицей 10 Мп.  СКОРОСТЬ И МОЩЬ 8 Гб оперативной памяти без труда справятся с рабочими приложениями, онлайн-сервисами и играми. Смотрите свежие клипы, слушайте любимую музыку или аудиокниги – 128 Гб встроенной памяти хватит на всё. А если не хватит, можно добавить MicroSD-карту объёмом до 512 Гб.  НЕПРЕВЗОЙДЁННАЯ БЕЗОПАСНОСТЬ Вечно забываете пароли и графические ключи? И правильно, забудьте! Galaxy S10 узнает вас в лицо или по отпечатку пальца – благодаря ультразвуковому сканеру, встроенному в экран. Биометрические данные невозможно подделать, поэтому вы можете быть спокойны за свою личную информацию.  ЭНЕРГИЧНЫЙ И ВЫНОСЛИВЫЙ Оставайтесь на связи всегда! Аккумулятор ёмкостью 3400 мАч не только заряжается беспроводным способом, но и умеет заряжать другие телефоны, поддерживающие технологию такой зарядки. Или же можно «подпитать» смартфон через привычный порт USB Type C. Уровень защиты IP68 означает, что Galaxy S10 не боится пыли и выдержит прыжок в бассейн (главное, не занимайтесь с ним глубоководным дайвингом). ', 60, 'Android 9.0', '6.1\"/3040x1440 пикс.', 'Exynos 9820', '16 МПикс+12 МПикс+12 МПикс', '8 ГБ', '128 ГБ', '3400 мАч'),
(102, 'Huawei Mate 20 Pro', '922$', 'web/uploads/phone_lUybR3iA8G3dmUl.jpg', 'Смартфон Huawei Mate 20 Pro привлекает внимание не только своим роскошным дизайном. Тройная камера с оптикой Leica – вот что ещё бросается в глаза. Теперь вы можете быть уверены, что ваши фотографии получатся отличными, даже если вы снимали при плохом освещении!  СНИМАЙТЕ, КАК ПРОФИ На задней панели смартфона разместились сразу три камеры. С основным объективом 40 Мп от вас не ускользнёт ни единой детали – все они останутся запечатлёнными на снимках. Широкоугольный объектив 20 Мп идеален для съёмки пейзажей, а с телеобъективом 8 Мп удалённые объекты станут ближе – по крайней мере, на фото. А с улучшенной стабилизацией изображения и ночным режимом вам не понадобится штатив даже при съёмке в движении или при слабом освещении!  ПОЧУВСТВУЙТЕ НАСТОЯЩУЮ МОЩЬ Процессор Kirin 980 на базе двух нейромодулей заставит приложения «летать», при этом потребляя меньше энергии. Добавьте к этому 6 Гб оперативной памяти, и вы поймёте, что такое производительный смартфон! А с аккумулятором ёмкостью 4200 мАч вы всегда будете на связи, так как он рассчитан на 41 час работы от одной зарядки. Торопитесь? Воспользуйтесь функцией быстрой зарядки: 70% всего за полчаса.  НЕ ОГРАНИЧИВАЙТЕ СЕБЯ НИ В ЧЁМ Безрамочный дисплей диагональю 6,39 дюймов и с разрешением 3120 x 1440 пикс передаст все детали и нюансы цвета на изображении. А ваши данные будут надёжно защищены благодаря функции трёхмерного распознавания лиц и встроенному в экран сканеру отпечатков пальцев. А ещё вы можете взять телефон с собой на пляж или спокойно разговаривать и снимать под дождём – с классом защиты IP68 девайс не боится даже погружения в воду, не то что каких-то брызг!', 50, 'Android 9.0', '6.39\"/3120x1440 пикс', 'Kirin 980', '40 МПикс+20 МПикс+8 МПикс', '6 ГБ', '128 ГБ', '4200 мАч'),
(103, 'Xiaomi Mi Mix 3', '614$', 'web/uploads/phone_KQ0PVLtw5XH6nU1.jpg', 'Когда-то очень популярны были телефоны-слайдеры. А что вы скажете насчёт смартфона-слайдера? Xiaomi Mi Mix 3 как раз из таких! Безрамочный дисплей кажется ещё больше за счёт того, что камеры и динамик не занимают на нём место.  ОДНО ДВИЖЕНИЕ ДЛЯ ДОСТУПА К ФУНКЦИЯМ Чтобы включить камеру, ответить на сообщение или просто посмотреть время, сдвиньте слайдер. Действия при открытии настраиваются, и вы можете сразу запускать часто используемые приложения – например, почту или любимый мессенджер.  БЕЗГРАНИЧНЫЙ ЭКРАН Дисплей диагональю 6,39 дюймов выглядит не просто большим, а бесконечным! Это заслуга очень тонких рамок и того, что все посторонние элементы скрыты до тех пор, пока они вам не понадобятся.  ПРОИЗВОДИТЕЛЬНОСТЬ НА ВЫСОТЕ Флагманский процессор Snapdragon 845 и 6 Гб оперативной памяти – вы забудете о подтормаживаниях, даже если одновременно запустите много приложений. Переключайтесь между ними одним касанием без задержек. 128 Гб памяти «на борту» позволит хранить ваши фото, музыкальные файлы и фильмы в одном месте.  ЯРКИЕ ФОТО Двойная основная камера разрешением 12 + 12 Мп умеет распознавать до 12 сценариев. С ней ваши пейзажи, портреты или фудфото получатся чёткими, детальными и насыщенными. А для впечатляющих селфи используйте фронтальную камеру 24+ 2 Мп с разными вариантами студийного освещения при постобработке кадров.  УДОБНАЯ ЗАРЯДКА Смартфон поддерживает быструю зарядку, в том числе, и от беспроводных устройств. Хотя слишком часто заряжать его вам не придётся – аккумулятор ёмкостью 3200 мАч рассчитан на 30 часов работы.', 50, 'Android 9.0', '6.39\"/2340x1080 пикс', 'Snapdragon 845', '12 МПикс+12 МПикс', '6 ГБ', '128 ГБ', '3200 мАч'),
(104, 'Honor 8X', '307$', 'web/uploads/phone_1AnkM5ZKih5S_6h.jpg', 'Honor 8X – это флагманские характеристики, впечатляющий внешний вид и ничего лишнего. Безрамочный HD-экран впечатлит вас глубиной цвета, а усовершенствованный графический процессор – плавностью смены кадров. Двойная камера с искусственным интеллектом позволит вам создавать снимки профессионального уровня: будь то умиротворённый пейзаж, характерный портрет или репортаж со спортивного соревнования. А 15-слойное глянцевое стекло с эффектом градиента и матовой полосой на задней панели просто притягивает взгляд.  ШИРОКИЙ, НО КОМПАКТНЫЙ Благодаря соотношению сторон 19:9,5 смартфон со впечатляющей диагональю 6,5 дюйма лежит в руке как 5,5-дюймовый. Экран занимает 91% передней панели, создавая ощущение полного погружения в сюжет. Адаптивная настройка яркости меняет подсветку в зависимости от освещения, а режим защиты зрения снижает вредное УФ-излучение.  ЗАПЕЧАТЛЕТЬ КАЖДЫЙ НЮАНС Двойная основная камера с разрешением 20 Мп оснащена модулем искусственного интеллекта: он в реальном времени распознаёт более 500 сценариев съёмки и 22 категории объектов, настраивая оптимальные параметры для каждого. Кроме того, ИИ компенсирует недостаток освещения и предлагает различные виды вспышек для портретов и автопортретов. Ночные снимки теперь не смазываются на долгой выдержке: мультикадровая стабилизация на базе машинного обучения нивелирует эффект «дрожащих рук». Интеллектуальная галерея распознаёт объекты и сценарии съёмки и группирует фотографии по темам.  НАДЁЖНОСТЬ ПО ВСЕМ ФРОНТАМ Оперативная память 4 Гб и мощный процессор Kirin 710 гарантируют быстрый отклик приложений, игры без «тормозов» и плавное воспроизведение видео. Технология GPU Turbo повышает производительность графического процессора на 130% и снижает энергопотребление. Ёмкий аккумулятор также заботится о долгой работе Honor 8X без подзарядки. Телефон «узнает» вас в лицо, по отпечатку пальца и покажет уведомления на экране блокировки только убедившись, что перед ним владелец.  ЛЁГКИМ ДВИЖЕНИЕМ РУКИ Оплачивайте покупки в ма', 50, 'Android 9.0', '6.5\"/2340x1080 пикс.', 'HiSilicon Kirin 710', '20 МПикс+2 МПикс', '4 ГБ', '64 Гб', '3750 мАч'),
(105, 'Huawei Mate 20 Pro', '922$', 'web/uploads/phone_lUybR3iA8G3dmUl.jpg', 'Смартфон Huawei Mate 20 Pro привлекает внимание не только своим роскошным дизайном. Тройная камера с оптикой Leica – вот что ещё бросается в глаза. Теперь вы можете быть уверены, что ваши фотографии получатся отличными, даже если вы снимали при плохом освещении!  СНИМАЙТЕ, КАК ПРОФИ На задней панели смартфона разместились сразу три камеры. С основным объективом 40 Мп от вас не ускользнёт ни единой детали – все они останутся запечатлёнными на снимках. Широкоугольный объектив 20 Мп идеален для съёмки пейзажей, а с телеобъективом 8 Мп удалённые объекты станут ближе – по крайней мере, на фото. А с улучшенной стабилизацией изображения и ночным режимом вам не понадобится штатив даже при съёмке в движении или при слабом освещении!  ПОЧУВСТВУЙТЕ НАСТОЯЩУЮ МОЩЬ Процессор Kirin 980 на базе двух нейромодулей заставит приложения «летать», при этом потребляя меньше энергии. Добавьте к этому 6 Гб оперативной памяти, и вы поймёте, что такое производительный смартфон! А с аккумулятором ёмкостью 4200 мАч вы всегда будете на связи, так как он рассчитан на 41 час работы от одной зарядки. Торопитесь? Воспользуйтесь функцией быстрой зарядки: 70% всего за полчаса.  НЕ ОГРАНИЧИВАЙТЕ СЕБЯ НИ В ЧЁМ Безрамочный дисплей диагональю 6,39 дюймов и с разрешением 3120 x 1440 пикс передаст все детали и нюансы цвета на изображении. А ваши данные будут надёжно защищены благодаря функции трёхмерного распознавания лиц и встроенному в экран сканеру отпечатков пальцев. А ещё вы можете взять телефон с собой на пляж или спокойно разговаривать и снимать под дождём – с классом защиты IP68 девайс не боится даже погружения в воду, не то что каких-то брызг!', 50, 'Android 9.0', '6.39\"/3120x1440 пикс', 'Kirin 980', '40 МПикс+20 МПикс+8 МПикс', '6 ГБ', '128 ГБ', '4200 мАч'),
(106, 'Samsung galaxy s10', '900$', 'web/uploads/phone_95VwrYIJ7aF3mVd.jpg', 'Новый Galaxy стал выше на голову. Возможности шире, производительность лучше, полезная площадь экрана больше, плюс три камеры (12+12+16 Мп) и стереодинамики от гигантов звуковой индустрии AKG.  БЕЗГРАНИЧНЫЙ ЭКРАН Динамический AMOLED-дисплей диагональю 6,1 дюйма выдаёт картинку в разрешении Quad HD+ с невероятно естественными, живыми цветами. Фронтальная камера расположилась в правом верхнем углу, не занимая полезное пространство «чёлкой». А за счёт соотношения сторон 19:9 смартфон с таким дисплеем очень удобно лежит даже в небольшой руке.  ЯРКИЕ ФОТО Три основные камеры – ультраширокоугольная разрешением 16 Мп и две 12-мегапиксельные (широкоугольная и телеобъектив) – помогут вам сделать чёткие, сочные фото как при ярком освещении, так и в сложных условиях. А селфи вы легко снимете на «фронталку» с матрицей 10 Мп.  СКОРОСТЬ И МОЩЬ 8 Гб оперативной памяти без труда справятся с рабочими приложениями, онлайн-сервисами и играми. Смотрите свежие клипы, слушайте любимую музыку или аудиокниги – 128 Гб встроенной памяти хватит на всё. А если не хватит, можно добавить MicroSD-карту объёмом до 512 Гб.  НЕПРЕВЗОЙДЁННАЯ БЕЗОПАСНОСТЬ Вечно забываете пароли и графические ключи? И правильно, забудьте! Galaxy S10 узнает вас в лицо или по отпечатку пальца – благодаря ультразвуковому сканеру, встроенному в экран. Биометрические данные невозможно подделать, поэтому вы можете быть спокойны за свою личную информацию.  ЭНЕРГИЧНЫЙ И ВЫНОСЛИВЫЙ Оставайтесь на связи всегда! Аккумулятор ёмкостью 3400 мАч не только заряжается беспроводным способом, но и умеет заряжать другие телефоны, поддерживающие технологию такой зарядки. Или же можно «подпитать» смартфон через привычный порт USB Type C. Уровень защиты IP68 означает, что Galaxy S10 не боится пыли и выдержит прыжок в бассейн (главное, не занимайтесь с ним глубоководным дайвингом). ', 60, 'Android 9.0', '6.1\"/3040x1440 пикс.', 'Exynos 9820', '16 МПикс+12 МПикс+12 МПикс', '8 ГБ', '128 ГБ', '3400 мАч'),
(107, 'Samsung Galaxy Note 9', '1100$', 'web/uploads/phone_vFK_wC3MvrR3nMI.jpg', 'Galaxy Note9 с новым S Pen помогут вам добиваться большего. Оцените невероятно высокую скорость работы в мультизадачном режиме, дистанционное управление, плавный игровой процесс, чёткие фото при любом освещении, кристально чистый звук и мощный аккумулятор ёмкостью 4000 мАч, который позволит вам пользоваться смартфоном целый день без подзарядки.  ТОЧНОСТЬ ПРИКОСНОВЕНИЯ И КОМФОРТ УПРАВЛЕНИЯ Управляйте вашим Galaxy Note9 дистанционно с помощью обновлённого S Pen: делайте фото, перелистывайте слайды, управляйте просмотром видео. Для подзарядки вставьте S Pen в ваш Galaxy Note9, и уже через 40 секунд он будет готов работать ещё полчаса. Создавайте рисунки и эскизы прямо на экране - тончайший 0,7-миллиметровый наконечник пера и 4096 уровней силы нажатия сделают ваши линии чёткими и тонкими.  КАМЕРА, КОТОРАЯ НЕ БОИТСЯ ТЕМНОТЫ Основная двойная камера с разрешением 12 Мп + 12 Мп и двухкратным оптическим зумом распознаёт до 20 различных сценариев съёмки и автоматически оптимизирует настройки цвета и контраста для каждого кадра. Двойная оптическая стабилизация компенсирует дрожание камеры, так что ваши фотографии будут гарантированно чёткими при любом освещении. Делайте идеальные снимки с первого раза!   БОЛЬШЕ ПАМЯТИ - ШИРЕ ВОЗМОЖНОСТИ Встроенной памяти 128 или 512 Гб, которую можно увеличить ещё на 512 Гб с помощью microSD-карты, хватит для хранения того, что вам действительно важно. Или используйте второй слот для дополнительной SIM-карты, чтобы всегда оставаться на связи и общаться с любого из двух номеров.   ЗАЩИТА ОТ ВОДЫ И ПЫЛИ Galaxy Note9 и S Pen надёжно защищены от воды и пыли по стандарту IP68, поэтому они не только не боятся случайных брызг - они продолжат работать даже после того, как провели полчаса на глубине 1,5 м.', 100, 'Android 8.1', '6.4\"/2960х1440 пикс.', 'Exynos 9810', '12 МПикс+12 МПикс', '6 ГБ', '128 ГБ', '4000 мАч'),
(108, 'Honor 8X Max', '330$', 'web/uploads/phone_ikqwdj5Sw9Zel6L.jpg', 'Безграничный экран, мощный стереозвук и быстрая работа с различными приложениями – это смартфон Honor 8X Max. С ним вы сможете работать и отдыхать по максимуму!  БОЛЬШОЙ ДИСПЛЕЙ Диагональ экрана с разрешением 2244 x 1080 пикселей – 7,12 дюйма. Несмотря на привычные размеры корпуса, дисплей занимает 90% панели. Это возможно благодаря узким рамкам и выступу каплевидной формы. Меньше лишних деталей – больше полезной площади.  БЕЗ ЗАВИСАНИЙ Производительный процессор Snapdragon 660 обеспечивает отличное быстродействие при работе с разными приложениями и играми. Даже если вы играете в мобильные игры несколько часов подряд, вы не заметите подвисаний.  ТРОЙНОЙ СЛОТ Не нужно выбирать между второй SIM-картой и картой памяти. Вы можете одновременно использовать и то, и другое – слот для карт в этой модели тройной. Правда, не факт, что дополнительная SD-карта вам понадобится. 128 Гб памяти на борту – поместятся и фото, и фильмы, и музыка.  РОЗЕТКА НЕ НУЖНА С батареей ёмкостью 5000 мАч смартфон способен проработать до 72 часов в режиме прослушивания музыки или до 12 часов при непрерывной игре. Даже если вы будете использовать его очень интенсивно, заряда должно хватить на 1,5 дня. А функция быстрой зарядки продлит это время.  ВЕЛИКОЛЕПНЫЕ СНИМКИ Делайте яркие, сочные кадры при помощи двойной камеры разрешением 16 + 2 Мп. Автоматическое распознавание характера сцены позволит вам не задумываться о настройках и просто снимать!', 50, 'Android 8.1', '7.12\"/2244x1080 пикс.', 'Snapdragon 660', '16 МПикс+2 МПикс', '4 ГБ', '128 Гб', '5000 мАч'),
(109, 'Samsung galaxy s10', '900$', 'web/uploads/phone_95VwrYIJ7aF3mVd.jpg', 'Новый Galaxy стал выше на голову. Возможности шире, производительность лучше, полезная площадь экрана больше, плюс три камеры (12+12+16 Мп) и стереодинамики от гигантов звуковой индустрии AKG.  БЕЗГРАНИЧНЫЙ ЭКРАН Динамический AMOLED-дисплей диагональю 6,1 дюйма выдаёт картинку в разрешении Quad HD+ с невероятно естественными, живыми цветами. Фронтальная камера расположилась в правом верхнем углу, не занимая полезное пространство «чёлкой». А за счёт соотношения сторон 19:9 смартфон с таким дисплеем очень удобно лежит даже в небольшой руке.  ЯРКИЕ ФОТО Три основные камеры – ультраширокоугольная разрешением 16 Мп и две 12-мегапиксельные (широкоугольная и телеобъектив) – помогут вам сделать чёткие, сочные фото как при ярком освещении, так и в сложных условиях. А селфи вы легко снимете на «фронталку» с матрицей 10 Мп.  СКОРОСТЬ И МОЩЬ 8 Гб оперативной памяти без труда справятся с рабочими приложениями, онлайн-сервисами и играми. Смотрите свежие клипы, слушайте любимую музыку или аудиокниги – 128 Гб встроенной памяти хватит на всё. А если не хватит, можно добавить MicroSD-карту объёмом до 512 Гб.  НЕПРЕВЗОЙДЁННАЯ БЕЗОПАСНОСТЬ Вечно забываете пароли и графические ключи? И правильно, забудьте! Galaxy S10 узнает вас в лицо или по отпечатку пальца – благодаря ультразвуковому сканеру, встроенному в экран. Биометрические данные невозможно подделать, поэтому вы можете быть спокойны за свою личную информацию.  ЭНЕРГИЧНЫЙ И ВЫНОСЛИВЫЙ Оставайтесь на связи всегда! Аккумулятор ёмкостью 3400 мАч не только заряжается беспроводным способом, но и умеет заряжать другие телефоны, поддерживающие технологию такой зарядки. Или же можно «подпитать» смартфон через привычный порт USB Type C. Уровень защиты IP68 означает, что Galaxy S10 не боится пыли и выдержит прыжок в бассейн (главное, не занимайтесь с ним глубоководным дайвингом). ', 60, 'Android 9.0', '6.1\"/3040x1440 пикс.', 'Exynos 9820', '16 МПикс+12 МПикс+12 МПикс', '8 ГБ', '128 ГБ', '3400 мАч'),
(110, 'Apple Iphone XS', '1235$', 'web/uploads/phone_Rb5UsGbRsqf6f7V.jpeg', 'Герой большого экрана.  Дисплей Super Retina 5,8 дюйма. Улучшенный Face ID. Самый мощный и умный процессор iPhone. И потрясающая двойная камера. В iPhone Xs воплощено всё, что вы любите в iPhone. На новом уровне.  iPhone Xs оснащён HDR-дисплеем Super Retina с диагональю 5,8 дюйма. Панели OLED обеспечивают наилучшую цветопередачу, глубокие чёрные цвета и впечатляющую яркость. С улучшенной технологией Face ID можно безопасно разблокировать iPhone, входить в учётные записи приложений и оплачивать покупки буквально одним взглядом. Процессор A12 Bionic с системой Neural Engine нового поколения использует технологии машинного обучения и открывает невероятные возможности для фотографии, игр, дополненной реальности и многого другого. А потрясающая двойная камера 12 Мп с режимом «Портрет», функцией портретного освещения, улучшенным эффектом боке и совершенно новой функцией «Глубина» позволяет взглянуть на портретную съёмку по-новому. ', 40, 'Ios', '5.8\"/2436x1125 pix', 'A12 Bionic', '12 Mpix + 12 Mpix', '4 Gb', '128 Gb', '2568 maCh'),
(112, 'Huawei Mate 20 Pro', '922$', 'web/uploads/phone_lUybR3iA8G3dmUl.jpg', 'Смартфон Huawei Mate 20 Pro привлекает внимание не только своим роскошным дизайном. Тройная камера с оптикой Leica – вот что ещё бросается в глаза. Теперь вы можете быть уверены, что ваши фотографии получатся отличными, даже если вы снимали при плохом освещении!  СНИМАЙТЕ, КАК ПРОФИ На задней панели смартфона разместились сразу три камеры. С основным объективом 40 Мп от вас не ускользнёт ни единой детали – все они останутся запечатлёнными на снимках. Широкоугольный объектив 20 Мп идеален для съёмки пейзажей, а с телеобъективом 8 Мп удалённые объекты станут ближе – по крайней мере, на фото. А с улучшенной стабилизацией изображения и ночным режимом вам не понадобится штатив даже при съёмке в движении или при слабом освещении!  ПОЧУВСТВУЙТЕ НАСТОЯЩУЮ МОЩЬ Процессор Kirin 980 на базе двух нейромодулей заставит приложения «летать», при этом потребляя меньше энергии. Добавьте к этому 6 Гб оперативной памяти, и вы поймёте, что такое производительный смартфон! А с аккумулятором ёмкостью 4200 мАч вы всегда будете на связи, так как он рассчитан на 41 час работы от одной зарядки. Торопитесь? Воспользуйтесь функцией быстрой зарядки: 70% всего за полчаса.  НЕ ОГРАНИЧИВАЙТЕ СЕБЯ НИ В ЧЁМ Безрамочный дисплей диагональю 6,39 дюймов и с разрешением 3120 x 1440 пикс передаст все детали и нюансы цвета на изображении. А ваши данные будут надёжно защищены благодаря функции трёхмерного распознавания лиц и встроенному в экран сканеру отпечатков пальцев. А ещё вы можете взять телефон с собой на пляж или спокойно разговаривать и снимать под дождём – с классом защиты IP68 девайс не боится даже погружения в воду, не то что каких-то брызг!', 50, 'Android 9.0', '6.39\"/3120x1440 пикс', 'Kirin 980', '40 МПикс+20 МПикс+8 МПикс', '6 ГБ', '128 ГБ', '4200 мАч'),
(113, 'Huawei Mate 20 Pro', '922$', 'web/uploads/phone_lUybR3iA8G3dmUl.jpg', 'Смартфон Huawei Mate 20 Pro привлекает внимание не только своим роскошным дизайном. Тройная камера с оптикой Leica – вот что ещё бросается в глаза. Теперь вы можете быть уверены, что ваши фотографии получатся отличными, даже если вы снимали при плохом освещении!  СНИМАЙТЕ, КАК ПРОФИ На задней панели смартфона разместились сразу три камеры. С основным объективом 40 Мп от вас не ускользнёт ни единой детали – все они останутся запечатлёнными на снимках. Широкоугольный объектив 20 Мп идеален для съёмки пейзажей, а с телеобъективом 8 Мп удалённые объекты станут ближе – по крайней мере, на фото. А с улучшенной стабилизацией изображения и ночным режимом вам не понадобится штатив даже при съёмке в движении или при слабом освещении!  ПОЧУВСТВУЙТЕ НАСТОЯЩУЮ МОЩЬ Процессор Kirin 980 на базе двух нейромодулей заставит приложения «летать», при этом потребляя меньше энергии. Добавьте к этому 6 Гб оперативной памяти, и вы поймёте, что такое производительный смартфон! А с аккумулятором ёмкостью 4200 мАч вы всегда будете на связи, так как он рассчитан на 41 час работы от одной зарядки. Торопитесь? Воспользуйтесь функцией быстрой зарядки: 70% всего за полчаса.  НЕ ОГРАНИЧИВАЙТЕ СЕБЯ НИ В ЧЁМ Безрамочный дисплей диагональю 6,39 дюймов и с разрешением 3120 x 1440 пикс передаст все детали и нюансы цвета на изображении. А ваши данные будут надёжно защищены благодаря функции трёхмерного распознавания лиц и встроенному в экран сканеру отпечатков пальцев. А ещё вы можете взять телефон с собой на пляж или спокойно разговаривать и снимать под дождём – с классом защиты IP68 девайс не боится даже погружения в воду, не то что каких-то брызг!', 50, 'Android 9.0', '6.39\"/3120x1440 пикс', 'Kirin 980', '40 МПикс+20 МПикс+8 МПикс', '6 ГБ', '128 ГБ', '4200 мАч'),
(115, 'Apple Iphone XS', '1 235,34$', 'web/uploads/phone_14.png', 'Lorem ipsun', 40, 'Ios', '5.8\"/2436x1125 pix', 'A12 Bionic', '12 Mpix + 12 Mpix', '4 Gb', '128 Gb', '2568 maCh');

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
('m000000_000000_base', 1556795195),
('m190502_110605_add_quantity_column_to_catalog_table', 1556795198),
('m190503_070342_add_os_column_display_column_cpu_column_camera_column_ram_column_rom_column_to_catalog_table', 1556867055),
('m190503_101948_mail', 1556878836),
('m190504_094353_create_status_table', 1556963226),
('m190504_095019_extend_status_table_for_image', 1556963466),
('m190504_095243_extend_status_table_for_image', 1556963603);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id_order` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `id_user` int(5) NOT NULL,
  `product` varchar(100) NOT NULL,
  `quantity` int(20) NOT NULL,
  `price` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id_order`, `id_product`, `id_user`, `product`, `quantity`, `price`) VALUES
(1, 97, 10, 'Apple Iphone XS', 1, '1235$'),
(2, 97, 10, 'Apple Iphone XS', 1, '1235$'),
(3, 97, 10, 'Apple Iphone XS', 1, '1235$'),
(4, 97, 19, 'Apple Iphone XS', 1, '1235$'),
(5, 97, 20, 'Apple Iphone XS', 1, '1235$'),
(6, 97, 21, 'Apple Iphone XS', 1, '1235$'),
(7, 97, 22, 'Apple Iphone XS', 1, '1235$'),
(8, 98, 23, 'Samsung galaxy s10', 1, '900$'),
(9, 105, 24, 'Huawei Mate 20 Pro', 2, '2157$');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `buyers`
--
ALTER TABLE `buyers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `id_product` (`id_product`);

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `id_order` (`id_order`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_user` (`id_user`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `buyers`
--
ALTER TABLE `buyers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `catalog`
--
ALTER TABLE `catalog`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `catalog` (`id_product`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `buyers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
