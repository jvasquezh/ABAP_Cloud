@AbapCatalog.sqlViewName: 'ZV_CLT_LIB_2533'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS Entidad - Cliente Libro'
define view z_b_clt_lib_2533
  as select from ztb_clt_lib_2533
{
  key id_libro                     as IdLibro,
      count( distinct id_cliente ) as ventas
}
group by
  id_libro
