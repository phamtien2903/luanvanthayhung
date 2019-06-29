-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2019 at 05:23 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banhangonline`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `idnv` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tenchucvu` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bangbaogia`
--

CREATE TABLE `bangbaogia` (
  `idsp` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `idnhacc` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ngaybaogia` date NOT NULL,
  `giasp` decimal(20,0) NOT NULL DEFAULT '10'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `binhluan`
--

CREATE TABLE `binhluan` (
  `idbl` int(11) NOT NULL,
  `user` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `comments` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `binhluan`
--

INSERT INTO `binhluan` (`idbl`, `user`, `email`, `comments`) VALUES
(1, 'a', 'ss', 'adadasdasdasd');

-- --------------------------------------------------------

--
-- Table structure for table `chitietdh`
--

CREATE TABLE `chitietdh` (
  `iddh` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `idsp` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `soluong` int(11) NOT NULL,
  `gia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chitietdh`
--

INSERT INTO `chitietdh` (`iddh`, `idsp`, `soluong`, `gia`) VALUES
('hautran28081998@gmail.com_1560766810', 'dt9', 1, 47),
('phamtien29030212@gmail.com_1561177281', 'kb3', 1, 2850000);

-- --------------------------------------------------------

--
-- Table structure for table `chitietkm`
--

CREATE TABLE `chitietkm` (
  `idctkm` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `idsp` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phantramkm` double NOT NULL,
  `thanhtienkm` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `giobt` time(6) NOT NULL,
  `giokt` time(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chuongtrinhkm`
--

CREATE TABLE `chuongtrinhkm` (
  `idctkm` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tenctkm` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ngaybd` date NOT NULL,
  `ngaykt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `danhgiabl`
--

CREATE TABLE `danhgiabl` (
  `iddg` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mucdodg` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tieudedg` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `noidungdg` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `idsp` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `idkh` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ngaydg` date NOT NULL,
  `idadmin` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ngayquyetdg` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dondathangchuyenncc`
--

CREATE TABLE `dondathangchuyenncc` (
  `iddh` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `idnhacc` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ngaychuyen` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dondh`
--

CREATE TABLE `dondh` (
  `iddh` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tongtiendh` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `idkh` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ngaydat` datetime NOT NULL,
  `tennguoinhan` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dcnguoinhan` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sdtnguoinhan` varchar(12) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` int(1) NOT NULL COMMENT '0-3'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dondh`
--

INSERT INTO `dondh` (`iddh`, `tongtiendh`, `idkh`, `ngaydat`, `tennguoinhan`, `dcnguoinhan`, `sdtnguoinhan`, `trangthai`) VALUES
('hautran28081998@gmail.com_1560766810', '47', '3', '2019-06-17 00:00:00', 'aaa', '111', '123', 0),
('phamtien29030212@gmail.com_1561177281', '2850000', '2', '2019-06-22 00:00:00', 'Tien', 'dadsasd', '1111111', 0);

-- --------------------------------------------------------

--
-- Table structure for table `loaikh`
--

CREATE TABLE `loaikh` (
  `idloaikh` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tenloaikh` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loaikh`
--

INSERT INTO `loaikh` (`idloaikh`, `tenloaikh`) VALUES
('1', 'vang'),
('2', 'bac');

-- --------------------------------------------------------

--
-- Table structure for table `loaisp`
--

CREATE TABLE `loaisp` (
  `idloaisp` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tenloaisp` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loaisp`
--

INSERT INTO `loaisp` (`idloaisp`, `tenloaisp`) VALUES
('dt', 'Điện Thoại'),
('dtdd', 'dien thoai di dong 1'),
('km', 'Keyboard ,Mouse'),
('lk', 'Linh Kiện PC'),
('lt', 'Laptop'),
('ltn', 'Loa,Tai Nghe'),
('mh', 'Màn Hình'),
('tbm', 'Thiết Bị Mạng');

-- --------------------------------------------------------

--
-- Table structure for table `nhacc`
--

CREATE TABLE `nhacc` (
  `idnhacc` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tennhacc` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `diachinhacc` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dienthoainhacc` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nhacc`
--

INSERT INTO `nhacc` (`idnhacc`, `tennhacc`, `diachinhacc`, `dienthoainhacc`) VALUES
('', '', '', ''),
('mccxm', 'Xiaomi', 'Trung Quốc', '032516487'),
('nccac', 'Acer', 'US', '077546812'),
('nccas', 'Asus', 'US', '032654789'),
('nccde', 'Dell', 'US', '032654879'),
('ncchw', 'Huawei', 'Trung Quốc', '032654879'),
('ncclg', 'Logitech', 'Thụy Sỹ', '0342287979'),
('nccmsi', 'MSI', 'US', '032115468'),
('nccop', 'Oppo', 'Trung Quốc', '0321546854'),
('nccrz', 'Razer', 'US', '0372223456'),
('nccsmax', 'SoundMax', 'Trung Quốc', '0222456879'),
('nccsou', 'SoundChina', 'Trung Quốc', '0321546854'),
('nccss', 'SamSung', 'Hàn Quốc', '0222456879');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `idsp` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tensp` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `giasp` int(20) NOT NULL,
  `mausp` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `motasp` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `idloaisp` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `idnhacc` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'nccop',
  `banchay` int(1) DEFAULT '0' COMMENT '1: ban chay, 0: thuong',
  `moi` int(1) DEFAULT NULL COMMENT '1: moi, 0: thuong'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`idsp`, `tensp`, `giasp`, `mausp`, `motasp`, `idloaisp`, `idnhacc`, `banchay`, `moi`) VALUES
('dt1', 'Xiaomi redmi note 5 pro', 3700000, 'dt1.jpg', 'Xiaomi Redmi Note 5 Pro (4GB/64GB) thực sự là người kế vị xứng đáng của Redmi Note 4X "thần thánh" khi không có đối thủ với mức giá khoảng 4 triệu 6.\r\nMàn hình Xiaomi Redmi Note 5 Pro đã được thiết kế theo chiều hướng tiện lợi hơn cho người sử dụng với kích thước lên đến 5.99 inch, tỉ lệ 18:9 được đặt trên tấm nền cảm ứng IPS LCD cho màu sắc hiển thị tương đối tốt.\r\nRedmi Note 5 Pro của Xiaomi thoạt nhìn có vẻ rất cứng cáp và khoẻ khoắn với cấu trúc khung kim loại nguyên khối kết hợp với kính ở mặt trước.\r\nRedmi Note 5 Pro có kích thước 158.6 x 75.4 x 8.1 mm tạo sự thoải mái cho người sử dụng khi cầm nắm.', 'dt', 'mccxm', 1, NULL),
('dt10', 'Oppo F7', 4390000, 'dt10.jpg', 'OPPO F7 vẫn đi theo thiết kế "tai thỏ" mà Apple đã từng làm trên iPhone X. Máy sở hữu màn hình có kích thước 6.23 inch với độ phân giải Full HD+.\r\nĐiện thoại OPPO F7 sẽ sở hữu một máy ảnh phía trước độ phân giải 25 MP. OPPO luôn tiếp thị sản phẩm của họ là chuyên gia selfie, và với F7 cũng không phải là ngoại lệ.\r\nTính năng làm đẹp bằng trí tuệ thông minh nhân tạo AI vốn đã xuất hiện trên điện thoại OPPO dòng cũ, nay tích hợp ở F7 hứa hẹn cũng sẽ được cải tiến đem lại chất lượng tốt hơn.\r\nOPPO F7 sẽ được trang bị con chip tới từ MediaTek Helio P60 với 8 nhân cùng 4 GB RAM và 64 GB bộ nhớ trong.\r\nMáy vẫn sẽ chạy trên giao diện Color OS đặc trưng của OPPO.\r\n\r\n', 'dt', 'nccop', 0, 1),
('dt11', 'Oppo A7', 4790000, 'dt11.jpg', 'OPPO A7 là một tuyệt tác về thiết kế với màn hình “giọt nước” thời trang, màu sắc lạ mắt. Hơn thế nữa máy còn sở hữu camera xuất sắc và viên pin dung lượng cao đến khó tin.\r\nOPPO A7 là chiếc smartphone đầu tiên trong phân khúc có thiết kế màn hình “giọt nước”. Kiểu thiết kế này là sự kết hợp giữa cảm hứng từ thiên nhiên và công nghệ, mô phỏng một giọt nước rơi xuống bờ vực. Không chỉ đẹp mắt, thiết kế màn hình “giọt nước” còn giúp viền màn hình OPPO A7 siêu mỏng, mang đến một chiếc máy màn hình tới 6,2 inch nhưng vẫn có kích thước gọn gàng trong lòng bàn tay nhờ tỉ lệ màn hình chiếm tới 88,4% mặt trước. Đồng thời, trải nghiệm xem của bạn cũng sống động hơn rất nhiều.\r\nOPPO A7 được xây dựng để mang đến cho người dùng những trải nghiệm tuyệt vời nhất trong lòng bàn tay. Một lớp phủ chống chói trên màn hình giúp bạn có góc nhìn rộng hơn, hình ảnh rõ nét dù chỉ nhìn nghiêng hay lướt qua máy. OPPO A7 sử dụng đèn nền điện áp thấp, giảm nhiệt độ điện thoại xuống 0,5 độ C, trong khi chất liệu hợp kim magie giúp pin tiêu hao nhiệt hiệu quả hơn. Điện thoại sẽ luôn mát mẻ, dễ chịu trên tay bạn', 'dt', 'nccop', 0, NULL),
('dt112', 'dien thoai cui', 1000000, 'download4.jpg', 'sasdsdasdadasdasdsd', 'dt', 'nccop', 0, NULL),
('dt1125', 'dien thoai cui', 1100000, 'hinh.png', 'qwkdh qklwdk', 'dt', 'nccop', 0, NULL),
('dt12', 'Oppo F9', 5890000, 'dt12.jpg', 'OPPO đã mang đến một kiểu màn hình mới trên OPPO F9, đó là màn hình “giọt nước”. Giờ đây phần khuyết trên đỉnh màn hình đã rất bé, đẹp hơn và nhiều diện tích dành cho màn hình hơn so với màn hình “tai thỏ” đang phổ biến hiện nay. Kích thước màn hình OPPO F9 vẫn rất lớn với 6,3 inch, độ phân giải Full HD+ và tỉ lệ rộng 19,5:9, thoải mái không gian cho người dùng trải nghiệm. Màn hình “giọt nước” giúp cho hiệu ứng tràn viền rõ nét hơn, trải nghiệm xem tuyệt vời hơn. OPPO tự tin cho biết tỉ lệ màn hình trên mặt trước của OPPO F9 lên tới 90,8%\r\nOPPO F9 có kiểu dáng vuông vắn hiện đại và những đường bo cong hợp lý để tạo cảm giác cầm nắm chắc chắn. Máy được làm từ thủy tinh hữu cơ sang trọng và cứng cáp. Điều nổi bật nhất của OPPO F9 là cách mà OPPO tạo hiệu ứng màu sắc vô cùng đặc biệt. Ba màu sắc trên máy là Đỏ Ánh Dương, Xanh Chạng Vạng và Tím Tinh Tú, hiệu ứng đổi màu lấp lánh kim cương khi thay đổi góc nhìn. Đây là hiệu ứng thú vị mà chắc chắn người dùng sẽ thích.\r\nOPPO F9 sở hữu camera trước có độ phân giải cực lớn 25MP, hỗ trợ trí thông minh nhân tạo AI và quan trọng hơn là tích hợp HDR trên phần cứng. Nhờ HDR thì camera này sẽ selfie tốt trong cả những điều kiện ánh sáng phức tạp như chụp thiếu sáng hay chụp ngược sáng.\r\nOPPO F9 mang trên mình viên pin dung lượng 3.500 mAh. Đây là con số rất lớn, cho phép bạn sử dụng thoải mái trong cả ngày. Hơn nữa OPPO cũng ứng dụng trí tuệ nhân tạo AI vào quản lý pin, học hỏi thói quen người dùng và đóng các ứng dụng ngầm ít sử dụng để tiết kiệm pin.', 'dt', 'nccop', 1, NULL),
('dt13', 'SamSung Galaxy S10+', 18190000, 'dt13.jpg', 'Samsung S10+ 512GB là phiên bản có bộ nhớ lớn nhất, tương đương cả một mẫu PC thông thường, cho phép bạn lưu trữ mọi thứ và mang trên mình những công nghệ hàng đầu của smartphone hiện nay.\r\nKhông chỉ là chụp ảnh, mỗi lần bạn mở camera trên Galaxy S10+ 512GB là một tác phẩm nghệ thuật được tạo ra. 3 camera với 3 vai trò khác nhau bao gồm camera chụp thông thường; camera tele để chụp gần và camera góc siêu rộng để chụp được khung hình nhiều hơn. Dù là hoàn cảnh nào đi nữa thì Samsung Galaxy S10+ cũng xử lý xuất sắc theo cách riêng biệt.\r\nChế độ tối ưu hóa cảnh trên Galaxy S10+ sẽ tự động nhận diện 30 chủ thể phổ biến và điều chỉnh cài đặt camera để giúp bạn có được bức ảnh đẹp nhất trong từng bối cảnh khác nhau. Bạn không cần phải căn chỉnh quá phức tạp mà S10+ chính là người trợ lý đóng luôn vai trò đó. Mỗi bức ảnh sẽ có một cái hồn riêng, đúng tinh thần của chủ thể và khung cảnh mà bạn không cần phải làm gì cả, chỉ đơn giản là nhấn chụp – camera siêu thông minh sẽ làm tất cả những công đoạn còn lại.\r\nBạn sẽ được tận hưởng màn hình lớn 6,4 inch với chất lượng chưa thấy ở bất cứ đâu. Toàn bộ mặt trước là màn hình, không có gì che tầm mắt của bạn. Viền cong siêu mỏng tràn cả 4 cạnh kết hợp cùng các đường cắt laser chuẩn xác khéo léo giấu kín camera nằm ngay trên màn hình. Galaxy S10+ 512GB xứng đáng được gọi là một kiệt tác ngay trên tay bạn.\r\n', 'dt', 'nccss', 0, NULL),
('dt14', 'SamSung Galaxy S9+', 9550000, 'dt14.jpg', 'Samsung Galaxy S9+ xứng danh siêu phẩm với khả năng chụp ảnh tuyệt đỉnh, màn hình vô cực ấn tượng và thiết kế mê hoặc lòng người.\r\nSamsung Galaxy S9 Plus được tạo nên từ những đường cong liền lạc tuyệt đối từ trước ra sau, cho cảm giác cầm nắm vừa vặn trong tay bạn. Hai mặt kính cong 3D ôm trọn phần khung kim loại chắc chắn, vô cùng sang trọng. Tất cả đều được hoàn thiện tinh tế và sắc sảo đến từng đường nét. Các chi tiết nhỏ như cụm cảm biến, camera trước hay đầu đọc vân tay được chăm chút tỉ mỉ, mang lại trải nghiệm tốt nhất cho người dùng.\r\nSamsung Galaxy S9+ mang đến những bức ảnh xuất sắc nhờ camera khẩu độ kép đầu tiên trên thế giới. Dựa vào môi trường thực tế, Galaxy S9+ có thể thay đổi khẩu độ tự động với cơ chế tương tự như mắt người. Ban ngày khẩu độ sẽ là f/2.4, thích hợp khi ánh sáng đầy đủ. Khi chụp thiếu sáng, độ mở tự động tăng lên f/1.5, thu sáng vượt trội. Những kiệt tác nhiếp ảnh sẽ được tạo ra bởi chính bạn.\r\nSamsung Galaxy S9 Plus mang trên mình bộ vi xử lý công nghệ 10nm mạnh nhất, đi cùng tới 6GB RAM, để bạn làm được mọi việc ở tốc độ cao. Dù là lướt web, xem phim hay chơi game thì Galaxy S9 Plus cũng đáp ứng hoàn hảo. Bộ nhớ trong 64GB và khe cắm thẻ nhớ mở rộng đảm bảo để bạn không bao giờ phải lo hết bộ nhớ, cho không gian lưu trữ gần như không giới hạn khi cắm thêm thẻ nhớ tối đa 512GB.', 'dt', 'nccss', 0, 1),
('dt15', 'SamSung Galaxy S8+', 6390000, 'dt15.jpg', 'Samsung S8 Plus ra mắt đã làm hài lòng giới công nghệ lẫn người tiêu dùng hâm mộ hãng điện thoại danh tiếng đến từ Hàn Quốc – Samsung. Thiết kế có thể chưa được xem là đột phá hoàn toàn nhưng ngay từ cái nhìn đầu tiên đã mang lại cảm xúc thán phục bởi sự sắc sảo, tinh tế đến từ chi tiết và một màn hình cong tràn cạnh “không viền” đáng ngạc nhiên. Kèm theo là nhiều tính năng đặc biệt thú vị nhằm nâng cao trải nghiệm cho người dùng. S8 Plus hứa hẹn sẽ mang lại sự thành công mới cho Samsung trong năm nay.\r\nSự hoàn thiện cũng như tỉ mỉ đã được Samsung thực hiện khá hoàn hảo. Ở mặt trước, nút Home vật lý đã thay thế bằng nút Home cảm ứng lực trên màn hình, còn cảm biến vân tay thì được chuyển sang mặt lưng máy. Thiết kế này giúp cho mặt trước sản phẩm phẳng và gần như không có gì ngoài màn hình.\r\nMàn hình với kích thước 6.2 inch Super AMOLED độ phân giải QHD+ (1440 x 2960 pixel) thì có thể không cần bàn cãi về chất lượng hiển thị trên Samsung S8 Plus nữa. Chắc chắn người dùng sẽ có những hình ảnh, thước phim rõ nét và lung linh nhất có thể trong mọi điều kiện ánh sáng. Điểm độc đáo chính là thiết kế cong tràn cạnh hai bên và tối đa cho cả cạnh trên, dưới khiến bạn sẽ nghĩ trên tay đang cầm một tấm gương. Mặc dù vậy thì tỷ lệ màn hình được cho là khá thuôn dài, có thể sẽ có thao tác bằng một tay.\r\nĐối với những dòng điện thoại cao cấp như Galaxy S8 Plus thì có lẽ những thông số cấu hình chưa phải là điều đáng để lưu tâm nhất. Bởi vì nó sẽ luôn mạnh mẽ nhất. Sản phẩm chạy chipset Snapdragon 835 và Exynos 8895, vi xử lý octa core tốc độ 2.45 GHz, hệ điều Android 7.0 mới nhất, ROM 64 GB có thể mở rộng đến 256 GB thông qua thẻ microSD và RAM 4 GB.\r\nDòng chip mới nhất của Qualcomm trên Samsung S8 Plus được giới thiệu là dòng chip snapdragon 835 mới nhất của hãng này tính tới thời điểm hiện tại. Kèm theo sức mạnh và những tính năng ưu việt, snapdragon 835 còn được tích hợp LTE tốc độ cao lên đến 1Gbps/s. Có thể nói đây là dòng chip có tốc độ download tốt nhất thời điểm hiện tại với 4G tốc độ up và download có thể lên tới 1Gbps/s.\r\nĐiện thoại Galaxy S8 Plus dùng viên pin 3.500 mAh cùng tính năng sạc nhanh Adaptive Fast Charging. Hỗ trợ sạc không dây, cả chuẩn WPC lẫn PMA. Sản phẩm cũng hỗ trợ chuẩn chống nước IP68.', 'dt', 'nccss', 0, NULL),
('dt2', 'Xiaomi redmi note 7', 4090000, 'dt2.jpg', 'Xiaomi Redmi Note 7 ngay khi ra mắt thiết kế này đã nhanh chóng gây ấn tượng khi thuộc phân khúc giá rẻ nhưng trang bị camera 48MP.\r\nXiaomi Redmi Note 7 được biết đến là thiết kế đầu tiên sau khi Redmi vừa tách ra khỏi Xiaomi và nó chỉ thuộc phân khúc giá rẻ. Thế nhưng thiết kế của nó không hề rẻ khi được bảo về bằng 2 mặt kính và khung kim loại chắc chắn đi kèm.\r\nMặt lưng của Note 7 được phủ kính Corning Gorilla Glass 5 với màu sắc gradient bắt mắt thay vì mặt lưng kim loại đơn sắc như những thiết kế giá rẻ hiện nay trên thị trường.', 'dt', 'mccxm', 0, NULL),
('dt3', 'Xiaomi Mi 8', 7250000, 'dt3.jpg', 'Thiết kế Xiaomi Mi 8 mang đến cái nhìn đầu tiên rất ấn tượng và khá giống iPhone X. Xiaomi mang đến cho thiết bị mới của mình 2 mặt kính sang trọng và khung kim loại cao cấp được bo tròn các góc.\r\nTrong thiết kế kỷ niệm 8 năm thành lập công ty, nhà sản xuất Trung Quốc đã trang bị cho thiết kế đặc biệt của mình một màn hình lớn 6.21 inch, độ phân giải Full HD+ (2248x1080 pixel) và tỷ lệ màn hình 18.7:9.\r\nCấu hình Xiaomi Mi 8 xách tay khá ấn tượng với vi xử lý Snapdragon 845, RAM 6GB, bộ nhớ trong từ 64GB đến 256GB. Đi kèm còn có viên pin có dung lượng 3400 mAh đủ đáp ứng tốt một ngày trải nghiệm cường độ cao cho người dùng.', 'dt', 'mccxm', 0, NULL),
('dt4', 'Xiaomi Mi Mix 3', 13200000, 'dt4.jpg', '\r\nXiaomi Mi Mix 3 128GB, smartphone mới nhất của Xiaomi gây ấn tượng với thiết kế màn hình trượt, cấu hình mạnh mẽ và 4 camera độc lạ.\r\nXiaomi Mi Mix 3 RAM 6GB là một thiết kế mang tính lột xác so với các dòng Mi Mix trước đây và cả những chiếc smartphone cao cấp khác hiện có trên thị trường. Đâu tiên chính là thiết kế tràn viền ở mặt trước lên đến 93.4% cho không gian trải nghiệm rộng lớn hơn.\r\nXiaomi Mi Mix 3 sở hữu sức mạnh đến từ vi xử lý cao cấp Snapdragon 845 của Qualcomm, đi kèm là RAM 6GB, bộ nhớ trong 128GB. Ngoài ra máy còn đi kèm viên pin có dung lượng 3200mAh, hỗ trợ sạc nhanh Quick Charge 4+ và sạc nhanh không dây 10W.', 'dt', 'mccxm', 1, NULL),
('dt5', 'Huawei P30', 13990000, 'dt5.jpg', 'Huawei P30 khoác lên mình thiết kế cao cấp với bộ khung vỏ được làm từ hai chất liệu sang trọng là kim loại và kính, từng đường nét trên thân máy dù là nhỏ nhất đều được trau chuốt kĩ lưỡng với độ hoàn thiện tối đa. Năm nay, Huawei P30 đã từ bỏ phong cách màn hình “tai thỏ” để sử dụng thiết kế màn hình “giọt sương” giúp tối ưu hóa tính thẩm mĩ và không gian hiển thị hình ảnh.\r\nĐể đảm bảo sức mạnh hiệu năng cho P30, Huawei đã trang bị cho chiếc điện thoại này con chip Kirin 980 – bộ vi xử lý đầu tiên trên thế giới được chế tác trên tiến trình 7nm hiện đại. Sự góp mặt của chip Kirin 980 giúp Huawei P30 không chỉ có hiệu năng mạnh mẽ hàng đầu mà lại tiêu thụ rất ít năng lượng. Trở thành chủ nhân của một chiếc P30, bạn có thể thỏa sức đắm mình trong không gian giải trí với những tựa game mobile nặng nhất.', 'dt', 'ncchw', 0, 1),
('dt6', 'Huawei P30 Pro', 22990000, 'dt6.jpg', 'Huawei P3 Pro sở hữu không chỉ ba, mà tới bốn camera trên mặt lưng. Hệ thống camera này gồm một camera góc siêu rộng 20MP, một camera chính 40MP, một camera tele 8MP và cuối cùng là camera ToF hỗ trợ đo khoảng cách để phục vụ tính năng xóa phông. Sự kết hợp của bộ bốn camera này đem tới khả năng chụp ảnh trọn vẹn tối đa, có khả năng thỏa mãn niềm đam mê nhiếp ảnh của những khách hàng khó tính nhất.\r\nCamera selfie độ phân giải 32MP trên P30 Pro được tối ưu hóa bằng công nghệ nhận diện khuôn mặt thông minh, đem lại khả năng bắt trọn những khoảnh khắc selfie lung linh nhất thông qua việc khoanh vùng khuôn mặt với độ sắc nét và độ sáng cực kì chính xác. Trải nghiệm thực tế cho thấy những bức ảnh selfie được thực hiện với Huawei P30 Pro có độ sắc nét đang kinh ngạc ngay cả khi chụp trong môi trường thiếu sáng.\r\nKhác với P20 Pro sử dụng màn hình phẳng LCD, năm nay, P30 Pro sở hữu màn hình có lớp kính cong 3D kép và tấm nền OLED rộng 6.47 inch đem tới trải nghiệm hình ảnh chi tiết, màu sắc tươi sáng cũng như góc trông ảnh rất rộng. Việc sử dụng màn hình cong hai cạnh không chỉ khiến P30 Pro tạo nên cảm giác cầm nắm gọn ghẽ mà còn biến chiếc điện thoại này thành một tác phẩm nghệ thuật quyến rũ.', 'dt', 'ncchw', 0, NULL),
('dt7', 'Huawei Nova 3i', 5430000, 'dt7.jpg', 'Huawei nova 3i không chỉ mang đến vẻ đẹp từ một thiết kế tuyệt hảo mà nó còn cho bạn ghi lại cả thế giới theo cách riêng nhờ 4 camera AI cực “chất”.\r\nCamera sau Huawei nova 3i cũng là một cụm camera kép với hai cảm biến 16MP+2MP. Các thuật toán AI đã thu thập dữ liệu và học hỏi từ hơn 100 triệu bức ảnh, giúp cho Huawei nova 3i nhận diện được 22 đối tượng cùng với 500 khung cảnh khác nhau. Qua đó mọi bức ảnh của bạn đều sống động và có hồn hơn, giúp bạn dễ dàng ghi lại những khoảnh khắc đẹp trong cuộc sống. Tất nhiên là với camera kép thì nova 3i hoàn toàn có thể chụp được những bức ảnh xóa phông tự nhiên và đầy chuyên nghiệp.\r\nHuawei nova 3i đi kèm bộ vi xử lý Kirin 710, được sản xuất trên tiến trình 12nm tiên tiến, mạnh mẽ và tiết kiệm điện năng. Con chip này bao gồm 8 nhân, trong đó có 4 nhân Cortex A73 cực mạnh, có thể hoạt động trơn tru và chơi tốt tất cả mọi game. Ngoài ra, Kirin 710 còn là bộ vi xử lý tập trung cho trí thông minh nhân tạo AI, từ việc xử lý ảnh cho đến việc quản lý hiệu năng khi chơi game. Chính vì thế, việc sử dụng máy của bạn sẽ luôn diễn ra trơn tru và ổn định.', 'dt', 'ncchw', 0, NULL),
('dt8', 'Huawei P30 lite', 7490000, 'dt8.jpg', 'Với P30 Lite, bạn sẽ tìm thấy những trải nghiệm trọn vẹn nhất về hiệu năng, khả năng chụp ảnh, selfie cũng như cảm quan thẩm mĩ. Tất cả đều được gói gọn vào trong một thiết bị di động gọn gàng có giá bán tầm trung hợp túi tiền.\r\nMột trong những điểm nhấn quan trọng trong thiết kế của Huawei P30 Lite chính là phần khuyết màn hình nhỏ gọn được vuốt cong theo dạng giọt nước hết sức đẹp mắt. Sản phẩm sở hữu màn hình rộng tới 6.15 inch với độ phân giải FullHD+, có khả năng hỗ trợ người dùng quan sát, thao tác và sáng tạo một cách thuận tiện tối đa. Với P30 Lite, bạn như đang chìm đắm vào một bức tranh tuyệt đẹp, rực rỡ sắc màu với những khung hình tuyệt mỹ.\r\nHuawei P30 Lite sở hữu camera trước độ phân giải 32MP khẩu độ F/2.0, nhằm tận dụng tối đa tiềm lực của ống kính này, nhà sản xuất tích hợp thêm trợ lý ảo thông minh (AI) có khả năng phân tích cấu trúc và hình dáng khuôn mặt để tạo ra những bức hình selfie không chỉ đẹp mà còn khác biệt và độc đáo. Công nghệ ánh xạ sẽ giúp tôn lên những đường nét đẹp nhất trên khuôn mặt và đảm bảo bạn luôn luôn rạng rỡ.', 'dt', 'ncchw', 1, NULL),
('dt9', 'Oppo F11', 6490000, 'dt9.jpg', 'Oppo F11 được trau chuốt từng đường nét trên thân máy với độ hoàn thiện tối ưu, nhằm mang tới cho người dùng trải nghiệm cầm nắm tuyệt hảo.\r\nMặt trước của OPPO F11 đánh dấu sự xuất hiện của màn hình rộng 6.5 inch tràn viền, chiếm tới 85.3% tỉ lệ thân máy. Điểm nhấn đáng chú ý của màn hình này là việc OPPO đã khéo léo đưa camera selfie vào trong một phần khuyết được bo gọn tinh tế theo dạng giọt nước, điều này vừa giúp tối ưu hóa vẻ đẹp ngoại hình, vừa tiết kiệm được không gian tối đa cho màn hình hiển thị. Cách thiết kế khéo léo giúp người sử dụng có thể thoải mái thao tác trên màn hình F11 chỉ với một tay thuận tiện.\r\nBên trong thân máy F11, Oppo trang bị bộ vi xử lý Helio P70 tám nhân, đi kèm với đó là 6GB RAM và 64GB bộ nhớ trong. Với cấu hình này, Oppo F11 vẫn có thể đem lại trải nghiệm đỉnh cao khi chơi game nhờ được tích hợp thêm Hyper Boost, đây là công nghệ giúp tối ưu hóa phần mềm ở cấp hệ thống, nhằm cải thiện hiệu năng hoạt động cho sản phẩm và mang lại trải nghiệm mượt mà hơn nhiều khi chơi game.\r\nOppo trang bị một viên pin có dung lượng cao 4020 mAh trên điện thoại để đảm bảo bạn có đủ năng lượng vượt qua những ngày bận rộn nhất. Tương tự như nhiều sản phẩm khác của hãng, OPPO F11 cũng hỗ trợ công nghệ sạc nhanh VOOC.', 'dt', 'nccop', 0, 1),
('kb1', 'Bàn phím G512 Carbon', 2290000, 'kb1.jpg', 'G512 là bàn phím chơi game có hiệu suất cao cùng lựa chọn phím switch Romer-G Tactile tiên tiến, Romer-G Linear và GX Blue cơ học. Công nghệ chơi game tiên tiến và cấu trúc hợp kim nhôm khiến cho G512 trở nên đơn giản, bền bỉ và có đầy đủ tính năng.\r\nG512 có thể được tùy chỉnh mỗi phím với khoảng 16,8 triệu màu. Tạo hình động của riêng bạn hoặc chọn từ một bộ sưu tập các hiệu ứng thiết lập trước. Và với công nghệ LIGHTSYNC, chức năng chiếu sáng được lấy cảm hứng từ trò chơi, âm thanh hoặc màn hình để đem lại trải nghiệm RGB đắm chìm hơn bao giờ hết.\r\nG512 được tạo thành từ vật liệu hợp kim nhôm-magiê 5052 cực kỳ bền và chắc chắn, cho phép tạo ra thiết kế vừa tối giản vừa mang tính thẩm mỹ cao. Độ cứng của hợp kim 5052 cũng làm nên chiếc khung vững chắc, chống trượt để mang toàn bộ tính năng đem lại trải nghiệm chơi game đẳng cấp.', 'km', 'ncclg', 1, NULL),
('kb2', 'Bàn phím G613 WIRELESS MECHANICAL ', 1890000, 'kb2.jpg', 'G613 là bàn phím không dây thế hệ tiếp theo dành cho những game thủ muốn cả hiệu suất cao của phím switch cơ học và sự tự do chơi game không dây.\r\nThông qua chế tạo và thiết kế đầu cuối, Logitech G đã phát triển một giải pháp không dây mạnh mẽ để giải quyết vấn đề cơ bản của độ trễ, độ ổn định và khả năng kết nối. Kết quả cuối cùng là LIGHTSPEED, giải pháp không dây cấp độ chuyên nghiệp đạt được hiệu suất như có dây.\r\nCác phím Romer-G Tactile mang lại hiệu suất cơ học chính xác, yên tĩnh với cảm giác tuyệt vời và độ bền 70 triệu lần nhấn. Là lựa chọn của những chuyên gia thể thao điện tử hàng đầu, các phím Romer-G có hành trình ngắn 1,5 mm có nghĩa là nhanh hơn 25% 1Khoảng cách hành trình 1,5 mm so với 2,0 mm của các phím cơ học tiêu chuẩn. lần nhấn phím so với các phím cơ học tiêu chuẩn của đối thủ. Romer-G là sự hòa trộn hoàn hảo của hiệu suất nhanh, chính xác và yên tĩnh trong khi vẫn duy trì được cảm giác nhấn phím rõ ràng.', 'km', 'ncclg', 0, NULL),
('kb3', 'Bàn phím G810 ORION SPECTRUM', 2850000, 'kb3.jpg', 'Orion Spectrum mang lại trải nghiệm chơi game thuần khiết. Bắt đầu bằng thiết kế hướng tới hiệu suất, bàn phím này tích hợp các công nghệ mạnh mẽ nhất của chúng tôi. Từ các chi tiết tinh tế nhất, như kết cấu bề mặt mờ phủ vân tay và dây cáp bện, tới chức năng chiếu sáng RGB tiên tiến và các phím cơ Romer G siêu nhanh, siêu bền, mỗi khía cạnh đều được thiết kế chính xác để mang công nghệ dẫn đầu ngành của Logitech G và chất lượng vào kiểu dáng được chế tạo độc đáo.\r\nCông nghệ tốc độ cao, ổn định lâu dài. Các phím cơ Romer-G độc quyền của Logitech mang lại phản ứng gần như tức thời, với điểm nhận biết thao tác ngắn hơn 25% so với phím cơ tiêu chuẩn, cho bạn lợi thế khi từng miligiây cũng vô cùng quan trọng. Được thử nghiệm lên tới 70 triệu lần nhấn phím, các phím Romer-G bền hơn 40% so với tiêu chuẩn.\r\nChiếu sáng nền RGB tại trung tâm có phổ màu đầy đủ. Sử dụng Phần mềm chơi game của Logitech (Logitech Gaming Software) để chọn mức độ tùy chỉnh với khả năng chọn và cá nhân hóa từng đèn phím riêng từ phổ màu khoảng 16,8 triệu màu. Đồng bộ hóa các hiệu ứng chiếu sáng với các thiết bị Logtech G bằng cách sử dụng Phần mềm chơi game của Logitech (Logitech Gaming Software).', 'km', 'ncclg', 0, 1),
('kb4', 'Bàn phim chơi game G213', 1000000, 'kb4.jpg', 'Bàn phím chơi game G213 có các phím lõm cơ học của Logitech được tùy chỉnh đặc biệt để mang lại phản ứng tiếp xúc ưu việt và cấu hình hiệu suất tương tự như bàn phím cơ học. Các phím lõm cơ học có độ cao tối đa, khoảng cách hành trình đầy đủ 4 mm, lực tác động 50g và âm thanh yên tĩnh khi hoạt động.\r\nG213 có năm khu vực chiếu sáng riêng, mỗi khu vực đều có thể tùy chỉnh từ một bảng gồm khoảng 16,8 triệu màu và các mức độ sáng khác nhau để phù hợp với phong cách, hệ thống hay không gian của bạn. Công nghệ LIGHTSYNC cung cấp khả năng chiếu sáng RGB thế hệ mới, đồng bộ hóa ánh sáng và các cấu hình trò chơi với nội dung của bạn. Tùy chỉnh nhanh chóng và dễ dàng bằng Logitech G HUB.', 'km', 'ncclg', 0, NULL),
('kb5', 'G610 BACKLIT MECHANICAL ', 1830000, 'kb5.jpg', 'G610 Orion bắt đầu bằng cùng thiết kế hướng đến hiệu suất và tích hợp công nghệ chơi game mạnh mẽ. Từ các chi tiết tinh tế nhất, như kết cấu mờ phủ vân tay và dây cáp bện có độ bền cao, tới chi tiết phức tạp nhất, mỗi khía cạnh đều được thiết kế chính xác để mang công nghệ dẫn đầu ngành của Logitech G và chất lượng vào kiểu dáng được chế tạo độc đáo.\r\nCác phím cơ học Cherry MX là phím tiêu chuẩn vàng trong bàn phím cơ học. Các phím cơ bền hơn và cho cảm giác cũng như độ nhạy ổn định hơn so với các phím lõm bằng cao su.\r\nChọn mức độ tùy chỉnh của bạn bằng cách tìm và cá nhân hóa từng đèn phím với G HUB. Theo dõi nhiều lệnh bằng cách tùy chỉnh các phím bật đèn. G HUB của Logitech cũng có thể đồng bộ hóa kiểu chiếu sáng với các thiết bị khác của Logitech G.', 'km', 'ncclg', 0, 1),
('kb6', 'BÀN PHÍM CHƠI GAME CƠ HỌC PRO', 1500000, 'kb6.jpg', 'Bàn phím Logitech G đầu tiên mang tên PRO được thiết kế và chế tạo theo tiêu chuẩn khắt khe của những vận động viên thể thao điện tử chuyên nghiệp hàng đầu trên thế giới. Được chế tạo mang lại hiệu suất đỉnh cao và được thiết kế để giành chiến thắng.\r\nCác phím switch cơ học Romer-G Tactile được thiết kế có chủ ý nhằm đem lại hiệu suất, độ phản hồi và độ bền ở đẳng cấp chuyên nghiệp. Phiên bản Romer-G Tactile dòng Pro là sự hòa trộn hoàn hảo của hiệu suất nhanh, chính xác và yên tĩnh trong khi vẫn duy trì được cảm giác nhấn phím rõ ràng.\r\nPRO có dây có thể tháo rời và thiết kế rút ngọn. Hình dạng nhỏ hơn và dây riêng biệt khiến cho nó dễ dàng bỏ vừa vào túi xách. Thiết kế nhỏ gọn cho bạn không gian bàn chơi rộng hơn để di chuyển chuột có độ nhạy thấp và linh hoạt hơn để kê bàn phím ở góc độ mong muốn. Đặc tính bền bỉ được đưa vào mọi thành phần và được gia cố bởi một tấm hậu bằng thép siêu bền, tăng thêm độ ổn định và độ vững chắc trong cuộc chơi.', 'km', 'ncclg', 0, NULL),
('kb7', 'Bàn phím chơi game cơ học G413', 1700000, 'kb7.jpg', 'G413 được thai nghén, thiết kế và chế tạo để mang lại hiệu suất tiên tiến với những đặc điểm phù hợp. Bộ khung mỏng manh, sắc bén được chế tạo từ hợp kim nhôm 5052 có trọng lượng nhẹ và bền bỉ. Ở bên dưới là chuột và dây tai nghe, cùng với chân có độ cao có thể điều chỉnh được với đế cân bằng bằng cao su, do vậy bạn có thể tìm thấy góc độ phù hợp với mình.\r\nRomer-G cũng được thiết kế có chủ ý để chiếu sáng chính xác và rõ ràng thông qua mũ phím. Do vậy, các phím luôn dễ dàng nhìn thấy và không bao giờ gây xao lãng, đặc biệt trong các cuộc chơi game vào đêm muộn (loại tốt nhất). Đó là cách mà G413 Carbon được chiếu sáng nền màu đỏ và G413 Silver có màu trắng đặc trưng có được vẻ ngoài cao cấp, trọng điểm.\r\nLớp vỏ trên cùng bằng hợp kim nhôm-magiê 5052 là bộ khung của bàn phím. Kết quả là thiết kế đẹp mắt cân bằng tất cả các tính năng. Với trọng tâm là hiệu suất cao và vẻ ngoài đẳng cấp, G413 được chế tạo từ những vật liệu cao cấp nhất.', 'km', 'ncclg', 1, NULL),
('lk1', 'Card màn hình Gigabyte RTX 2080 AORUS X 8G ', 23390000, 'lk1.jpg', '- Chip đồ họa: NVIDIA GeForce RTX 2080 \r\n- Bộ nhớ: 8GB GDDR6 ( 256-bit ) \r\n- GPU clock 1890 MHz \r\n- Nguồn phụ: 2 x 8-pin\r\n', 'lk', 'nccmsi', 0, NULL),
('lk10', 'ổ cứng HDD Seagate 1TB Backup Plus ', 1500000, 'lk10.jpg', '- Dung lượng: 1TB \r\n- Kích thước: 2.5" \r\n- Kết nối: USB 3.0\r\n', 'lk', 'nccmsi', 0, NULL),
('lk11', ' ổ cứng HDD Seagate 1TB Expansion Portable ', 1420000, 'lk11.jpg', '- Dung lượng: 1TB \r\n- Kích thước: 2.5" \r\n- Kết nối: USB 3.0 \r\n- Tốc độ vòng quay: 5400RPM\r\n', 'lk', 'nccmsi', 0, NULL),
('lk2', 'Card màn hình Gigabyte RTX 2080 GAMING OC 8G ', 22190000, 'lk2.jpg', '- Chip đồ họa: NVIDIA GeForce RTX 2080 \r\n- Bộ nhớ: 8GB GDDR6 ( 256-bit ) \r\n- Nguồn phụ: 1 x 6-pin + 1 x 8-pin\r\n', 'lk', 'nccmsi', 0, NULL),
('lk3', ' Card màn hình ASUS Dual RTX 2080 OC 8G GDDR6', 22890000, 'lk3.jpg', '- Chip đồ họa: NVIDIA GeForce RTX 2080 \r\n- Bộ nhớ: 8GB GDDR6 ( 256-bit )\r\n', 'lk', 'nccas', 0, NULL),
('lk4', 'Card màn hình Gigabyte RTX 2080 AORUS 8G ', 24390000, 'lk4.jpg', '- Chip đồ họa: NVIDIA GeForce RTX 2080 \r\n- Bộ nhớ: 8GB GDDR6 ( 256-bit ) \r\n- GPU clock 1845MHz \r\n- Nguồn phụ: 2 x 8-pin\r\n', 'lk', 'nccmsi', 1, NULL),
('lk5', 'Bộ nhớ DDR4 Kingmax 8GB (2400) (8 chip)', 1150000, 'lk5.jpg', '- Dung lượng: 1 x 8GB \r\n- Thế hệ: DDR4 \r\n- Bus: 2400MHz \r\n- Cas: 17\r\n', 'lk', 'nccmsi', 0, NULL),
('lk6', 'Bộ nhớ DDR3 Kingston 8GB (1600) ', 1780000, 'lk6.jpg', '- Dung lượng: 1 x 8GB \r\n- Thế hệ: DDR3 \r\n- Bus: 1600MHz \r\n- Cas: 11\r\n', 'lk', 'nccmsi', 0, NULL),
('lk7', 'Bộ nhớ DDR4 Kingston 8GB (2666) ', 1590000, 'lk7.jpg', '- Dung lượng: 1 x 8GB \r\n- Thế hệ: DDR4 \r\n- Bus: 2666MHz \r\n- Cas: 15\r\n', 'lk', 'nccmsi', 0, NULL),
('lk8', 'Bộ nhớ laptop DDR3L Kingston 8GB (1600) ', 1190000, 'lk8.jpg', '- Dung lượng: 1 x 8GB \r\n- Thế hệ: DDR3L \r\n- Bus: 1600MHz \r\n- Cas: 11\r\n', 'lk', 'nccmsi', 0, NULL),
('lk9', 'ổ cứng SSD WD Black 250GB ', 1180000, 'lk9.jpg', '- Dung lượng: 250GB \r\n- Kích thước: M.2 \r\n- Kết nối: M.2 NVMe \r\n- NAND: 3D-NAND \r\n- Tốc độ đọc / ghi (tối đa): 3100MB/s / 1600MB/s\r\n', 'lk', 'nccmsi', 0, NULL),
('lt1', 'Laptop Dell Inspiron 3476-C4I51121', 13190000, 'lt1.jpg', ' CPU: Intel Core i5-8250U ( 1.6 GHz - 3.4 GHz / 6MB / 4 nhân, 8 luồng ) \r\n- Màn hình: 14" ( 1366 x 768 ) , không cảm ứng \r\n- RAM: 1 x 4GB DDR4 2400MHz \r\n- Đồ họa: Intel UHD Graphics 620 \r\n- Lưu trữ: 1TB HDD 5400RPM \r\n- Hệ điều hành: Ubuntu \r\n- Pin: 4 cell 40 Wh Pin rời , khối lượng: 2 kg', 'lt', 'nccde', 0, 1),
('lt10', 'Laptop Acer Swift 3 SF315-52-50T9 ', 17990000, 'lt10.jpg', '- CPU: Intel Core i5-8250U ( 1.6 GHz - 3.4 GHz / 6MB / 4 nhân, 8 luồng ) \r\n- Màn hình: 15.6" IPS ( 1920 x 1080 ) , không cảm ứng \r\n- RAM: 1 x 8GB DDR4 2666MHz \r\n- Đồ họa: Intel UHD Graphics 620 \r\n- Lưu trữ: 256GB SSD M.2 SATA \r\n- Hệ điều hành: Windows 10 Home SL 64-bit \r\n- Pin: 4 cell 48 Wh Pin liền , khối lượng: 1.7 kg\r\n', 'lt', 'nccac', 0, NULL),
('lt11', 'Acer Aspire 7 A715-72G-50NA ', 17780000, 'lt11.jpg', 'CPU: Intel Core i5-8300H ( 2.3 GHz - 4.0 GHz / 8MB / 4 nhân, 8 luồng ) \r\n- Màn hình: 15.6" IPS ( 1920 x 1080 ) , không cảm ứng \r\n- RAM: 1 x 8GB DDR4 2666MHz \r\n- Đồ họa: Intel UHD Graphics 630 / NVIDIA GeForce GTX 1050 4GB \r\n- Lưu trữ: 1TB HDD 5400RPM \r\n- Hệ điều hành: Linux \r\n- Pin: 4 cell 48 Wh Pin liền , khối lượng: 2.4 kg\r\n.\r\n', 'lt', 'nccas', 0, NULL),
('lt12', 'Laptop Acer Swift 3 SF315-52-50T9 ', 17500000, 'lt12.jpg', '- CPU: Intel Core i5-8250U ( 1.6 GHz - 3.4 GHz / 6MB / 4 nhân, 8 luồng ) \r\n- Màn hình: 15.6" IPS ( 1920 x 1080 ) , không cảm ứng \r\n- RAM: 1 x 8GB DDR4 2666MHz \r\n- Đồ họa: Intel UHD Graphics 620 \r\n- Lưu trữ: 256GB SSD M.2 SATA \r\n- Hệ điều hành: Windows 10 Home SL 64-bit \r\n- Pin: 4 cell 48 Wh Pin liền , khối lượng: 1.7 kg\r\n. Laptop ASUS VivoBook Flip TP410UF-EC029T (14" FHD/i5-8250U/4GB/1TB HDD/MX130/Win10/1.6 kg)\r\n', 'lt', 'nccac', 1, NULL),
('lt13', 'Laptop Asus TP410UF-EC029T ', 16150000, 'lt13.jpg', '- CPU: Intel Core i5-8250U ( 1.6 GHz - 3.4 GHz / 6MB / 4 nhân, 8 luồng ) \r\n- Màn hình: 14" ( 1920 x 1080 ) , cảm ứng \r\n- RAM: 1 x 4GB Onboard DDR4 2400MHz \r\n- Đồ họa: Intel UHD Graphics 620 / NVIDIA GeForce MX130 2GB \r\n- Lưu trữ: 1TB HDD 5400RPM \r\n- Hệ điều hành: Windows 10 Home SL 64-bit \r\n- Pin: 3 cell 42 Wh Pin liền , khối lượng: 1.6 kg\r\n\r\n', 'lt', 'nccas', 0, NULL),
('lt14', ' Laptop Dell Inspiron 15 3576 ', 15890000, 'lt14.jpg', '- CPU: Intel Core i5-8250U ( 1.6 GHz - 3.4 GHz / 6MB / 4 nhân, 8 luồng ) \r\n- Màn hình: 15.6" ( 1920 x 1080 ) , không cảm ứng \r\n- RAM: 1 x 4GB DDR4 2400MHz \r\n- Đồ họa: Intel UHD Graphics 620 / AMD Radeon 520 2GB \r\n- Lưu trữ: 1TB HDD 5400RPM \r\n- Hệ điều hành: Windows 10 Home SL 64-bit \r\n- Pin: 4 cell 40 Wh Pin rời , khối lượng: 2.1 kg\r\n', 'lt', 'nccde', 0, NULL),
('lt15', ' Laptop Acer Swift 3 SF315-52-38YQ ', 13900000, 'lt15.jpg', '- CPU: Intel Core i3-8130U ( 2.2 GHz - 3.4 GHz / 4MB / 2 nhân, 4 luồng ) \r\n- Màn hình: 15.6" IPS ( 1920 x 1080 ) , không cảm ứng \r\n- RAM: 1 x 4GB DDR4 2666MHz \r\n- Đồ họa: Intel UHD Graphics 620 \r\n- Lưu trữ: 1TB HDD 5400RPM \r\n- Hệ điều hành: Windows 10 Home SL 64-bit \r\n- Pin: 4 cell 48 Wh Pin liền , khối lượng: 1.6 kg\r\n', 'lt', 'nccac', 0, NULL),
('lt2', 'Laptop Dell Inspiron 5570-M5I5238 ', 17490000, 'lt2.jpg', '- CPU: Intel Core i5-8250U ( 1.6 GHz - 3.4 GHz / 6MB / 4 nhân, 8 luồng ) \r\n- Màn hình: 15.6" ( 1920 x 1080 ) , không cảm ứng \r\n- RAM: 1 x 4GB DDR4 2400MHz \r\n- Đồ họa: Intel UHD Graphics 620 / AMD Radeon 530 2GB GDDR5 \r\n- Lưu trữ: 1TB HDD 5400RPM \r\n- Hệ điều hành: Free DOS \r\n- Pin: 3 cell 42 Wh Pin liền , khối lượng: 2.2 kg\r\n', 'lt', 'nccde', 0, 1),
('lt3', 'Laptop Asus TP410UF-EC029T (I5-8250U) ', 16140000, 'lt3.jpg', '- CPU: Intel Core i5-8250U ( 1.6 GHz - 3.4 GHz / 6MB / 4 nhân, 8 luồng ) \r\n- Màn hình: 14" ( 1920 x 1080 ) , cảm ứng \r\n- RAM: 1 x 4GB Onboard DDR4 2400MHz \r\n- Đồ họa: Intel UHD Graphics 620 / NVIDIA GeForce MX130 2GB \r\n- Lưu trữ: 1TB HDD 5400RPM \r\n- Hệ điều hành: Windows 10 Home SL 64-bit \r\n- Pin: 3 cell 42 Wh Pin liền , khối lượng: 1.6 kg\r\n', 'lt', 'nccde', 0, NULL),
('lt4', ' Laptop Dell Vostro 3478-R3M961 ', 14490000, 'lt4.jpg', '- CPU: Intel Core i5-8250U ( 1.6 GHz - 3.4 GHz / 6MB / 4 nhân, 8 luồng ) \r\n- Màn hình: 14" ( 1366 x 768 ) , không cảm ứng \r\n- RAM: 1 x 4GB DDR4 2400MHz \r\n- Đồ họa: Intel UHD Graphics 620 / AMD Radeon R5 520 2GB \r\n- Lưu trữ: 1TB HDD 5400RPM \r\n- Hệ điều hành: Linux \r\n- Pin: 4 cell 40 Wh Pin rời , khối lượng: 2.3 kg\r\n.\r\n', 'lt', 'nccde', 0, NULL),
('lt5', 'Laptop Acer Spin 3 SP314-51-36JE ', 13890000, 'lt5.jpg', '- CPU: Intel Core i3-7130U ( 2.7 GHz / 3MB / 2 nhân, 4 luồng ) \r\n- Màn hình: 14" IPS ( 1920 x 1080 ) , cảm ứng \r\n- RAM: 1 x 4GB Onboard DDR4 \r\n- Đồ họa: Intel HD Graphics 620 \r\n- Lưu trữ: 1TB HDD 5400RPM \r\n- Hệ điều hành: Windows 10 Home SL 64-bit \r\n- Pin: 3 cell 52 Wh Pin liền , khối lượng: 1.7 kg\r\n.\r\n', 'lt', 'nccac', 0, NULL),
('lt6', 'Laptop Dell Vostro 3478-R3M961 ', 14490000, 'lt6.jpg', '- CPU: Intel Core i5-8250U ( 1.6 GHz - 3.4 GHz / 6MB / 4 nhân, 8 luồng ) \r\n- Màn hình: 14" ( 1366 x 768 ) , không cảm ứng \r\n- RAM: 1 x 4GB DDR4 2400MHz \r\n- Đồ họa: Intel UHD Graphics 620 / AMD Radeon R5 520 2GB \r\n- Lưu trữ: 1TB HDD 5400RPM \r\n- Hệ điều hành: Linux \r\n- Pin: 4 cell 40 Wh Pin rời , khối lượng: 2.3 kg\r\n.\r\n', 'lt', 'nccde', 0, 1),
('lt7', 'Laptop MSI GT83 8RG-037VN ', 137750000, 'lt7.jpg', '- CPU: Intel Core i7-8850H ( 2.6 GHz - 4.3 GHz / 9MB / 6 nhân, 12 luồng ) \r\n- Màn hình: 18.4" IPS ( 1920 x 1080 ) , không cảm ứng \r\n- RAM: 2 x 16GB DDR4 2666MHz \r\n- Đồ họa: Intel UHD Graphics 630 / NVIDIA GeForce GTX 1080 SLI 8GB GDDR5X \r\n- Lưu trữ: RAID 2 x 256GB SSD M.2 NVMe / 1TB HDD 7200RPM \r\n- Hệ điều hành: Windows 10 Home SL 64-bit \r\n- Pin: 8 cell 90 Wh Pin liền , khối lượng: 5.5 kg\r\n', 'lt', 'nccmsi', 0, NULL),
('lt8', 'Laptop MSI PS42 8M-288VN ', 21190000, 'lt8.jpg', 'CPU: Intel Core i5-8250U ( 1.6 GHz - 3.4 GHz / 6MB / 4 nhân, 8 luồng ) \r\n- Màn hình: 14" ( 1920 x 1080 ) , không cảm ứng \r\n- RAM: 1 x 8GB DDR4 2666MHz \r\n- Đồ họa: Intel UHD Graphics 620 / Shared memory \r\n- Lưu trữ: 256GB SSD M.2 NVMe \r\n- Hệ điều hành: Windows 10 Home SL 64-bit \r\n- Pin: 4 cell 50 Wh Pin liền , khối lượng: 1.2 kg\r\n', 'lt', 'nccmsi', 1, NULL),
('lt9', 'Laptop Dell Vostro 15 3578-NGMPF11 ', 12230000, 'lt9.jpg', '- CPU: Intel Core i7-8550U ( 1.8 GHz - 4.0 GHz / 8MB / 4 nhân, 8 luồng ) \r\n- Màn hình: 15.6" ( 1920 x 1080 ) , không cảm ứng \r\n- RAM: 1 x 8GB DDR4 2400MHz \r\n- Đồ họa: Intel UHD Graphics 620 / AMD Radeon R5 520 2GB \r\n- Lưu trữ: 1TB HDD 5400RPM \r\n- Hệ điều hành: Windows 10 Home SL 64-bit \r\n- Pin: 4 cell 40 Wh Pin rời , khối lượng: 2.3 kg\r\n', 'lt', 'nccde', 0, NULL),
('ltn1', 'Loa Bluetooth Xiaomi Mi Basic (Trắng)', 485000, 'ltn1.jpg', 'Có cổng kết nối 3.5mm - Kết nối Bluetooth 4.2, phạm vi hoạt động <= 10 mét. - Công suất 2.4W x 2. - Nghe nhạc liên tục 10 tiếng - Công suất định mức: 2.5W × 2 - Trở kháng: 3 Ω - Dải tần số: 100Hz - 18kHz - Sạc: micro USB, 5V-1A - Pin: 1200mAh', 'ltn', 'mccxm', 0, NULL),
('ltn10', 'Tai nghe Logitech G233 Prodigy Wired Gaming (Đen)', 1900000, 'ltn10.jpg', '- Thiết kế trùm tai và cách âm, - Đệm tai được thiết kế dạng lưới thể thao,- Âm bass được đầu tư dày và chắc, âm mid được tái tạo trong trẻo.- Microphone dạng tháo rời, phục vụ gọn gàng tuyệt đối,- Tương thích với tất cả các hệ máy console.\r\n\r\n', 'ltn', 'nccsou', 0, NULL),
('ltn11', 'Tai nghe Razer Kraken Pro V2 Gaming', 1950000, 'ltn11.jpg', 'Phản hồi tần số: 12 Hz – 28 kHz Trở kháng: 32 Ω @ 1 kHz Độ nhạy (@1 kHz): 123 dB Dòng điện vào: 30 mW (Max) Củ loa: 50 mm, Với nam châm Neodymium Đường kính trong của tai nghe: 56 mm / 2.2 in Loại kết nối: 3.5 Độ dài cáp: 2 m Trọng lượng xấp xỉ: 346g Microphone', 'ltn', 'nccmsi', 0, NULL),
('ltn12', 'Tai nghe Sony WH-CH500/LCE (Xanh)', 1550000, 'ltn12.jpg', 'Kiểu tai nghe: bluetooth - trùm đầu. - Chức năng kết nối 1 chạm NFC. - Sạc đầy: 4.5 giờ - 20 giờ sử dụng. - Công nghệ âm thanh: Extra Bass - Bộ màng loa Dynamic 30mm. - Chất liệu đệm tai bằng bọt biển cho cảm giác đeo thoải mái.', 'ltn', 'nccsou', 0, NULL),
('ltn13', 'Tai nghe Corsair Void Pro Surround', 2290000, 'ltn13.jpg', 'Thiết Kế: Over Ear (trùm kín quanh tai)- Kết Nối: Jack 3.5mm (audio & mic) for Smartphone* / USB Soundcard (dolby) for PC- Chức Năng: Volume Control / Microphone Mute / 7.1 Dolby Digital- Tai nghe "Gaming" mang phong cách độc đáo cùng chất lượng âm thanh Dolby Digital ấn tượng', 'ltn', 'nccsou', 0, NULL),
('ltn14', 'Tai nghe Logitech G433 7.1 Surround Gaming (Đen)', 1680000, 'ltn14.jpg', 'Thiết Kế: Over Ear (trùm kín quanh tai)- Kết Nối: Jack 3.5mm (audio & mic) / Jack 3.5mm (volume & microphone mute) / Jack 3.5mm (1 female to 2 male) / USB- Chức Năng: Play / Pause / Call / Answer / Next / Previous (khi sử dụng với Smartphone*) / Dây tháo rời được / Volume Control / Microphone Mute', 'ltn', 'nccsou', 0, NULL),
('ltn15', 'Tai nghe SteelSeries Arctis 5 (Đen)', 2100000, 'ltn15.jpg', 'Driver giống với các tai nghe đời cao của Steelseries, cho chi tiết cao, âm thanh cân bằng và độ méo cực thấp. - Giả lập âm thanh vòm DTS 7.1 sống động. - Led RGB 16,8 triệu màu tuỳ chỉnh có thẩm mỹ cao và cá tính riêng. - Đệm đầu làm bằng vải đàn hồi có thể điều chỉnh, phân bố đều khối lượng tai nghe, loại bỏ tất cả các điểm gây áp lực', 'ltn', 'nccsou', 0, 1),
('ltn2', 'Loa Soundmax A820 (2.1)', 590000, 'ltn2.jpg', 'Thiết Kế: Hệ Thống Loa 2.1- Kết Nối: RCA (input) / Push Terminal (output)- Chức Năng: Volume Control / Bass Control / Treble Control- Công Suất: 25W RMS', 'ltn', 'nccsmax', 0, NULL),
('ltn3', ' Loa Soundmax A826 (2.1)', 600000, 'ltn3.jpg', 'Thương hiệu: Soundmax - Tổng công suất: 20W (RMS) - Kết nối vào: Jack RCA. Hỗ trợ USB/SD Card 128GB, Bluetooth 5.0', 'ltn', 'nccsmax', 0, NULL),
('ltn4', ' Loa Microlab FC330 (2.1)', 1250000, 'ltn4.jpg', 'Thiết Kế: Hệ Thống Loa 2.1- Kết Nối:  RCA (input) / RCA (output)- Chức Năng: Volume Control / Bass Control- Công Suất: 56W RMS', 'ltn', 'nccsou', 0, NULL),
('ltn5', ' Loa Soundmax A990 (2.1)', 1130000, 'ltn5.jpg', 'Thiết Kế: Hệ Thống Loa 2.1- Kết Nối: Jack 3.5mm (input) / RCA (input) / Push Terminal (output) / USB (flash disk) / SD (card) / Bluetooth (audio)- Chức Năng: Volume Control / Bass Control / Treble Control / Remote- Công Suất: 50W RMS', 'ltn', 'nccsmax', 0, NULL),
('ltn6', ' Loa Soundmax A2117 (2.1)', 1150000, 'ltn6.jpg', '- Thiết Kế: Hệ Thống Loa 2.1- Kết Nối: Jack 3.5mm (input) / RCA (input) / Push Terminal (output) / USB (flash disk) / SD (card)- Chức Năng: Volume Control / Bass Control / Treble Control / Remote- Công Suất: 60W RMS\r\n.\r\n', 'ltn', 'nccsmax', 1, NULL),
('ltn7', 'Loa Soundmax A970 (2.1)', 1200000, 'ltn7.jpg', '- Thiết Kế: Hệ Thống Loa 2.1- Kết Nối: Jack 3.5mm (input) / RCA (input) / Push Terminal (output) / USB (flash disk) / SD (card)- Chức Năng: Volume Control / Bass Control / Treble Control / Remote- Công Suất: 40W RMS', 'ltn', 'nccsmax', 0, NULL),
('ltn8', ' Loa Soundmax A2117 (2.1)', 1150000, 'ltn8.jpg', 'Thiết Kế: Hệ Thống Loa 2.1- Kết Nối: Jack 3.5mm (input) / RCA (input) / Push Terminal (output) / USB (flash disk) / SD (card)- Chức Năng: Volume Control / Bass Control / Treble Control / Remote- Công Suất: 60W RMS', 'ltn', 'nccsmax', 0, NULL),
('ltn9', 'Tai nghe Sony WH-CH500/BCE (Đen)', 1600000, 'ltn9.jpg', 'Kiểu tai nghe: bluetooth - trùm đầu. - Chức năng kết nối 1 chạm NFC. - Sạc đầy: 4.5 giờ - 20 giờ sử dụng. - Công nghệ âm thanh: Extra Bass - Bộ màng loa Dynamic 30mm. - Chất liệu đệm tai bằng bọt biển cho cảm giác đeo thoải mái.', 'ltn', 'nccsou', 0, NULL),
('m1', 'Chuột Razer DeathAdder Essential', 710000, 'm1.jpg', 'Razer DeathAdder là 1 trong những con chuột nổi tiếng nhất Thế Giới và được công nhận bởi hàng triệu người dùng trên toàn Thế Giới. Với hàng triệu sản phẩm được bán ra và hàng chục giải thưởng uy tín, DeathAdder đã tạo nên 1 đế chế kể từ khi được ra mắt. Và Razer DeathAdder Essential là 1 phiên bản mới nhất và là sự hồi sinh của 1 trong những con chuột nổi tiếng nhất.\r\nRazer DeathAdder Essential vẫn giữ nguyên thiết kế công thái học từ trước đến nay. Với thiết kế kiểu cầm ôm tay, thoải mái khi sử dụng trong thời gian dài.\r\nCảm biến quang học 6400 DPI.\r\nRazer Switch với độ bền 10 triệu lần bấm, 5 phím bấm có thể lập trình.\r\nThiết kế công thái học cho người thuận tay phải.\r\nGia tốc 220 IPS / 30G.\r\nTần số quét 1000Hz.', 'km', 'nccrz', 0, NULL),
('m2', 'Chuột Razer Mamba Wireless', 2550000, 'm2.jpg', 'Đạt hiệu suất 150% so với bản tiền nhiệm! Giờ đây bạn có thể sử dụng tới 50 giờ! Gần như cả mấy ngày dài mà không hề lo hết pin. Sạc cũng nhanh hơn trước.\r\nVới cảm biến quang học 5G luôn là một trong những loại cảm biến tốt nhất hiện nay. Chả phải ngẫu nhiên hay gì mà người dùng luôn yêu mến Razer chính vì điều đó, cũng như độ phân giải lên tới 16000 DPI giúp cho game thủ tăng độ chính xác lên tới 99,4%. Gần như chạm ngưỡng cao nhất thị trường! Là một con chuột hướng tới đối tượng game thủ nên không ngạc nhiên khi Razer trang bị cho Razer Mamba Wireless nút bấm có tuổi thọ lên tới 50 triệu lần nhấp. Ngoài ra, chuột còn tích hợp sẵn 7 nút Hyperesponse để người dùng tự lập trình các chức năng theo ý muốn. Phần con lăn của Razer Mamba Wireless tích hợp các gờ để tăng độ ma sát khi lăn chuột, tránh tình trạng bị lăn quá trớn.\r\nRazer Mamba Wireless trang bị công nghệ Hybrid On-Board Memory (Lưu thiết lập trên chuột) và Cloud Storage (Lưu thiết lập điện toán đám mây), hỗ trợ lưu trữ tới 5 thiết lập người dùng.', 'km', 'nccrz', 0, NULL),
('m3', 'Chuột Razer Mamba Elite', 2350000, 'm3.jpg', 'Với thiết kế sáng nổi bật và mở rộng hơn trước, chiếc chuột này sẽ cực lung linh trên mọi cu di chuột hay từng cú click chuột của bạn. Đơn giản hơn bao giờ hết với Razer Synapse 3 cùng với nhiều ánh sáng rực rỡ chất lượng.\r\nTích hợp công nghệ 5G mới nhất với 16,000 DPI, trải nghiệm một cảm giác mới hơn và cực đã trên từng ngón tay của bạn, với độ chính xác lên tới tận 99.4%, bạn sẽ luôn luôn giữ được tốt vị trí chuột trên mọi đối phương cần nhắm tới.\r\nNâng cao thiết kế công thái học ( ergonocmic ) với việc cải thiện form tay cầm cho bạn. Sử dụng trong hàng giờ đồng hồ không còn khiến bạn bị mỏi tay và luôn luôn thư giãn khi đặt tay lên chiếc chuột này. Tuổi thọ Switch lên tới 50 triệu lượt nhấn với công nghệ Switch Omron cùng với 9 nút có thể lập trình thông qua Razer Synapse 3. Tất cả đều tiện lợi giúp cho bạn có một trải nghiệm “phê” hơn bao giờ hết.', 'km', 'nccrz', 0, NULL),
('m4', 'Chuột Razer Abyssus Essential Chroma', 690000, 'm4.jpg', 'Với vùng sáng nằm ở dưới thân chuột và trên logo chuột. Bạn đơn giản chỉ cần ngồi đó và thư giãn khi chiếc chuột này tạo ra các ánh sáng cực tuyệt vời dễ gây thu hút với 16.8 triệu màu đèn LED để sử dụng. Hơn nữa với tính năng sync cùng với các sản phẩm khác của Razer, chiếc Abyssus Essential Chroma sẽ tạo nên nhiều điều mới lạ hơn nữa. Tạo nên phong cách độc lạ của Razer, hoặc độc hơn là phong cách riêng của chính bạn.\r\nCho dù là hiển thị thanh máu hay tình trạng trong game, hoàn thiện những trò chơi của bạn với Razer Chroma với hơn 100 tựa game khác nhau, kể cả Overwatch, Fornite… Hoặc tạo nên phong cách ánh sáng độc lạ của riêng bạn và chia sẻ chúng với bạn bè bạn, hoặc tải về từ Chroma Workshop để trải nghiệm.\r\nVới form chuột khá đơn giản và không mấy cầu kì, không nhiều nút. Thế nhưng chiếc chuột này lại được đánh giá khá tốt và sử dụng lâu bền. Cùng với tuổi thọ Switch lên tới 10 triệu lượt nhấn. Game thủ khá hài lòng về chất lượng sản phẩm này mà Razer đã tạo ra.', 'km', 'nccrz', 0, NULL),
('m5', 'Chuột RAZER NAGA TRINITY ', 2590000, 'm5.jpg', 'Với khả năng thiết kế cho game thủ MOBA/ MMO. Razer Naga Trinity cho phép bạn tùy chỉnh các nút bấm theo cách mình muốn trong các tựa game.\r\nĐược trang bị bộ cảm biến 5G tiên tiến nhất với độ phân giải 16.000 DPI, Razer Naga Trinity được tối ưu hóa cho tôc độ cao cũng như độ chính xác.\r\nBạn có thể thay đổi mặt bên của chuột để có nhiều nút bấm hơn. Từ 2, 7 cho tới 12 nút bấm, hoàn toàn phụ thuộc vào bạn. Từng nút đều được cấu tạo đặc biệt nên bạn sẽ không bị ấn nhầm một nút nào cả.', 'km', 'nccrz', 0, 1),
('m6', 'Chuột RAZER DEATHADDER ELITE', 1600000, 'm6.jpg', 'Được trang bị cảm biến quang học esports mới, có độ phân giải thực 16.000 điểm ảnh và tracking 450 Inches Per Second (IPS), Razer DeathAdder Elite mang lại cho bạn ưu thế tuyệt đối khi có cảm biến nhanh nhất trên thế giới. Được thiết kế để xác định lại các tiêu chuẩn về độ chính xác và tốc độ, bộ cảm biến chuột đáng kinh ngạc này sẽ phá vỡ sự cạnh tranh với độ phân giải chính xác là 99,4%, vì vậy bạn có thể hạ gục đối thủ với độ chính xác cao.\r\nĐược thiết kế và sản xuất với nhà cung cấp nút click chuột hàng đầu thế giới: Omron, các thiết bị chuyển mạch mới được tối ưu hóa và tinh chỉnh để có thời gian phản hồi nhanh nhất cho trò chơi và tăng độ bền lên đến 50 triệu lần nhấp chuột.\r\nCó lẽ không có gì nhiều để nói, bởi LED Chroma trên Razer DeathAdder Elite vẫn hoàn toàn y nguyên như trên Razer DeathAdder Chroma, với 2 zone 16,8 triệu màu tại nút scroll và logo Razer trên lưng chuột, đi kèm đó là rất nhiều hiệu ứng có thể tinh chỉnh trên phần mềm synapse. ', 'km', 'nccrz', 0, NULL),
('m7', 'Chuột Razer Lancehead Tournament', 1590000, 'm7.jpg', 'Chuột được trang bị cảm biến quang học Razer 5G 16000dpi cao cấp nhất thế giới, cảm biến này cho tốc độ lướt lên tới 450 IPS và gia tốc tối đa lên tới 50G. Điều này khiến cho game thủ có các cú “vẩy" hoặc thao tác micro đều rất chính xác.\r\nVới sự hợp tác giữa Razer và nhà sản xuất công tắc hàng đầu thế giới Omron Nhật Bản. Chú chuột Razer Lancehead Tournament Edition có độ bền lên tới 50 triệu lần bấm và cho cảm giác bấm phím tuyệt vời nhất.\r\nRazer Lancehead Tournament Edition tương thích với phần mềm mới nhất của hãng mang tên Synapse Pro. Bạn có thể hiệu chỉnh các thông số ưa thích 1 cách cực kì dễ dàng.', 'km', 'nccrz', 0, NULL),
('m8', 'Chuột Razer BASILISK 5G 16000 DPI', 1688000, 'm8.jpg', 'Chú chuột chuyên FPS Nhanh. Chính xác. Chí mạng. Nâng cao kỹ năng FPS của bạn với Razer Basilisk. Tự hào với cảm biến quang học tiên tiến nhất thế giới và được trang bị các tính năng như đĩa quay để tùy chỉnh độ nhạy của nút cuộn chuột và phím điều chỉnh DPI tháo rời được, Razer Basilisk xứng đáng là chuột FPS siêu cấp.\r\nĐược trang bị cảm biến quang học Razer 5G tiên tiến nhất thế giới với độ phân giải 16.000 DPI chân thực, Razer Basilisk mang lại cho bạn độ chính xác và hiệu suất vượt trội.\r\nRazer Basilisk có một đĩa quay cho phép bạn điều chỉnh độ nhạy của nút cuộn chuột. Với độ nhạy tùy chỉnh theo ý muốn, bạn sẽ có thể thực hiện chính xác hơn các cú nhảy cóc, chọn vũ khí, ngắm bắn và các thao tác khác với nút cuộn chuột.\r\nĐể giúp bạn có thể điều khiển chuột tuyệt đối và tức thì, Razer Basilisk được trang bị một phím điều chỉnh DPI tháo rời được mà khi nhấn xuống sẽ cho phép bạn tạm thời thay đổi độ nhạy để thực hiện các cú xoay người cực nhanh và cho độ chính xác ngắm bắn tuyệt vời.', 'km', 'nccrz', 1, NULL),
('mh1', ' Màn hình LCD Asus 34" MX34VQ', 22990000, 'mh1.jpg', '- Kích thước: 34" \r\n- Độ phân giải: 3440 x 1440 ( 21:9 ) \r\n- Công nghệ tấm nền: VA \r\n- Góc nhìn: 178 (H) / 178 (V) \r\n- Thời gian phản hồi: 4 ms\r\n', 'mh', 'nccas', 0, NULL),
('mh10', 'Màn hình LCD Asus 31.5" VA326H', 9190000, 'mh10.jpg', '- Kích thước: 31.5" \r\n- Độ phân giải: 1920 x 1080 ( 16:9 ) \r\n- Công nghệ tấm nền: VA \r\n- Góc nhìn: 178 (H) / 178 (V) \r\n- Tần số quét: 144Hz \r\n- Thời gian phản hồi: 4 ms\r\n', 'mh', 'nccas', 0, NULL),
('mh11', 'Màn hình LCD Samsung 23.5\'\' LC24F390FHEXXV', 3190000, 'mh11.jpg', '- Kích thước: 23.5" \r\n- Độ phân giải: 1920 x 1080 ( 16:9 ) \r\n- Công nghệ tấm nền: VA \r\n- Góc nhìn: 178 (H) / 178 (V) \r\n- Thời gian phản hồi: 4 ms\r\n', 'mh', 'nccss', 0, NULL),
('mh12', 'Màn hình LCD Samsung 23.5\'\' LC24F390FHEXXV', 3190000, 'mh12.jpg', '- Kích thước: 23.5" \r\n- Độ phân giải: 1920 x 1080 ( 16:9 ) \r\n- Công nghệ tấm nền: VA \r\n- Góc nhìn: 178 (H) / 178 (V) \r\n- Thời gian phản hồi: 4 ms\r\n', 'mh', 'nccss', 0, NULL),
('mh13', 'Màn hình LCD Samsung 32\'\' LC32F391FWEXXV', 5890000, 'mh13.jpg', '- Kích thước: 32" \r\n- Độ phân giải: 1920 x 1080 ( 16:9 ) \r\n- Công nghệ tấm nền: VA \r\n- Góc nhìn: 178 (H) / 178 (V) \r\n- Tần số quét: 60Hz \r\n- Thời gian phản hồi: 4 ms\r\n', 'mh', 'nccss', 0, NULL),
('mh14', 'Màn hình LCD Samsung 27" LC27F591FDEXXV', 6990000, 'mh14.jpg', '- Kích thước: 27" \r\n- Độ phân giải: 1920 x 1080 ( 16:9 ) \r\n- Công nghệ tấm nền: VA \r\n- Góc nhìn: 178 (H) / 178 (V) \r\n- Thời gian phản hồi: 4 ms\r\n', 'mh', 'nccss', 0, NULL),
('mh2', 'Màn hình LCD Asus 27" VZ27VQ', 5690000, 'mh2.jpg', '- Kích thước: 27" \r\n- Độ phân giải: 1920 x 1080 ( 16:9 ) \r\n- Công nghệ tấm nền: VA \r\n- Góc nhìn: 178 (H) / 178 (V) \r\n- Thời gian phản hồi: 5 ms\r\n', 'mh', 'nccas', 0, NULL),
('mh3', 'Màn hình LCD Viewsonic 27" VX2758-C', 6300000, 'mh3.jpg', '- Kích thước: 27" \r\n- Độ phân giải: 1920 x 1080 ( 16:9 ) \r\n- Công nghệ tấm nền: VA \r\n- Góc nhìn: 178 (H) / 178 (V) \r\n- Tần số quét: 144Hz \r\n- Thời gian phản hồi: 5 ms\r\n', 'mh', 'nccmsi', 0, 1),
('mh4', 'Màn hình LCD Samsung 34\'\' LC34H890WJEXXV', 18390000, 'mh4.jpg', '- Kích thước: 34" \r\n- Độ phân giải: 3440 x 1440 ( 21:9 ) \r\n- Công nghệ tấm nền: VA \r\n- Góc nhìn: 178 (H) / 178 (V) \r\n- Tần số quét: 100Hz \r\n- Thời gian phản hồi: 4 ms\r\n', 'mh', 'nccss', 0, NULL),
('mh5', 'Màn hình LCD Samsung 49" LC49J890DKEXXV', 31990000, 'mh5.jpg', '- Kích thước: 49" \r\n- Độ phân giải: 3840 x 1080 ( 32:9 ) \r\n- Công nghệ tấm nền: VA \r\n- Góc nhìn: 178 (H) / 178 (V) \r\n- Tần số quét: 144Hz \r\n- Thời gian phản hồi: 5 ms\r\n', 'mh', 'nccss', 0, NULL),
('mh6', 'Màn hình LCD Acer 34" Predator X34P', 28490000, 'mh6.jpg', '- Kích thước: 34" \r\n- Độ phân giải: 3440 x 1440 ( 21:9 ) \r\n- Công nghệ tấm nền: IPS \r\n- Góc nhìn: 178 (H) / 178 (V) \r\n- Tần số quét: 120Hz \r\n- Thời gian phản hồi: 4 ms\r\n', 'mh', 'nccac', 0, NULL),
('mh7', 'Màn hình LCD Asus 27\'\' XG27VQ', 11990000, 'mh7.jpg', '- Kích thước: 27" \r\n- Độ phân giải: 1920 x 1080 ( 16:9 ) \r\n- Công nghệ tấm nền: VA \r\n- Góc nhìn: 178 (H) / 178 (V) \r\n- Thời gian phản hồi: 4 ms\r\n', 'mh', 'nccas', 0, NULL),
('mh8', 'Màn hình LCD Asus 34" PG348Q', 2990000, 'mh8.jpg', '- Kích thước: 34" \r\n- Độ phân giải: 3440 x 1440 ( 21:9 ) \r\n- Công nghệ tấm nền: IPS \r\n- Góc nhìn: 178 (H) / 178 (V) \r\n- Tần số quét: 100Hz \r\n- Thời gian phản hồi: 5 ms\r\n', 'mh', 'nccas', 0, NULL),
('mh9', 'Màn hình LCD Samsung 49" LC49HG90DMEXXV', 32990000, 'mh9.jpg', '- Kích thước: 48.9" \r\n- Độ phân giải: 3840 x 1080 ( 32:9 ) \r\n- Công nghệ tấm nền: VA \r\n- Góc nhìn: 178 (H) / 178 (V) \r\n- Tần số quét: 144Hz \r\n- Thời gian phản hồi: 1 ms\r\n', 'mh', 'nccss', 0, NULL),
('tbm1', 'Thiết bị mạng Asus GT-AC5300', 10500000, 'tbm1.jpg', '- Tần số hoạt động 2.4 GHz / 5 GHz \r\n- Chuẩn kết nối 802.11a/b/g/n/ac \r\n- Số cổng kết nối 4\r\n', 'tbm', 'nccas', 0, NULL),
('tbm10', 'Thiết bị mạng/ Switch TPLink 24P TL SF1024D', 760000, 'tbm10.jpg', 'Số cổng LAN: 24 Port Tốc độ: 10/100Mbps Tự động chuyển chế độ cáp thẳng hoặc chéo (MDI/MDI-X) Vỏ sắt, thiết kế để gắn bàn hoặc gắn rack 13" (Adaptor chỉ bảo hành 12 tháng)', 'tbm', 'nccmsi', 0, NULL);
INSERT INTO `sanpham` (`idsp`, `tensp`, `giasp`, `mausp`, `motasp`, `idloaisp`, `idnhacc`, `banchay`, `moi`) VALUES
('tbm11', 'Thiết bị mạng/ Switch D-Link 20P DGS-1210-20/E', 3900000, 'tbm11.jpg', '- Hỗ trợ tùy chỉnh/ tự động cấu hình MDI/MDIX - Tự động dò tìm tốc độ phù hợp, MDI/MDIX (tự động chuyển đổi cáp chéo thẳng) - Nguồn điện ngõ vào: 100 - 240VAC, 50 - 60 Hz.', 'tbm', 'nccmsi', 0, NULL),
('tbm12', 'Thiết bị mạng D-Link DAP-2695/ESG', 8825000, 'tbm12.jpg', '- Tần số hoạt động 2.4 GHz / 5 GHz \r\n- Chuẩn kết nối 802.11a/b/g/n/ac \r\n- Số cổng kết nối 2\r\n', 'tbm', 'nccsou', 0, NULL),
('tbm2', 'Thiết bị mạng Asus RT-AC67U (2-Pack)', 6340000, 'tbm2.jpg', '- Tần số hoạt động 2.4 GHz / 5 GHz \r\n- Chuẩn kết nối 802.11a/b/g/n/ac \r\n- Tốc độ không dây tối đa 802.11n : up to 450 Mbps 802.11n TurboQAM : up to 600 Mbps 802.11ac : up to 1300 Mbps \r\n- Số cổng kết nối 5\r\n(RT-AC67U 2 Pack)\r\n', 'tbm', 'nccas', 0, NULL),
('tbm3', 'Thiết bị mạng Linksys WRT 32X Wireless', 7050000, 'tbm3.jpg', '- Tần số hoạt động 2.4 GHz / 5 GHz \r\n- Chuẩn kết nối 802.11a/b/g/n \r\n- Số cổng kết nối 5\r\n', 'tbm', 'nccsou', 0, NULL),
('tbm4', 'Thiết bị mạng D-Link DIR 890L', 6699000, 'tbm4.jpg', '- Tần số hoạt động 2.4 GHz / 5 GHz \r\n- Chuẩn kết nối 802.11a/b/g/n/ac \r\n- Số cổng kết nối 4\r\n', 'tbm', 'nccsou', 0, NULL),
('tbm5', 'Router Asus RT-AC66U B1', 2990000, 'tbm5.jpg', '- Thương hiệu: Asus - Số ăng ten: 3 - Tần số quét: 3x 2.4GHz, 3x 5GHz - Cổng kết nối: 4x LAN, 1x WAN, 1x USB 2.0, 1x USB 3.0\r\n- Tần số hoạt động 2.4 GHz / 5 GHz \r\n- Chuẩn kết nối 802.11a/b/g/n/ac \r\n- Số cổng kết nối 7\r\n', 'tbm', 'nccas', 0, NULL),
('tbm6', 'Thiết bị mạng/ Switch ToTo Link 5P S505', 127000, 'tbm6.jpg', '5 ports 10/100Mbps, Auto negotiation (MDI/MDIX) - Wire-speed performance, desktop size - MAC address auto-leading and auto AGING - Store and forward', 'tbm', 'nccsou', 0, NULL),
('tbm7', 'Thiết bị mạng/ Switch HPE OfficeConnect 1820 ', 12800000, 'tbm7.jpg', '- Ports : 24 autosensing 10/100/1000 ports (12-Ports PoE+, Cống suất tối đa :185W, port : 30W) + 2 Gigabit SFP ports. - Memory and processor : ARM Cortex-A9 @ 400 MHz, 128 MB SDRAM, 16 MB flash; packet buffer size: 1.5 MB - Performance : 100 Mb Latency < 7µs (64-byte packets); 1000 Mb ', 'tbm', 'nccsou', 0, NULL),
('tbm8', 'HPE OfficeConnect 1920S 24G ', 7990000, 'tbm8.jpg', '- ARM Cortex-A9 @ 400 MHz, 256 MB SDRAM, 64 MB flash; packet buffer: 1.5 MB - Performance : 100 Mb Latency < 7 µs; 1000 Mb Latency < 2 µs; Throughput up to 38.6 Mpps (64-byte packets); Routing/Switching capacity 52 Gbps; Routing table size 32 entries; MAC address table size 8000 - ', 'tbm', 'nccsou', 0, NULL),
('tbm9', 'Thiết bị mạng/ Switch HP 48P 1920S 48G JL382A', 16460000, 'tbm9.jpg', '- Số cổng LAN: 48 Gigabit switch ports + 4 Gigabit SFP ports\r\n- Tốc độ: 10/100/1000 Mbps.ARM Cortex - 9A 400Mhz, 250 MB SDRam, 64Mb Flash, packet buffet size 1.5 Mb\r\n', 'tbm', 'nccmsi', 0, NULL),
('test', 'testsdasdasdas', 2300000, '2-1481820093162.jpg', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'dtdd', 'nccsou', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tientrinh`
--

CREATE TABLE `tientrinh` (
  `idtientrinh` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tentientrinh` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tientrinhdh`
--

CREATE TABLE `tientrinhdh` (
  `stt` int(11) NOT NULL,
  `idtientrinh` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `iddh` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ngay` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `idkh` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `hotenkh` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ngaysinhkh` date NOT NULL,
  `gioitinhkh` varchar(20) NOT NULL,
  `dienthoaikh` int(10) NOT NULL,
  `diachikh` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cmnd` int(12) NOT NULL,
  `masotuekh` int(20) NOT NULL,
  `idloaikh` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `level` int(1) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`idkh`, `hotenkh`, `ngaysinhkh`, `gioitinhkh`, `dienthoaikh`, `diachikh`, `cmnd`, `masotuekh`, `idloaikh`, `level`, `email`, `password`) VALUES
('1', 'phong', '2019-05-08', 'nam', 113, '123 ccc', 1234566, 111, '1', 1, 'phong@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
('2', 'tien', '2019-05-15', 'nu', 123, '1111 bbbb', 123455667, 123, '2', 0, 'phamtien29030212@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
('3', 'hau', '2019-05-15', 'nam', 1144, '1111 bbbb4', 12345664, 1114, '1', 0, 'hautran28081998@gmail.com', 'e10adc3949ba59abbe56e057f20f883e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idnv`);

--
-- Indexes for table `bangbaogia`
--
ALTER TABLE `bangbaogia`
  ADD PRIMARY KEY (`idsp`,`idnhacc`,`ngaybaogia`),
  ADD KEY `bangbaogia_ibfk_2` (`idnhacc`);

--
-- Indexes for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`idbl`);

--
-- Indexes for table `chitietdh`
--
ALTER TABLE `chitietdh`
  ADD PRIMARY KEY (`iddh`,`idsp`),
  ADD KEY `chitietdh_ibfk_2` (`idsp`);

--
-- Indexes for table `chitietkm`
--
ALTER TABLE `chitietkm`
  ADD PRIMARY KEY (`idctkm`,`idsp`),
  ADD KEY `chitietkm_ibfk_2` (`idsp`);

--
-- Indexes for table `chuongtrinhkm`
--
ALTER TABLE `chuongtrinhkm`
  ADD PRIMARY KEY (`idctkm`);

--
-- Indexes for table `danhgiabl`
--
ALTER TABLE `danhgiabl`
  ADD PRIMARY KEY (`iddg`),
  ADD KEY `danhgiabl_ibfk_1` (`idadmin`),
  ADD KEY `danhgiabl_ibfk_4` (`idkh`),
  ADD KEY `danhgiabl_ibfk_5` (`idsp`);

--
-- Indexes for table `dondathangchuyenncc`
--
ALTER TABLE `dondathangchuyenncc`
  ADD PRIMARY KEY (`iddh`,`idnhacc`),
  ADD KEY `dondathangchuyenncc_ibfk_3` (`idnhacc`);

--
-- Indexes for table `dondh`
--
ALTER TABLE `dondh`
  ADD PRIMARY KEY (`iddh`),
  ADD KEY `dondh_ibfk_2` (`idkh`);

--
-- Indexes for table `loaikh`
--
ALTER TABLE `loaikh`
  ADD PRIMARY KEY (`idloaikh`);

--
-- Indexes for table `loaisp`
--
ALTER TABLE `loaisp`
  ADD PRIMARY KEY (`idloaisp`);

--
-- Indexes for table `nhacc`
--
ALTER TABLE `nhacc`
  ADD PRIMARY KEY (`idnhacc`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`idsp`),
  ADD KEY `sanpham_ibfk_1` (`idloaisp`),
  ADD KEY `sanpham_ibfk_2` (`idnhacc`);

--
-- Indexes for table `tientrinh`
--
ALTER TABLE `tientrinh`
  ADD PRIMARY KEY (`idtientrinh`);

--
-- Indexes for table `tientrinhdh`
--
ALTER TABLE `tientrinhdh`
  ADD PRIMARY KEY (`stt`),
  ADD KEY `tientrinhdh_ibfk_1` (`iddh`),
  ADD KEY `tientrinhdh_ibfk_2` (`idtientrinh`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idkh`),
  ADD KEY `khachhang_ibfk_1` (`idloaikh`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `idbl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tientrinhdh`
--
ALTER TABLE `tientrinhdh`
  MODIFY `stt` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `bangbaogia`
--
ALTER TABLE `bangbaogia`
  ADD CONSTRAINT `bangbaogia_ibfk_2` FOREIGN KEY (`idnhacc`) REFERENCES `nhacc` (`idnhacc`),
  ADD CONSTRAINT `bangbaogia_ibfk_3` FOREIGN KEY (`idsp`) REFERENCES `sanpham` (`idsp`);

--
-- Constraints for table `chitietdh`
--
ALTER TABLE `chitietdh`
  ADD CONSTRAINT `chitietdh_ibfk_1` FOREIGN KEY (`iddh`) REFERENCES `dondh` (`iddh`),
  ADD CONSTRAINT `chitietdh_ibfk_2` FOREIGN KEY (`idsp`) REFERENCES `sanpham` (`idsp`);

--
-- Constraints for table `chitietkm`
--
ALTER TABLE `chitietkm`
  ADD CONSTRAINT `chitietkm_ibfk_1` FOREIGN KEY (`idctkm`) REFERENCES `chuongtrinhkm` (`idctkm`),
  ADD CONSTRAINT `chitietkm_ibfk_2` FOREIGN KEY (`idsp`) REFERENCES `sanpham` (`idsp`);

--
-- Constraints for table `danhgiabl`
--
ALTER TABLE `danhgiabl`
  ADD CONSTRAINT `danhgiabl_ibfk_1` FOREIGN KEY (`idadmin`) REFERENCES `admin` (`idnv`),
  ADD CONSTRAINT `danhgiabl_ibfk_4` FOREIGN KEY (`idkh`) REFERENCES `user` (`idkh`),
  ADD CONSTRAINT `danhgiabl_ibfk_5` FOREIGN KEY (`idsp`) REFERENCES `sanpham` (`idsp`);

--
-- Constraints for table `dondathangchuyenncc`
--
ALTER TABLE `dondathangchuyenncc`
  ADD CONSTRAINT `dondathangchuyenncc_ibfk_1` FOREIGN KEY (`iddh`) REFERENCES `dondh` (`iddh`),
  ADD CONSTRAINT `dondathangchuyenncc_ibfk_3` FOREIGN KEY (`idnhacc`) REFERENCES `nhacc` (`idnhacc`);

--
-- Constraints for table `dondh`
--
ALTER TABLE `dondh`
  ADD CONSTRAINT `dondh_ibfk_1` FOREIGN KEY (`idkh`) REFERENCES `user` (`idkh`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`idloaisp`) REFERENCES `loaisp` (`idloaisp`),
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`idnhacc`) REFERENCES `nhacc` (`idnhacc`);

--
-- Constraints for table `tientrinhdh`
--
ALTER TABLE `tientrinhdh`
  ADD CONSTRAINT `tientrinhdh_ibfk_1` FOREIGN KEY (`iddh`) REFERENCES `dondh` (`iddh`),
  ADD CONSTRAINT `tientrinhdh_ibfk_2` FOREIGN KEY (`idtientrinh`) REFERENCES `tientrinh` (`idtientrinh`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`idloaikh`) REFERENCES `loaikh` (`idloaikh`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
