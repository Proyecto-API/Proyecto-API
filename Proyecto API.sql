-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: proyectoapi
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `administrador`
--

DROP TABLE IF EXISTS `administrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrador` (
  `idAdministrador` int(5) NOT NULL,
  `idUsuario` int(10) NOT NULL,
  `fechaAsignacion` date NOT NULL,
  PRIMARY KEY (`idAdministrador`),
  KEY `idUsuario` (`idUsuario`),
  CONSTRAINT `administrador_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrador`
--

LOCK TABLES `administrador` WRITE;
/*!40000 ALTER TABLE `administrador` DISABLE KEYS */;
/*!40000 ALTER TABLE `administrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cantidadproducto`
--

DROP TABLE IF EXISTS `cantidadproducto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cantidadproducto` (
  `idProducto` int(10) NOT NULL,
  `cantidadProducto` int(10) NOT NULL,
  KEY `idProducto` (`idProducto`),
  CONSTRAINT `cantidadproducto_ibfk_1` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cantidadproducto`
--

LOCK TABLES `cantidadproducto` WRITE;
/*!40000 ALTER TABLE `cantidadproducto` DISABLE KEYS */;
/*!40000 ALTER TABLE `cantidadproducto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoriaproducto`
--

DROP TABLE IF EXISTS `categoriaproducto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoriaproducto` (
  `idCategoria` int(8) NOT NULL,
  `nombreCategoria` varchar(20) NOT NULL,
  PRIMARY KEY (`idCategoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoriaproducto`
--

LOCK TABLES `categoriaproducto` WRITE;
/*!40000 ALTER TABLE `categoriaproducto` DISABLE KEYS */;
/*!40000 ALTER TABLE `categoriaproducto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direccion_pedido`
--

DROP TABLE IF EXISTS `direccion_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `direccion_pedido` (
  `idPedido` int(10) NOT NULL,
  `idDireccionPedido` int(8) NOT NULL,
  KEY `idPedido` (`idPedido`),
  KEY `idDireccionPedido` (`idDireccionPedido`),
  CONSTRAINT `direccion_pedido_ibfk_1` FOREIGN KEY (`idPedido`) REFERENCES `pedido` (`idPedido`),
  CONSTRAINT `direccion_pedido_ibfk_2` FOREIGN KEY (`idDireccionPedido`) REFERENCES `direccionpedido` (`idDireccionPedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direccion_pedido`
--

LOCK TABLES `direccion_pedido` WRITE;
/*!40000 ALTER TABLE `direccion_pedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `direccion_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direccion_usuario`
--

DROP TABLE IF EXISTS `direccion_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `direccion_usuario` (
  `idDireccionUsuario` int(10) NOT NULL,
  `idUsuario` int(10) NOT NULL,
  KEY `idDireccionUsuario` (`idDireccionUsuario`),
  KEY `idUsuario` (`idUsuario`),
  CONSTRAINT `direccion_usuario_ibfk_1` FOREIGN KEY (`idDireccionUsuario`) REFERENCES `direccionusuario` (`idDireccionUsuario`),
  CONSTRAINT `direccion_usuario_ibfk_2` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direccion_usuario`
--

LOCK TABLES `direccion_usuario` WRITE;
/*!40000 ALTER TABLE `direccion_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `direccion_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direccionpedido`
--

DROP TABLE IF EXISTS `direccionpedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `direccionpedido` (
  `idDireccionPedido` int(8) NOT NULL,
  `direccionPedido` varchar(20) NOT NULL,
  `ciudadPedido` tinytext NOT NULL,
  `barrioPedido` varchar(15) NOT NULL,
  PRIMARY KEY (`idDireccionPedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direccionpedido`
--

LOCK TABLES `direccionpedido` WRITE;
/*!40000 ALTER TABLE `direccionpedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `direccionpedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direccionusuario`
--

DROP TABLE IF EXISTS `direccionusuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `direccionusuario` (
  `idDireccionUsuario` int(10) NOT NULL,
  `direccionUsuario` varchar(30) NOT NULL,
  `barrioUsuario` varchar(29) NOT NULL,
  `localidadUsuario` varchar(28) NOT NULL,
  `ciudadUsuario` varchar(27) NOT NULL,
  PRIMARY KEY (`idDireccionUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direccionusuario`
--

LOCK TABLES `direccionusuario` WRITE;
/*!40000 ALTER TABLE `direccionusuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `direccionusuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_usuario`
--

DROP TABLE IF EXISTS `email_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_usuario` (
  `idEmail` int(5) NOT NULL,
  `idUsuario` int(10) NOT NULL,
  KEY `idEmail` (`idEmail`),
  KEY `idUsuario` (`idUsuario`),
  CONSTRAINT `email_usuario_ibfk_1` FOREIGN KEY (`idEmail`) REFERENCES `emailusuario` (`idEmail`),
  CONSTRAINT `email_usuario_ibfk_2` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_usuario`
--

LOCK TABLES `email_usuario` WRITE;
/*!40000 ALTER TABLE `email_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailusuario`
--

DROP TABLE IF EXISTS `emailusuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emailusuario` (
  `idEmail` int(5) NOT NULL,
  `emailUsuario` varchar(20) NOT NULL,
  `contraseñaUsuario` varchar(8) NOT NULL,
  PRIMARY KEY (`idEmail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailusuario`
--

LOCK TABLES `emailusuario` WRITE;
/*!40000 ALTER TABLE `emailusuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `emailusuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado_pedido`
--

DROP TABLE IF EXISTS `estado_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado_pedido` (
  `idPedido` int(10) NOT NULL,
  `idEstadoPedido` int(9) NOT NULL,
  KEY `idPedido` (`idPedido`),
  KEY `idEstadoPedido` (`idEstadoPedido`),
  CONSTRAINT `estado_pedido_ibfk_1` FOREIGN KEY (`idPedido`) REFERENCES `pedido` (`idPedido`),
  CONSTRAINT `estado_pedido_ibfk_2` FOREIGN KEY (`idEstadoPedido`) REFERENCES `estadopedido` (`idEstadoPedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_pedido`
--

LOCK TABLES `estado_pedido` WRITE;
/*!40000 ALTER TABLE `estado_pedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `estado_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estadopedido`
--

DROP TABLE IF EXISTS `estadopedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estadopedido` (
  `idEstadoPedido` int(9) NOT NULL,
  `estadoPedido` tinytext NOT NULL,
  PRIMARY KEY (`idEstadoPedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estadopedido`
--

LOCK TABLES `estadopedido` WRITE;
/*!40000 ALTER TABLE `estadopedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `estadopedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fechapedido`
--

DROP TABLE IF EXISTS `fechapedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fechapedido` (
  `idPedido` int(10) NOT NULL,
  `fechaInicialPedido` date NOT NULL,
  `fechaFinalPedido` date NOT NULL,
  PRIMARY KEY (`idPedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fechapedido`
--

LOCK TABLES `fechapedido` WRITE;
/*!40000 ALTER TABLE `fechapedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `fechapedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fechaproducto`
--

DROP TABLE IF EXISTS `fechaproducto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fechaproducto` (
  `idProducto` int(10) NOT NULL,
  `fechaFabricacionProducto` date NOT NULL,
  `fechaCaducidadProducto` date NOT NULL,
  KEY `idProducto` (`idProducto`),
  CONSTRAINT `fechaproducto_ibfk_1` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fechaproducto`
--

LOCK TABLES `fechaproducto` WRITE;
/*!40000 ALTER TABLE `fechaproducto` DISABLE KEYS */;
/*!40000 ALTER TABLE `fechaproducto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fechastock`
--

DROP TABLE IF EXISTS `fechastock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fechastock` (
  `idProducto` int(10) NOT NULL,
  `fechaIngresoStock` date NOT NULL,
  `fechaSalidaStock` date NOT NULL,
  KEY `idProducto` (`idProducto`),
  CONSTRAINT `fechastock_ibfk_1` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fechastock`
--

LOCK TABLES `fechastock` WRITE;
/*!40000 ALTER TABLE `fechastock` DISABLE KEYS */;
/*!40000 ALTER TABLE `fechastock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nombrecantidadstock`
--

DROP TABLE IF EXISTS `nombrecantidadstock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nombrecantidadstock` (
  `idProducto` int(10) NOT NULL,
  `cantidadStock` int(10) NOT NULL,
  `nombreProducto` varchar(15) NOT NULL,
  `categoriaProducto` varchar(10) NOT NULL,
  KEY `idProducto` (`idProducto`),
  CONSTRAINT `nombrecantidadstock_ibfk_1` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nombrecantidadstock`
--

LOCK TABLES `nombrecantidadstock` WRITE;
/*!40000 ALTER TABLE `nombrecantidadstock` DISABLE KEYS */;
/*!40000 ALTER TABLE `nombrecantidadstock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `idPedido` int(10) NOT NULL,
  `idVendedor` int(5) NOT NULL,
  `idAdministrador` int(5) NOT NULL,
  PRIMARY KEY (`idPedido`),
  KEY `idVendedor` (`idVendedor`),
  KEY `idAdministrador` (`idAdministrador`),
  CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`idVendedor`) REFERENCES `vendedor` (`idVendedor`),
  CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`idAdministrador`) REFERENCES `administrador` (`idAdministrador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_producto`
--

DROP TABLE IF EXISTS `pedido_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido_producto` (
  `idPedido` int(10) NOT NULL,
  `idProducto` int(10) NOT NULL,
  KEY `idPedido` (`idPedido`),
  KEY `idProducto` (`idProducto`),
  CONSTRAINT `pedido_producto_ibfk_1` FOREIGN KEY (`idPedido`) REFERENCES `pedido` (`idPedido`),
  CONSTRAINT `pedido_producto_ibfk_2` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_producto`
--

LOCK TABLES `pedido_producto` WRITE;
/*!40000 ALTER TABLE `pedido_producto` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `idProducto` int(10) NOT NULL,
  `nombreProducto` varchar(15) NOT NULL,
  PRIMARY KEY (`idProducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto_categoria`
--

DROP TABLE IF EXISTS `producto_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto_categoria` (
  `idProducto` int(10) NOT NULL,
  `idCategoria` int(10) NOT NULL,
  KEY `idProducto` (`idProducto`),
  KEY `idCategoria` (`idCategoria`),
  CONSTRAINT `producto_categoria_ibfk_1` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`),
  CONSTRAINT `producto_categoria_ibfk_2` FOREIGN KEY (`idCategoria`) REFERENCES `categoriaproducto` (`idCategoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto_categoria`
--

LOCK TABLES `producto_categoria` WRITE;
/*!40000 ALTER TABLE `producto_categoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `producto_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock` (
  `idProducto` int(10) NOT NULL,
  `cantidadStock` int(10) NOT NULL,
  KEY `idProducto` (`idProducto`),
  CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefono_usuario`
--

DROP TABLE IF EXISTS `telefono_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefono_usuario` (
  `idTelefonoUsuario` int(10) NOT NULL,
  `idUsuario` int(10) NOT NULL,
  KEY `idTelefonoUsuario` (`idTelefonoUsuario`),
  KEY `idUsuario` (`idUsuario`),
  CONSTRAINT `telefono_usuario_ibfk_1` FOREIGN KEY (`idTelefonoUsuario`) REFERENCES `telefonousuario` (`idTelefonoUsuario`),
  CONSTRAINT `telefono_usuario_ibfk_2` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefono_usuario`
--

LOCK TABLES `telefono_usuario` WRITE;
/*!40000 ALTER TABLE `telefono_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `telefono_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefonousuario`
--

DROP TABLE IF EXISTS `telefonousuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefonousuario` (
  `idTelefonoUsuario` int(5) NOT NULL,
  `telefonoUsuario` decimal(10,0) NOT NULL,
  `indicativoUsuario` varchar(5) NOT NULL,
  PRIMARY KEY (`idTelefonoUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefonousuario`
--

LOCK TABLES `telefonousuario` WRITE;
/*!40000 ALTER TABLE `telefonousuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `telefonousuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `idUsuario` int(10) NOT NULL,
  `primerNombreUsuario` tinytext NOT NULL,
  `segundoNombreUsuario` tinytext,
  `primerApellidoUsuario` tinytext NOT NULL,
  `segundoApellidoUsuario` tinytext,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendedor`
--

DROP TABLE IF EXISTS `vendedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendedor` (
  `idVendedor` int(5) NOT NULL,
  `idUsuario` int(10) NOT NULL,
  PRIMARY KEY (`idVendedor`),
  KEY `idUsuario` (`idUsuario`),
  CONSTRAINT `vendedor_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendedor`
--

LOCK TABLES `vendedor` WRITE;
/*!40000 ALTER TABLE `vendedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendedor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-23 19:21:49
