--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.9
-- Dumped by pg_dump version 9.4.9
-- Started on 2016-09-10 17:55:11

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- TOC entry 2258 (class 0 OID 17957)
-- Dependencies: 178
-- Data for Name: grupo_clase; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO grupo_clase VALUES (1, '1010', 'EDUCACION', true, 'GRUPO CLASE PARA EDUCACION');
INSERT INTO grupo_clase VALUES (2, '1020', 'SALUD', true, 'GRUPO CLASE PARA SALUD');
INSERT INTO grupo_clase VALUES (3, '1030', 'LIMPIEZA', true, 'GRUPO CLASE PARA LIMPIEZA');
INSERT INTO grupo_clase VALUES (4, '1040', 'SEGURIDAD', true, 'GRUPO CLASE PARA SEGURIDAD');
INSERT INTO grupo_clase VALUES (5, '1050', 'BIENES', true, 'GRUPO CLASE PARA BIENES MUEBLES');


--
-- TOC entry 2260 (class 0 OID 17969)
-- Dependencies: 180
-- Data for Name: clase; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO clase VALUES (1, 1, '2010', 'Informatica', true, 'CLASE PARA INFORMATICA');
INSERT INTO clase VALUES (2, 1, '2020', 'Equipo de laboratorio', true, 'CLASE PARA EQUIPO DE LABORATORIO');
INSERT INTO clase VALUES (3, 5, '2030', 'Muebles', true, 'CLASE PARA BIENES MUEBLES');
INSERT INTO clase VALUES (5, 5, '2050', 'Inmuebles', true, 'CLASE PARA INMUEBLES');
INSERT INTO clase VALUES (6, 1, '2060', 'Didactico', true, 'CLASE PARA MATERIAL DIDACTICO');
INSERT INTO clase VALUES (7, 4, '2070', 'Instrumentos de Seguridad', true, 'CLASE PARA INSTRUMENTOS DE SEGURIDAD');
INSERT INTO clase VALUES (8, 3, '2080', 'Instrumentos de limpieza', true, 'CLASE PARA INSTRUMENTOS DE LIMPIEZA');
INSERT INTO clase VALUES (4, 5, '2040', 'Trasnporte', true, 'CLASE PARA TRANSPOTE');


--
-- TOC entry 2254 (class 0 OID 17934)
-- Dependencies: 174
-- Data for Name: marca; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO marca VALUES (2, 'Razer', true, 'Marca para teclados y mouses');
INSERT INTO marca VALUES (1, 'Intel', true, 'Marca para procesadores de computadoras');
INSERT INTO marca VALUES (3, 'Kingston', true, 'Marca para memorias ram');
INSERT INTO marca VALUES (4, 'Apple', true, 'Marca para varios componentes de la pc');
INSERT INTO marca VALUES (5, 'Ferrari', true, 'Marca para carros');


--
-- TOC entry 2262 (class 0 OID 17981)
-- Dependencies: 182
-- Data for Name: sub_clase; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO sub_clase VALUES (16, 2, '3160', 'Instrumenos de medicion de volumen', true, 'SUB CLASE PARA INSTRU MEDICION DE VOLUMEN');
INSERT INTO sub_clase VALUES (22, 7, '3220', 'Camaras de seguridad', true, 'SUB CLASE PARA CAMARAS');
INSERT INTO sub_clase VALUES (9, 1, '3090', 'Servidores de base de datos', true, 'SUB CLASE PARA SERVIDORES DE BASE DE DATOS');
INSERT INTO sub_clase VALUES (1, 1, '3010', 'Computadora', true, 'SUB CLASE PARA COMPUTADORAS');
INSERT INTO sub_clase VALUES (18, 3, '3180', 'Libreras', true, 'SUB CLASE PARA LIBRERAS');
INSERT INTO sub_clase VALUES (19, 5, '3190', 'Terrenos de la U :v', true, 'SUB CLASE PARA TERRENOS');
INSERT INTO sub_clase VALUES (20, 5, '3200', 'Aulas de la U', true, 'SUB CLASE PARA AULAS DE LA U');
INSERT INTO sub_clase VALUES (21, 8, '3210', 'Escobas :v', true, 'SUB CLASE PARA ESCOBAS');
INSERT INTO sub_clase VALUES (2, 1, '3020', 'Escaner', true, 'SUB CLASE PARA ESCANER''R');
INSERT INTO sub_clase VALUES (3, 1, '3030', 'Impresora', true, 'SUB CLASE PARA IMPRESORAS');
INSERT INTO sub_clase VALUES (4, 1, '3040', 'Proyector', true, 'SUB CLASE PARA PROYECTORES');
INSERT INTO sub_clase VALUES (5, 3, '3050', 'Pizarras', true, 'SUB CLASE PARA PIZARRAS');
INSERT INTO sub_clase VALUES (6, 3, '3060', 'Pupitres', true, 'SUB CLASE PARA PUPITRES');
INSERT INTO sub_clase VALUES (7, 3, '3070', 'Escritorios', true, 'SUB CLASE PARA ESCRITORIOS');
INSERT INTO sub_clase VALUES (8, 1, '3080', 'Wifi', true, 'SUB CLASE PARA WIFI');
INSERT INTO sub_clase VALUES (10, 4, '3100', 'Carro', true, 'SUB CLASE PARA CARROS');
INSERT INTO sub_clase VALUES (11, 4, '3110', 'Microbus', true, 'SUB CLASE PARA MICROBUSES');
INSERT INTO sub_clase VALUES (12, 4, '3120', 'Pick-up', true, 'SUB CLASE PARA PICK-UP''S');
INSERT INTO sub_clase VALUES (13, 6, '3130', 'Libro', true, 'SUB CLASE PARA LIBROS');
INSERT INTO sub_clase VALUES (14, 2, '3140', 'Intrumentos individuales(laboratorio)', true, 'SUB CLASE PARA INSTR. INDIVIDUALES');
INSERT INTO sub_clase VALUES (15, 2, '3150', 'Instrumentos de medicion de sustancias', true, 'SUB CLASE PARA INSTRU. DE MEDICION DE SUSTANCIAS');
INSERT INTO sub_clase VALUES (17, 2, '3170', 'Instrumentos de soporte', true, 'SUB CLASE PARA INSTRU. DE SOPORTE');


