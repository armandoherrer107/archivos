-- Database generated with pgModeler (PostgreSQL Database Modeler).
-- pgModeler  version: 0.8.2-beta
-- PostgreSQL version: 9.4
-- Project Site: pgmodeler.com.br
-- Model Author: ---


-- Database creation must be done outside an multicommand file.
-- These commands were put in this file only for convenience.
-- -- object: inventario | type: DATABASE --
-- -- DROP DATABASE IF EXISTS inventario;
-- CREATE DATABASE inventario
-- ;
-- -- ddl-end --
-- 

-- object: public.marca | type: TABLE --
-- DROP TABLE IF EXISTS public.marca CASCADE;
CREATE TABLE public.marca(
	id_marca serial NOT NULL,
	nombre character varying(225) NOT NULL,
	activo boolean NOT NULL DEFAULT true,
	descripcion text,
	CONSTRAINT pk_marca PRIMARY KEY (id_marca)
	 WITH (FILLFACTOR = 10)

);
-- ddl-end --
COMMENT ON TABLE public.marca IS 'Tabla con los fabricantes ';
-- ddl-end --
COMMENT ON COLUMN public.marca.id_marca IS 'identificador unico del fabricante';
-- ddl-end --

-- object: public.articulo | type: TABLE --
-- DROP TABLE IF EXISTS public.articulo CASCADE;
CREATE TABLE public.articulo(
	id_articulo bigserial NOT NULL,
	id_marca integer NOT NULL,
	id_parte bigint,
	nombre character varying(255) NOT NULL,
	descripcion text,
	CONSTRAINT pk_id_articulo PRIMARY KEY (id_articulo)
	 WITH (FILLFACTOR = 10)

);
-- ddl-end --
COMMENT ON COLUMN public.articulo.id_articulo IS 'Identificador unico de cada tipo modelo';
-- ddl-end --
COMMENT ON COLUMN public.articulo.id_marca IS 'Identificador del fabricante';
-- ddl-end --
COMMENT ON CONSTRAINT pk_id_articulo ON public.articulo  IS 'Relacion de la llave primaria de modelo';
-- ddl-end --

-- object: public.grupo_clase | type: TABLE --
-- DROP TABLE IF EXISTS public.grupo_clase CASCADE;
CREATE TABLE public.grupo_clase(
	id_grupo_clase serial NOT NULL,
	codigo_grupo_clase character varying(50),
	nombre character varying(225) NOT NULL,
	activo boolean NOT NULL DEFAULT true,
	descripcion text,
	CONSTRAINT pk_grupo_clase PRIMARY KEY (id_grupo_clase)
	 WITH (FILLFACTOR = 10)

);
-- ddl-end --
COMMENT ON COLUMN public.grupo_clase.id_grupo_clase IS 'Identificador del grupo clase';
-- ddl-end --
COMMENT ON COLUMN public.grupo_clase.nombre IS 'nombre del grupo';
-- ddl-end --
COMMENT ON COLUMN public.grupo_clase.descripcion IS 'Descripcion del Grupo';
-- ddl-end --

-- object: public.clase | type: TABLE --
-- DROP TABLE IF EXISTS public.clase CASCADE;
CREATE TABLE public.clase(
	id_clase serial NOT NULL,
	id_grupo_clase integer NOT NULL,
	codigo_clase character varying(50),
	nombre character varying(225) NOT NULL,
	activo boolean NOT NULL DEFAULT true,
	descripcion text,
	CONSTRAINT pk_clase PRIMARY KEY (id_clase)
	 WITH (FILLFACTOR = 10)

);
-- ddl-end --
COMMENT ON COLUMN public.clase.id_clase IS 'Identificador de la clase';
-- ddl-end --
COMMENT ON COLUMN public.clase.id_grupo_clase IS 'Id del grupo al que pertenece la clase';
-- ddl-end --
COMMENT ON COLUMN public.clase.nombre IS 'Nombre de la clase';
-- ddl-end --
COMMENT ON COLUMN public.clase.descripcion IS 'Descripcion de la clase';
-- ddl-end --

