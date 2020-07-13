const boton = document.getElementById('solicitar').onclick = arrancar
var id=document.getElementById('id')

function arrancar(){
    console.log('por id')
    fetch('https://heroku-demochris.herokuapp.com/api/producto/'+id.value)
        .then(res => res.json())
        .then(data => {
            $('#Table').append(
                '<tr> <th scope="col">Id</th>' +
                '<th scope="col">Nombre</th>' +
                '<th scope="col">Precio</th>' +
                '<th scope="col">Stock</th>' +
                '<th scope="col">Fecha Expiracion</th>' +
                '<th scope="col">Descripcion</th>' +
                '<th scope="col">Proveedor</th>' +
                '<th scope="col">Id Lote</th>' +
                '<th scope="col">Nombre Seccion</th>' +
                '<th scope="col">Categoria</th>' +
                '<th scope="col">Estado</th>' +
                '<th scope="col">Ubicación</th>' +
                '</tr>'
            )
            $('#Table').append(
                ' <tr><th scope="row">' + data.id+ '</th>' +
                ' <td>' + data.nombre + '</td>' +
                ' <td>' + data.precio_producto + '</td>' +
                ' <td>' + data.stock_producto + '</td>' +
                ' <td>' + data.fecha_expiracion_producto + '</td>' +
                ' <td>' + data.descripcion_producto + '</td>' +
                ' <td>' + data.proveedor_producto + '</td>' +
                ' <td>' + data.id_lote_producto + '</td>' +
                ' <td>' + data.id_seccion_producto.nombre_seccion + '</td>' +
                ' <td>' + data.categoria.nombre_categoria + '</td>' +
                ' <td>' + data.estado.nombre_estado + '</td>' +
                ' <td>' + data.id_seccion_producto.id_ubicacion_producto.descripcion + '</td>' +
                ' </tr>'
            )

            
        }).catch(err => console.log(err))
}