--
-- TOC entry 2264 (class 0 OID 17993)
-- Dependencies: 184
-- Data for Name: parte; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO parte VALUES (1, 1, 'Procesador', 'Procesador de la computadora');
INSERT INTO parte VALUES (2, 1, 'Memoria ram', 'Memoria Ram');
INSERT INTO parte VALUES (3, 1, 'Disco Duro', 'Disco Duro');
INSERT INTO parte VALUES (4, 1, 'Monitor', 'Monitor');
INSERT INTO parte VALUES (6, 1, 'Mouse', 'Mouse');
INSERT INTO parte VALUES (5, 1, 'Teclado', 'Teclado');
INSERT INTO parte VALUES (7, 10, 'Carro', 'Carro');


--
-- TOC entry 2256 (class 0 OID 17946)
-- Dependencies: 176
-- Data for Name: articulo; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO articulo VALUES (1, 1, 1, 'Intel Core i5', 'Intel Core i5, 3,4 Ghz(Haswell)');
INSERT INTO articulo VALUES (2, 1, 1, 'Intel Core i5', 'Intel Core i5, 3,4 Ghz(Haswell)');
INSERT INTO articulo VALUES (3, 1, 1, 'Intel Core i5', 'Intel Core i5, 3,4 Ghz(Haswell)');
INSERT INTO articulo VALUES (5, 1, 1, 'Intel Core i5', 'Intel Core i5, 3,4 Ghz(Haswell)');
INSERT INTO articulo VALUES (6, 3, 2, '8GB DDR3-1600MHz', '8GB DDR3-1600MHz');
INSERT INTO articulo VALUES (7, 3, 2, '8GB DDR3-1600MHz', '8GB DDR3-1600MHz');
INSERT INTO articulo VALUES (9, 3, 2, '8GB DDR3-1600MHz', '8GB DDR3-1600MHz');
INSERT INTO articulo VALUES (10, 3, 2, '8GB DDR3-1600MHz', '8GB DDR3-1600MHz');
INSERT INTO articulo VALUES (11, 4, 3, 'Apple SSD SD0128F', 'Apple SSD SD0128F 128GB + Apple ST1000M003 1TB');
INSERT INTO articulo VALUES (8, 3, 2, '8GB DDR3-1600MHz', '8GB DDR3-1600MHz');
INSERT INTO articulo VALUES (12, 4, 3, 'Apple SSD SD0128F', 'Apple SSD SD0128F 128GB + Apple ST1000M003 1TB');
INSERT INTO articulo VALUES (13, 4, 3, 'Apple SSD SD0128F', 'Apple SSD SD0128F 128GB + Apple ST1000M003 1TB');
INSERT INTO articulo VALUES (14, 4, 3, 'Apple SSD SD0128F', 'Apple SSD SD0128F 128GB + Apple ST1000M003 1TB');
INSERT INTO articulo VALUES (15, 4, 3, 'Apple SSD SD0128F', 'Apple SSD SD0128F 128GB + Apple ST1000M003 1TB');
INSERT INTO articulo VALUES (16, 4, 4, 'Pantalla LED 21,5 pulgadas', 'Pantalla LED 21,5 pulgadas, con tegnologia IPS, Resoluciion 1920 por 1080');
INSERT INTO articulo VALUES (17, 4, 4, 'Pantalla LED 21,5 pulgadas', 'Pantalla LED 21,5 pulgadas, con tegnologia IPS, Resoluciion 1920 por 1080');
INSERT INTO articulo VALUES (18, 4, 4, 'Pantalla LED 21,5 pulgadas', 'Pantalla LED 21,5 pulgadas, con tegnologia IPS, Resoluciion 1920 por 1080');
INSERT INTO articulo VALUES (19, 4, 4, 'Pantalla LED 21,5 pulgadas', 'Pantalla LED 21,5 pulgadas, con tegnologia IPS, Resoluciion 1920 por 1080');
INSERT INTO articulo VALUES (20, 4, 4, 'Pantalla LED 21,5 pulgadas', 'Pantalla LED 21,5 pulgadas, con tegnologia IPS, Resoluciion 1920 por 1080');
INSERT INTO articulo VALUES (21, 2, 5, 'Razer BlackWindows Ultimate', 'Razer BlackWindows Ultimate, con retroiluminacion mas conector para auriculares');
INSERT INTO articulo VALUES (22, 2, 5, 'Razer BlackWindows Ultimate', 'Razer BlackWindows Ultimate, con retroiluminacion mas conector para auriculares');
INSERT INTO articulo VALUES (23, 2, 5, 'Razer BlackWindows Ultimate', 'Razer BlackWindows Ultimate, con retroiluminacion mas conector para auriculares');
INSERT INTO articulo VALUES (24, 2, 5, 'Razer BlackWindows Ultimate', 'Razer BlackWindows Ultimate, con retroiluminacion mas conector para auriculares');
INSERT INTO articulo VALUES (25, 2, 5, 'Razer BlackWindows Ultimate', 'Razer BlackWindows Ultimate, con retroiluminacion mas conector para auriculares');
INSERT INTO articulo VALUES (26, 2, 6, 'Razer Naga', 'Razer Naga con reticula de 12 botones mecanicos para pulgar');
INSERT INTO articulo VALUES (27, 2, 6, 'Razer Naga', 'Razer Naga con reticula de 12 botones mecanicos para pulgar');
INSERT INTO articulo VALUES (28, 2, 6, 'Razer Naga', 'Razer Naga con reticula de 12 botones mecanicos para pulgar');
INSERT INTO articulo VALUES (29, 2, 6, 'Razer Naga', 'Razer Naga con reticula de 12 botones mecanicos para pulgar');
INSERT INTO articulo VALUES (30, 2, 6, 'Razer Naga', 'Razer Naga con reticula de 12 botones mecanicos para pulgar');
INSERT INTO articulo VALUES (4, 1, 1, 'Intel Core i3', 'Intel Core i5, 3,4 Ghz(Haswell)');
INSERT INTO articulo VALUES (31, 5, 7, 'Ferrari 458', 'Ferrari 458, para uso personal :''v');
INSERT INTO articulo VALUES (32, 5, 7, 'Ferrari 458', 'Ferrari 458, para uso personal :''v');
INSERT INTO articulo VALUES (33, 5, 7, 'Ferrari 458', 'Ferrari 458, para uso personal :''v');
INSERT INTO articulo VALUES (34, 5, 7, 'Ferrari 458', 'Ferrari 458, para uso personal :''v');
INSERT INTO articulo VALUES (35, 5, 7, 'Ferrari 458', 'Ferrari 458, para uso personal :''v');