-- object: public.sub_clase | type: TABLE --
-- DROP TABLE IF EXISTS public.sub_clase CASCADE;
CREATE TABLE public.sub_clase(
	id_sub_clase serial NOT NULL,
	id_clase integer NOT NULL,
	codigo_sub_clase character varying(50),
	nombre character varying(225) NOT NULL,
	activo boolean NOT NULL DEFAULT true,
	descripcion text,
	CONSTRAINT pk_sub_clase PRIMARY KEY (id_sub_clase)
	 WITH (FILLFACTOR = 10)

);
-- ddl-end --
COMMENT ON COLUMN public.sub_clase.id_sub_clase IS 'Identificador de la Sub-clase';
-- ddl-end --
COMMENT ON COLUMN public.sub_clase.id_clase IS 'Id de la clase a la que pertenece la sub clase';
-- ddl-end --
COMMENT ON COLUMN public.sub_clase.nombre IS 'Nombre de la Sub-Clase';
-- ddl-end --
COMMENT ON COLUMN public.sub_clase.descripcion IS 'Descripcion de la Sub-Clase';
-- ddl-end --

-- object: public.parte | type: TABLE --
-- DROP TABLE IF EXISTS public.parte CASCADE;
CREATE TABLE public.parte(
	id_parte bigserial NOT NULL,
	id_sub_clase integer NOT NULL,
	nombre character varying(225) NOT NULL,
	descripcion text,
	CONSTRAINT pk_parte PRIMARY KEY (id_parte)
	 WITH (FILLFACTOR = 10)

);
-- ddl-end --
COMMENT ON COLUMN public.parte.id_parte IS 'Identificador unico de la parte';
-- ddl-end --
COMMENT ON COLUMN public.parte.id_sub_clase IS 'Sub clase a la que pertenece la parte';
-- ddl-end --
COMMENT ON COLUMN public.parte.nombre IS 'Nombre de la parte.  Ej. CPU, Disco Duro, Memoria RAM, etc.';
-- ddl-end --
COMMENT ON COLUMN public.parte.descripcion IS 'Descripcion de la parte';
-- ddl-end --

-- object: public.caracteristica | type: TABLE --
-- DROP TABLE IF EXISTS public.caracteristica CASCADE;
CREATE TABLE public.caracteristica(
	id_caracteristica bigserial NOT NULL,
	id_tipo_caracteristica integer NOT NULL,
	nombre character varying(225) NOT NULL,
	equivalencia numeric(4,2),
	descripcion text,
	patron text DEFAULT null,
	CONSTRAINT pk_caracteristica PRIMARY KEY (id_caracteristica)
	 WITH (FILLFACTOR = 10)

);
-- ddl-end --
COMMENT ON COLUMN public.caracteristica.id_caracteristica IS 'Identificador de la caracteristica';
-- ddl-end --
COMMENT ON COLUMN public.caracteristica.id_tipo_caracteristica IS 'Tipo a la cual la caracteristica pertenece';
-- ddl-end --
COMMENT ON COLUMN public.caracteristica.nombre IS 'Nombre de la caracteristica';
-- ddl-end --
COMMENT ON COLUMN public.caracteristica.descripcion IS 'Descripcion';
-- ddl-end --

-- object: public.tipo_caracteristica | type: TABLE --
-- DROP TABLE IF EXISTS public.tipo_caracteristica CASCADE;
CREATE TABLE public.tipo_caracteristica(
	id_tipo_caracteristica serial NOT NULL,
	nombre character varying(225) NOT NULL,
	activo boolean NOT NULL DEFAULT true,
	unidad_base text,
	descripcion text,
	CONSTRAINT pk_tipo_caracteristica PRIMARY KEY (id_tipo_caracteristica)
	 WITH (FILLFACTOR = 10)

);
-- ddl-end --
COMMENT ON COLUMN public.tipo_caracteristica.id_tipo_caracteristica IS 'Identificador del tipo de la caracteristica';
-- ddl-end --
COMMENT ON COLUMN public.tipo_caracteristica.descripcion IS 'Descripcion del tipo';
-- ddl-end --

