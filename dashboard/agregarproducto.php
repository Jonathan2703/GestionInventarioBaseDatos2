<?php require_once "vistas/parte_superior.php" ?>
<div class="contact1">
		<div class="container-contact1">
			<div class="contact1-pic js-tilt" data-tilt>
				<h2 style="text-align: center;">Gestión de Inventario</h2>
				<img src="images/imagen.jpg" alt="IMG">
				<img src="images/2.jpg" alt="IMG">
				<img src="images/Frutas.jpg" alt="IMG">
				<img src="images/e.png" alt="IMG">
			</div>

			<form class="contact1-form validate-form">
				<span class="contact1-form-title">
					Crear Producto
				</span>

				<div class="wrap-input1 validate-input" data-validate = "Name is required">
					<input class="input1" type="text" name="name" placeholder="Nombre">
					<span class="shadow-input1"></span>
				</div>

				<div class="wrap-input1 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
					<input class="input1" type="number" placeholder="Stock">
					<span class="shadow-input1"></span>
				</div>

				<div class="wrap-input1 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
					<input class="input1" type="number" placeholder="Stock Minimo">
					<span class="shadow-input1"></span>
				</div>

				<div class="wrap-input1 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
					<input class="input1" type="date" placeholder="Fecha Caducidad">
					<span class="shadow-input1"></span>
				</div>

				<div class="wrap-input1 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
					<input class="input1" type="number" placeholder="Precio">
					<span class="shadow-input1"></span>
				</div>

				<div class="wrap-input1 validate-input" data-validate = "Subject is required">
					<input class="input1" type="text" name="proveedor" placeholder="Proveedor">
					<span class="shadow-input1"></span>
				</div>
				<div class="wrap-input1 validate-input" data-validate = "Subject is required">
					<input class="input1" type="text" name="lote" placeholder="Lote">
					<span class="shadow-input1"></span>
				</div>
				<div class="wrap-input1 validate-input" data-validate = "Subject is required">
					<input class="input1" type="text" name="categotia" placeholder="Categoria">
					<span class="shadow-input1"></span>
				</div>

				<div class="wrap-input1 validate-input" data-validate = "Subject is required">
					<input class="input1" type="text" name="seccion" placeholder="Sección">
					<span class="shadow-input1"></span>
				</div>

				<div class="wrap-input1 validate-input" data-validate = "Message is required">
					<textarea class="input1" name="message" placeholder="Descripción"></textarea>
					<span class="shadow-input1"></span>
				</div>

				<div class="container-contact1-form-btn">
					<button class="contact1-form-btn">
						<span>
							Crear Producto
							<i class="fa fa-long-arrow-right" aria-hidden="true"></i>
						</span>
					</button>
				</div>
			</form>
		</div>
	</div>

<?php require_once "vistas/parte_inferior.php" ?>