--
-- TOC entry 2270 (class 0 OID 18032)
-- Dependencies: 190
-- Data for Name: articulo_caracteristica; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO articulo_caracteristica VALUES (8, 10, true, true);
INSERT INTO articulo_caracteristica VALUES (12, 6, true, true);
INSERT INTO articulo_caracteristica VALUES (12, 7, true, true);
INSERT INTO articulo_caracteristica VALUES (12, 8, true, true);
INSERT INTO articulo_caracteristica VALUES (12, 9, true, true);
INSERT INTO articulo_caracteristica VALUES (12, 10, true, true);
INSERT INTO articulo_caracteristica VALUES (5, 12, true, true);
INSERT INTO articulo_caracteristica VALUES (5, 14, true, true);
INSERT INTO articulo_caracteristica VALUES (8, 13, true, true);
INSERT INTO articulo_caracteristica VALUES (11, 11, true, true);
INSERT INTO articulo_caracteristica VALUES (11, 12, true, true);
INSERT INTO articulo_caracteristica VALUES (11, 13, true, true);
INSERT INTO articulo_caracteristica VALUES (11, 14, true, true);
INSERT INTO articulo_caracteristica VALUES (11, 15, true, true);
INSERT INTO articulo_caracteristica VALUES (1, 16, true, true);
INSERT INTO articulo_caracteristica VALUES (1, 17, false, false);
INSERT INTO articulo_caracteristica VALUES (1, 19, false, true);
INSERT INTO articulo_caracteristica VALUES (8, 16, true, true);
INSERT INTO articulo_caracteristica VALUES (8, 17, true, true);
INSERT INTO articulo_caracteristica VALUES (8, 19, true, true);
INSERT INTO articulo_caracteristica VALUES (8, 25, true, true);
INSERT INTO articulo_caracteristica VALUES (8, 26, true, true);
INSERT INTO articulo_caracteristica VALUES (8, 28, true, true);
INSERT INTO articulo_caracteristica VALUES (8, 30, true, true);
INSERT INTO articulo_caracteristica VALUES (1, 31, true, false);
INSERT INTO articulo_caracteristica VALUES (1, 32, true, false);
INSERT INTO articulo_caracteristica VALUES (1, 33, true, false);
INSERT INTO articulo_caracteristica VALUES (1, 34, true, false);
INSERT INTO articulo_caracteristica VALUES (1, 35, true, false);
INSERT INTO articulo_caracteristica VALUES (8, 31, true, false);
INSERT INTO articulo_caracteristica VALUES (8, 32, true, false);
INSERT INTO articulo_caracteristica VALUES (8, 33, true, false);
INSERT INTO articulo_caracteristica VALUES (8, 34, true, false);
INSERT INTO articulo_caracteristica VALUES (8, 35, true, false);
INSERT INTO articulo_caracteristica VALUES (5, 1, true, true);
INSERT INTO articulo_caracteristica VALUES (5, 2, true, false);
INSERT INTO articulo_caracteristica VALUES (5, 4, true, false);
INSERT INTO articulo_caracteristica VALUES (5, 5, true, false);
INSERT INTO articulo_caracteristica VALUES (5, 8, true, false);
INSERT INTO articulo_caracteristica VALUES (5, 11, true, false);
INSERT INTO articulo_caracteristica VALUES (5, 13, true, false);
INSERT INTO articulo_caracteristica VALUES (5, 15, true, false);
INSERT INTO articulo_caracteristica VALUES (8, 11, true, false);
INSERT INTO articulo_caracteristica VALUES (8, 12, true, false);
INSERT INTO articulo_caracteristica VALUES (8, 14, true, false);
INSERT INTO articulo_caracteristica VALUES (8, 15, true, false);
INSERT INTO articulo_caracteristica VALUES (1, 18, true, false);
INSERT INTO articulo_caracteristica VALUES (3, 16, true, false);
INSERT INTO articulo_caracteristica VALUES (3, 17, true, false);
INSERT INTO articulo_caracteristica VALUES (1, 23, true, false);
INSERT INTO articulo_caracteristica VALUES (5, 22, true, false);
INSERT INTO articulo_caracteristica VALUES (5, 24, true, false);
INSERT INTO articulo_caracteristica VALUES (9, 21, true, false);
INSERT INTO articulo_caracteristica VALUES (1, 27, true, false);
INSERT INTO articulo_caracteristica VALUES (9, 27, true, false);
INSERT INTO articulo_caracteristica VALUES (5, 3, true, true);
INSERT INTO articulo_caracteristica VALUES (8, 5, true, true);
INSERT INTO articulo_caracteristica VALUES (10, 1, true, true);
INSERT INTO articulo_caracteristica VALUES (10, 4, true, true);
INSERT INTO articulo_caracteristica VALUES (10, 5, true, true);
INSERT INTO articulo_caracteristica VALUES (8, 2, false, true);
INSERT INTO articulo_caracteristica VALUES (8, 1, true, true);
INSERT INTO articulo_caracteristica VALUES (8, 3, true, true);
INSERT INTO articulo_caracteristica VALUES (8, 4, true, true);
INSERT INTO articulo_caracteristica VALUES (10, 2, true, true);
INSERT INTO articulo_caracteristica VALUES (10, 3, true, true);
INSERT INTO articulo_caracteristica VALUES (5, 6, true, true);
INSERT INTO articulo_caracteristica VALUES (5, 7, false, true);
INSERT INTO articulo_caracteristica VALUES (5, 9, true, true);
INSERT INTO articulo_caracteristica VALUES (5, 10, true, true);
INSERT INTO articulo_caracteristica VALUES (8, 6, true, true);
INSERT INTO articulo_caracteristica VALUES (8, 7, true, true);
INSERT INTO articulo_caracteristica VALUES (8, 8, true, true);
INSERT INTO articulo_caracteristica VALUES (8, 9, true, true);


