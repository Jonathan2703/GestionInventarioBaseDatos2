<?php require_once "vistas/parte_superior.php" ?>
<div class="col" style=" background: #c850c0;
  background: -webkit-linear-gradient(45deg, #4158d0, #c850c0);
  background: -o-linear-gradient(45deg, #4158d0, #c850c0);
  background: -moz-linear-gradient(45deg, #4158d0, #c850c0);
  background: linear-gradient(45deg, #4158d0, #c850c0); display: inline-block;">
<h2 style="color: white; font-family: Arial; text-align: center;">Buscar Producto Por ID</h2>
<h4 style="color: white; font-family: Arial;">Ingrese el ID del producto a buscar:</h4>
	   <input class="form-control mr-sm-2" id="id" type="search" placeholder="ID Producto" aria-label="Search">
	   <button class="btn btn-dark my-2 my-sm-0" id="solicitar" >Buscar</button>
</div>
<div class="limiter">
		<div class="container-table100">
            <div class="wrap-table100">
        <div class="box">
				<div class="table100">
					<table id="Table" class="table table-dark">
						
					</table>
				</div>
			</div>
		</div>
	</div>
	<script src="js/cargarPorId.js"></script>
<?php require_once "vistas/parte_inferior.php" ?>