-- object: public.parte_caracteristica | type: TABLE --
-- DROP TABLE IF EXISTS public.parte_caracteristica CASCADE;
CREATE TABLE public.parte_caracteristica(
	id_parte bigint NOT NULL,
	id_caracteristica bigint NOT NULL,
	activo boolean NOT NULL DEFAULT true,
	obligatorio boolean NOT NULL DEFAULT false,
	CONSTRAINT pk_parte_caracteristica PRIMARY KEY (id_parte,id_caracteristica)
	 WITH (FILLFACTOR = 10)

);
-- ddl-end --
COMMENT ON COLUMN public.parte_caracteristica.id_parte IS 'Id de la parte';
-- ddl-end --
COMMENT ON COLUMN public.parte_caracteristica.id_caracteristica IS 'Id de la caracteristica';
-- ddl-end --

-- object: public.articulo_caracteristica | type: TABLE --
-- DROP TABLE IF EXISTS public.articulo_caracteristica CASCADE;
CREATE TABLE public.articulo_caracteristica(
	id_caracteristica bigint NOT NULL,
	id_articulo bigint NOT NULL,
	activo boolean NOT NULL DEFAULT true,
	obligatorio boolean NOT NULL DEFAULT false,
	CONSTRAINT pk_articulo_caracteristica PRIMARY KEY (id_caracteristica,id_articulo)
	 WITH (FILLFACTOR = 10)

);
-- ddl-end --

-- object: public.tipo_estado | type: TABLE --
-- DROP TABLE IF EXISTS public.tipo_estado CASCADE;
CREATE TABLE public.tipo_estado(
	id_tipo_estado serial NOT NULL,
	nombre character varying(225) NOT NULL,
	activo boolean NOT NULL DEFAULT TRUE,
	descripcion text,
	CONSTRAINT pk_tipo_estado PRIMARY KEY (id_tipo_estado)
	 WITH (FILLFACTOR = 10)

);
-- ddl-end --
COMMENT ON COLUMN public.tipo_estado.nombre IS 'Nombre del tipo de estado';
-- ddl-end --

-- object: public.correlativo_estado | type: TABLE --
-- DROP TABLE IF EXISTS public.correlativo_estado CASCADE;
CREATE TABLE public.correlativo_estado(
	id_correlativo_estado bigserial NOT NULL,
	id_correlativo bigint NOT NULL,
	id_tipo_estado integer NOT NULL,
	fecha_inicio date NOT NULL DEFAULT now(),
	fecha_fin date DEFAULT null,
	observaciones text,
	nombre_usuario text,
	CONSTRAINT pk_id_correlativo_estado PRIMARY KEY (id_correlativo_estado)
	 WITH (FILLFACTOR = 10)

);
-- ddl-end --
COMMENT ON TABLE public.correlativo_estado IS 'nombre_usuario, quien hizo entrar a ese estado';
-- ddl-end --

-- object: public.correlativo | type: TABLE --
-- DROP TABLE IF EXISTS public.correlativo CASCADE;
CREATE TABLE public.correlativo(
	id_correlativo bigserial NOT NULL,
	id_modelo bigint NOT NULL,
	codigo_correlativo character varying(255),
	descripcion text,
	precio_inicial numeric(11,2) NOT NULL DEFAULT 0.0,
	precio_actual numeric(11,2) NOT NULL DEFAULT 0.0,
	CONSTRAINT pk_correlativo PRIMARY KEY (id_correlativo)
	 WITH (FILLFACTOR = 10)

);
-- ddl-end --

-- object: public.correlativo_caracteristica | type: TABLE --
-- DROP TABLE IF EXISTS public.correlativo_caracteristica CASCADE;
CREATE TABLE public.correlativo_caracteristica(
	id_correlativo bigint NOT NULL,
	id_articulo bigint NOT NULL,
	id_caracteristica bigint NOT NULL,
	valor text NOT NULL,
	CONSTRAINT pk_correlativo_caracteristica PRIMARY KEY (id_correlativo,id_articulo,id_caracteristica)
	 WITH (FILLFACTOR = 10)

);
-- ddl-end --