--
-- TOC entry 2299 (class 0 OID 0)
-- Dependencies: 175
-- Name: articulo_id_articulo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('articulo_id_articulo_seq', 4, true);


--
-- TOC entry 2268 (class 0 OID 18015)
-- Dependencies: 188
-- Data for Name: tipo_caracteristica; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO tipo_caracteristica VALUES (3, 'Uso', true, 'S/N', 'Tipo de caracteristica para ver su uso');
INSERT INTO tipo_caracteristica VALUES (4, 'Peso', true, 'kg', 'Tipo de caracteristica para peso');
INSERT INTO tipo_caracteristica VALUES (2, 'Monetizacion', true, 'dolar', 'Tipo de caracteristica para controlar el costo del activo');
INSERT INTO tipo_caracteristica VALUES (1, 'Dimencion', true, 'metros', 'Tipo de caracteristica para contrlar el tamaño');
INSERT INTO tipo_caracteristica VALUES (6, 'Procesamiento', true, 'Gz', 'Tipo de caracteristica para procesamiento');
INSERT INTO tipo_caracteristica VALUES (5, 'Fisicas', true, 'NULL', 'Tipo de caracteristicas fisicas');
INSERT INTO tipo_caracteristica VALUES (7, 'Capacidad', true, 'Gb', 'Tipo de caracteristica para capacidad de almacenamiento');
INSERT INTO tipo_caracteristica VALUES (8, 'Tiempo', true, 'Años', 'Tipo de caracteristica para el tiempo');
INSERT INTO tipo_caracteristica VALUES (9, 'Descripcion', true, 'NULL', 'Tipo de caraceristica para detalles');


--
-- TOC entry 2266 (class 0 OID 18004)
-- Dependencies: 186
-- Data for Name: caracteristica; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO caracteristica VALUES (1, 5, 'Color', NULL, 'Caracteristica para color ', '(?:Color:+[A-Za-z])');
INSERT INTO caracteristica VALUES (2, 1, 'Altura', 1.00, 'Caracteristica para altura', '(?:Altura:+[0-9])');
INSERT INTO caracteristica VALUES (4, 1, 'Ancho', 1.00, 'Caracteristica para ancho', '(?:Ancho:+[0-9])');
INSERT INTO caracteristica VALUES (5, 8, 'Vida util', 1.00, 'Caracteristica para vida util', '(?:Vida util:+[0-9])');
INSERT INTO caracteristica VALUES (6, 9, 'Autor', NULL, 'Caracteristica para autor', '(?:Autor:+[A-Za-z])');
INSERT INTO caracteristica VALUES (7, 1, 'Largo', 1.00, 'Caracteristica para largo', '(?:Largo:+[A-Za-z])');
INSERT INTO caracteristica VALUES (8, 2, 'Coste', 1.00, 'Caracteristica para coste', '(?:Coste:+[A-Za-z])');
INSERT INTO caracteristica VALUES (9, 4, 'Peso', 1.00, 'Caracteristica para peso', '(?:Peso:+[A-Za-z])');
INSERT INTO caracteristica VALUES (11, 7, 'Almacenamiento', 1.00, 'Caracteristica para almacenamiento', '(?:Capacidad de lamacenamiento:+[0-9])');
INSERT INTO caracteristica VALUES (10, 6, 'Velocidad', 1.00, 'Caracteristica para velocidad de procesamiento', '(?:Velocidad(Ghz):+[0-9])');
INSERT INTO caracteristica VALUES (12, 9, 'Frecuencia', 1.00, 'Caracterisxtica para frecuencia de la memoria ram', '(?:Frecuencia:+[0-9])');
INSERT INTO caracteristica VALUES (3, 9, 'Resolucion', 1.00, 'Caracteristica para resolucion', '(?:Resolucion:+[0-9])');


