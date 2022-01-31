@AbapCatalog.sqlViewName: 'ZV_CLIENTE_2533'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS Entidad - Cliente'
define view z_b_cliente_2533
  as select from ztb_cliente_2533
{
  key id_cliente  as IdCliente,
  key tipo_acceso as TipoAcceso,
      nombre      as Nombre,
      apellidos   as Apellidos,
      email       as Email,
      url         as Url
}
