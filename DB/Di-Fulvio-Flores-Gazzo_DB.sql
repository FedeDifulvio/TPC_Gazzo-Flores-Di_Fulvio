USE [master]
GO
/****** Object:  Database [DiFulvio_Flores_Gazzo_DB]    Script Date: 24/6/2021 15:31:06 ******/
CREATE DATABASE [DiFulvio_Flores_Gazzo_DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DiFulvio_Flores_Gazzo_DB', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DiFulvio_Flores_Gazzo_DB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DiFulvio_Flores_Gazzo_DB_log', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DiFulvio_Flores_Gazzo_DB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DiFulvio_Flores_Gazzo_DB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DiFulvio_Flores_Gazzo_DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DiFulvio_Flores_Gazzo_DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DiFulvio_Flores_Gazzo_DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DiFulvio_Flores_Gazzo_DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DiFulvio_Flores_Gazzo_DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DiFulvio_Flores_Gazzo_DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [DiFulvio_Flores_Gazzo_DB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DiFulvio_Flores_Gazzo_DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DiFulvio_Flores_Gazzo_DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DiFulvio_Flores_Gazzo_DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DiFulvio_Flores_Gazzo_DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DiFulvio_Flores_Gazzo_DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DiFulvio_Flores_Gazzo_DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DiFulvio_Flores_Gazzo_DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DiFulvio_Flores_Gazzo_DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DiFulvio_Flores_Gazzo_DB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DiFulvio_Flores_Gazzo_DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DiFulvio_Flores_Gazzo_DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DiFulvio_Flores_Gazzo_DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DiFulvio_Flores_Gazzo_DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DiFulvio_Flores_Gazzo_DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DiFulvio_Flores_Gazzo_DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DiFulvio_Flores_Gazzo_DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DiFulvio_Flores_Gazzo_DB] SET RECOVERY FULL 
GO
ALTER DATABASE [DiFulvio_Flores_Gazzo_DB] SET  MULTI_USER 
GO
ALTER DATABASE [DiFulvio_Flores_Gazzo_DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DiFulvio_Flores_Gazzo_DB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DiFulvio_Flores_Gazzo_DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DiFulvio_Flores_Gazzo_DB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DiFulvio_Flores_Gazzo_DB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DiFulvio_Flores_Gazzo_DB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DiFulvio_Flores_Gazzo_DB', N'ON'
GO
ALTER DATABASE [DiFulvio_Flores_Gazzo_DB] SET QUERY_STORE = OFF
GO
USE [DiFulvio_Flores_Gazzo_DB]
GO
/****** Object:  Table [dbo].[ObraSocial]    Script Date: 24/6/2021 15:31:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ObraSocial](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pacientes]    Script Date: 24/6/2021 15:31:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pacientes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](30) NOT NULL,
	[Apellido] [varchar](30) NOT NULL,
	[DNI] [varchar](15) NOT NULL,
	[Direccion] [varchar](50) NOT NULL,
	[FechaNacimiento] [date] NOT NULL,
	[Mail] [varchar](50) NOT NULL,
	[Telefono] [varchar](20) NOT NULL,
	[IdObraSocial] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ObraSocial] ON 

INSERT [dbo].[ObraSocial] ([ID], [Nombre]) VALUES (1, N'OSDE')
INSERT [dbo].[ObraSocial] ([ID], [Nombre]) VALUES (2, N'Swiss Medical')
INSERT [dbo].[ObraSocial] ([ID], [Nombre]) VALUES (3, N'Omint')
INSERT [dbo].[ObraSocial] ([ID], [Nombre]) VALUES (4, N'Osecac')
INSERT [dbo].[ObraSocial] ([ID], [Nombre]) VALUES (5, N'Ioma')
INSERT [dbo].[ObraSocial] ([ID], [Nombre]) VALUES (6, N'OSDE')
INSERT [dbo].[ObraSocial] ([ID], [Nombre]) VALUES (7, N'Swiss Medical')
INSERT [dbo].[ObraSocial] ([ID], [Nombre]) VALUES (8, N'Omint')
INSERT [dbo].[ObraSocial] ([ID], [Nombre]) VALUES (9, N'Osecac')
INSERT [dbo].[ObraSocial] ([ID], [Nombre]) VALUES (10, N'Ioma')
SET IDENTITY_INSERT [dbo].[ObraSocial] OFF
GO
SET IDENTITY_INSERT [dbo].[Pacientes] ON 

INSERT [dbo].[Pacientes] ([ID], [Nombre], [Apellido], [DNI], [Direccion], [FechaNacimiento], [Mail], [Telefono], [IdObraSocial]) VALUES (18, N'Carlos', N'Lopez', N'39888777', N'Calle falsa 123', CAST(N'1998-09-09' AS Date), N'crodriguez@gmail.com', N'15342312', 1)
INSERT [dbo].[Pacientes] ([ID], [Nombre], [Apellido], [DNI], [Direccion], [FechaNacimiento], [Mail], [Telefono], [IdObraSocial]) VALUES (19, N'Sergio', N'Aguero', N'23456789', N'Independiente 77', CAST(N'1990-08-10' AS Date), N'aaguero@gmail.com', N'1135347689', 1)
INSERT [dbo].[Pacientes] ([ID], [Nombre], [Apellido], [DNI], [Direccion], [FechaNacimiento], [Mail], [Telefono], [IdObraSocial]) VALUES (21, N'Lionel', N'Messi', N'67894323', N'Barcelona 567', CAST(N'1987-08-24' AS Date), N'lmessi@gmal.com', N'15678909', 2)
INSERT [dbo].[Pacientes] ([ID], [Nombre], [Apellido], [DNI], [Direccion], [FechaNacimiento], [Mail], [Telefono], [IdObraSocial]) VALUES (22, N'Juan', N'Lopez', N'254534213', N'Av.Peron 22', CAST(N'1980-11-11' AS Date), N'jlopez@gmail.com', N'15345678', 2)
INSERT [dbo].[Pacientes] ([ID], [Nombre], [Apellido], [DNI], [Direccion], [FechaNacimiento], [Mail], [Telefono], [IdObraSocial]) VALUES (23, N'Tomas', N'Gonzalez', N'33445566', N'Gral Diaz 556', CAST(N'1998-08-08' AS Date), N'tgonzalez@gmail.com', N'11234569', 2)
INSERT [dbo].[Pacientes] ([ID], [Nombre], [Apellido], [DNI], [Direccion], [FechaNacimiento], [Mail], [Telefono], [IdObraSocial]) VALUES (25, N'Julio', N'Hernandez', N'15346787', N'siberia 445', CAST(N'1950-08-12' AS Date), N'juhernandez@yahoo.com', N'155555543', 1)
INSERT [dbo].[Pacientes] ([ID], [Nombre], [Apellido], [DNI], [Direccion], [FechaNacimiento], [Mail], [Telefono], [IdObraSocial]) VALUES (26, N'Anastasia', N'Gomez', N'1256532', N'Ramos 334', CAST(N'1980-08-05' AS Date), N'agomez@gmial.com', N'1155443221', 3)
INSERT [dbo].[Pacientes] ([ID], [Nombre], [Apellido], [DNI], [Direccion], [FechaNacimiento], [Mail], [Telefono], [IdObraSocial]) VALUES (27, N'Maria', N'Fernandez', N'1135213454', N'Av.Santa Fé 10', CAST(N'1995-09-05' AS Date), N'mFernandez@gmail.com', N'1122679854', 3)
INSERT [dbo].[Pacientes] ([ID], [Nombre], [Apellido], [DNI], [Direccion], [FechaNacimiento], [Mail], [Telefono], [IdObraSocial]) VALUES (29, N'Maria', N'Simon', N'39887766', N'Alvear 56', CAST(N'1998-07-09' AS Date), N'msimon@gmail.com', N'23452312', 3)
INSERT [dbo].[Pacientes] ([ID], [Nombre], [Apellido], [DNI], [Direccion], [FechaNacimiento], [Mail], [Telefono], [IdObraSocial]) VALUES (30, N'Julieta', N'Ayala', N'39921387', N'Marconi 3456', CAST(N'1997-09-09' AS Date), N'jayala@gmail.com', N'11225643', 2)
INSERT [dbo].[Pacientes] ([ID], [Nombre], [Apellido], [DNI], [Direccion], [FechaNacimiento], [Mail], [Telefono], [IdObraSocial]) VALUES (31, N'Angel', N'Lopez', N'20986745', N'Lonardi 34', CAST(N'1945-09-08' AS Date), N'alopez@yahoo.com', N'4745-7865', 1)
INSERT [dbo].[Pacientes] ([ID], [Nombre], [Apellido], [DNI], [Direccion], [FechaNacimiento], [Mail], [Telefono], [IdObraSocial]) VALUES (32, N'Maximiliano', N'Gonzalez', N'29875623', N'Sucre 3456', CAST(N'1976-09-08' AS Date), N'mgonzalez@yahoo.com', N'11239098', 1)
INSERT [dbo].[Pacientes] ([ID], [Nombre], [Apellido], [DNI], [Direccion], [FechaNacimiento], [Mail], [Telefono], [IdObraSocial]) VALUES (33, N'Elias', N'Valenzuela', N'38097654', N'Pacheco 23', CAST(N'1997-08-06' AS Date), N'evalenzuela@gmail.com', N'153421565', 3)
INSERT [dbo].[Pacientes] ([ID], [Nombre], [Apellido], [DNI], [Direccion], [FechaNacimiento], [Mail], [Telefono], [IdObraSocial]) VALUES (34, N'Jose', N'Fernandez', N'234512134', N'las Heras 15', CAST(N'1978-08-09' AS Date), N'jfernandez@gmail.com', N'1534126789', 1)
INSERT [dbo].[Pacientes] ([ID], [Nombre], [Apellido], [DNI], [Direccion], [FechaNacimiento], [Mail], [Telefono], [IdObraSocial]) VALUES (35, N'Pablo', N'Escobar', N'34567656', N'Colombia 2345', CAST(N'1984-02-01' AS Date), N'pescobar@gmail.com', N'11345678', 4)
SET IDENTITY_INSERT [dbo].[Pacientes] OFF
GO
ALTER TABLE [dbo].[Pacientes]  WITH CHECK ADD FOREIGN KEY([IdObraSocial])
REFERENCES [dbo].[ObraSocial] ([ID])
GO
USE [master]
GO
ALTER DATABASE [DiFulvio_Flores_Gazzo_DB] SET  READ_WRITE 
GO