--
-- TOC entry 2300 (class 0 OID 0)
-- Dependencies: 185
-- Name: caracteristica_id_caracteristica_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('caracteristica_id_caracteristica_seq', 1, false);


--
-- TOC entry 2301 (class 0 OID 0)
-- Dependencies: 179
-- Name: clase_id_clase_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('clase_id_clase_seq', 1, false);


--
-- TOC entry 2293 (class 0 OID 18176)
-- Dependencies: 213
-- Data for Name: modelo; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO modelo VALUES (1, 'Apple iMac', true, 'Modelo de computadora');
INSERT INTO modelo VALUES (2, 'Ferrari', true, 'Modelo para carros');


--
-- TOC entry 2276 (class 0 OID 18065)
-- Dependencies: 196
-- Data for Name: correlativo; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO correlativo VALUES (1, 1, '5010', 'Correlativo para el modelo de computadora Apple iMac', 1260.99, 1100.10);
INSERT INTO correlativo VALUES (2, 1, '5020', 'Correlativo para el modelo de computadora Apple iMac', 1260.99, 1100.10);
INSERT INTO correlativo VALUES (3, 1, '5030', 'Correlativo para el modelo de computadora Apple iMac', 1260.99, 1100.10);
INSERT INTO correlativo VALUES (4, 1, '5040', 'Correlativo para el modelo de computadora Apple iMac', 1260.99, 1100.10);
INSERT INTO correlativo VALUES (5, 1, '5050', 'Correlativo para el modelo de computadora Apple iMac', 1260.99, 1100.10);
INSERT INTO correlativo VALUES (6, 2, '2060', 'Correlativo de carro ferrari', 50000.20, 40000.20);
INSERT INTO correlativo VALUES (7, 2, '5050', 'Correlativo de carro ferrari', 55000.10, 45000.00);
INSERT INTO correlativo VALUES (8, 2, '5080', 'Correlativo de carro ferrari', 60000.00, 58000.00);
INSERT INTO correlativo VALUES (9, 2, '5090', 'Correlativo de carro ferrari', 59000.90, 59000.90);
INSERT INTO correlativo VALUES (10, 2, '5100', 'Correlativo de carro ferrari', 52000.20, 52000.00);


--
-- TOC entry 2294 (class 0 OID 18186)
-- Dependencies: 214
-- Data for Name: correlativo_detalle; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO correlativo_detalle VALUES (1, 1, NULL);
INSERT INTO correlativo_detalle VALUES (1, 6, NULL);
INSERT INTO correlativo_detalle VALUES (1, 11, NULL);
INSERT INTO correlativo_detalle VALUES (1, 16, NULL);
INSERT INTO correlativo_detalle VALUES (1, 21, NULL);
INSERT INTO correlativo_detalle VALUES (1, 26, NULL);
INSERT INTO correlativo_detalle VALUES (2, 2, NULL);
INSERT INTO correlativo_detalle VALUES (3, 3, NULL);
INSERT INTO correlativo_detalle VALUES (4, 4, NULL);
INSERT INTO correlativo_detalle VALUES (5, 5, NULL);
INSERT INTO correlativo_detalle VALUES (2, 7, NULL);
INSERT INTO correlativo_detalle VALUES (3, 8, NULL);
INSERT INTO correlativo_detalle VALUES (4, 9, NULL);
INSERT INTO correlativo_detalle VALUES (5, 10, NULL);
INSERT INTO correlativo_detalle VALUES (2, 12, NULL);
INSERT INTO correlativo_detalle VALUES (3, 13, NULL);
INSERT INTO correlativo_detalle VALUES (4, 14, NULL);
INSERT INTO correlativo_detalle VALUES (5, 15, NULL);
INSERT INTO correlativo_detalle VALUES (2, 17, NULL);
INSERT INTO correlativo_detalle VALUES (3, 18, NULL);
INSERT INTO correlativo_detalle VALUES (4, 19, NULL);
INSERT INTO correlativo_detalle VALUES (5, 20, NULL);
INSERT INTO correlativo_detalle VALUES (2, 22, NULL);
INSERT INTO correlativo_detalle VALUES (3, 23, NULL);
INSERT INTO correlativo_detalle VALUES (4, 24, NULL);
INSERT INTO correlativo_detalle VALUES (5, 25, NULL);
INSERT INTO correlativo_detalle VALUES (2, 27, NULL);
INSERT INTO correlativo_detalle VALUES (3, 28, NULL);
INSERT INTO correlativo_detalle VALUES (4, 29, NULL);
INSERT INTO correlativo_detalle VALUES (5, 30, NULL);
INSERT INTO correlativo_detalle VALUES (6, 31, NULL);
INSERT INTO correlativo_detalle VALUES (7, 32, NULL);
INSERT INTO correlativo_detalle VALUES (8, 33, NULL);
INSERT INTO correlativo_detalle VALUES (9, 34, NULL);
INSERT INTO correlativo_detalle VALUES (10, 35, NULL);


