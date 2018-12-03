<main>
	
	<div class="row col align-self-center" >
		<div class="col-sm-3"></div>
		<div class="jumbotron col-sm-6 align-center sombreado">
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
					<?php if(empty($docente[0]->email2)) {?>
						<p><b>Email 2:</b> <h5>---</h5></p>
					<?php } else {?>
						<p><b>Email 2:</b> <h5><?=$docente[0]->email2;?></h5></p>
					<?php }?>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<p><?=$docente[0]->descripcion;?></p>
				</div>
			</div>
		</div>
		<div class="col-sm-3"></div>
	</div>

	<hr class="extra-margins">
</main>
