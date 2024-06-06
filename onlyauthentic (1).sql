-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 07, 2023 lúc 07:26 PM
-- Phiên bản máy phục vụ: 10.4.19-MariaDB
-- Phiên bản PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `onlyauthentic`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_address_user`
--

CREATE TABLE `tbl_address_user` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `distric` varchar(255) NOT NULL,
  `ward` varchar(255) NOT NULL,
  `contact` int(20) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_address_user`
--

INSERT INTO `tbl_address_user` (`id`, `user_id`, `first_name`, `last_name`, `address`, `city`, `distric`, `ward`, `contact`, `email`) VALUES
(1, 8, 'nguyễn', 'toàn', 'đại lâm', 'bắc ninh', 'yên phong', 'tam đa', 566565656, 'toannn21@gmail.com'),
(2, 10, 'Đỗ', 'Tuệ', 'S1-Vinhome SkyLake Phạm Hùng', 'Hà Nội', '2', '', 123456, 'tue1252001@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`) VALUES
(20, 'nguyễn toàn ', 'admin', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `qty` int(100) NOT NULL,
  `product_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(8, 'Giày Original', 'Shoe_Category_813.jpg', 'Yes', 'Yes'),
(14, 'Áo Phông', 'Shoe_Category_341.jpg', 'Yes', 'Yes'),
(15, 'Hoodie', 'Shoe_Category_73.jpg', 'Yes', 'Yes'),
(16, 'Ba lô', 'Shoe_Category_486.jpg', 'Yes', 'Yes'),
(17, 'Mũ', 'Shoe_Category_576.jpg', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `topic` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `full_name`, `email`, `topic`, `message`) VALUES
(3, 'toan nguyen', 'toannn21@gmail.com', 'đổi địa chỉ', 'ádasdasd'),
(4, 'toan nguyen', 'toannn21@gmail.com', 'đổi địa chỉ', 'đổi hộ bố địa chỉ của đơn hàng có sdt là 0827286872');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(100) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `ward` varchar(255) NOT NULL,
  `contact` int(20) NOT NULL,
  `total` float NOT NULL,
  `order_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `user_id`, `status`, `first_name`, `last_name`, `address`, `city`, `district`, `ward`, `contact`, `total`, `order_date`) VALUES
(35, 8, 'Xác nhận', 'nguyễn', 'toàn', 'đại lâm', 'hà nội', 'yên phong', 'tam đa', 566565656, 4100000, '2021-12-23 10:22:49'),
(36, 8, 'Chờ xác nhận', 'nguyễn', 'toàn', 'đại lâm', 'bắc ninh', 'yên phong', 'tam đa', 566565656, 4100000, '2021-12-23 10:59:04'),
(37, 8, 'Đã huỷ', 'nguyễn', 'toàn', 'đại lâm', 'bắc ninh', 'yên phong', 'tam đa', 566565656, 1500000, '2021-12-24 03:07:24'),
(38, 10, 'Chờ xác nhận', 'Đỗ', 'Tuệ', 'S1-Vinhome SkyLake Phạm Hùng', 'Hà Nội', '2', '3', 123456, 2600000, '2021-12-26 02:37:52'),
(39, 10, 'Chờ xác nhận', 'Đỗ', 'Tuệ', 'S1-Vinhome SkyLake Phạm Hùng', 'Hà Nội', '2', '', 123456, 41000000, '2022-06-24 04:34:42'),
(40, 10, 'Chờ xác nhận', 'Đỗ', 'Tuệ', 'S1-Vinhome SkyLake Phạm Hùng', 'Hà Nội', '2', '', 123456, 3000000, '2023-06-01 11:48:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order_detail`
--

CREATE TABLE `tbl_order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `qty` int(100) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_order_detail`
--

INSERT INTO `tbl_order_detail` (`id`, `order_id`, `product_id`, `product_name`, `image_name`, `qty`, `price`) VALUES
(30, 35, 25, 'Ultraboost 21', 'Product_Name_9461.jpg', 1, 4100000),
(31, 36, 25, 'Ultraboost 21', 'Product_Name_9461.jpg', 1, 4100000),
(32, 37, 27, 'Giày Superstar', 'Product_Name_2556.jpg', 1, 1500000),
(33, 38, 31, 'Stan Smith ', 'Product_Name_9230.jpg', 2, 1300000),
(34, 39, 25, 'Áo MX', 'Product_Name_9181.jpg', 10, 4100000),
(35, 40, 25, 'Adidas Forum', 'Product_Name_1727.jpg', 1, 3000000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_products`
--

CREATE TABLE `tbl_products` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_products`
--

INSERT INTO `tbl_products` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(25, 'Adidas Forum', 'GIày bề mặt da PU bền chống nước, dễ vệ sinh', '3000000.00', 'Product_Name_1727.jpg', 8, 'Yes', 'Yes'),
(39, 'Adidas Samba', 'Giày được thiết kế theo kiểu dáng giày quân đội Đức những năm 1980s ', '3300000.00', 'Product_Name_6080.jpg', 8, 'Yes', 'Yes'),
(40, 'Adidas Forum High', 'Giày được thiết kế dựa trên tựa game Minecraft rất độc đáo đang được ưa chuộng', '3400000.00', 'Product_Name_3102.jpg', 8, 'Yes', 'Yes'),
(42, 'Áo Ba lỗ', 'Chất liệu 100% cotton thoáng mát đứng form, thiết kế thời trang độc đáo', '900000.00', 'Product_Name_983.jpg', 14, 'Yes', 'Yes'),
(43, 'Áo Polo', 'Chất liệu 100% cotton thoáng mát đứng form, thiết kế thời trang độc đáo', '1500000.00', 'Product_Name_2648.jpg', 14, 'Yes', 'Yes'),
(44, 'Áo chạy', 'Chất liệu 100% Polyester thoáng mát đứng form, thiết kế thời trang độc đáo', '990000.00', 'Product_Name_4184.jpg', 14, 'Yes', 'Yes'),
(45, 'Adidas Hoodie', 'Chất liệu 100% cotton thoáng mát đứng form, thiết kế thời trang độc đáo', '1700000.00', 'Product_Name_8829.jpg', 15, 'Yes', 'Yes'),
(46, 'Adidas Hoodie ABC', 'Chất liệu 100% cotton thoáng mát đứng form, thiết kế thời trang độc đáo', '2000000.00', 'Product_Name_7319.jpg', 15, 'Yes', 'Yes'),
(47, 'Adidas Hoodie CBA', 'Chất liệu 100% cotton thoáng mát đứng form, thiết kế thời trang độc đáo', '3300000.00', 'Product_Name_3975.jpg', 15, 'Yes', 'Yes'),
(48, 'Adidas Ba Lô Da', 'Chất liệu làm từ da PU cao cấp chống nước, dễ vệ sinh với thiết kế độc đáo ', '2300000.00', 'Product_Name_9620.jpg', 16, 'Yes', 'Yes'),
(49, 'Adidas Ba Lô 2 Ngăn', 'Chất liệu 100% Polyester cao cấp chống nước đứng form, thiết kế thời trang độc đáo', '1500000.00', 'Product_Name_1715.jpg', 16, 'Yes', 'Yes'),
(50, 'Adidas Ba Lô Baby', 'Chất liệu 100% Polyester cao cấp chống nước đứng form, thiết kế thời trang độc đáo', '1200000.00', 'Product_Name_4897.jpg', 16, 'Yes', 'Yes'),
(51, 'Bucket Hat', 'Mũ với đường kính 56cm freesize phù hợp cho cả nam và nữ', '700000.00', 'Product_Name_8160.jpg', 17, 'Yes', 'Yes'),
(52, 'Mũ lưỡi trai', 'Mũ được thiết kế với phong cách độc lạ có thể đội được 2 kiểu phù hợp cho cả nam và nữ', '800000.00', 'Product_Name_4216.jpg', 17, 'Yes', 'Yes'),
(53, 'Mũ Golf', 'Mũ được thiết kế với phong cách độc lạ có thể đội được 2 kiểu phù hợp cho cả nam và nữ', '2300000.00', 'Product_Name_2191.jpg', 17, 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_register`
--

CREATE TABLE `tbl_register` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `phone` int(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_register`
--

INSERT INTO `tbl_register` (`id`, `first_name`, `last_name`, `phone`, `email`, `username`, `password`) VALUES
(8, 'Toàn', 'Nguyễn', 123123, 'toannn21@gmail.com', 'toann', '202cb962ac59075b964b07152d234b70'),
(10, 'Đỗ', 'Tuệ', 123, 'tue1252001@gmail.com', 'tue01', '202cb962ac59075b964b07152d234b70'),
(11, 'Đỗ', 'Tuệ', 9999, 'tue1252001@gmail.com', 'dat99', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_reviews`
--

CREATE TABLE `tbl_reviews` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_reviews`
--

INSERT INTO `tbl_reviews` (`id`, `product_id`, `username`, `content`) VALUES
(16, 27, 'toann', 'nice :))'),
(17, 27, 'toann', 'giày nhanh hỏng'),
(18, 25, 'tue01', 'giày đẹp '),
(19, 25, 'tue01', 'giày đẹp ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_staff`
--

CREATE TABLE `tbl_staff` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `age` int(100) UNSIGNED NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` int(20) NOT NULL,
  `image_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_staff`
--

INSERT INTO `tbl_staff` (`id`, `first_name`, `last_name`, `age`, `address`, `email`, `contact`, `image_name`) VALUES
(1, 'toan', 'nguyen', 20, 'dai lam', 'toannn21@gmail.com', 922222222, 'Staff289.jpg'),
(2, 'Đỗ', 'Tuệ', 22, 'S1-Vinhome SkyLake Phạm Hùng', 'tue1252001@gmail.com', 123456789, 'Shoe_Staff_995.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_address_user`
--
ALTER TABLE `tbl_address_user`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_order_detail_ibfk_1` (`order_id`);

--
-- Chỉ mục cho bảng `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_register`
--
ALTER TABLE `tbl_register`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_reviews`
--
ALTER TABLE `tbl_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_staff`
--
ALTER TABLE `tbl_staff`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_address_user`
--
ALTER TABLE `tbl_address_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT cho bảng `tbl_register`
--
ALTER TABLE `tbl_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tbl_reviews`
--
ALTER TABLE `tbl_reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `tbl_staff`
--
ALTER TABLE `tbl_staff`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  ADD CONSTRAINT `tbl_order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `tbl_order` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