--
-- TOC entry 2277 (class 0 OID 18076)
-- Dependencies: 197
-- Data for Name: correlativo_caracteristica; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2272 (class 0 OID 18041)
-- Dependencies: 192
-- Data for Name: tipo_estado; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO tipo_estado VALUES (1, 'En uso', true, 'Los activos fijos categorizados con este estan aptos para su uso en cualquier momento');
INSERT INTO tipo_estado VALUES (2, 'Almacenado', true, 'Estado para categorizar los activos fijos que aun no han sido asignados');
INSERT INTO tipo_estado VALUES (3, 'En Reparacion', true, 'Estado para los activos fijos que han sufrido algun problema');
INSERT INTO tipo_estado VALUES (4, 'Retirado', true, 'Categoria para deterinar si los activos han cumplido su vida util');


--
-- TOC entry 2274 (class 0 OID 18053)
-- Dependencies: 194
-- Data for Name: correlativo_estado; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO correlativo_estado VALUES (9, 10, 1, '2016-09-10', NULL, 'En buen estado', 'Usuario2');
INSERT INTO correlativo_estado VALUES (1, 1, 1, '2016-09-10', NULL, 'Todos en buen estado :v', 'Alumnos');
INSERT INTO correlativo_estado VALUES (2, 2, 3, '2016-09-10', NULL, 'Siendo reparado por los de sitemas :v', 'Alumnos');
INSERT INTO correlativo_estado VALUES (3, 4, 4, '2016-09-10', NULL, 'Retirado por desperfectos', NULL);
INSERT INTO correlativo_estado VALUES (4, 5, 2, '2016-09-10', NULL, 'Almacenado', NULL);
INSERT INTO correlativo_estado VALUES (5, 6, 1, '2016-09-10', NULL, 'En buen estado', 'Rodezno :v');
INSERT INTO correlativo_estado VALUES (6, 7, 1, '2016-09-10', NULL, 'En buen estado', 'Chepe');
INSERT INTO correlativo_estado VALUES (7, 8, 1, '2016-09-10', NULL, 'En buen estado', 'Maria');
INSERT INTO correlativo_estado VALUES (8, 9, 1, '2016-09-10', NULL, 'En buen estado', 'Peña');


--
-- TOC entry 2302 (class 0 OID 0)
-- Dependencies: 193
-- Name: correlativo_estado_id_correlativo_estado_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('correlativo_estado_id_correlativo_estado_seq', 1, false);


--
-- TOC entry 2303 (class 0 OID 0)
-- Dependencies: 195
-- Name: correlativo_id_correlativo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('correlativo_id_correlativo_seq', 1, false);


--
-- TOC entry 2283 (class 0 OID 18110)
-- Dependencies: 203
-- Data for Name: tipo_documento; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO tipo_documento VALUES (1, 'M1', true, 'Documento para realizar asignacion de recursos a las diferentes unidades');
INSERT INTO tipo_documento VALUES (2, 'M2', true, 'Documento para realizar traslados entre unidades y/o fuera de estas');
INSERT INTO tipo_documento VALUES (3, 'M3', true, 'Docuemnto para realizar los descargos de los recursos');


--
-- TOC entry 2285 (class 0 OID 18122)
-- Dependencies: 205
-- Data for Name: documento; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO documento VALUES (1, 1, '4010', 'Documento de ingreso de 5 computadoras', '2016-09-09', 'Bodega1', 'ues.edu.sv/inventario/documentacion/asignacion/documento-de-ingreso-de-5-computadoras', true);
INSERT INTO documento VALUES (2, 1, '4020', 'Documento de ingreso de 5 carros', '2016-09-09', 'Bodega1', 'ues.edu.sv/inventario/documentacion/asignacion/documento-de-ingreso-de-5-carros', false);


--
-- TOC entry 2288 (class 0 OID 18147)
-- Dependencies: 208
-- Data for Name: documento_detalle; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO documento_detalle VALUES (1, 1, 'Computadora en buen estado', 'Responsable Final 1', '2016-09-09');
INSERT INTO documento_detalle VALUES (1, 2, 'Computadora en mal estado', 'Responsable Final 1', '2016-09-10');
INSERT INTO documento_detalle VALUES (1, 3, 'Computadora en buen estado', 'Responsable Final 2', '2016-09-10');
INSERT INTO documento_detalle VALUES (1, 5, 'Computadora aalmacena por falta de windows :v XD', 'Responsable Final 1', '2016-09-10');
INSERT INTO documento_detalle VALUES (2, 6, 'Auto en condiones optimas', 'Responsable Final 3', '2016-09-10');
INSERT INTO documento_detalle VALUES (2, 7, 'Auto en condiciones optimas', 'Responsable Final 3', '2016-09-10');
INSERT INTO documento_detalle VALUES (2, 8, 'Auto en condiciones optimas', 'Responsable Final 3', '2016-09-10');
INSERT INTO documento_detalle VALUES (2, 9, 'Auto en condiciones optimas', 'Responsable Final 3', '2016-09-10');
INSERT INTO documento_detalle VALUES (2, 10, 'Auto en condiciones optimas', 'Responsable Final 3', '2016-09-10');


