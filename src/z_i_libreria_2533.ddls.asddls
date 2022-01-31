@AbapCatalog.sqlViewName: 'ZV_LIBRERIA_2533'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS Entidad - Libreria'
@Metadata.allowExtensions: true
define view z_i_libreria_2533
  as select from    z_b_libros_2533  as _b_libros
    inner join      z_b_categor_2533 as _b_categor on _b_libros.BiCateg = _b_categor.BiCateg
    left outer join z_b_clt_lib_2533 as _b_clt_lib on _b_libros.IdLibro = _b_clt_lib.IdLibro
  association [1..*] to z_i_cltxlib_2533 as _i_cltxlib on $projection.IdLibro = _i_cltxlib.id_libro
{
  key _b_libros.IdLibro   as IdLibro,
      _b_libros.Titulo    as Titulo,
      _b_categor.BiCateg  as Categoria,
      _b_libros.Autor     as Autor,
      _b_libros.Editorial as Editorial,
      _b_libros.Idioma    as Idioma,
      _b_libros.Paginas   as Paginas,
      @Semantics.amount.currencyCode: 'Moneda'
      _b_libros.Precio    as Precio,
      @Semantics.currencyCode: true
      _b_libros.Moneda    as Moneda,
      _b_libros.Formato   as Formato,
      _b_libros.Url       as Url,
      case
        when _b_clt_lib.ventas < 1 then 0
        when _b_clt_lib.ventas = 1 then 1
        when _b_clt_lib.ventas = 2 then 2
        when _b_clt_lib.ventas > 2 then 3
        else 0
      end                 as Ventas,
      _i_cltxlib
}
