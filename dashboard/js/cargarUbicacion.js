const boton = document.getElementById('ubicacion').onclick = arrancar
var id=document.getElementById('id')

function arrancar(){
    console.log('entra a ver ubicacion id')
    fetch('https://heroku-demochris.herokuapp.com/api/producto/nombre/'+id.value)
    .then(res => res.json())
    .then(data => {
        console.log(data.nombre)
        
        $('#Table').append(
            '<tr> <th scope="col">Nombre Producto</th>' +
                '<th scope="col">Nombre Seccion</th>' +
                '<th scope="col">Descripcion Ubicacion</th>' +
                '</tr>'
        )
        $('#Table').append(
            ' <tr><th scope="row">' + data.nombre_producto + '</th>' +
            ' <td>' + data.seccion.nombre_seccion + '</td>' +
            ' <td>' + data.seccion.id_ubicacion_producto.descripcion + '</td>' +
            ' </tr>'
        )
        console.log('termina de agregar')
    }).catch(err => console.log(err))
}
