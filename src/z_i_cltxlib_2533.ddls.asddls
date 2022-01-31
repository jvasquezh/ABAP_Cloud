@AbapCatalog.sqlViewName: 'ZV_CLTXLIB_2533'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS Entidad - Libro x Cliente Detalle'
@Metadata.allowExtensions: true
define view z_i_cltxlib_2533
  as select from ztb_cliente_2533 as _b_cliente
    inner join   ztb_clt_lib_2533 as _b_clt_lib on _b_cliente.id_cliente = _b_clt_lib.id_cliente
{
  key _b_clt_lib.id_libro    as id_libro,
  key _b_clt_lib.id_cliente  as id_cliente,
      _b_cliente.tipo_acceso as TipoAcceso,
      _b_cliente.nombre      as Nombre,
      _b_cliente.apellidos   as Apellidos,
      _b_cliente.email       as Email,
      _b_cliente.url         as Url
}
