USE [master]
GO
/****** Object:  Database [Hotel]    Script Date: 11/02/2019 22:13:05 ******/
CREATE DATABASE [Hotel] ON  PRIMARY 
( NAME = N'Hotel', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Hotel.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Hotel_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Hotel_log.LDF' , SIZE = 576KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Hotel] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Hotel].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Hotel] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Hotel] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Hotel] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Hotel] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Hotel] SET ARITHABORT OFF
GO
ALTER DATABASE [Hotel] SET AUTO_CLOSE ON
GO
ALTER DATABASE [Hotel] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Hotel] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Hotel] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Hotel] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Hotel] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Hotel] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Hotel] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Hotel] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Hotel] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Hotel] SET  ENABLE_BROKER
GO
ALTER DATABASE [Hotel] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Hotel] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Hotel] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Hotel] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Hotel] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Hotel] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Hotel] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Hotel] SET  READ_WRITE
GO
ALTER DATABASE [Hotel] SET RECOVERY SIMPLE
GO
ALTER DATABASE [Hotel] SET  MULTI_USER
GO
ALTER DATABASE [Hotel] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Hotel] SET DB_CHAINING OFF
GO
USE [Hotel]
GO
/****** Object:  ForeignKey [FK__masaje__servicio__25869641]    Script Date: 11/02/2019 22:13:06 ******/
ALTER TABLE [dbo].[masaje] DROP CONSTRAINT [FK__masaje__servicio__25869641]
GO
/****** Object:  ForeignKey [FK__limpieza__servic__24927208]    Script Date: 11/02/2019 22:13:06 ******/
ALTER TABLE [dbo].[limpieza] DROP CONSTRAINT [FK__limpieza__servic__24927208]
GO
/****** Object:  ForeignKey [FK__internet__servic__239E4DCF]    Script Date: 11/02/2019 22:13:06 ******/
ALTER TABLE [dbo].[internet] DROP CONSTRAINT [FK__internet__servic__239E4DCF]
GO
/****** Object:  ForeignKey [FK__habitacio__estad__22AA2996]    Script Date: 11/02/2019 22:13:06 ******/
ALTER TABLE [dbo].[habitacion] DROP CONSTRAINT [FK__habitacio__estad__22AA2996]
GO
/****** Object:  ForeignKey [FK__habitacio__id_ti__1FCDBCEB]    Script Date: 11/02/2019 22:13:06 ******/
ALTER TABLE [dbo].[habitacion] DROP CONSTRAINT [FK__habitacio__id_ti__1FCDBCEB]
GO
/****** Object:  ForeignKey [FK__habitacio__servi__20C1E124]    Script Date: 11/02/2019 22:13:06 ******/
ALTER TABLE [dbo].[habitacion] DROP CONSTRAINT [FK__habitacio__servi__20C1E124]
GO
/****** Object:  ForeignKey [FK__habitacio__servi__21B6055D]    Script Date: 11/02/2019 22:13:06 ******/
ALTER TABLE [dbo].[habitacion] DROP CONSTRAINT [FK__habitacio__servi__21B6055D]
GO
/****** Object:  ForeignKey [FK__cliente__id_naci__173876EA]    Script Date: 11/02/2019 22:13:06 ******/
ALTER TABLE [dbo].[cliente] DROP CONSTRAINT [FK__cliente__id_naci__173876EA]
GO
/****** Object:  ForeignKey [FK__cliente__pago_id__182C9B23]    Script Date: 11/02/2019 22:13:06 ******/
ALTER TABLE [dbo].[cliente] DROP CONSTRAINT [FK__cliente__pago_id__182C9B23]
GO
/****** Object:  ForeignKey [FK__empleado__id_pue__1CF15040]    Script Date: 11/02/2019 22:13:06 ******/
ALTER TABLE [dbo].[empleado] DROP CONSTRAINT [FK__empleado__id_pue__1CF15040]
GO
/****** Object:  ForeignKey [FK__servicio___servi__276EDEB3]    Script Date: 11/02/2019 22:13:06 ******/
ALTER TABLE [dbo].[servicio_cuarto] DROP CONSTRAINT [FK__servicio___servi__276EDEB3]
GO
/****** Object:  ForeignKey [FK__transport__servi__267ABA7A]    Script Date: 11/02/2019 22:13:07 ******/
ALTER TABLE [dbo].[transporte] DROP CONSTRAINT [FK__transport__servi__267ABA7A]
GO
/****** Object:  ForeignKey [FK__cliente_h__id_cl__1A14E395]    Script Date: 11/02/2019 22:13:07 ******/
ALTER TABLE [dbo].[cliente_habitacion] DROP CONSTRAINT [FK__cliente_h__id_cl__1A14E395]
GO
/****** Object:  ForeignKey [FK__cliente_h__id_ha__1B0907CE]    Script Date: 11/02/2019 22:13:07 ******/
ALTER TABLE [dbo].[cliente_habitacion] DROP CONSTRAINT [FK__cliente_h__id_ha__1B0907CE]
GO
/****** Object:  ForeignKey [FK__cliente_h__id_ha__1BFD2C07]    Script Date: 11/02/2019 22:13:07 ******/
ALTER TABLE [dbo].[cliente_habitacion] DROP CONSTRAINT [FK__cliente_h__id_ha__1BFD2C07]
GO
/****** Object:  Table [dbo].[cliente_habitacion]    Script Date: 11/02/2019 22:13:07 ******/
ALTER TABLE [dbo].[cliente_habitacion] DROP CONSTRAINT [FK__cliente_h__id_cl__1A14E395]
GO
ALTER TABLE [dbo].[cliente_habitacion] DROP CONSTRAINT [FK__cliente_h__id_ha__1B0907CE]
GO
ALTER TABLE [dbo].[cliente_habitacion] DROP CONSTRAINT [FK__cliente_h__id_ha__1BFD2C07]
GO
DROP TABLE [dbo].[cliente_habitacion]
GO
/****** Object:  View [dbo].[Clientes]    Script Date: 11/02/2019 22:13:07 ******/
DROP VIEW [dbo].[Clientes]
GO
/****** Object:  View [dbo].[Edades]    Script Date: 11/02/2019 22:13:07 ******/
DROP VIEW [dbo].[Edades]
GO
/****** Object:  View [dbo].[Numeros]    Script Date: 11/02/2019 22:13:07 ******/
DROP VIEW [dbo].[Numeros]
GO
/****** Object:  View [dbo].[Telefonos]    Script Date: 11/02/2019 22:13:07 ******/
DROP VIEW [dbo].[Telefonos]
GO
/****** Object:  Table [dbo].[transporte]    Script Date: 11/02/2019 22:13:07 ******/
ALTER TABLE [dbo].[transporte] DROP CONSTRAINT [FK__transport__servi__267ABA7A]
GO
DROP TABLE [dbo].[transporte]
GO
/****** Object:  View [dbo].[Paises]    Script Date: 11/02/2019 22:13:07 ******/
DROP VIEW [dbo].[Paises]
GO
/****** Object:  Table [dbo].[servicio_cuarto]    Script Date: 11/02/2019 22:13:06 ******/
ALTER TABLE [dbo].[servicio_cuarto] DROP CONSTRAINT [FK__servicio___servi__276EDEB3]
GO
DROP TABLE [dbo].[servicio_cuarto]
GO
/****** Object:  Table [dbo].[empleado]    Script Date: 11/02/2019 22:13:06 ******/
ALTER TABLE [dbo].[empleado] DROP CONSTRAINT [FK__empleado__id_pue__1CF15040]
GO
DROP TABLE [dbo].[empleado]
GO
/****** Object:  Table [dbo].[cliente]    Script Date: 11/02/2019 22:13:06 ******/
ALTER TABLE [dbo].[cliente] DROP CONSTRAINT [FK__cliente__id_naci__173876EA]
GO
ALTER TABLE [dbo].[cliente] DROP CONSTRAINT [FK__cliente__pago_id__182C9B23]
GO
DROP TABLE [dbo].[cliente]
GO
/****** Object:  Table [dbo].[habitacion]    Script Date: 11/02/2019 22:13:06 ******/
ALTER TABLE [dbo].[habitacion] DROP CONSTRAINT [FK__habitacio__estad__22AA2996]
GO
ALTER TABLE [dbo].[habitacion] DROP CONSTRAINT [FK__habitacio__id_ti__1FCDBCEB]
GO
ALTER TABLE [dbo].[habitacion] DROP CONSTRAINT [FK__habitacio__servi__20C1E124]
GO
ALTER TABLE [dbo].[habitacion] DROP CONSTRAINT [FK__habitacio__servi__21B6055D]
GO
DROP TABLE [dbo].[habitacion]
GO
/****** Object:  Table [dbo].[internet]    Script Date: 11/02/2019 22:13:06 ******/
ALTER TABLE [dbo].[internet] DROP CONSTRAINT [FK__internet__servic__239E4DCF]
GO
DROP TABLE [dbo].[internet]
GO
/****** Object:  Table [dbo].[limpieza]    Script Date: 11/02/2019 22:13:06 ******/
ALTER TABLE [dbo].[limpieza] DROP CONSTRAINT [FK__limpieza__servic__24927208]
GO
DROP TABLE [dbo].[limpieza]
GO
/****** Object:  Table [dbo].[masaje]    Script Date: 11/02/2019 22:13:06 ******/
ALTER TABLE [dbo].[masaje] DROP CONSTRAINT [FK__masaje__servicio__25869641]
GO
DROP TABLE [dbo].[masaje]
GO
/****** Object:  Table [dbo].[metodo_pago]    Script Date: 11/02/2019 22:13:06 ******/
DROP TABLE [dbo].[metodo_pago]
GO
/****** Object:  Table [dbo].[nacionalidad]    Script Date: 11/02/2019 22:13:06 ******/
DROP TABLE [dbo].[nacionalidad]
GO
/****** Object:  Table [dbo].[nombreapellido]    Script Date: 11/02/2019 22:13:06 ******/
DROP TABLE [dbo].[nombreapellido]
GO
/****** Object:  Table [dbo].[estado_habitacion]    Script Date: 11/02/2019 22:13:06 ******/
DROP TABLE [dbo].[estado_habitacion]
GO
/****** Object:  Table [dbo].[servicios]    Script Date: 11/02/2019 22:13:06 ******/
DROP TABLE [dbo].[servicios]
GO
/****** Object:  Table [dbo].[puestos]    Script Date: 11/02/2019 22:13:06 ******/
DROP TABLE [dbo].[puestos]
GO
/****** Object:  Table [dbo].[tipo_habitacion]    Script Date: 11/02/2019 22:13:06 ******/
DROP TABLE [dbo].[tipo_habitacion]
GO
/****** Object:  Table [dbo].[tipo_habitacion]    Script Date: 11/02/2019 22:13:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tipo_habitacion](
	[id_tipohabitacion] [int] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tipo_habitacion] PRIMARY KEY CLUSTERED 
(
	[id_tipohabitacion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[puestos]    Script Date: 11/02/2019 22:13:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[puestos](
	[id_puesto] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_puestos] PRIMARY KEY CLUSTERED 
(
	[id_puesto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[servicios]    Script Date: 11/02/2019 22:13:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[servicios](
	[servicio_id] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[precio] [int] NOT NULL,
 CONSTRAINT [PK_servicios] PRIMARY KEY CLUSTERED 
(
	[servicio_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[estado_habitacion]    Script Date: 11/02/2019 22:13:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[estado_habitacion](
	[estado_id] [int] NOT NULL,
	[descripcion] [varchar](15) NULL,
 CONSTRAINT [PK_estado_habitacion] PRIMARY KEY CLUSTERED 
(
	[estado_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[nombreapellido]    Script Date: 11/02/2019 22:13:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[nombreapellido](
	[nombre] [varchar](50) NOT NULL,
	[apellido] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[nombreapellido] ([nombre], [apellido]) VALUES (N'sofa', N'perez')
INSERT [dbo].[nombreapellido] ([nombre], [apellido]) VALUES (N'adrian', N'hdz')
INSERT [dbo].[nombreapellido] ([nombre], [apellido]) VALUES (N'cecila', N'perez')
INSERT [dbo].[nombreapellido] ([nombre], [apellido]) VALUES (N'eduardo', N'limon')
INSERT [dbo].[nombreapellido] ([nombre], [apellido]) VALUES (N'eduardo', N'perez')
/****** Object:  Table [dbo].[nacionalidad]    Script Date: 11/02/2019 22:13:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nacionalidad](
	[id_nacionalidad] [int] NOT NULL,
	[pais] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_nacionalidad] PRIMARY KEY CLUSTERED 
(
	[id_nacionalidad] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[nacionalidad] ([id_nacionalidad], [pais]) VALUES (1, N'argentina')
INSERT [dbo].[nacionalidad] ([id_nacionalidad], [pais]) VALUES (2, N'mexico')
INSERT [dbo].[nacionalidad] ([id_nacionalidad], [pais]) VALUES (3, N'uruguay')
INSERT [dbo].[nacionalidad] ([id_nacionalidad], [pais]) VALUES (6, N'holandes')
INSERT [dbo].[nacionalidad] ([id_nacionalidad], [pais]) VALUES (7, N'argentino')
INSERT [dbo].[nacionalidad] ([id_nacionalidad], [pais]) VALUES (8, N'colombiano')
INSERT [dbo].[nacionalidad] ([id_nacionalidad], [pais]) VALUES (9, N'puerto riqueño ')
INSERT [dbo].[nacionalidad] ([id_nacionalidad], [pais]) VALUES (10, N'hindu')
/****** Object:  Table [dbo].[metodo_pago]    Script Date: 11/02/2019 22:13:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[metodo_pago](
	[pago_id] [int] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_metodo_pago] PRIMARY KEY CLUSTERED 
(
	[pago_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[metodo_pago] ([pago_id], [descripcion]) VALUES (1, N'Efectivo')
INSERT [dbo].[metodo_pago] ([pago_id], [descripcion]) VALUES (2, N'Tarjeta')
/****** Object:  Table [dbo].[masaje]    Script Date: 11/02/2019 22:13:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[masaje](
	[masaje_id] [int] NOT NULL,
	[servicio_id] [int] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_masaje] PRIMARY KEY CLUSTERED 
(
	[masaje_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[limpieza]    Script Date: 11/02/2019 22:13:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[limpieza](
	[servicio_id] [int] NOT NULL,
	[limpieza_id] [int] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_limpieza] PRIMARY KEY CLUSTERED 
(
	[limpieza_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[internet]    Script Date: 11/02/2019 22:13:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[internet](
	[servicio_id] [int] NOT NULL,
	[internet_id] [int] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_internet] PRIMARY KEY CLUSTERED 
(
	[internet_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[habitacion]    Script Date: 11/02/2019 22:13:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[habitacion](
	[id_habitacion] [int] NOT NULL,
	[id_tipohabitacion] [int] NOT NULL,
	[servicio_id] [int] NULL,
	[estado_id] [int] NOT NULL,
 CONSTRAINT [PK_habitacion] PRIMARY KEY CLUSTERED 
(
	[id_habitacion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cliente]    Script Date: 11/02/2019 22:13:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cliente](
	[id_cliente] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellido] [varchar](50) NOT NULL,
	[edad] [int] NOT NULL,
	[id_nacionalidad] [int] NOT NULL,
	[telefono] [int] NOT NULL,
	[pago_id] [int] NOT NULL,
 CONSTRAINT [PK_cliente] PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (100, N'Alfred', N'perez', 25, 1, 896578, 1)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (101, N'diego', N'vitela', 20, 2, 8245128, 1)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (102, N'sergio', N'perez', 30, 1, 125842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (103, N'david', N'perez', 33, 1, 125842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (104, N'sergio', N'sego', 35, 1, 125842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (105, N'eduardo', N'cantu', 35, 1, 125842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (106, N'gerardo', N'garza', 38, 1, 125842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (107, N'sofa', N'perez', 32, 1, 125842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (108, N'anahia', N'rosa', 30, 1, 125842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (109, N'ana', N'limon', 65, 1, 125842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (110, N'rosa', N'solis', 67, 1, 125842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (111, N'elva', N'ancira', 30, 1, 125842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (112, N'cecila', N'perez', 45, 1, 125842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (113, N'sergio', N'rdz', 34, 1, 125842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (114, N'adrian', N'hdz', 32, 1, 125842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (115, N'robert', N'hdz', 45, 1, 125842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (116, N'ivonne', N'garza', 36, 1, 125842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (117, N'larissa', N'garza', 45, 1, 125842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (123, N'Ruby', N'perez', 56, 1, 125842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (124, N'daniel', N'garza', 76, 1, 125842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (125, N'ever', N'perez', 76, 1, 125842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (126, N'ever', N'hdz', 34, 1, 125842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (127, N'jose', N'garza', 23, 1, 125842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (128, N'´marco', N'perez', 23, 1, 125842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (129, N'david', N'perez', 54, 1, 125842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (130, N'sergio', N'garza', 45, 1, 125842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (131, N'sergio', N'perez', 65, 1, 125842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (132, N'sergio', N'hzd', 43, 1, 125842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (133, N'cecila', N'perez', 32, 1, 125842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (134, N'anahia', N'perez', 65, 1, 125842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (135, N'rosa', N'garza', 43, 1, 125842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (136, N'fer', N'perez', 65, 1, 125842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (137, N'alex', N'perez', 56, 1, 125842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (138, N'david', N'rdz', 45, 1, 125842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (139, N'alex', N'garza', 34, 1, 125842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (140, N'pedro', N'cantu', 43, 1, 125842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (141, N'cesar', N'perez', 54, 1, 125842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (142, N'uriel', N'garcia', 43, 1, 125842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (143, N'david', N'garcia', 34, 1, 125842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (144, N'diego', N'garza', 23, 1, 125842, 1)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (145, N'eduardo', N'limon', 32, 1, 143455, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (146, N'ana', N'perez', 65, 1, 12554, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (147, N'abby', N'perez', 30, 1, 125842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (148, N'pedro', N'perez', 45, 1, 132432, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (149, N'sergio', N'cantu', 54, 1, 143342, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (150, N'eder', N'perez', 76, 1, 176526, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (151, N'rodo', N'perez', 86, 1, 12674432, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (152, N'sergio', N'cantu', 65, 1, 13342, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (153, N'hector', N'limon', 46, 1, 13442, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (154, N'fer', N'hdz', 54, 1, 13442, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (155, N'alex', N'perez', 34, 1, 547542, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (156, N'david', N'cantu', 34, 1, 12342, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (157, N'cesar', N'venegas', 34, 1, 67842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (158, N'anahi ', N'perez', 23, 1, 23842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (159, N'camila', N'garza', 65, 1, 675842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (160, N'fer', N'cantu', 36, 1, 1655842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (161, N'ivonne', N'perez', 76, 1, 545842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (162, N'anahi', N'perez', 87, 1, 143842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (163, N'ana', N'perez', 30, 1, 143842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (164, N'liza', N'solis', 65, 1, 134842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (165, N'damian', N'garza', 34, 1, 134842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (166, N'fer', N'cantu', 34, 1, 12842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (167, N'sergio', N'villa', 23, 1, 122842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (168, N'roberto', N'villa', 45, 1, 125842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (169, N'sergio', N'limon', 45, 1, 1435842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (170, N'eduardo', N'lona', 75, 1, 15842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (171, N'sergio', N'limon', 43, 1, 145842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (172, N'sergio', N'perez', 34, 1, 675842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (173, N'sergio', N'cantu', 23, 1, 1765842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (174, N'pedro', N'perez', 65, 1, 165842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (175, N'david', N'perez', 67, 1, 1265842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (176, N'adrian', N'cantu', 45, 1, 1642, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (177, N'sergio', N'garza', 34, 1, 15842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (178, N'sergio', N'rdz', 23, 1, 16842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (180, N'ana', N'villa', 76, 1, 175842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (181, N'abby', N'perez', 54, 1, 125742, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (182, N'damian', N'perez', 34, 1, 1256742, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (183, N'eduardo', N'perez', 32, 1, 125672, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (184, N'sergio', N'villa', 54, 1, 125672, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (185, N'sergio', N'limon', 56, 1, 125662, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (186, N'luis', N'villa', 54, 1, 125552, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (187, N'sergio', N'ancira', 376, 1, 12552, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (188, N'rosa', N'perez', 30, 1, 124442, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (189, N'fer', N'perez', 35, 1, 125842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (190, N'pedro', N'ancira', 67, 1, 1255642, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (191, N'javier', N'solis', 67, 1, 125842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (192, N'fer', N'perez', 34, 1, 125562, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (193, N'sergio', N'garza', 65, 1, 125452, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (194, N'david', N'garza', 67, 1, 12342, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (195, N'sergio', N'rdz', 34, 1, 134442, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (196, N'ana', N'perez', 78, 1, 14342, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (197, N'fer', N'perez', 76, 1, 6543842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (198, N'sergio', N'ramirez', 45, 1, 14542, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (199, N'fer', N'ramirez', 23, 1, 123842, 2)
INSERT [dbo].[cliente] ([id_cliente], [nombre], [apellido], [edad], [id_nacionalidad], [telefono], [pago_id]) VALUES (200, N'david', N'perez', 45, 1, 145842, 2)
/****** Object:  Table [dbo].[empleado]    Script Date: 11/02/2019 22:13:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[empleado](
	[id_empleado] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellido] [varchar](50) NOT NULL,
	[telefono] [int] NOT NULL,
	[direccion] [varchar](50) NOT NULL,
	[id_puesto] [int] NOT NULL,
	[salario] [int] NOT NULL,
 CONSTRAINT [PK_empleado] PRIMARY KEY CLUSTERED 
(
	[id_empleado] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[servicio_cuarto]    Script Date: 11/02/2019 22:13:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[servicio_cuarto](
	[servicio_id] [int] NOT NULL,
	[cuarto_id] [int] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_servicio_cuarto] PRIMARY KEY CLUSTERED 
(
	[cuarto_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[Paises]    Script Date: 11/02/2019 22:13:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Paises] as
select pais from nacionalidad
GO
/****** Object:  Table [dbo].[transporte]    Script Date: 11/02/2019 22:13:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[transporte](
	[servicio_id] [int] NOT NULL,
	[viaje_id] [int] NOT NULL,
	[fechasalida] [date] NOT NULL,
	[fechallegada] [date] NOT NULL,
	[hora] [time](7) NOT NULL,
 CONSTRAINT [PK_transporte] PRIMARY KEY CLUSTERED 
(
	[viaje_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Telefonos]    Script Date: 11/02/2019 22:13:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Telefonos] as
select telefono from cliente
GO
/****** Object:  View [dbo].[Numeros]    Script Date: 11/02/2019 22:13:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Numeros] as
select id_cliente from cliente
GO
/****** Object:  View [dbo].[Edades]    Script Date: 11/02/2019 22:13:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Edades] as
select edad from cliente
GO
/****** Object:  View [dbo].[Clientes]    Script Date: 11/02/2019 22:13:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Clientes] as 
select nombre from cliente
GO
/****** Object:  Table [dbo].[cliente_habitacion]    Script Date: 11/02/2019 22:13:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cliente_habitacion](
	[id_cliente] [int] NOT NULL,
	[id_habitacion] [int] NOT NULL,
	[fechaentrada] [date] NOT NULL,
	[fechasalida] [date] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK__masaje__servicio__25869641]    Script Date: 11/02/2019 22:13:06 ******/
