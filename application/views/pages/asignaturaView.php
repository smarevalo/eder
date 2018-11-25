<main>
	<ul class="nav nav-tabs nav-justified">
		<li class="nav-item">
			<h1>Asignatura</h1>
		</li>
	</ul>


	<!-- Tabla de carreras -->
	<div class="container tab-content card" >
		<table class="table table-striped sombreado">
			<tr><h3><?= $asignatura[0]->nombre; ?></h3></tr>
			<thead class="thead-eder">
				<tr>
					<th><a >Carrera</a></th>
					<th><a >Programa</a></th>
					<th><a >Año</a></th>
					<th><a >Regimen</a></th>
					<th><a >Plan</a></th>
					<th><a >Total Hs</a></th>
				</tr>
			</thead>

            <tbody>
				<?php foreach ($pr as $key => $row) {?>
					<tr> 
						<td><?=$row->carrera;?></td>
						<td>
							<?php 
								if (empty($programa[$key]->programa))
								{ 
									echo "- - -"; 
								} 
								else 
								{ 
								?>	
									<a href="<?= base_url($programa[$key]->programa); ?>" target="blank">
										Ver Programa
									</a>
							<?php } ?>
						</td>
						<td><?=$row->anio;?></td>
						<td><?=$row->regimen;?></td>
						<td><?=$row->plan;?></td>
						<td><?=$row->horas_anuales;?></td>
					</tr>
				<?php } ?>
			</tbody>
        </table>
    </div>
	<!-- Fin Tabla Carrera -->

    <hr>

	<!-- Tabla Equipo -->
	<div class="container tab-content card" >
		<table class="table table-hover sombreado">
			<thead class="thead-eder">
				<tr>
                    <th colspan="6"><h3>EQUIPO</h3></th>
                </tr>
			</thead>

            <tbody>
				<?php foreach ($equipo as $row) {?>
					<tr> 
						<td colspan="2">
							<a href="<?= base_url('/docente/verDocente/'.$row->id_docente)?>">
								<?=strtoupper($row->apellido);?>, <?=strtoupper($row->nombre);?>
							</a>
						</td>
						<td colspan="2"><?=$row->descripcion;?></td>
						<td colspan="2"><?=$row->email1;?></td>
					</tr>
				<?php } ?>
			</tbody>
        </table>
    </div>
	<!-- Fin Tabla Equipo -->

	<hr>

	<!-- Tabla Correlatividades -->
	<div class="container tab-content card" >
		<table class="table table-striped sombreado">
			<thead class="thead-eder">
				<tr>
					<th><h3>CORRELATIVIDADES</h3></th>
				</tr>
			</thead>
        </table>

		<table class="table table-striped sombreado">
			<thead>
				<tr>
                    <th colspan="6"><h3>Regularizada para Cursar</h3></th>
                </tr>
			</thead>

            <tbody>
				<?php 
					if(empty($aprobadaRendir)) {echo "<tr><td colspan='6'>NINGUNA</td></tr>";}
					else
					{
						foreach ($regulCursar as $row) 
						{?>
							<tr>
								<td colspan="6">
									<a href="<?= base_url('/asignatura/verAsignatura/'.$row->id_asignatura)?>">
										<?=$row->codigo;?> - <?=$row->correlativa;?>
									</a>
								</td>
							</tr>	
				  <?php }
					} ?>
			</tbody>
        </table>

		<table class="table table-striped sombreado">
			<thead>
				<tr>
                    <th colspan="6"><h3>Aprobada para Cursar</h3></th>
                </tr>
			</thead>

            <tbody>
				<?php 
					if(empty($aprobadaRendir)) {echo "<tr><td colspan='6'>NINGUNA</td></tr>";}
					else
					{
						foreach ($aprobadaCursar as $row) 
						{?>
							<tr>
								<td colspan="6">
									<a href="<?= base_url('/asignatura/verAsignatura/'.$row->id_asignatura)?>">
										<?=$row->codigo;?> - <?=$row->correlativa;?>
									</a>
								</td>
							</tr>	
				  <?php }
					} ?>
			</tbody>
        </table>

		<table class="table table-striped sombreado">
			<thead>
				<tr>
                    <th colspan="6"><h3>Aprobada para Rendir</h3></th>
                </tr>
			</thead>

            <tbody>
				<?php 
					if(empty($aprobadaRendir)) {echo "<tr><td colspan='6'>NINGUNA</td></tr>";}
					else
					{
						foreach ($aprobadaRendir as $row) 
						{?>
							<tr>
								<td colspan="6">
									<a href="<?= base_url('/asignatura/verAsignatura/'.$row->id_asignatura)?>">
										<?=$row->codigo;?> - <?=$row->correlativa;?>
									</a>
								</td>
							</tr>	
				  <?php }
					} ?>
			</tbody>
        </table>
    </div>
	<!-- Fin Tabla Correlatividades -->

	<hr>

</main>
