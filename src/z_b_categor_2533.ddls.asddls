@AbapCatalog.sqlViewName: 'ZV_CATEGOR_2533'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS Entidad - Categoria'
define view z_b_categor_2533
  as select from ztb_categor_2533
{
  key bi_categ    as BiCateg,
      descripcion as Descripcion
}
