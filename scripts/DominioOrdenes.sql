/****** Object:  Database [Ordenes]    Script Date: 20/05/2021 12:31:41 p. m. ******/
CREATE DATABASE [Ordenes]
GO
USE [Ordenes]
GO
/****** Object:  Table [dbo].[DetalleOrden]    Script Date: 20/05/2021 12:31:41 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleOrden](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ProductoId] [bigint] NOT NULL,
	[CodigoProducto] [varchar](50) NULL,
	[OrdenId] [bigint] NOT NULL,
	[CantidadOrdenada] [int] NOT NULL,
	[PrecioUnitario] [bigint] NOT NULL,
	[CodigoProveedor] [varchar](100) NOT NULL,
	[TipoProveedor] [varchar](10) NOT NULL,
	[NombreProducto] [varchar](100) NOT NULL,
 CONSTRAINT [PK_DetalleOrden_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)
)
GO
/****** Object:  Table [dbo].[Ordenes]    Script Date: 20/05/2021 12:31:42 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ordenes](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Estado] [varchar](100) NOT NULL,
	[FechaCreacion] [varchar](100) NOT NULL,
	[FechaEnvio] [varchar](100) NULL,
	[FechaUltimaActualizacion] [varchar](100) NULL,
	[PrecioTotal] [decimal](18, 5) NULL,
	[ValorImpuestos] [decimal](18, 5) NULL,
	[NumeroDocumentoCliente] [varchar](20) NOT NULL,
	[TipoDocumentoCliente] [varchar](2) NOT NULL,
	[EmailCliente] [varchar](300) NOT NULL,
	[DireccionFacturacion] [varchar](250) NOT NULL,
	[CiudadFacturacion] [varchar](100) NOT NULL,
	[EstadoFacturacion] [varchar](100) NOT NULL,
	[PaisFacturacion] [varchar](100) NOT NULL,
	[CodigoAreaFacturacion] [varchar](20) NOT NULL,
	[CorreoElectronicoFacturacion] [varchar](300) NOT NULL,
	[TelefonoFacturacion] [varchar](20) NOT NULL,
	[DireccionEnvio] [varchar](250) NOT NULL,
	[CiudadEnvio] [varchar](100) NOT NULL,
	[EstadoEnvio] [varchar](100) NOT NULL,
	[PaisEnvio] [varchar](100) NOT NULL,
	[CodigoAreaEnvio] [varchar](20) NULL,
	[NombreEnvio] [varchar](250) NOT NULL,
	[ApellidoEnvio] [varchar](250) NOT NULL,
	[TelefonoEnvio] [varchar](20) NOT NULL,
	[PagoId] [bigint] NULL,
 CONSTRAINT [PK_Ordenes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)
) 
GO
ALTER TABLE [dbo].[DetalleOrden]  WITH CHECK ADD  CONSTRAINT [FK_Orden_DetalleOrden] FOREIGN KEY([OrdenId])
REFERENCES [dbo].[Ordenes] ([Id])
GO
ALTER TABLE [dbo].[DetalleOrden] CHECK CONSTRAINT [FK_Orden_DetalleOrden]
GO

