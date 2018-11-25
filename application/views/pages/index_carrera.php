<html lang="es">
	<body>
			<div class="row col align-self-center" >
				<?php foreach ($carreras as $row) {?>
					<a href="<?= base_url("/carrera/verCarrera/".$row->id) ?>">
						<div class="card" style="width: 21rem;">
							<?php if ($row->imagen <> ''){ ?>
								<img class="card-img-top" src="<?= base_url('assets/uploads/images/'.$row->imagen) ?>" alt="undec">
							<?php }else { ?>
								<img class="card-img-top" src="<?= base_url('assets/uploads/images/default.jpg') ?>" alt="undec">
							<?php } ?>
							<div class="card-body">
								<h5 class="card-title"><?=$row->nombre;?></h5>
								<a href="<?= base_url("/carrera/verCarrera/".$row->id) ?>" class="btn btn-primary float-right">Ver Carrera</a>
							</div>
						</div>
					</a>
				<?php } ?>
			</div>
	</body>
	<hr>
</html>
