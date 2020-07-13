var request = new Request('https://heroku-demochris.herokuapp.com/api/producto/inventario/');

var contenido = document.querySelector('#productos')
productoAgotados()
function productoAgotados() {
    console.log('Realizando Inventario')
    fetch(request)
        .then(res => res.json())
        .then(data => {
            contenido.innerHTML=`
            <h1 style="color:white">La fecha del inventario es ${data.fechaInventario}</h1>
            `
          console.log( data.length)
            $('#Table').append(
                '<tr> <th scope="col">Tipos Producto</th>' +
                '<th scope="col">Cantidad Productos</th>' +
                '<th scope="col">Valor Estimado</th>' +
                '</tr>'
            )
                $('#Table').append(
                    ' <tr><th scope="row">' + data.ventas + '</th>' +
                    ' <td>' + data.totalProductosVenta + '</td>' +
                    ' <td>' + data.valorInventarioVentas + '</td>' +
                    ' </tr>'
                )
                $('#Table').append(
                    ' <tr><th scope="row">' + data.caducado + '</th>' +
                    ' <td>' + data.totalProductosCaducados + '</td>' +
                    ' <td>' + data.valorInventarioCaducado + '</td>' +
                    ' </tr>'
                )
                $('#Table').append(
                    ' <tr><th scope="row">' + data.promocion + '</th>' +
                    ' <td>' + data.totalProductosPromocion + '</td>' +
                    ' <td>' + data.valorInventarioPromocion + '</td>' +
                    ' </tr>'
                )
            
        }).catch(err => console.log(err))
}