--
-- TOC entry 2304 (class 0 OID 0)
-- Dependencies: 204
-- Name: documento_id_documento_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('documento_id_documento_seq', 1, false);


--
-- TOC entry 2287 (class 0 OID 18139)
-- Dependencies: 207
-- Data for Name: documento_requisito; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO documento_requisito VALUES (1, 1, 'Ingenieria 8)');
INSERT INTO documento_requisito VALUES (2, 1, 'Ingenieria 8)');


--
-- TOC entry 2305 (class 0 OID 0)
-- Dependencies: 177
-- Name: grupo_clase_id_grupo_clase_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('grupo_clase_id_grupo_clase_seq', 1, true);


--
-- TOC entry 2306 (class 0 OID 0)
-- Dependencies: 173
-- Name: marca_id_marca_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('marca_id_marca_seq', 1, false);


--
-- TOC entry 2291 (class 0 OID 18168)
-- Dependencies: 211
-- Data for Name: modelo_detalle; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO modelo_detalle VALUES (1, 1, true);
INSERT INTO modelo_detalle VALUES (1, 2, true);
INSERT INTO modelo_detalle VALUES (1, 3, true);
INSERT INTO modelo_detalle VALUES (1, 4, true);
INSERT INTO modelo_detalle VALUES (1, 5, true);
INSERT INTO modelo_detalle VALUES (1, 6, true);
INSERT INTO modelo_detalle VALUES (1, 7, true);
INSERT INTO modelo_detalle VALUES (1, 8, true);
INSERT INTO modelo_detalle VALUES (1, 9, true);
INSERT INTO modelo_detalle VALUES (1, 10, true);
INSERT INTO modelo_detalle VALUES (1, 11, true);
INSERT INTO modelo_detalle VALUES (1, 12, true);
INSERT INTO modelo_detalle VALUES (1, 13, true);
INSERT INTO modelo_detalle VALUES (1, 14, true);
INSERT INTO modelo_detalle VALUES (1, 15, true);
INSERT INTO modelo_detalle VALUES (1, 16, true);
INSERT INTO modelo_detalle VALUES (1, 17, true);
INSERT INTO modelo_detalle VALUES (1, 18, true);
INSERT INTO modelo_detalle VALUES (1, 19, true);
INSERT INTO modelo_detalle VALUES (1, 20, true);
INSERT INTO modelo_detalle VALUES (1, 21, true);
INSERT INTO modelo_detalle VALUES (1, 22, true);
INSERT INTO modelo_detalle VALUES (1, 23, true);
INSERT INTO modelo_detalle VALUES (1, 24, true);
INSERT INTO modelo_detalle VALUES (1, 25, true);
INSERT INTO modelo_detalle VALUES (1, 26, true);
INSERT INTO modelo_detalle VALUES (1, 27, true);
INSERT INTO modelo_detalle VALUES (1, 28, true);
INSERT INTO modelo_detalle VALUES (1, 29, true);
INSERT INTO modelo_detalle VALUES (1, 30, true);
INSERT INTO modelo_detalle VALUES (2, 31, true);


--
-- TOC entry 2307 (class 0 OID 0)
-- Dependencies: 212
-- Name: modelo_id_modelo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('modelo_id_modelo_seq', 1, false);


--
-- TOC entry 2269 (class 0 OID 18025)
-- Dependencies: 189
-- Data for Name: parte_caracteristica; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO parte_caracteristica VALUES (1, 10, true, true);
INSERT INTO parte_caracteristica VALUES (2, 12, true, true);
INSERT INTO parte_caracteristica VALUES (3, 11, true, true);
INSERT INTO parte_caracteristica VALUES (1, 5, true, true);
INSERT INTO parte_caracteristica VALUES (2, 5, true, true);
INSERT INTO parte_caracteristica VALUES (3, 5, true, true);
INSERT INTO parte_caracteristica VALUES (1, 8, true, true);
INSERT INTO parte_caracteristica VALUES (2, 8, true, true);
INSERT INTO parte_caracteristica VALUES (3, 8, true, true);
INSERT INTO parte_caracteristica VALUES (4, 8, true, true);
INSERT INTO parte_caracteristica VALUES (4, 9, true, true);
INSERT INTO parte_caracteristica VALUES (5, 8, true, false);
INSERT INTO parte_caracteristica VALUES (6, 1, true, true);
INSERT INTO parte_caracteristica VALUES (6, 8, true, true);
INSERT INTO parte_caracteristica VALUES (6, 9, true, true);
INSERT INTO parte_caracteristica VALUES (5, 5, true, true);
INSERT INTO parte_caracteristica VALUES (5, 1, true, true);
INSERT INTO parte_caracteristica VALUES (5, 9, true, true);
INSERT INTO parte_caracteristica VALUES (4, 1, true, false);
INSERT INTO parte_caracteristica VALUES (4, 3, false, true);
INSERT INTO parte_caracteristica VALUES (7, 1, true, true);
INSERT INTO parte_caracteristica VALUES (7, 2, true, true);


--
-- TOC entry 2308 (class 0 OID 0)
-- Dependencies: 183
-- Name: parte_id_parte_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('parte_id_parte_seq', 1, false);