ALTER TABLE [dbo].[masaje]  WITH CHECK ADD FOREIGN KEY([servicio_id])
REFERENCES [dbo].[servicios] ([servicio_id])
GO
/****** Object:  ForeignKey [FK__limpieza__servic__24927208]    Script Date: 11/02/2019 22:13:06 ******/
ALTER TABLE [dbo].[limpieza]  WITH CHECK ADD FOREIGN KEY([servicio_id])
REFERENCES [dbo].[servicios] ([servicio_id])
GO
/****** Object:  ForeignKey [FK__internet__servic__239E4DCF]    Script Date: 11/02/2019 22:13:06 ******/
ALTER TABLE [dbo].[internet]  WITH CHECK ADD FOREIGN KEY([servicio_id])
REFERENCES [dbo].[servicios] ([servicio_id])
GO
/****** Object:  ForeignKey [FK__habitacio__estad__22AA2996]    Script Date: 11/02/2019 22:13:06 ******/
ALTER TABLE [dbo].[habitacion]  WITH CHECK ADD FOREIGN KEY([estado_id])
REFERENCES [dbo].[estado_habitacion] ([estado_id])
GO
/****** Object:  ForeignKey [FK__habitacio__id_ti__1FCDBCEB]    Script Date: 11/02/2019 22:13:06 ******/
ALTER TABLE [dbo].[habitacion]  WITH CHECK ADD FOREIGN KEY([id_tipohabitacion])
REFERENCES [dbo].[tipo_habitacion] ([id_tipohabitacion])
GO
/****** Object:  ForeignKey [FK__habitacio__servi__20C1E124]    Script Date: 11/02/2019 22:13:06 ******/
ALTER TABLE [dbo].[habitacion]  WITH CHECK ADD FOREIGN KEY([servicio_id])
REFERENCES [dbo].[servicios] ([servicio_id])
GO
/****** Object:  ForeignKey [FK__habitacio__servi__21B6055D]    Script Date: 11/02/2019 22:13:06 ******/
ALTER TABLE [dbo].[habitacion]  WITH CHECK ADD FOREIGN KEY([servicio_id])
REFERENCES [dbo].[servicios] ([servicio_id])
GO
/****** Object:  ForeignKey [FK__cliente__id_naci__173876EA]    Script Date: 11/02/2019 22:13:06 ******/
ALTER TABLE [dbo].[cliente]  WITH CHECK ADD FOREIGN KEY([id_nacionalidad])
REFERENCES [dbo].[nacionalidad] ([id_nacionalidad])
GO
/****** Object:  ForeignKey [FK__cliente__pago_id__182C9B23]    Script Date: 11/02/2019 22:13:06 ******/
ALTER TABLE [dbo].[cliente]  WITH CHECK ADD FOREIGN KEY([pago_id])
REFERENCES [dbo].[metodo_pago] ([pago_id])
GO
/****** Object:  ForeignKey [FK__empleado__id_pue__1CF15040]    Script Date: 11/02/2019 22:13:06 ******/
ALTER TABLE [dbo].[empleado]  WITH CHECK ADD FOREIGN KEY([id_puesto])
REFERENCES [dbo].[puestos] ([id_puesto])
GO
/****** Object:  ForeignKey [FK__servicio___servi__276EDEB3]    Script Date: 11/02/2019 22:13:06 ******/
ALTER TABLE [dbo].[servicio_cuarto]  WITH CHECK ADD FOREIGN KEY([servicio_id])
REFERENCES [dbo].[servicios] ([servicio_id])
GO
/****** Object:  ForeignKey [FK__transport__servi__267ABA7A]    Script Date: 11/02/2019 22:13:07 ******/
ALTER TABLE [dbo].[transporte]  WITH CHECK ADD FOREIGN KEY([servicio_id])
REFERENCES [dbo].[servicios] ([servicio_id])
GO
/****** Object:  ForeignKey [FK__cliente_h__id_cl__1A14E395]    Script Date: 11/02/2019 22:13:07 ******/
ALTER TABLE [dbo].[cliente_habitacion]  WITH CHECK ADD FOREIGN KEY([id_cliente])
REFERENCES [dbo].[cliente] ([id_cliente])
GO
/****** Object:  ForeignKey [FK__cliente_h__id_ha__1B0907CE]    Script Date: 11/02/2019 22:13:07 ******/
ALTER TABLE [dbo].[cliente_habitacion]  WITH CHECK ADD FOREIGN KEY([id_habitacion])
REFERENCES [dbo].[habitacion] ([id_habitacion])
GO
/****** Object:  ForeignKey [FK__cliente_h__id_ha__1BFD2C07]    Script Date: 11/02/2019 22:13:07 ******/
ALTER TABLE [dbo].[cliente_habitacion]  WITH CHECK ADD FOREIGN KEY([id_habitacion])
REFERENCES [dbo].[habitacion] ([id_habitacion])
GO