-- object: public.tipo_requisito | type: TABLE --
-- DROP TABLE IF EXISTS public.tipo_requisito CASCADE;
CREATE TABLE public.tipo_requisito(
	id_tipo_requisito serial NOT NULL,
	nombre character varying(255) NOT NULL,
	activo boolean NOT NULL DEFAULT TRUE,
	descripcion text,
	CONSTRAINT pk_tipo_requisito PRIMARY KEY (id_tipo_requisito)
	 WITH (FILLFACTOR = 10)

);
-- ddl-end --

-- object: public.requisito | type: TABLE --
-- DROP TABLE IF EXISTS public.requisito CASCADE;
CREATE TABLE public.requisito(
	id_requisito serial NOT NULL,
	id_tipo_requisito integer NOT NULL,
	nombre character varying(255) NOT NULL,
	activo boolean DEFAULT TRUE,
	descripcion text,
	patron text DEFAULT null,
	indicaciones text,
	CONSTRAINT pk_requisito PRIMARY KEY (id_requisito)
	 WITH (FILLFACTOR = 10)

);
-- ddl-end --
COMMENT ON TABLE public.requisito IS 'descripcion de que es el requisito, indicacion para el que ste llenanado';
-- ddl-end --

-- object: public.tipo_documento | type: TABLE --
-- DROP TABLE IF EXISTS public.tipo_documento CASCADE;
CREATE TABLE public.tipo_documento(
	id_tipo_documento serial NOT NULL,
	nombre character varying(255) NOT NULL,
	activo boolean NOT NULL DEFAULT TRUE,
	descripcion text,
	CONSTRAINT pk_tipo_documento PRIMARY KEY (id_tipo_documento)
	 WITH (FILLFACTOR = 10)

);
-- ddl-end --

-- object: public.documento | type: TABLE --
-- DROP TABLE IF EXISTS public.documento CASCADE;
CREATE TABLE public.documento(
	id_documento serial NOT NULL,
	id_tipo_documento integer NOT NULL,
	codigo character varying(255) NOT NULL,
	descripcion text,
	fecha_realizacion date NOT NULL DEFAULT now(),
	ubicacion_fisica text,
	url text,
	oficializado boolean NOT NULL DEFAULT false,
	CONSTRAINT pk_docuemento PRIMARY KEY (id_documento)
	 WITH (FILLFACTOR = 10)

);
-- ddl-end --
COMMENT ON TABLE public.documento IS 'flag oficializado es irreversible';
-- ddl-end --

-- object: public.tipo_documento_requisito | type: TABLE --
-- DROP TABLE IF EXISTS public.tipo_documento_requisito CASCADE;
CREATE TABLE public.tipo_documento_requisito(
	id_requisito integer NOT NULL,
	id_tipo_documento integer NOT NULL,
	obligatorio boolean NOT NULL DEFAULT TRUE,
	activo boolean,
	CONSTRAINT pk_tipo_documento_requisito PRIMARY KEY (id_requisito,id_tipo_documento)
	 WITH (FILLFACTOR = 10)

);
-- ddl-end --

-- object: public.documento_requisito | type: TABLE --
-- DROP TABLE IF EXISTS public.documento_requisito CASCADE;
CREATE TABLE public.documento_requisito(
	id_documento integer NOT NULL,
	id_tipo_documento_requisito integer NOT NULL,
	valor text NOT NULL,
	CONSTRAINT pk_documento_requisito PRIMARY KEY (id_documento,id_tipo_documento_requisito)
	 WITH (FILLFACTOR = 10)

);
-- ddl-end --

-- object: public.documento_detalle | type: TABLE --
-- DROP TABLE IF EXISTS public.documento_detalle CASCADE;
CREATE TABLE public.documento_detalle(
	id_documento integer NOT NULL,
	id_correlativo bigint NOT NULL,
	observaciones text,
	responsable_final text DEFAULT null,
	fecha_modificacion date NOT NULL DEFAULT now(),
	CONSTRAINT pk_documento_detalle PRIMARY KEY (id_documento,id_correlativo)
	 WITH (FILLFACTOR = 10)

);
-- ddl-end --
COMMENT ON TABLE public.documento_detalle IS 'fecha_modificacion, cualquier cosa que se le modifique al registro';
-- ddl-end --

