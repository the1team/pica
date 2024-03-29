USE [Inventario]
GO

/****** Object:  Table [dbo].[inventario]    Script Date: 19/05/2021 10:46:17 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[inventario](
	[Id] [bigint] NOT NULL,
	[Categoria] [varchar](255) NOT NULL,
	[Codigo] [varchar](255) NOT NULL,
	[CodigoProveedor] [varchar](255) NOT NULL,
	[Descripcion] [varchar](255) NOT NULL,
	[Fabricante] [varchar](255) NOT NULL,
	[Inventario] [int] NOT NULL,
	[Moneda] [varchar](255) NOT NULL,
	[Nombre] [varchar](255) NOT NULL,
	[Precio] [float] NOT NULL,
	[TipoProveedor] [varchar](255) NOT NULL,
	
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
 
 USE Inventario
 GO
INSERT INTO inventario VALUES (1,'Consolas','LNS','Local','Nintendo Switch se transforma para adaptarse a ti y ahora podrás jugar todo lo que quieras, cuando quieras y donde quieras, porque hay un modo para cada lugar y situación, Nintendo Switch piensa en lo que necesitas y te ofrece un mundo de posibilidades. ','Nintendo',10,'COP','Nintendo Switch',1100000.0,'Local'),
INSERT INTO inventario VALUES (2,'Consolas','LNSL','Local','Nintendo Switch se transforma para adaptarse a ti y ahora podrás jugar todo lo que quieras, cuando quieras y donde quieras, porque hay un modo para cada lugar y situación, Nintendo Switch piensa en lo que necesitas y te ofrece un mundo de posibilidades. ','Nintendo',10,'COP','Nintendo Switch Lite',900000.0,'Local'),
INSERT INTO inventario VALUES (3,'Consolas','LXBSS','Local','Solo digital , Todo de nueva generación. Pásate a lo digital con la Xbox Series S y crea una biblioteca de juegos digitales. Tus juegos, partidas guardadas y copias de seguridad están a salvo en la nube. Además, disfruta de la capacidad de reservar ','Microsoft',10,'COP','XBOX ONE Series S',1450000.0,'Local'),
INSERT INTO inventario VALUES (4,'Celulares','LIP13','Local','Brillante por donde lo veas. El iPhone XR de Apple tiene una pantalla Liquid Retina de 6.1 pulgadas, el LCD más desarrollado de la industria y una cámara de 12 megapíxeles. Cuenta con Face ID avanzado, tu rostro no solo te permite el acceso','Apple',10,'COP','IPhone 13 plus pro max',9000000.0,'Externo');
