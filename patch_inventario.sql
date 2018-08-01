-- modifica el nombre del campo id_tipo_documento_requisito de la tabla documento_requisito a id_requisito
ALTER TABLE documento_requisito RENAME id_tipo_documento_requisito TO id_requisito;

-- agrega el cambo numero_serie a la tabla correlativo_detalle
ALTER TABLE correlativo_detalle ADD numero_serie TEXT;
