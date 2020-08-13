 database name:haris


CREATE TABLE `tbl_app` (
  `app_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `collector_id` int(11) DEFAULT NULL,
  `app_status` varchar(50) DEFAULT NULL,
  `app_date` datetime DEFAULT NULL,
  `booking_date` datetime DEFAULT current_timestamp(),
  `app_instructions` varchar(200) NOT NULL DEFAULT 'no instructions'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

 
INSERT INTO `tbl_app` (`app_id`, `customer_id`, `collector_id`, `app_status`, `app_date`, `booking_date`, `app_instructions`) VALUES
(4, 1, 16, 'assigned', '2020-02-29 00:59:00', '2020-02-11 11:39:16', '   my cycle scrap'),
(5, 11, 16, 'assigned', '2020-03-19 00:59:00', '2020-02-11 11:40:31', '   car scrap'),
(7, 11, 14, 'collected', '2020-02-22 00:59:00', '2020-02-11 11:41:57', 'arhyserysery'),
(8, 12, 14, 'collected', '2020-02-15 00:58:00', '2020-02-13 15:22:58', 'for car tyres'),
(9, 12, 14, 'collected', '2020-02-29 23:59:00', '2020-02-13 15:39:29', 'shanafhhd'),
(10, 11, 16, 'collected', '2020-02-29 00:56:00', '2020-02-15 13:31:55', 'testing second'),
(11, 11, 14, 'collected', '2020-04-09 23:59:00', '2020-02-16 11:56:00', 'april month');

-- --------------------------------------------------------

 
CREATE TABLE `tbl_collected_items` (
  `id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_weight` int(11) NOT NULL,
  `item_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

 
INSERT INTO `tbl_collected_items` (`id`, `app_id`, `item_id`, `item_weight`, `item_price`) VALUES
(47, 8, 3, 2, 1900),
(48, 8, 4, 2, 1200),
(49, 7, 1, 1, 50),
(50, 7, 5, 1, 16),
(51, 9, 6, 3, 10200),
(52, 9, 6, 3, 10200),
(53, 9, 7, 3, 1050),
(54, 8, 1, 2, 100),
(55, 8, 4, 1, 600),
(56, 9, 1, 3, 150),
(57, 7, 3, 2, 1900),
(58, 7, 3, 2, 1900),
(59, 10, 6, 5, 17000),
(60, 11, 9, 15, 4500),
(61, 11, 4, 6, 3600);

-- --------------------------------------------------------
 

CREATE TABLE `tbl_items` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `item_image` varchar(200) NOT NULL DEFAULT 'noimage.png',
  `item_rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

 

INSERT INTO `tbl_items` (`item_id`, `item_name`, `item_image`, `item_rate`) VALUES
(1, 'books', 'books.png', 50),
(3, 'brass', 'brass.png', 950),
(4, 'battery', 'battery.png', 600),
(5, 'news paper', 'newspaper.png', 16),
(6, 'iron', 'iron.png', 3400),
(7, 'alloy', 'alloy.png', 350),
(8, 'plastic', 'plastic.png', 8),
(9, 'tyre', 'tyre.png', 300);

-- --------------------------------------------------------

 

CREATE TABLE `tbl_users` (
  `user_id` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `age` int(3) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass` varchar(15) NOT NULL,
  `address` varchar(200) NOT NULL,
  `role` varchar(50) DEFAULT NULL,
  `image` varchar(400) NOT NULL DEFAULT 'default.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='conain login details of all useres of system';

 

INSERT INTO `tbl_users` (`user_id`, `uname`, `age`, `phone`, `email`, `pass`, `address`, `role`, `image`) VALUES
(1, 'javed ahmed', 23, '03002312443', 'javed@gmail.com', '123', '  lahore,pakistan', 'user', 'collector.png'),
(2, 'M Haris', 55, '03483312345', 'admin@admin.com', '1122', '                                     north nazimabad', 'admin', 'admin.png'),
(11, 'kamlesh', 11, '34534534534', 'kamlesh@gmail.com', '1122', ' fsfgsdfsd', 'user', 'default.png'),
(12, 'obaid ali', 23, '34534534534', 'obaid@gmail.com', '123', '                     werwer', 'user', 'default.jpg'),
(13, 'hamza ahmed', 34, '34534534534', 'hamza@gmail.com', '123', '   ejdj', 'user', 'admin.png'),
(14, 'collector', 34, '34534534534', 'collector1@gmail.com', '123', '     aerhshsdfh', 'collector', 'user.png'),
(16, 'collector javed', 23, '12345678901', 'collectors2@gmail.com', '123', '    dfdfhfdh', 'collector', 'beta.jpg');

 
ALTER TABLE `tbl_app`
  ADD PRIMARY KEY (`app_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `collector_id` (`collector_id`);

 
ALTER TABLE `tbl_collected_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_id` (`app_id`),
  ADD KEY `item_id` (`item_id`);

 
ALTER TABLE `tbl_items`
  ADD PRIMARY KEY (`item_id`);

 
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

 
 
ALTER TABLE `tbl_app`
  MODIFY `app_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

 
ALTER TABLE `tbl_collected_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

 
ALTER TABLE `tbl_items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

 
ALTER TABLE `tbl_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

 
ALTER TABLE `tbl_app`
  ADD CONSTRAINT `tbl_app_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `tbl_users` (`user_id`),
  ADD CONSTRAINT `tbl_app_ibfk_2` FOREIGN KEY (`collector_id`) REFERENCES `tbl_users` (`user_id`);

 
ALTER TABLE `tbl_collected_items`
  ADD CONSTRAINT `tbl_collected_items_ibfk_1` FOREIGN KEY (`app_id`) REFERENCES `tbl_app` (`app_id`),
  ADD CONSTRAINT `tbl_collected_items_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `tbl_items` (`item_id`);
COMMIT;

 