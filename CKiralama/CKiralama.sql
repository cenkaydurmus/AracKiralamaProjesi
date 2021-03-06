USE [CKiralama]
GO
/****** Object:  Table [dbo].[AracBilgisi]    Script Date: 27.05.2022 16:14:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AracBilgisi](
	[aracID] [int] IDENTITY(1,1) NOT NULL,
	[aracMarka] [varchar](20) NULL,
	[aracDepo] [varchar](20) NULL,
	[aracVites] [varchar](20) NULL,
	[aracFiyat] [money] NULL,
	[aracKapisi] [tinyint] NULL,
	[aracKoltuk] [tinyint] NULL,
	[aracBagaj] [varchar](20) NULL,
	[aracTipi] [varchar](20) NULL,
	[aracModel] [varchar](20) NULL,
	[ehliyetSinif] [char](1) NULL,
	[modelID] [int] NULL,
	[modelyili] [int] NULL,
	[ımage] [nvarchar](100) NULL,
 CONSTRAINT [PK_AracBilgisi] PRIMARY KEY CLUSTERED 
(
	[aracID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AracRezervasyon]    Script Date: 27.05.2022 16:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AracRezervasyon](
	[rezervasyonID] [int] IDENTITY(1,1) NOT NULL,
	[istasyonAlisYeri] [varchar](100) NULL,
	[İstasyonTeslimYeri] [varchar](100) NULL,
	[İstasyonAlisTarihi] [date] NULL,
	[istasyonBitisTarihi] [date] NULL,
	[rezervasyondurum] [varchar](50) NULL,
	[KulllanıcıID] [int] NOT NULL,
	[aracID] [int] NOT NULL,
	[İptalMi] [varchar](10) NULL,
	[İptalTarihi] [date] NULL,
	[Ucret] [decimal](18, 0) NULL,
 CONSTRAINT [PK_AracKiralama] PRIMARY KEY CLUSTERED 
(
	[rezervasyonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[İstasyonYeri]    Script Date: 27.05.2022 16:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[İstasyonYeri](
	[istasyonID] [int] IDENTITY(1,1) NOT NULL,
	[İstasyonAdi] [varchar](20) NULL,
	[istasyonSehri] [varchar](20) NULL,
	[istasyonAdres] [varchar](20) NULL,
 CONSTRAINT [PK_İstasyonYeri] PRIMARY KEY CLUSTERED 
(
	[istasyonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kullanıcı]    Script Date: 27.05.2022 16:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kullanıcı](
	[KullanıcıID] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [varchar](20) NULL,
	[Soyad] [varchar](20) NULL,
	[Email] [varchar](20) NULL,
	[Sifre] [varchar](20) NULL,
	[Adres] [varchar](50) NULL,
	[Telefon] [char](10) NULL,
	[DogumTarihi] [datetime] NULL,
	[KanGrup] [varchar](20) NULL,
	[EhliyetSinifi] [char](10) NULL,
	[YetkiID] [int] NOT NULL,
	[Image] [nvarchar](100) NULL,
 CONSTRAINT [PK_Müsteri] PRIMARY KEY CLUSTERED 
(
	[KullanıcıID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Marka]    Script Date: 27.05.2022 16:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Marka](
	[markaID] [int] IDENTITY(1,1) NOT NULL,
	[markaAdi] [varchar](20) NULL,
	[Image] [nvarchar](100) NULL,
 CONSTRAINT [PK_Marka] PRIMARY KEY CLUSTERED 
(
	[markaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Model]    Script Date: 27.05.2022 16:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Model](
	[modelID] [int] IDENTITY(1,1) NOT NULL,
	[modelAdi] [varchar](20) NULL,
	[markaID] [int] NULL,
	[Image] [nvarchar](100) NULL,
 CONSTRAINT [PK_Model] PRIMARY KEY CLUSTERED 
(
	[modelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ucret]    Script Date: 27.05.2022 16:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ucret](
	[TipID] [int] IDENTITY(1,1) NOT NULL,
	[kartno] [int] NULL,
	[cvv] [int] NULL,
	[sonkTarih] [date] NULL,
 CONSTRAINT [PK_Ucret] PRIMARY KEY CLUSTERED 
(
	[TipID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yetki]    Script Date: 27.05.2022 16:14:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yetki](
	[YetkiID] [int] IDENTITY(1,1) NOT NULL,
	[ad] [varchar](50) NULL,
 CONSTRAINT [PK_Yetki] PRIMARY KEY CLUSTERED 
(
	[YetkiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AracBilgisi] ON 

INSERT [dbo].[AracBilgisi] ([aracID], [aracMarka], [aracDepo], [aracVites], [aracFiyat], [aracKapisi], [aracKoltuk], [aracBagaj], [aracTipi], [aracModel], [ehliyetSinif], [modelID], [modelyili], [ımage]) VALUES (3, N'Renault', N'Full', N'Düz', 1.0000, 4, 4, N'Geniş', N'Sedan', N'Fluence', N'X', 1, 2018, NULL)
INSERT [dbo].[AracBilgisi] ([aracID], [aracMarka], [aracDepo], [aracVites], [aracFiyat], [aracKapisi], [aracKoltuk], [aracBagaj], [aracTipi], [aracModel], [ehliyetSinif], [modelID], [modelyili], [ımage]) VALUES (4, N'Renault', N'Full', N'Otomatik', 1.0000, 4, 4, N'Normal', N'Sedan', N'Clio', N'A', 5, 2018, NULL)
INSERT [dbo].[AracBilgisi] ([aracID], [aracMarka], [aracDepo], [aracVites], [aracFiyat], [aracKapisi], [aracKoltuk], [aracBagaj], [aracTipi], [aracModel], [ehliyetSinif], [modelID], [modelyili], [ımage]) VALUES (1002, N'Audi', N'Yarım', N'Düz', 5.0000, 4, 4, N'Normal', N'Sedan', N'A5', N'B', 6, 2019, NULL)
INSERT [dbo].[AracBilgisi] ([aracID], [aracMarka], [aracDepo], [aracVites], [aracFiyat], [aracKapisi], [aracKoltuk], [aracBagaj], [aracTipi], [aracModel], [ehliyetSinif], [modelID], [modelyili], [ımage]) VALUES (1008, N'Ford', N'Yarım', N'Düz', 4.0000, 4, 4, N'Normal', N'Sedan', N'Focus', N'A', 1009, 2019, NULL)
SET IDENTITY_INSERT [dbo].[AracBilgisi] OFF
GO
SET IDENTITY_INSERT [dbo].[AracRezervasyon] ON 

INSERT [dbo].[AracRezervasyon] ([rezervasyonID], [istasyonAlisYeri], [İstasyonTeslimYeri], [İstasyonAlisTarihi], [istasyonBitisTarihi], [rezervasyondurum], [KulllanıcıID], [aracID], [İptalMi], [İptalTarihi], [Ucret]) VALUES (1021, N'İstanbul', N'Ankara', CAST(N'2022-05-01' AS Date), CAST(N'2022-05-05' AS Date), N'müsait', 2, 3, NULL, NULL, NULL)
INSERT [dbo].[AracRezervasyon] ([rezervasyonID], [istasyonAlisYeri], [İstasyonTeslimYeri], [İstasyonAlisTarihi], [istasyonBitisTarihi], [rezervasyondurum], [KulllanıcıID], [aracID], [İptalMi], [İptalTarihi], [Ucret]) VALUES (1025, N'Ankara', N'istanbul', CAST(N'2022-04-04' AS Date), CAST(N'2022-05-05' AS Date), N'müsait', 2, 4, NULL, NULL, NULL)
INSERT [dbo].[AracRezervasyon] ([rezervasyonID], [istasyonAlisYeri], [İstasyonTeslimYeri], [İstasyonAlisTarihi], [istasyonBitisTarihi], [rezervasyondurum], [KulllanıcıID], [aracID], [İptalMi], [İptalTarihi], [Ucret]) VALUES (1029, N'Antalya', N'Ankara', CAST(N'2022-05-06' AS Date), CAST(N'2022-08-05' AS Date), N'dolu', 2, 3, NULL, NULL, NULL)
INSERT [dbo].[AracRezervasyon] ([rezervasyonID], [istasyonAlisYeri], [İstasyonTeslimYeri], [İstasyonAlisTarihi], [istasyonBitisTarihi], [rezervasyondurum], [KulllanıcıID], [aracID], [İptalMi], [İptalTarihi], [Ucret]) VALUES (1030, N'İstanbul', N'Antalya', CAST(N'2022-05-04' AS Date), CAST(N'2022-10-04' AS Date), N'müsait', 2, 4, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[AracRezervasyon] OFF
GO
SET IDENTITY_INSERT [dbo].[İstasyonYeri] ON 

INSERT [dbo].[İstasyonYeri] ([istasyonID], [İstasyonAdi], [istasyonSehri], [istasyonAdres]) VALUES (1, N'İstanbul', N'İstanbul', N'İstanbul/Sancaktepe')
INSERT [dbo].[İstasyonYeri] ([istasyonID], [İstasyonAdi], [istasyonSehri], [istasyonAdres]) VALUES (2, N'Ankara', N'Ankara', N'Ankara/Havalimanı')
INSERT [dbo].[İstasyonYeri] ([istasyonID], [İstasyonAdi], [istasyonSehri], [istasyonAdres]) VALUES (3, N'Antalya', N'Antalya', N'Antalya/Havalimanı')
INSERT [dbo].[İstasyonYeri] ([istasyonID], [İstasyonAdi], [istasyonSehri], [istasyonAdres]) VALUES (4, N'Ankara', N'Antalya', N'Antalya/Havalimanı')
SET IDENTITY_INSERT [dbo].[İstasyonYeri] OFF
GO
SET IDENTITY_INSERT [dbo].[Kullanıcı] ON 

INSERT [dbo].[Kullanıcı] ([KullanıcıID], [Ad], [Soyad], [Email], [Sifre], [Adres], [Telefon], [DogumTarihi], [KanGrup], [EhliyetSinifi], [YetkiID], [Image]) VALUES (14, N'Cenk', N'Durmuş', N'cdx34@gmail.com', N'123x', N'İstanbul', N'5347894514', CAST(N'2002-05-05T00:00:00.000' AS DateTime), N'AA', N'B         ', 1, NULL)
INSERT [dbo].[Kullanıcı] ([KullanıcıID], [Ad], [Soyad], [Email], [Sifre], [Adres], [Telefon], [DogumTarihi], [KanGrup], [EhliyetSinifi], [YetkiID], [Image]) VALUES (15, N'Ulaş', N'Öneç', N'u1903@gmail.com', N'321x', N'Düzce', N'5314567825', CAST(N'2002-02-04T00:00:00.000' AS DateTime), N'UU', N'A         ', 1, NULL)
INSERT [dbo].[Kullanıcı] ([KullanıcıID], [Ad], [Soyad], [Email], [Sifre], [Adres], [Telefon], [DogumTarihi], [KanGrup], [EhliyetSinifi], [YetkiID], [Image]) VALUES (16, N'Yasin', N'Akyüz', N'y06@gmail.com', N'456x', N'Ankara', N'531749625 ', CAST(N'2000-01-01T00:00:00.000' AS DateTime), N'YY', N'Y         ', 2, NULL)
INSERT [dbo].[Kullanıcı] ([KullanıcıID], [Ad], [Soyad], [Email], [Sifre], [Adres], [Telefon], [DogumTarihi], [KanGrup], [EhliyetSinifi], [YetkiID], [Image]) VALUES (23, N'Yunus', N'Öztürk', N'yunus1@gmail.com', N'y123', N'İstanbul', N'5786314152', CAST(N'1995-01-01T00:00:00.000' AS DateTime), N'A', N'A         ', 2, NULL)
INSERT [dbo].[Kullanıcı] ([KullanıcıID], [Ad], [Soyad], [Email], [Sifre], [Adres], [Telefon], [DogumTarihi], [KanGrup], [EhliyetSinifi], [YetkiID], [Image]) VALUES (24, N'İlker ', N'Yılmaz', N'123k@gmail.com', N'789', N'Manisa', N'5347411236', CAST(N'1999-01-01T00:00:00.000' AS DateTime), N'A', N'B         ', 2, NULL)
INSERT [dbo].[Kullanıcı] ([KullanıcıID], [Ad], [Soyad], [Email], [Sifre], [Adres], [Telefon], [DogumTarihi], [KanGrup], [EhliyetSinifi], [YetkiID], [Image]) VALUES (25, N'Ali', N'Akar', N'1a@gmail.com', N'123x', N'Ankara/Mamak', N'5348526352', CAST(N'2001-01-01T00:00:00.000' AS DateTime), N'A', N'B         ', 2, NULL)
INSERT [dbo].[Kullanıcı] ([KullanıcıID], [Ad], [Soyad], [Email], [Sifre], [Adres], [Telefon], [DogumTarihi], [KanGrup], [EhliyetSinifi], [YetkiID], [Image]) VALUES (29, N'Serdar', N'Arpacı', N'1453x@gmail.com', N'12358a', NULL, NULL, CAST(N'1970-01-02T00:00:00.000' AS DateTime), NULL, NULL, 2, N'/images/users/d300132c-0e3c-4f2c-a8bc-e4aa9e63af43.jpg')
INSERT [dbo].[Kullanıcı] ([KullanıcıID], [Ad], [Soyad], [Email], [Sifre], [Adres], [Telefon], [DogumTarihi], [KanGrup], [EhliyetSinifi], [YetkiID], [Image]) VALUES (30, N'Cayyu', N'Reis', N'cayyu123@gmail.com', N'123456x', NULL, NULL, CAST(N'1995-02-01T00:00:00.000' AS DateTime), NULL, NULL, 2, N'/images/users/6673ce16-05a2-4332-b548-c78d1e5302ee.png')
INSERT [dbo].[Kullanıcı] ([KullanıcıID], [Ad], [Soyad], [Email], [Sifre], [Adres], [Telefon], [DogumTarihi], [KanGrup], [EhliyetSinifi], [YetkiID], [Image]) VALUES (31, N'Cenkay', N'Durmus', N'123x@gmail.com', N'123456z', NULL, NULL, CAST(N'2005-01-01T00:00:00.000' AS DateTime), NULL, NULL, 2, N'/images/users/ef446fb7-fa88-47c9-a289-8547e3a2a917.png')
INSERT [dbo].[Kullanıcı] ([KullanıcıID], [Ad], [Soyad], [Email], [Sifre], [Adres], [Telefon], [DogumTarihi], [KanGrup], [EhliyetSinifi], [YetkiID], [Image]) VALUES (32, N'Emel', N'Andıç', N'emel123@gmail.com', N'12396zc', N'Sakarya', N'534748596 ', CAST(N'1998-05-07T00:00:00.000' AS DateTime), N'AB', N'B         ', 2, NULL)
INSERT [dbo].[Kullanıcı] ([KullanıcıID], [Ad], [Soyad], [Email], [Sifre], [Adres], [Telefon], [DogumTarihi], [KanGrup], [EhliyetSinifi], [YetkiID], [Image]) VALUES (1034, N'test1', N'tesrt1', N'124@gmail.com', N'1234567', N'Antalya', N'5431478525', CAST(N'2001-01-01T00:00:00.000' AS DateTime), N'A', N'A         ', 2, NULL)
SET IDENTITY_INSERT [dbo].[Kullanıcı] OFF
GO
SET IDENTITY_INSERT [dbo].[Marka] ON 

INSERT [dbo].[Marka] ([markaID], [markaAdi], [Image]) VALUES (1, N'Renault', NULL)
INSERT [dbo].[Marka] ([markaID], [markaAdi], [Image]) VALUES (2, N'Renault', NULL)
INSERT [dbo].[Marka] ([markaID], [markaAdi], [Image]) VALUES (3, N'Audi', NULL)
INSERT [dbo].[Marka] ([markaID], [markaAdi], [Image]) VALUES (1002, N'Ford', NULL)
SET IDENTITY_INSERT [dbo].[Marka] OFF
GO
SET IDENTITY_INSERT [dbo].[Model] ON 

INSERT [dbo].[Model] ([modelID], [modelAdi], [markaID], [Image]) VALUES (1, N'Fluence', 1, N'')
INSERT [dbo].[Model] ([modelID], [modelAdi], [markaID], [Image]) VALUES (5, N'Clio', 2, NULL)
INSERT [dbo].[Model] ([modelID], [modelAdi], [markaID], [Image]) VALUES (6, N'A5', 3, NULL)
INSERT [dbo].[Model] ([modelID], [modelAdi], [markaID], [Image]) VALUES (1009, N'Focus', 1002, NULL)
SET IDENTITY_INSERT [dbo].[Model] OFF
GO
SET IDENTITY_INSERT [dbo].[Ucret] ON 

INSERT [dbo].[Ucret] ([TipID], [kartno], [cvv], [sonkTarih]) VALUES (1, 555, 810, CAST(N'2025-05-01' AS Date))
INSERT [dbo].[Ucret] ([TipID], [kartno], [cvv], [sonkTarih]) VALUES (2, 556, 811, CAST(N'2025-05-02' AS Date))
INSERT [dbo].[Ucret] ([TipID], [kartno], [cvv], [sonkTarih]) VALUES (3, 557, 812, CAST(N'2025-05-03' AS Date))
INSERT [dbo].[Ucret] ([TipID], [kartno], [cvv], [sonkTarih]) VALUES (4, 558, 813, CAST(N'2025-05-09' AS Date))
SET IDENTITY_INSERT [dbo].[Ucret] OFF
GO
SET IDENTITY_INSERT [dbo].[Yetki] ON 

INSERT [dbo].[Yetki] ([YetkiID], [ad]) VALUES (1, N'Admin                                             ')
INSERT [dbo].[Yetki] ([YetkiID], [ad]) VALUES (2, N'Müşteri')
SET IDENTITY_INSERT [dbo].[Yetki] OFF
GO
ALTER TABLE [dbo].[Kullanıcı] ADD  CONSTRAINT [DF__Kullanıcı__Yetki__5812160E]  DEFAULT ((2)) FOR [YetkiID]
GO
