@AbapCatalog.sqlViewName: 'ZV_LIBROS_2533'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS Entidad - Libros'
define view z_b_libros_2533
  as select from ztb_libros_2533
{
  key id_libro  as IdLibro,
  key bi_categ  as BiCateg,
      titulo    as Titulo,
      autor     as Autor,
      editorial as Editorial,
      idioma    as Idioma,
      paginas   as Paginas,
      precio    as Precio,
      moneda    as Moneda,
      formato   as Formato,
      url       as Url
}
