const botones=document.getElementById('enviar');
cargarEventos();
var correo=document.getElementById('correo')
var contra=document.getElementById('contra')
function cargarEventos(){
console.log("entro")
    botones.addEventListener('click',iniciar);
}
function iniciar(e){
    e.preventDefault();
    const consulta='https://heroku-demochris.herokuapp.com//api/producto/'+correo.value+'/contra?contra='+contra.value
    console.log('la consulta es '+consulta)
    fetch(consulta)
    .then(res => res.json())
    .then(data => {
        console.log('el tam es '+data.length)
    if(data.length==1){
        console.log('si encuentra suaurio')
        window.location.href = "dashboard/inicio.php";
    }

        
    }).catch(err => alert('verifique los datod'+err))
    
}    