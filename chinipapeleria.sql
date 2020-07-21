-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-07-2020 a las 02:46:52
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `chinipapeleria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agenda`
--

CREATE TABLE `agenda` (
  `id` int(11) NOT NULL,
  `cantidad_hojas` int(11) DEFAULT NULL,
  `Producto_id` int(11) NOT NULL,
  `TamanioHoja_id` int(11) NOT NULL,
  `TipoHoja_id` int(11) NOT NULL,
  `TipoTapa_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colorespiral`
--

CREATE TABLE `colorespiral` (
  `id` int(11) NOT NULL,
  `color` varchar(45) NOT NULL,
  `colorrgb` varchar(8) NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 1,
  `TipoEspiral_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `confagendadiseno`
--

CREATE TABLE `confagendadiseno` (
  `ConfiguracionAgenda_id` int(11) NOT NULL,
  `Diseno_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuracionagenda`
--

CREATE TABLE `configuracionagenda` (
  `id` int(11) NOT NULL,
  `comentarios` text DEFAULT NULL,
  `observaciones` text DEFAULT NULL,
  `costo_extra` int(11) DEFAULT NULL,
  `DetallePedido_id` int(11) NOT NULL,
  `ColorEspiral_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuracioncuaderno`
--

CREATE TABLE `configuracioncuaderno` (
  `id` int(11) NOT NULL,
  `cantidad_hojas` varchar(45) DEFAULT NULL,
  `Cuaderno_id` int(11) NOT NULL,
  `DetallePedido_id` int(11) NOT NULL,
  `TipoLinea_id` int(11) NOT NULL,
  `TipoHoja_id` int(11) NOT NULL,
  `TipoTapa_id` int(11) NOT NULL,
  `TamanioHoja_id` int(11) NOT NULL,
  `ColorEspiral_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuracionflashcard`
--

CREATE TABLE `configuracionflashcard` (
  `id` int(11) NOT NULL,
  `colorrgb` varchar(8) NOT NULL,
  `DetallePedido_id` int(11) NOT NULL,
  `FlashCard_id` int(11) NOT NULL,
  `Diseno_id` int(11) NOT NULL,
  `TipoFlashCard_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuracionplanificador`
--

CREATE TABLE `configuracionplanificador` (
  `id` int(11) NOT NULL,
  `Planificador_id` int(11) NOT NULL,
  `DetallePedido_id` int(11) NOT NULL,
  `TipoPlanificador_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuaderno`
--

CREATE TABLE `cuaderno` (
  `id` int(11) NOT NULL,
  `Producto_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallepedido`
--

CREATE TABLE `detallepedido` (
  `id` int(11) NOT NULL,
  `cantidad` varchar(45) DEFAULT NULL,
  `precio` varchar(45) DEFAULT NULL,
  `Pedido_id` int(11) NOT NULL,
  `Producto_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `diseno`
--

CREATE TABLE `diseno` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadopedido`
--

CREATE TABLE `estadopedido` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `flashcard`
--

CREATE TABLE `flashcard` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `cantidad_hojas` int(11) NOT NULL,
  `ancho` int(11) NOT NULL,
  `largo` int(11) NOT NULL,
  `unidad_medida` varchar(15) NOT NULL,
  `Producto_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lapiz`
--

CREATE TABLE `lapiz` (
  `id` int(11) NOT NULL,
  `color` varchar(45) NOT NULL,
  `color_rgb` varchar(8) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `Producto_id` int(11) NOT NULL,
  `TipoPunta_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mediopago`
--

CREATE TABLE `mediopago` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `id` int(11) NOT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `fecha_termino` date DEFAULT NULL,
  `Usuario_id` int(11) NOT NULL,
  `Venta_id` int(11) NOT NULL,
  `EstadoPedido_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planificador`
--

CREATE TABLE `planificador` (
  `id` int(11) NOT NULL,
  `cantidad_hojas` int(11) NOT NULL,
  `Producto_id` int(11) NOT NULL,
  `TipoHoja_id` int(11) NOT NULL,
  `TamanioHoja_id` int(11) NOT NULL,
  `TipoTapa_id` int(11) NOT NULL,
  `ColorEspiral_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `precio` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `TipoProducto_id` int(11) NOT NULL,
  `Categoria_id` int(11) NOT NULL,
  `Marca_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seccion`
--

CREATE TABLE `seccion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seccionagenda`
--

CREATE TABLE `seccionagenda` (
  `Seccion_id` int(11) NOT NULL,
  `Agenda_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tamaniohoja`
--

CREATE TABLE `tamaniohoja` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `ancho` float NOT NULL,
  `largo` float NOT NULL,
  `unidad_medida` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoespiral`
--

CREATE TABLE `tipoespiral` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipohoja`
--

CREATE TABLE `tipohoja` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `gramaje` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipolinea`
--

CREATE TABLE `tipolinea` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoplanificador`
--

CREATE TABLE `tipoplanificador` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoproducto`
--

CREATE TABLE `tipoproducto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipopunta`
--

CREATE TABLE `tipopunta` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipotapa`
--

CREATE TABLE `tipotapa` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `rut` varchar(45) DEFAULT NULL,
  `codigo_verificacion` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `numero` varchar(45) DEFAULT NULL,
  `ciudad` varchar(45) DEFAULT NULL,
  `calle` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `id` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `MedioPago_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Agenda_Producto1_idx` (`Producto_id`),
  ADD KEY `fk_Agenda_TamanioHoja1_idx` (`TamanioHoja_id`),
  ADD KEY `fk_Agenda_TipoHoja1_idx` (`TipoHoja_id`),
  ADD KEY `fk_Agenda_TipoTapa1_idx` (`TipoTapa_id`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `colorespiral`
--
ALTER TABLE `colorespiral`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ColorEspiral_TipoEspiral1_idx` (`TipoEspiral_id`);

--
-- Indices de la tabla `confagendadiseno`
--
ALTER TABLE `confagendadiseno`
  ADD KEY `fk_ConfAgendaDiseno_ConfiguracionAgenda1_idx` (`ConfiguracionAgenda_id`),
  ADD KEY `fk_ConfAgendaDiseno_Diseno1_idx` (`Diseno_id`);

--
-- Indices de la tabla `configuracionagenda`
--
ALTER TABLE `configuracionagenda`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ConfiguracionAgenda_DetallePedido1_idx` (`DetallePedido_id`),
  ADD KEY `fk_ConfiguracionAgenda_ColorEspiral1_idx` (`ColorEspiral_id`);

--
-- Indices de la tabla `configuracioncuaderno`
--
ALTER TABLE `configuracioncuaderno`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ConfiguracionCuaderno_Cuaderno1_idx` (`Cuaderno_id`),
  ADD KEY `fk_ConfiguracionCuaderno_DetallePedido1_idx` (`DetallePedido_id`),
  ADD KEY `fk_ConfiguracionCuaderno_TipoLinea1_idx` (`TipoLinea_id`),
  ADD KEY `fk_ConfiguracionCuaderno_TipoHoja1_idx` (`TipoHoja_id`),
  ADD KEY `fk_ConfiguracionCuaderno_TipoTapa1_idx` (`TipoTapa_id`),
  ADD KEY `fk_ConfiguracionCuaderno_TamanioHoja1_idx` (`TamanioHoja_id`),
  ADD KEY `fk_ConfiguracionCuaderno_ColorEspiral1_idx` (`ColorEspiral_id`);

--
-- Indices de la tabla `configuracionflashcard`
--
ALTER TABLE `configuracionflashcard`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ConfiguracionFlashCard_DetallePedido1_idx` (`DetallePedido_id`),
  ADD KEY `fk_ConfiguracionFlashCard_FlashCard1_idx` (`FlashCard_id`),
  ADD KEY `fk_ConfiguracionFlashCard_Diseno1_idx` (`Diseno_id`),
  ADD KEY `fk_ConfiguracionFlashCard_TipoFlashCard1_idx` (`TipoFlashCard_id`);

--
-- Indices de la tabla `configuracionplanificador`
--
ALTER TABLE `configuracionplanificador`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ConfiguracionPlanificador_Planificador1_idx` (`Planificador_id`),
  ADD KEY `fk_ConfiguracionPlanificador_DetallePedido1_idx` (`DetallePedido_id`),
  ADD KEY `fk_ConfiguracionPlanificador_TipoPlanificador1_idx` (`TipoPlanificador_id`);

--
-- Indices de la tabla `cuaderno`
--
ALTER TABLE `cuaderno`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Cuaderno_Producto1_idx` (`Producto_id`);

--
-- Indices de la tabla `detallepedido`
--
ALTER TABLE `detallepedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_DetallePedido_Pedido1_idx` (`Pedido_id`),
  ADD KEY `fk_DetallePedido_Producto1_idx` (`Producto_id`);

--
-- Indices de la tabla `diseno`
--
ALTER TABLE `diseno`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estadopedido`
--
ALTER TABLE `estadopedido`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `flashcard`
--
ALTER TABLE `flashcard`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_FlashCard_Producto1_idx` (`Producto_id`);

--
-- Indices de la tabla `lapiz`
--
ALTER TABLE `lapiz`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Lapiz_Producto1_idx` (`Producto_id`),
  ADD KEY `fk_Lapiz_TipoPunta1_idx` (`TipoPunta_id`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mediopago`
--
ALTER TABLE `mediopago`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Pedido_Usuario_idx` (`Usuario_id`),
  ADD KEY `fk_Pedido_Venta1_idx` (`Venta_id`),
  ADD KEY `fk_Pedido_EstadoPedido1_idx` (`EstadoPedido_id`);

--
-- Indices de la tabla `planificador`
--
ALTER TABLE `planificador`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Planificador_Producto1_idx` (`Producto_id`),
  ADD KEY `fk_Planificador_TipoHoja1_idx` (`TipoHoja_id`),
  ADD KEY `fk_Planificador_TamanioHoja1_idx` (`TamanioHoja_id`),
  ADD KEY `fk_Planificador_TipoTapa1_idx` (`TipoTapa_id`),
  ADD KEY `fk_Planificador_ColorEspiral1_idx` (`ColorEspiral_id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Producto_TipoProducto1_idx` (`TipoProducto_id`),
  ADD KEY `fk_Producto_Categoria1_idx` (`Categoria_id`),
  ADD KEY `fk_Producto_Marca1_idx` (`Marca_id`);

--
-- Indices de la tabla `seccion`
--
ALTER TABLE `seccion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `seccionagenda`
--
ALTER TABLE `seccionagenda`
  ADD KEY `fk_SeccionAgenda_Seccion1_idx` (`Seccion_id`),
  ADD KEY `fk_SeccionAgenda_Agenda1_idx` (`Agenda_id`);

--
-- Indices de la tabla `tamaniohoja`
--
ALTER TABLE `tamaniohoja`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipoespiral`
--
ALTER TABLE `tipoespiral`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipohoja`
--
ALTER TABLE `tipohoja`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipolinea`
--
ALTER TABLE `tipolinea`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipoplanificador`
--
ALTER TABLE `tipoplanificador`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipoproducto`
--
ALTER TABLE `tipoproducto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipopunta`
--
ALTER TABLE `tipopunta`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipotapa`
--
ALTER TABLE `tipotapa`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Venta_MedioPago1_idx` (`MedioPago_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `colorespiral`
--
ALTER TABLE `colorespiral`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `configuracionagenda`
--
ALTER TABLE `configuracionagenda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `configuracionflashcard`
--
ALTER TABLE `configuracionflashcard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cuaderno`
--
ALTER TABLE `cuaderno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detallepedido`
--
ALTER TABLE `detallepedido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `diseno`
--
ALTER TABLE `diseno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estadopedido`
--
ALTER TABLE `estadopedido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `flashcard`
--
ALTER TABLE `flashcard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lapiz`
--
ALTER TABLE `lapiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mediopago`
--
ALTER TABLE `mediopago`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tamaniohoja`
--
ALTER TABLE `tamaniohoja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipoespiral`
--
ALTER TABLE `tipoespiral`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipohoja`
--
ALTER TABLE `tipohoja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipolinea`
--
ALTER TABLE `tipolinea`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipoplanificador`
--
ALTER TABLE `tipoplanificador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipoproducto`
--
ALTER TABLE `tipoproducto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipopunta`
--
ALTER TABLE `tipopunta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipotapa`
--
ALTER TABLE `tipotapa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `agenda`
--
ALTER TABLE `agenda`
  ADD CONSTRAINT `fk_Agenda_Producto1` FOREIGN KEY (`Producto_id`) REFERENCES `producto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Agenda_TamanioHoja1` FOREIGN KEY (`TamanioHoja_id`) REFERENCES `tamaniohoja` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Agenda_TipoHoja1` FOREIGN KEY (`TipoHoja_id`) REFERENCES `tipohoja` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Agenda_TipoTapa1` FOREIGN KEY (`TipoTapa_id`) REFERENCES `tipotapa` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `colorespiral`
--
ALTER TABLE `colorespiral`
  ADD CONSTRAINT `fk_ColorEspiral_TipoEspiral1` FOREIGN KEY (`TipoEspiral_id`) REFERENCES `tipoespiral` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `confagendadiseno`
--
ALTER TABLE `confagendadiseno`
  ADD CONSTRAINT `fk_ConfAgendaDiseno_ConfiguracionAgenda1` FOREIGN KEY (`ConfiguracionAgenda_id`) REFERENCES `configuracionagenda` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ConfAgendaDiseno_Diseno1` FOREIGN KEY (`Diseno_id`) REFERENCES `diseno` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `configuracionagenda`
--
ALTER TABLE `configuracionagenda`
  ADD CONSTRAINT `fk_ConfiguracionAgenda_ColorEspiral1` FOREIGN KEY (`ColorEspiral_id`) REFERENCES `colorespiral` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ConfiguracionAgenda_DetallePedido1` FOREIGN KEY (`DetallePedido_id`) REFERENCES `detallepedido` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `configuracioncuaderno`
--
ALTER TABLE `configuracioncuaderno`
  ADD CONSTRAINT `fk_ConfiguracionCuaderno_ColorEspiral1` FOREIGN KEY (`ColorEspiral_id`) REFERENCES `colorespiral` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ConfiguracionCuaderno_Cuaderno1` FOREIGN KEY (`Cuaderno_id`) REFERENCES `cuaderno` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ConfiguracionCuaderno_DetallePedido1` FOREIGN KEY (`DetallePedido_id`) REFERENCES `detallepedido` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ConfiguracionCuaderno_TamanioHoja1` FOREIGN KEY (`TamanioHoja_id`) REFERENCES `tamaniohoja` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ConfiguracionCuaderno_TipoHoja1` FOREIGN KEY (`TipoHoja_id`) REFERENCES `tipohoja` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ConfiguracionCuaderno_TipoLinea1` FOREIGN KEY (`TipoLinea_id`) REFERENCES `tipolinea` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ConfiguracionCuaderno_TipoTapa1` FOREIGN KEY (`TipoTapa_id`) REFERENCES `tipotapa` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `configuracionflashcard`
--
ALTER TABLE `configuracionflashcard`
  ADD CONSTRAINT `fk_ConfiguracionFlashCard_DetallePedido1` FOREIGN KEY (`DetallePedido_id`) REFERENCES `detallepedido` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ConfiguracionFlashCard_Diseno1` FOREIGN KEY (`Diseno_id`) REFERENCES `diseno` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ConfiguracionFlashCard_FlashCard1` FOREIGN KEY (`FlashCard_id`) REFERENCES `flashcard` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ConfiguracionFlashCard_TipoFlashCard1` FOREIGN KEY (`TipoFlashCard_id`) REFERENCES `tipolinea` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `configuracionplanificador`
--
ALTER TABLE `configuracionplanificador`
  ADD CONSTRAINT `fk_ConfiguracionPlanificador_DetallePedido1` FOREIGN KEY (`DetallePedido_id`) REFERENCES `detallepedido` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ConfiguracionPlanificador_Planificador1` FOREIGN KEY (`Planificador_id`) REFERENCES `planificador` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ConfiguracionPlanificador_TipoPlanificador1` FOREIGN KEY (`TipoPlanificador_id`) REFERENCES `tipoplanificador` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `cuaderno`
--
ALTER TABLE `cuaderno`
  ADD CONSTRAINT `fk_Cuaderno_Producto1` FOREIGN KEY (`Producto_id`) REFERENCES `producto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `detallepedido`
--
ALTER TABLE `detallepedido`
  ADD CONSTRAINT `fk_DetallePedido_Pedido1` FOREIGN KEY (`Pedido_id`) REFERENCES `pedido` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_DetallePedido_Producto1` FOREIGN KEY (`Producto_id`) REFERENCES `producto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `flashcard`
--
ALTER TABLE `flashcard`
  ADD CONSTRAINT `fk_FlashCard_Producto1` FOREIGN KEY (`Producto_id`) REFERENCES `producto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `lapiz`
--
ALTER TABLE `lapiz`
  ADD CONSTRAINT `fk_Lapiz_Producto1` FOREIGN KEY (`Producto_id`) REFERENCES `producto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Lapiz_TipoPunta1` FOREIGN KEY (`TipoPunta_id`) REFERENCES `tipopunta` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `fk_Pedido_EstadoPedido1` FOREIGN KEY (`EstadoPedido_id`) REFERENCES `estadopedido` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Pedido_Usuario` FOREIGN KEY (`Usuario_id`) REFERENCES `usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Pedido_Venta1` FOREIGN KEY (`Venta_id`) REFERENCES `venta` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `planificador`
--
ALTER TABLE `planificador`
  ADD CONSTRAINT `fk_Planificador_ColorEspiral1` FOREIGN KEY (`ColorEspiral_id`) REFERENCES `colorespiral` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Planificador_Producto1` FOREIGN KEY (`Producto_id`) REFERENCES `producto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Planificador_TamanioHoja1` FOREIGN KEY (`TamanioHoja_id`) REFERENCES `tamaniohoja` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Planificador_TipoHoja1` FOREIGN KEY (`TipoHoja_id`) REFERENCES `tipohoja` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Planificador_TipoTapa1` FOREIGN KEY (`TipoTapa_id`) REFERENCES `tipotapa` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `fk_Producto_Categoria1` FOREIGN KEY (`Categoria_id`) REFERENCES `categoria` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Producto_Marca1` FOREIGN KEY (`Marca_id`) REFERENCES `marca` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Producto_TipoProducto1` FOREIGN KEY (`TipoProducto_id`) REFERENCES `tipoproducto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `seccionagenda`
--
ALTER TABLE `seccionagenda`
  ADD CONSTRAINT `fk_SeccionAgenda_Agenda1` FOREIGN KEY (`Agenda_id`) REFERENCES `agenda` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_SeccionAgenda_Seccion1` FOREIGN KEY (`Seccion_id`) REFERENCES `seccion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `fk_Venta_MedioPago1` FOREIGN KEY (`MedioPago_id`) REFERENCES `mediopago` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
