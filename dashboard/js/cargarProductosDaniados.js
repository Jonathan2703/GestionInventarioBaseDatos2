
var request = new Request('https://heroku-demochris.herokuapp.com/api/producto/1/estado?estado=2');
productosCaducados()
function productosCaducados() {
    console.log('productos ')
    fetch(request)
        .then(res => res.json())
        .then(data => {
            $('#Table').append(
                '<tr> <th scope="col">Id Producto</th>' +
                '<th scope="col">Nombre Producto</th>' +
                '<th scope="col">Categoria</th>' +
                '<th scope="col">Stock</th>' +
                '<th scope="col">Fecha Caducidad</th>' +
                '<th scope="col">Ubicacion</th>' +
                '</tr>'
            )
            if(data.length==0){
                alert('No existen productos caducados')
            }
            for (var i = 0; i < data.length; i++) {
                console.log(data[i].id_producto)
                $('#Table').append(
                    ' <tr><th scope="row">' + data[i].id + '</th>' +
                    ' <td>' + data[i].nombre + '</td>' +
                    '<td>' + data[i].categoria.nombre_categoria + '</td>' +
                    '<td>' + data[i].stock_producto + '</td>' +
                    '<td>' + data[i].fecha_expiracion_producto + '</td>' +
                    '<td>' + data[i].id_seccion_producto.id_ubicacion_producto.descripcion + '</td>' +
                    ' </tr>'
                )
            }
        }).catch(err => console.log(err))
}