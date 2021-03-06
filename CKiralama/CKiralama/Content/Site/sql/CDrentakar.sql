USE [CDKiralama]
GO
/****** Object:  Table [dbo].[AdminGiris]    Script Date: 1.04.2022 17:21:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminGiris](
	[adminID] [int] IDENTITY(1,2) NOT NULL,
	[adminMail] [varchar](20) NULL,
	[adminSifre] [varchar](20) NULL,
	[admintcNo] [char](11) NULL,
	[adminTel] [char](10) NULL,
	[AdminAdres] [varchar](20) NULL,
 CONSTRAINT [PK_Admin_1] PRIMARY KEY CLUSTERED 
(
	[adminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AracBilgisi]    Script Date: 1.04.2022 17:21:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AracBilgisi](
	[aracID] [int] IDENTITY(15,11) NOT NULL,
	[aracMarka] [varchar](20) NULL,
	[aracDepo] [varchar](20) NULL,
	[aracVites] [varchar](20) NULL,
	[aracBilgi] [varchar](100) NULL,
	[aracFiyat] [money] NULL,
	[aracKapisi] [tinyint] NULL,
	[aracKoltuk] [tinyint] NULL,
	[aracBagaj] [varchar](20) NULL,
	[aracTipi] [varchar](20) NULL,
	[aracModel] [varchar](20) NULL,
	[ehliyetSinif] [char](1) NULL,
	[modelID] [int] NULL,
 CONSTRAINT [PK_AracBilgisi] PRIMARY KEY CLUSTERED 
(
	[aracID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AracRezervasyon]    Script Date: 1.04.2022 17:21:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AracRezervasyon](
	[rezervasyonID] [int] IDENTITY(3,5) NOT NULL,
	[istasyonAlisYeri] [int] NULL,
	[İstasyonTeslimYeri] [int] NULL,
	[İstasyonAlisTarihi] [datetime] NULL,
	[istasyonBitisTarihi] [datetime] NULL,
	[rezervasyondurum] [varchar](50) NULL,
	[musteriID] [int] NOT NULL,
	[aracID] [int] NOT NULL,
 CONSTRAINT [PK_AracKiralama] PRIMARY KEY CLUSTERED 
(
	[rezervasyonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[İstasyonYeri]    Script Date: 1.04.2022 17:21:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[İstasyonYeri](
	[istasyonID] [int] NOT NULL,
	[İstasyonAdi] [varchar](20) NULL,
	[istasyonSehri] [varchar](20) NULL,
	[istasyonAdres] [varchar](20) NULL,
 CONSTRAINT [PK_İstasyonYeri] PRIMARY KEY CLUSTERED 
(
	[istasyonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Marka]    Script Date: 1.04.2022 17:21:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Marka](
	[markaID] [int] NOT NULL,
	[markaAdi] [varchar](20) NULL,
 CONSTRAINT [PK_Marka] PRIMARY KEY CLUSTERED 
(
	[markaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Model]    Script Date: 1.04.2022 17:21:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Model](
	[modelID] [int] NOT NULL,
	[modelAdi] [varchar](20) NULL,
	[markaID] [int] NULL,
 CONSTRAINT [PK_Model] PRIMARY KEY CLUSTERED 
(
	[modelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Müsteri]    Script Date: 1.04.2022 17:21:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Müsteri](
	[musteriID] [int] IDENTITY(10,7) NOT NULL,
	[musteriAd] [varchar](20) NULL,
	[musteriSoyad] [varchar](20) NULL,
	[musteriMail] [varchar](20) NULL,
	[musteriSifre] [varchar](20) NULL,
	[musteriAdres] [varchar](50) NULL,
	[musteriTel] [char](10) NULL,
	[musteriDogtarih] [datetime] NULL,
	[musteriKanGrup] [varchar](20) NULL,
	[odemeID] [int] NOT NULL,
	[ehliyetSinifi] [char](1) NULL,
 CONSTRAINT [PK_Müsteri] PRIMARY KEY CLUSTERED 
(
	[musteriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OdemeTipi]    Script Date: 1.04.2022 17:21:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OdemeTipi](
	[odemeID] [int] NOT NULL,
	[kartNo] [int] NULL,
	[sonkTarih] [datetime] NULL,
	[ccvNo] [int] NULL,
 CONSTRAINT [PK_OdemeTipi] PRIMARY KEY CLUSTERED 
(
	[odemeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AdminGiris] ON 

INSERT [dbo].[AdminGiris] ([adminID], [adminMail], [adminSifre], [admintcNo], [adminTel], [AdminAdres]) VALUES (1, N'cenkayd@gmail.com', N'818134', NULL, NULL, NULL)
INSERT [dbo].[AdminGiris] ([adminID], [adminMail], [adminSifre], [admintcNo], [adminTel], [AdminAdres]) VALUES (2, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[AdminGiris] OFF
GO
ALTER TABLE [dbo].[AracBilgisi]  WITH CHECK ADD  CONSTRAINT [FK_AracBilgisi_Model] FOREIGN KEY([modelID])
REFERENCES [dbo].[Model] ([modelID])
GO
ALTER TABLE [dbo].[AracBilgisi] CHECK CONSTRAINT [FK_AracBilgisi_Model]
GO
ALTER TABLE [dbo].[AracRezervasyon]  WITH CHECK ADD  CONSTRAINT [FK_AracKiralama_AracBilgisi] FOREIGN KEY([aracID])
REFERENCES [dbo].[AracBilgisi] ([aracID])
GO
ALTER TABLE [dbo].[AracRezervasyon] CHECK CONSTRAINT [FK_AracKiralama_AracBilgisi]
GO
ALTER TABLE [dbo].[AracRezervasyon]  WITH CHECK ADD  CONSTRAINT [FK_AracKiralama_Müsteri] FOREIGN KEY([musteriID])
REFERENCES [dbo].[Müsteri] ([musteriID])
GO
ALTER TABLE [dbo].[AracRezervasyon] CHECK CONSTRAINT [FK_AracKiralama_Müsteri]
GO
ALTER TABLE [dbo].[AracRezervasyon]  WITH CHECK ADD  CONSTRAINT [FK_AracRezervasyon_AracBilgisi] FOREIGN KEY([aracID])
REFERENCES [dbo].[AracBilgisi] ([aracID])
GO
ALTER TABLE [dbo].[AracRezervasyon] CHECK CONSTRAINT [FK_AracRezervasyon_AracBilgisi]
GO
ALTER TABLE [dbo].[AracRezervasyon]  WITH CHECK ADD  CONSTRAINT [FK_AracRezervasyon_İstasyonYeri1] FOREIGN KEY([istasyonAlisYeri])
REFERENCES [dbo].[İstasyonYeri] ([istasyonID])
GO
ALTER TABLE [dbo].[AracRezervasyon] CHECK CONSTRAINT [FK_AracRezervasyon_İstasyonYeri1]
GO
ALTER TABLE [dbo].[AracRezervasyon]  WITH CHECK ADD  CONSTRAINT [FK_AracRezervasyon_İstasyonYeri2] FOREIGN KEY([İstasyonTeslimYeri])
REFERENCES [dbo].[İstasyonYeri] ([istasyonID])
GO
ALTER TABLE [dbo].[AracRezervasyon] CHECK CONSTRAINT [FK_AracRezervasyon_İstasyonYeri2]
GO
ALTER TABLE [dbo].[Model]  WITH CHECK ADD  CONSTRAINT [FK_Model_Marka] FOREIGN KEY([markaID])
REFERENCES [dbo].[Marka] ([markaID])
GO
ALTER TABLE [dbo].[Model] CHECK CONSTRAINT [FK_Model_Marka]
GO
ALTER TABLE [dbo].[Müsteri]  WITH CHECK ADD  CONSTRAINT [FK_Müsteri_OdemeTipi] FOREIGN KEY([odemeID])
REFERENCES [dbo].[OdemeTipi] ([odemeID])
GO
ALTER TABLE [dbo].[Müsteri] CHECK CONSTRAINT [FK_Müsteri_OdemeTipi]
GO