--
-- TOC entry 2279 (class 0 OID 18086)
-- Dependencies: 199
-- Data for Name: tipo_requisito; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO tipo_requisito VALUES (3, 'Otros', true, 'Otros requisitos');
INSERT INTO tipo_requisito VALUES (1, 'participacion', true, 'Requisito para para cuando sea necesaria la participacion de algo');
INSERT INTO tipo_requisito VALUES (2, 'detalle', true, 'Requisto para detallar alguna informacion extra');


--
-- TOC entry 2281 (class 0 OID 18098)
-- Dependencies: 201
-- Data for Name: requisito; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO requisito VALUES (1, 1, 'unidad_recibe', true, 'Requisito que se usara para los diferentes tipos de documentos que posean una unidad que reciba activos fijos', '(?:Unidad recibe)+[A-Za-z]', 'Asignar el nombre de la unidad que recibira los activos fijos');
INSERT INTO requisito VALUES (2, 1, 'unidad_envia', true, 'Requisito para los tipos de documentos que requieran el nombre de una unidad de envio', '(?:Unidad envia)+[A-Za-z]', 'Como valor, asignar el nombre de la unidad que envia os activos fijos');
INSERT INTO requisito VALUES (5, 2, 'motivo_descargo', true, 'Requisito para establecer el motivo por el cual se esta realizando el descargo de activos fijos', '(?:Motivo de descargo)+[A-Za-z]', 'Asinar como valor el motivo por el cual se realiza el descargo');
INSERT INTO requisito VALUES (6, 2, 'lugar_descargo', true, 'Requisito para los documentos que requiera el nombre del lugar donde se realiza el descargo de los activos fijos', '(?:Lugar de descargo)+[A-Za-z]', 'Asignar en su valor el nombre del lugar donde se realizaran los descargos');
INSERT INTO requisito VALUES (3, 2, 'tipo_traslado', true, 'Requisito para especificar el tipo de traslado que se ha realizado', '(?:Tipo de traslado)+[A-Za-z]', 'Asignar a su valor el  tipo de traslado que fue realizado');
INSERT INTO requisito VALUES (4, 1, 'unidad_descargo', true, 'Requisito para especifacar el nombre de la unidad que recibira el descargo', '(?:Unidad descargo)+[A-Za-z]', 'Asignar en su valor, el nombre de la unidad que recibira el descargo');


--
-- TOC entry 2309 (class 0 OID 0)
-- Dependencies: 200
-- Name: requisito_id_requisito_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('requisito_id_requisito_seq', 1, false);


--
-- TOC entry 2310 (class 0 OID 0)
-- Dependencies: 181
-- Name: sub_clase_id_sub_clase_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sub_clase_id_sub_clase_seq', 1, false);


--
-- TOC entry 2311 (class 0 OID 0)
-- Dependencies: 187
-- Name: tipo_caracteristica_id_tipo_caracteristica_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tipo_caracteristica_id_tipo_caracteristica_seq', 1, false);


--
-- TOC entry 2312 (class 0 OID 0)
-- Dependencies: 202
-- Name: tipo_documento_id_tipo_documento_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tipo_documento_id_tipo_documento_seq', 8, true);


--
-- TOC entry 2286 (class 0 OID 18133)
-- Dependencies: 206
-- Data for Name: tipo_documento_requisito; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO tipo_documento_requisito VALUES (1, 1, true, true);
INSERT INTO tipo_documento_requisito VALUES (2, 2, true, true);
INSERT INTO tipo_documento_requisito VALUES (3, 3, true, true);
INSERT INTO tipo_documento_requisito VALUES (1, 2, true, true);
INSERT INTO tipo_documento_requisito VALUES (4, 3, true, true);
INSERT INTO tipo_documento_requisito VALUES (5, 3, true, true);


--
-- TOC entry 2313 (class 0 OID 0)
-- Dependencies: 191
-- Name: tipo_estado_id_tipo_estado_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tipo_estado_id_tipo_estado_seq', 1, false);


--
-- TOC entry 2314 (class 0 OID 0)
-- Dependencies: 198
-- Name: tipo_requisito_id_tipo_requisito_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tipo_requisito_id_tipo_requisito_seq', 12, true);


--
-- TOC entry 2290 (class 0 OID 18158)
-- Dependencies: 210
-- Data for Name: unidad; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO unidad VALUES (1, 1, 'Ingenieria', true, '1998-01-02 00:00:00', '13.99417', '-89.55972', 'Facultad de los estudiantes mas pro :v', '1010');
INSERT INTO unidad VALUES (2, 1, 'Derecho', true, '1998-01-02 00:00:00', '13.99417', '-89.55972', 'Facultad de derecho', '1020');
INSERT INTO unidad VALUES (3, 1, 'Idiomas', true, '1998-01-02 00:00:00', '13.99417', '-89.55972', 'Facultad para hacer manualidades', '1030');
INSERT INTO unidad VALUES (4, 1, 'Ciencias Sociales', true, '1998-02-02 00:00:00', '13.99417', '-89.55972', 'Facultad de  ciencias de la sociedad', '1040');


--
-- TOC entry 2315 (class 0 OID 0)
-- Dependencies: 209
-- Name: unidad_id_unidad_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('unidad_id_unidad_seq', 2, true);


-- Completed on 2016-09-10 17:55:12

--
-- PostgreSQL database dump complete
--

