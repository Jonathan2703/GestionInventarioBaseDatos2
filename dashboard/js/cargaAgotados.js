var request = new Request('https://heroku-demochris.herokuapp.com/api/producto/listar/');

productoAgotados()
function productoAgotados() {
    console.log('hahaaha')
    fetch(request)
        .then(res => res.json())
        .then(data => {
          console.log( data.length)
            $('#Table').append(
                '<tr> <th scope="col">Id Producto</th>' +
                '<th scope="col">Nombre Producto</th>' +
                '<th scope="col">Stock Minimo Producto</th>' +
                '<th scope="col">Stock Actual Producto</th>' +
                '</tr>'
            )
            for (var i = 0; i < data.length; i++) {
                console.log(data[i].id_producto)
                $('#Table').append(
                    ' <tr><th scope="row">' + data[i].id + '</th>' +
                    ' <td>' + data[1].nombre + '</td>' +
                    ' <td>' + data[1].stock_minimo + '</td>' +
                    '<td>' + data[1].stock_producto + '</td>' +
                    ' </tr>'
                )
            }
        }).catch(err => console.log(err))
}