-- object: public.unidad | type: TABLE --
-- DROP TABLE IF EXISTS public.unidad CASCADE;
CREATE TABLE public.unidad(
	id_unidad serial NOT NULL,
	id_unidad_padre integer,
	nombre character varying(255) NOT NULL,
	activo boolean NOT NULL DEFAULT true,
	fecha_inicio timestamp,
	latitud character varying(255),
	longitud character varying(255),
	descripcion text,
	codigo character varying(50),
	CONSTRAINT pk_unidad PRIMARY KEY (id_unidad)
	 WITH (FILLFACTOR = 10)

);
-- ddl-end --

-- object: public.modelo_detalle | type: TABLE --
-- DROP TABLE IF EXISTS public.modelo_detalle CASCADE;
CREATE TABLE public.modelo_detalle(
	id_modelo bigint NOT NULL,
	id_articulo bigint NOT NULL,
	activo boolean NOT NULL DEFAULT true,
	CONSTRAINT pk_modelo_detalle PRIMARY KEY (id_modelo,id_articulo)
	 WITH (FILLFACTOR = 100)

);
-- ddl-end --

-- object: public.modelo | type: TABLE --
-- DROP TABLE IF EXISTS public.modelo CASCADE;
CREATE TABLE public.modelo(
	id_modelo bigserial NOT NULL,
	nombre character varying(255) NOT NULL,
	activo boolean DEFAULT true,
	descripcion text,
	CONSTRAINT pk_id_modelo PRIMARY KEY (id_modelo)
	 WITH (FILLFACTOR = 100)

);
-- ddl-end --

-- object: public.correlativo_detalle | type: TABLE --
-- DROP TABLE IF EXISTS public.correlativo_detalle CASCADE;
CREATE TABLE public.correlativo_detalle(
	id_correlativo bigint NOT NULL,
	id_articulo bigint NOT NULL,
	CONSTRAINT pk_correlativo_detalle PRIMARY KEY (id_correlativo,id_articulo)
	 WITH (FILLFACTOR = 100)

);
-- ddl-end --

