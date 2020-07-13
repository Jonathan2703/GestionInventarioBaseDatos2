var formulario=document.getElementById('formulario');
formulario.addEventListener('submit',function(e){
e.preventDefault();
console.log('formulad')
var datos= new FormData(formulario);
console.log(datos)
console.log(datos.get('name'))



var myHeaders = new Headers();
myHeaders.append("Content-Type", "application/json");

var raw = JSON.stringify({"nombre":datos.get('name'),"stock_producto":datos.get('stock'),"stock_minimo":datos.get('stockmin'),"descripcion_producto":datos.get('message'),"precio_producto":datos.get('precio'),"costo_producto":1.2,"descuento":0,"fecha_expiracion_producto":datos.get('fecha'),"proveedor_producto":datos.get('proveedor'),"id_lote_producto":datos.get('lote'),"id_seccion_producto":{"id_seccion":datos.get('seccion'),"nombre_seccion":"","descripcion_seccion":"","id_ubicacion_producto":{"id_ubicacion":1,"descripcion":"Por arreglar"}},"categoria":{"id_categoria":datos.get('categoria'),"nombre_categoria":"","descripcion_categoria":"","hibernateLazyInitializer":{}},"estado":{"id_estado":1,"nombre_estado":"producto venta","hibernateLazyInitializer":{}},"valoracion":1});
console.log('se va a ingresar '+raw)
var requestOptions = {
  method: 'POST',
  headers: myHeaders,
  body: raw,
  redirect: 'follow'
};

fetch("https://heroku-demochris.herokuapp.com/api/producto", requestOptions)
  .then(response => response.text())
  .then(result => console.log(result))
  .catch(error => console.log('error', error));

})

