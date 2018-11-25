<main>
	<div class="container row">
		<div class="col-sm-4"></div>
		<div class="jumbotron col-sm-7 align-center sombreado">
			<p><b><h2><?=$docente[0]->nombre;?> <?=$docente[0]->apellido;?> </h2></b></p>
			<div class="row">
				<div class="col-sm-12">
					<p class="align-center"><?=$docente[0]->categoria;?></p>
				</div>

				<div class="col-sm-12">
					<p class="align-center">CUIT: <?=$docente[0]->cuit;?></p>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-6">
					<p><b>Email 1:</b> <h5><?=$docente[0]->email1;?></h5></p>
				</div>
				<div class="col-sm-6">
					<p><b>Email 2:</b> <h5><?=$docente[0]->email2;?></h5></p>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<label><b>Antecedentes</b></label>
					<p><?=$docente[0]->descripcion;?></p>
				</div>
			</div>
		</div>
		<div class="col-sm-2"></div>
	</div>

	<hr class="extra-margins">
</main>
