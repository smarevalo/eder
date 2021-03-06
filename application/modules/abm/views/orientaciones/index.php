<?php if(isset($alerta))  {  
	echo $alerta;
	} 
?>

<?php echo $this->template->boton_nuevo('abm/orientaciones/add', 'Nueva Orientación'); ?>

<hr>

<div class="col-lg-11">
	<div class="box">
		<div class="box-header">
		  <h3 class="box-title"><?php echo lang('title_orientation');?></h3>
		</div>
		<!-- /.box-header -->
		<div class="box-body">
		  	<table id="tabla" class="table table-bordered table-striped">
			    <thead>
				    <tr>
						<th><?php echo lang('table_id_th');?></th>
						<th><?php echo lang('table_plan_th');?></th>
						<th><?php echo lang('table_name_th');?></th>
						<th><?php echo lang('table_actions_th');?></th>
					</tr>
			    </thead>
		    
			    <tbody>
					<?php foreach($orientaciones as $o):?>
						<tr>
							<td><?php echo htmlspecialchars($o->id,ENT_QUOTES,'UTF-8');?></td>
							<td><?php echo htmlspecialchars($o->nombre,ENT_QUOTES,'UTF-8');?></td>
							<td><?php echo htmlspecialchars($o->plan,ENT_QUOTES,'UTF-8');?></td>
							<td><?php echo anchor("abm/orientaciones/edit/".$o->id, '<span class="btn btn-primary btn-xs">Editar</span>') ;?>
						 	<?php echo anchor("abm/orientaciones/remove/".$o->id, '<span class="btn btn-danger btn-xs">Eliminar</span>') ;?></td>
						 </tr>
					 <?php endforeach;?>
				</tbody>

			    <tfoot>
				    <tr>
						<th><?php echo lang('table_id_th');?></th>
						<th><?php echo lang('table_plan_th');?></th>
						<th><?php echo lang('table_name_th');?></th>
						<th><?php echo lang('table_actions_th');?></th>
					</tr>
			    </tfoot>
		  	</table>
	   	</div>
		<!-- /.box-body -->
	</div>
	<!-- /.box -->
</div>    

<hr>