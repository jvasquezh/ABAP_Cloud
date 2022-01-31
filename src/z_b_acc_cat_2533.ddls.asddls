@AbapCatalog.sqlViewName: 'ZV_ACC_CAT_2533'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS Entidad - Acceso Categoria'
define view z_b_acc_cat_2533
  as select from ztb_acc_cat_2533
{
  key bi_categ    as BiCateg,
  key tipo_acceso as TipoAcceso
}