-- object: fk_modelo_parte | type: CONSTRAINT --
-- ALTER TABLE public.articulo DROP CONSTRAINT IF EXISTS fk_modelo_parte CASCADE;
ALTER TABLE public.articulo ADD CONSTRAINT fk_modelo_parte FOREIGN KEY (id_parte)
REFERENCES public.parte (id_parte) MATCH SIMPLE
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: fk_articulo_marca | type: CONSTRAINT --
-- ALTER TABLE public.articulo DROP CONSTRAINT IF EXISTS fk_articulo_marca CASCADE;
ALTER TABLE public.articulo ADD CONSTRAINT fk_articulo_marca FOREIGN KEY (id_marca)
REFERENCES public.marca (id_marca) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: fk_grupo_clase_clase | type: CONSTRAINT --
-- ALTER TABLE public.clase DROP CONSTRAINT IF EXISTS fk_grupo_clase_clase CASCADE;
ALTER TABLE public.clase ADD CONSTRAINT fk_grupo_clase_clase FOREIGN KEY (id_grupo_clase)
REFERENCES public.grupo_clase (id_grupo_clase) MATCH SIMPLE
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: fk_sub_clase | type: CONSTRAINT --
-- ALTER TABLE public.sub_clase DROP CONSTRAINT IF EXISTS fk_sub_clase CASCADE;
ALTER TABLE public.sub_clase ADD CONSTRAINT fk_sub_clase FOREIGN KEY (id_clase)
REFERENCES public.clase (id_clase) MATCH SIMPLE
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: fk_parte_sub_clase | type: CONSTRAINT --
-- ALTER TABLE public.parte DROP CONSTRAINT IF EXISTS fk_parte_sub_clase CASCADE;
ALTER TABLE public.parte ADD CONSTRAINT fk_parte_sub_clase FOREIGN KEY (id_sub_clase)
REFERENCES public.sub_clase (id_sub_clase) MATCH SIMPLE
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: fk_caracteristica_tipo_caracteristica | type: CONSTRAINT --
-- ALTER TABLE public.caracteristica DROP CONSTRAINT IF EXISTS fk_caracteristica_tipo_caracteristica CASCADE;
ALTER TABLE public.caracteristica ADD CONSTRAINT fk_caracteristica_tipo_caracteristica FOREIGN KEY (id_tipo_caracteristica)
REFERENCES public.tipo_caracteristica (id_tipo_caracteristica) MATCH SIMPLE
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: fk_parte_parte_caracteristica | type: CONSTRAINT --
-- ALTER TABLE public.parte_caracteristica DROP CONSTRAINT IF EXISTS fk_parte_parte_caracteristica CASCADE;
ALTER TABLE public.parte_caracteristica ADD CONSTRAINT fk_parte_parte_caracteristica FOREIGN KEY (id_parte)
REFERENCES public.parte (id_parte) MATCH SIMPLE
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: fk_caracteristica_parte_caracteristica | type: CONSTRAINT --
-- ALTER TABLE public.parte_caracteristica DROP CONSTRAINT IF EXISTS fk_caracteristica_parte_caracteristica CASCADE;
ALTER TABLE public.parte_caracteristica ADD CONSTRAINT fk_caracteristica_parte_caracteristica FOREIGN KEY (id_caracteristica)
REFERENCES public.caracteristica (id_caracteristica) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: fk_articulo_caracteristica_articulo | type: CONSTRAINT --
-- ALTER TABLE public.articulo_caracteristica DROP CONSTRAINT IF EXISTS fk_articulo_caracteristica_articulo CASCADE;
ALTER TABLE public.articulo_caracteristica ADD CONSTRAINT fk_articulo_caracteristica_articulo FOREIGN KEY (id_articulo)
REFERENCES public.articulo (id_articulo) MATCH SIMPLE
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: fk_correlativo_estado_tipo_estado | type: CONSTRAINT --
-- ALTER TABLE public.correlativo_estado DROP CONSTRAINT IF EXISTS fk_correlativo_estado_tipo_estado CASCADE;
ALTER TABLE public.correlativo_estado ADD CONSTRAINT fk_correlativo_estado_tipo_estado FOREIGN KEY (id_tipo_estado)
REFERENCES public.tipo_estado (id_tipo_estado) MATCH SIMPLE
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: fk_correlativo_estado_correlativo | type: CONSTRAINT --
-- ALTER TABLE public.correlativo_estado DROP CONSTRAINT IF EXISTS fk_correlativo_estado_correlativo CASCADE;
ALTER TABLE public.correlativo_estado ADD CONSTRAINT fk_correlativo_estado_correlativo FOREIGN KEY (id_correlativo)
REFERENCES public.correlativo (id_correlativo) MATCH SIMPLE
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: fk_correlativo_modelo | type: CONSTRAINT --
-- ALTER TABLE public.correlativo DROP CONSTRAINT IF EXISTS fk_correlativo_modelo CASCADE;
ALTER TABLE public.correlativo ADD CONSTRAINT fk_correlativo_modelo FOREIGN KEY (id_modelo)
REFERENCES public.modelo (id_modelo) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: fk_correlativo_caracteristica_correlativo | type: CONSTRAINT --
-- ALTER TABLE public.correlativo_caracteristica DROP CONSTRAINT IF EXISTS fk_correlativo_caracteristica_correlativo CASCADE;
ALTER TABLE public.correlativo_caracteristica ADD CONSTRAINT fk_correlativo_caracteristica_correlativo FOREIGN KEY (id_correlativo,id_articulo)
REFERENCES public.correlativo_detalle (id_correlativo,id_articulo) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: fk_requsito_tipo_requisito | type: CONSTRAINT --
-- ALTER TABLE public.requisito DROP CONSTRAINT IF EXISTS fk_requsito_tipo_requisito CASCADE;
ALTER TABLE public.requisito ADD CONSTRAINT fk_requsito_tipo_requisito FOREIGN KEY (id_tipo_requisito)
REFERENCES public.tipo_requisito (id_tipo_requisito) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: fk_documento_tipo_documento | type: CONSTRAINT --
-- ALTER TABLE public.documento DROP CONSTRAINT IF EXISTS fk_documento_tipo_documento CASCADE;
ALTER TABLE public.documento ADD CONSTRAINT fk_documento_tipo_documento FOREIGN KEY (id_tipo_documento)
REFERENCES public.tipo_documento (id_tipo_documento) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: fk_tipo_documento_requisito_requisito | type: CONSTRAINT --
-- ALTER TABLE public.tipo_documento_requisito DROP CONSTRAINT IF EXISTS fk_tipo_documento_requisito_requisito CASCADE;
ALTER TABLE public.tipo_documento_requisito ADD CONSTRAINT fk_tipo_documento_requisito_requisito FOREIGN KEY (id_requisito)
REFERENCES public.requisito (id_requisito) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: fk_tipo_documento_requisito_tipo_documento | type: CONSTRAINT --
-- ALTER TABLE public.tipo_documento_requisito DROP CONSTRAINT IF EXISTS fk_tipo_documento_requisito_tipo_documento CASCADE;
ALTER TABLE public.tipo_documento_requisito ADD CONSTRAINT fk_tipo_documento_requisito_tipo_documento FOREIGN KEY (id_tipo_documento)
REFERENCES public.tipo_documento (id_tipo_documento) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: fk_documento_requisito_documento | type: CONSTRAINT --
-- ALTER TABLE public.documento_requisito DROP CONSTRAINT IF EXISTS fk_documento_requisito_documento CASCADE;
ALTER TABLE public.documento_requisito ADD CONSTRAINT fk_documento_requisito_documento FOREIGN KEY (id_documento)
REFERENCES public.documento (id_documento) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: fk_documento_detalle_documento | type: CONSTRAINT --
-- ALTER TABLE public.documento_detalle DROP CONSTRAINT IF EXISTS fk_documento_detalle_documento CASCADE;
ALTER TABLE public.documento_detalle ADD CONSTRAINT fk_documento_detalle_documento FOREIGN KEY (id_documento)
REFERENCES public.documento (id_documento) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: fk_documento_detalle_correlativo | type: CONSTRAINT --
-- ALTER TABLE public.documento_detalle DROP CONSTRAINT IF EXISTS fk_documento_detalle_correlativo CASCADE;
ALTER TABLE public.documento_detalle ADD CONSTRAINT fk_documento_detalle_correlativo FOREIGN KEY (id_correlativo)
REFERENCES public.correlativo (id_correlativo) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: fk_unidad_unidad | type: CONSTRAINT --
-- ALTER TABLE public.unidad DROP CONSTRAINT IF EXISTS fk_unidad_unidad CASCADE;
ALTER TABLE public.unidad ADD CONSTRAINT fk_unidad_unidad FOREIGN KEY (id_unidad_padre)
REFERENCES public.unidad (id_unidad) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: fk_modelo_detalle_modelo | type: CONSTRAINT --
-- ALTER TABLE public.modelo_detalle DROP CONSTRAINT IF EXISTS fk_modelo_detalle_modelo CASCADE;
ALTER TABLE public.modelo_detalle ADD CONSTRAINT fk_modelo_detalle_modelo FOREIGN KEY (id_modelo)
REFERENCES public.modelo (id_modelo) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: fk_modelo_detalle_articulo | type: CONSTRAINT --
-- ALTER TABLE public.modelo_detalle DROP CONSTRAINT IF EXISTS fk_modelo_detalle_articulo CASCADE;
ALTER TABLE public.modelo_detalle ADD CONSTRAINT fk_modelo_detalle_articulo FOREIGN KEY (id_articulo)
REFERENCES public.articulo (id_articulo) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: fk_detalle_correlativo_correlativo | type: CONSTRAINT --
-- ALTER TABLE public.correlativo_detalle DROP CONSTRAINT IF EXISTS fk_detalle_correlativo_correlativo CASCADE;
ALTER TABLE public.correlativo_detalle ADD CONSTRAINT fk_detalle_correlativo_correlativo FOREIGN KEY (id_correlativo)
REFERENCES public.correlativo (id_correlativo) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --


