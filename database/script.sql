USE [Abibas_DB]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 7/7/2024 9:37:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 7/7/2024 9:37:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[amound] [float] NULL,
	[accountid] [int] NULL,
	[createdAt] [datetime] NOT NULL,
	[address] [nvarchar](200) NULL,
	[note] [nvarchar](max) NULL,
	[phone] [nvarchar](12) NULL,
	[payMethod] [nvarchar](50) NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 7/7/2024 9:37:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[quantity] [int] NULL,
	[productId] [int] NULL,
	[orderId] [int] NOT NULL,
	[size] [nvarchar](10) NULL,
	[color] [nvarchar](20) NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 7/7/2024 9:37:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[image] [nvarchar](max) NULL,
	[quantity] [int] NOT NULL,
	[price] [float] NOT NULL,
	[description] [nvarchar](max) NULL,
	[cate_id] [int] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_color]    Script Date: 7/7/2024 9:37:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_color](
	[product_id] [int] NOT NULL,
	[color] [nvarchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_size]    Script Date: 7/7/2024 9:37:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_size](
	[product_id] [int] NOT NULL,
	[size] [nvarchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 7/7/2024 9:37:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[user_name] [nvarchar](200) NULL,
	[user_email] [varchar](255) NOT NULL,
	[user_pass] [nvarchar](255) NOT NULL,
	[isAdmin] [bit] NULL,
	[address] [nvarchar](200) NULL,
	[phone] [nvarchar](12) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([id], [name]) VALUES (1, N'Shoes')
INSERT [dbo].[Category] ([id], [name]) VALUES (2, N'Clothing')
INSERT [dbo].[Category] ([id], [name]) VALUES (3, N'Accessories')
INSERT [dbo].[Category] ([id], [name]) VALUES (4, N'Baby')
INSERT [dbo].[Category] ([id], [name]) VALUES (5, N'Sport')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([id], [amound], [accountid], [createdAt], [address], [note], [phone], [payMethod], [name]) VALUES (34, 215, NULL, CAST(N'2024-07-07T21:31:41.493' AS DateTime), N'awd', N'awd', N'awd', N'Check payments', N'awd')
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([id], [quantity], [productId], [orderId], [size], [color]) VALUES (29, 3, 27, 34, N'S', N'red')
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [cate_id]) VALUES (2, N'Samba', N'/Abibas/assets/images/ProductImg/samba.jpg', 123, 62.1, N'The Samba shoe is a classic in the sports world, known for its versatility and timeless style. Originally designed for indoor soccer, this shoe features a durable leather upper and a grippy rubber outsole that provides excellent traction on various surfaces. The comfortable EVA midsole ensures long-lasting cushioning, making it perfect for all-day wear. The iconic three stripes and Trefoil logo add a touch of heritage to this modern classic. Whether youre playing a game or just stepping out for...', 1)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [cate_id]) VALUES (3, N'Continental 80', N'/Abibas/assets/images/ProductImg/continental_80.jpg', 278, 27.71, N'The Continental 80 is a retro-inspired sneaker that brings a touch of vintage flair to your wardrobe. Crafted with a soft leather upper, this shoe offers a plush feel and a sleek look. The split rubber cupsole features an EVA insert for optimal comfort and flexibility, making it suitable for all-day wear. The nostalgic two-tone stripe along the side and the retro logo window near the laces add authentic touches from the archives. Whether youre hitting the gym or heading out for a day in the cit...', 1)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [cate_id]) VALUES (4, N'Falcon', N'/Abibas/assets/images/ProductImg/falcon.jpg', 959, 3.7, N'The Falcon sneaker is all about bold attitude and confidence. With its chunky silhouette and eye-catching design, this shoe is a statement piece that stands out in any crowd. The upper is constructed from a mix of mesh and suede, offering both breathability and durability. The lightweight EVA midsole provides superior cushioning, ensuring comfort throughout the day. The Torsion System adds stability and support, making it ideal for both casual wear and active pursuits. The vibrant colorways and ...', 1)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [cate_id]) VALUES (5, N'Ozweego', N'/Abibas/assets/images/ProductImg/ozweego.jpg', 877, 32.57, N'The Ozweego shoe blends futuristic design with unparalleled comfort, creating a sneaker that looks as good as it feels. Featuring a mesh and textile upper with suede overlays, this shoe offers a breathable yet sturdy construction. The signature Adiprene+ cushioning in the forefoot and heel provides exceptional impact absorption, ensuring a smooth and comfortable ride. The bold, sculpted midsole and translucent support tube add to the shoes avant-garde aesthetic, making it a standout piece in an...', 1)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [cate_id]) VALUES (7, N'Pureboost', N'/Abibas/assets/images/ProductImg/pureboot.jpg', 267, 63.48, N'The Pureboost shoe is designed for runners who seek a natural, unrestricted feel. Featuring a lightweight knit upper, this shoe adapts to the shape of your foot, providing a comfortable, sock-like fit. The Boost midsole offers exceptional energy return, ensuring a responsive and cushioned ride with every step. The flexible Stretchweb outsole allows for natural movement and superior traction, making it ideal for various terrains. The minimalist design and sleek silhouette give the Pureboost a mod...', 1)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [cate_id]) VALUES (8, N'Solar Glide', N'/Abibas/assets/images/ProductImg/solar_glide.jpg', 95, 21.46, N'The Solar Glide shoe is engineered for long-distance comfort and performance. Featuring a breathable mesh upper with strategic overlays, this shoe provides a supportive and adaptive fit. The Boost midsole delivers continuous energy return, keeping you energized throughout your run. The Stretchweb outsole adapts to your stride, offering flexibility and grip on various surfaces. The Solar Propulsion Rail guides your foot for a smooth and stable transition, while the Fitcounter heel provides natura...', 1)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [cate_id]) VALUES (9, N'Duramo', N'/Abibas/assets/images/ProductImg/duramo.jpg', 55, 106.74, N'The Duramo shoe is a versatile and reliable option for both novice and seasoned runners. Featuring a lightweight mesh upper, this shoe ensures breathability and comfort during your runs. The Cloudfoam midsole provides soft cushioning, reducing impact and delivering a smooth ride. The durable Adiwear outsole offers long-lasting traction, making it suitable for various surfaces. The streamlined design and supportive overlays add to the shoes stability and aesthetic appeal. Ideal for daily trainin...', 1)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [cate_id]) VALUES (11, N'Ultimake', N'/Abibas/assets/images/ProductImg/ultimate.jpg', 514, 165.09, N'The Ultimake shoe is designed for those who demand performance and style. Featuring a lightweight and breathable upper, this shoe ensures optimal airflow and comfort. The responsive Boost midsole provides excellent energy return, making each step feel light and energized. The flexible Stretchweb outsole adapts to your stride, offering superior traction and flexibility. The sleek design and modern aesthetic make the Ultimake a versatile choice for both athletic and casual wear. The supportive hee...', 1)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [cate_id]) VALUES (12, N'Response', N'/Abibas/assets/images/ProductImg/response.jpg', 562, 35.06, N'The Response shoe is built for comfort and durability, making it a reliable choice for runners and fitness enthusiasts. The breathable mesh upper keeps your feet cool, while the padded collar and tongue add extra comfort. The Bounce midsole provides responsive cushioning, absorbing impact and delivering a smooth ride. The durable rubber outsole offers excellent traction, ensuring stability on various surfaces. The streamlined design and supportive overlays enhance the shoes stability and aesthe...', 1)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [cate_id]) VALUES (20, N'Adicolor', N'/Abibas/assets/images/ProductImg/adicolor.jpg', 245, 54.99, N'The Adicolor collection brings a splash of retro style to your everyday wardrobe. These tees are crafted from soft cotton fabric, ensuring comfort and breathability. The bold three-stripe design and Trefoil logo on the chest make a statement, blending classic style with modern flair. Perfect for layering or wearing solo, the Adicolor tees are a must-have for those who appreciate timeless design and comfort.', 2)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [cate_id]) VALUES (21, N'Ultimate 365 Polo', N'/Abibas/assets/images/ProductImg/poloultimate.jpg', 312, 69.99, N'The Ultimate 365 Polo is designed for performance and comfort, making it perfect for both on and off the golf course. Made with moisture-wicking fabric, this polo keeps you cool and dry during your game. The classic three-stripe design and subtle Adidas logo add a touch of sporty elegance. The stretch fabric ensures a full range of motion, while the regular fit provides a comfortable silhouette. Whether youre teeing off or relaxing, the Ultimate 365 Polo keeps you looking sharp and feeling great.', 2)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [cate_id]) VALUES (22, N'Essentials Hoodie', N'/Abibas/assets/images/ProductImg/esential_hoodie.jpg', 420, 54, N'The Essentials Hoodie is a go-to piece for casual comfort and laid-back style. Made from soft, cozy fleece, this hoodie features a drawstring hood, kangaroo pocket, and ribbed cuffs and hem for a snug fit. The simple Adidas logo on the chest adds a touch of brand flair without overwhelming the design. Perfect for lounging at home or running errands, the Essentials Hoodie combines comfort and style effortlessly.', 2)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [cate_id]) VALUES (23, N'Stan Smith', N'/Abibas/assets/images/ProductImg/stand_smith.jpg', 598, 85, N'The Stan Smith shoe is a timeless classic, known for its clean lines and minimalist design. Featuring a smooth leather upper with perforated three stripes, this shoe offers both style and comfort. The Ortholite insole provides cushioning and support, making it perfect for all-day wear. The iconic Stan Smith logo on the tongue and heel adds a touch of heritage. Ideal for both casual and smart-casual outfits, the Stan Smith is a versatile addition to any wardrobe.', 1)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [cate_id]) VALUES (24, N'Adicolor Track Jacket', N'/Abibas/assets/images/ProductImg/track_jacket.jpg', 210, 89.99, N'The Adicolor Track Jacket brings a retro vibe to your casual wardrobe. Made from durable tricot fabric, this jacket features the classic three-stripe design and a full-zip front. The ribbed cuffs and hem ensure a comfortable fit, while the side pockets add functionality. The bold Trefoil logo on the chest makes a statement, perfect for layering over your favorite tees. Whether youre hitting the gym or hanging out with friends, the Adicolor Track Jacket adds a sporty edge to any look.', 2)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [cate_id]) VALUES (25, N'3-Stripes Sweatpants', N'/Abibas/assets/images/ProductImg/3stripes_pant.jpg', 512, 49.99, N'The 3-Stripes Sweatpants are designed for ultimate comfort and style. Made from soft, brushed-back fleece, these pants feature the iconic three stripes running down the legs. The elastic waistband with a drawstring provides a customizable fit, while the side pockets offer convenience. Perfect for lounging at home or hitting the gym, these sweatpants combine casual comfort with sporty style.', 2)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [cate_id]) VALUES (26, N'Performance Tee', N'/Abibas/assets/images/ProductImg/performance_tee.jpg', 405, 24.99, N'The Performance Tee is built for active comfort, designed with moisture-wicking fabric to keep you dry during workouts. The lightweight material ensures maximum breathability, while the ergonomic seams provide a full range of motion. The bold Adidas logo on the chest adds a sporty touch, making it perfect for running, training, or everyday wear. Available in a variety of colors, the Performance Tee is a versatile addition to any athletic wardrobe.', 2)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [cate_id]) VALUES (27, N'Adidas Originals Hoodie', N'/Abibas/assets/images/ProductImg/original_hoodie.jpg', 305, 65, N'The Adidas Originals Hoodie is a stylish blend of retro and modern design. Made from soft, comfortable fleece, this hoodie features a classic fit with a drawstring hood and ribbed cuffs. The signature three-stripe design runs down the sleeves, while the Trefoil logo on the chest adds a touch of heritage. Ideal for casual wear or layering, the Originals Hoodie keeps you warm and stylish, whether youre on the move or relaxing at home.', 2)
INSERT [dbo].[Product] ([id], [name], [image], [quantity], [price], [description], [cate_id]) VALUES (28, N'Trefoil Tank Top', N'/Abibas/assets/images/ProductImg/trefoil_tanktop.jpg', 190, 29.99, N'The Trefoil Tank Top is perfect for those warm days or intense workouts. Made from breathable cotton fabric, this tank top features a relaxed fit and the iconic Trefoil logo on the chest. The sleeveless design allows for maximum mobility, making it ideal for running, gym sessions, or casual wear. Available in various colors, the Trefoil Tank Top adds a sporty flair to any outfit.', 2)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (2, N'white')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (3, N'white')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (4, N'white')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (5, N'white')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (7, N'white')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (8, N'white')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (9, N'white')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (11, N'white')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (12, N'white')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (20, N'white')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (21, N'white')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (22, N'white')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (23, N'white')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (24, N'white')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (25, N'white')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (26, N'white')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (27, N'white')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (28, N'white')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (2, N'black')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (3, N'black')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (4, N'black')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (5, N'black')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (7, N'black')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (8, N'black')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (9, N'black')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (11, N'black')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (12, N'black')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (20, N'black')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (21, N'black')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (22, N'black')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (23, N'black')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (24, N'black')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (25, N'black')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (26, N'black')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (27, N'black')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (28, N'black')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (2, N'red')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (3, N'red')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (4, N'red')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (5, N'red')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (7, N'red')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (8, N'red')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (9, N'red')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (11, N'red')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (12, N'red')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (20, N'red')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (21, N'red')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (22, N'red')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (23, N'red')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (24, N'red')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (25, N'red')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (26, N'red')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (27, N'red')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (28, N'red')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (2, N'yellow')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (3, N'yellow')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (4, N'yellow')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (5, N'yellow')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (7, N'yellow')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (8, N'yellow')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (9, N'yellow')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (11, N'yellow')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (12, N'yellow')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (20, N'yellow')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (21, N'yellow')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (22, N'yellow')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (23, N'yellow')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (24, N'yellow')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (25, N'yellow')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (26, N'yellow')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (27, N'yellow')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (28, N'yellow')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (2, N'grey')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (3, N'grey')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (4, N'grey')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (5, N'grey')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (7, N'grey')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (8, N'grey')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (9, N'grey')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (11, N'grey')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (12, N'grey')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (20, N'grey')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (21, N'grey')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (22, N'grey')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (23, N'grey')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (24, N'grey')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (25, N'grey')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (26, N'grey')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (27, N'grey')
INSERT [dbo].[product_color] ([product_id], [color]) VALUES (28, N'grey')
GO
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (2, N'S')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (9, N'')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (3, N'S')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (20, N'')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (4, N'S')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (5, N'S')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (7, N'S')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (8, N'S')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (9, N'S')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (11, N'S')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (12, N'S')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (20, N'S')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (21, N'S')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (22, N'S')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (23, N'S')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (24, N'S')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (25, N'S')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (26, N'S')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (27, N'S')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (28, N'S')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (2, N'M')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (3, N'M')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (4, N'M')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (5, N'M')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (7, N'M')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (8, N'M')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (9, N'M')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (11, N'M')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (12, N'M')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (20, N'M')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (21, N'M')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (22, N'M')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (23, N'M')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (24, N'M')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (25, N'M')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (26, N'M')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (27, N'M')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (28, N'M')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (2, N'L')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (3, N'L')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (4, N'L')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (5, N'L')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (7, N'L')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (8, N'L')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (9, N'L')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (11, N'L')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (12, N'L')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (20, N'L')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (21, N'L')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (22, N'L')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (23, N'L')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (24, N'L')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (25, N'L')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (26, N'L')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (27, N'L')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (28, N'L')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (21, N'')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (26, N'')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (3, N'')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (4, N'')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (7, N'')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (12, N'')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (24, N'')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (28, N'')
INSERT [dbo].[product_size] ([product_id], [size]) VALUES (5, N'')
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([user_id], [user_name], [user_email], [user_pass], [isAdmin], [address], [phone]) VALUES (1, N'Admin', N'admin123@gmail.com', N'admin', 1, N'123', N'01111111')
INSERT [dbo].[User] ([user_id], [user_name], [user_email], [user_pass], [isAdmin], [address], [phone]) VALUES (3, N'Hương', N'thuyhuong1423@gmail.com', N'123456', 0, N'HCM', N'099999999')
INSERT [dbo].[User] ([user_id], [user_name], [user_email], [user_pass], [isAdmin], [address], [phone]) VALUES (4, N'Khuong Hung', N'khuonghung2408@gmail.com', N'1423', 0, N'HN', N'091212')
INSERT [dbo].[User] ([user_id], [user_name], [user_email], [user_pass], [isAdmin], [address], [phone]) VALUES (5, N'Mai Phạm', N'maipham11@gmail.com', N'123', 0, N'HT', N'09999')
INSERT [dbo].[User] ([user_id], [user_name], [user_email], [user_pass], [isAdmin], [address], [phone]) VALUES (11, N'username', N'userEmail', N'123', 0, N'abc', N'123')
INSERT [dbo].[User] ([user_id], [user_name], [user_email], [user_pass], [isAdmin], [address], [phone]) VALUES (12, N'user', N'user@gmail.com', N'123', 0, N'Nghe an', N'0999999999')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([accountid])
REFERENCES [dbo].[User] ([user_id])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([orderId])
REFERENCES [dbo].[Order] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([productId])
REFERENCES [dbo].[Product] ([id])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([cate_id])
REFERENCES [dbo].[Category] ([id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[product_color]  WITH CHECK ADD  CONSTRAINT [FK_product_color_Product] FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[product_color] CHECK CONSTRAINT [FK_product_color_Product]
GO
ALTER TABLE [dbo].[product_size]  WITH CHECK ADD  CONSTRAINT [FK_product_size_Product] FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[product_size] CHECK CONSTRAINT [FK_product_size_Product]
GO
