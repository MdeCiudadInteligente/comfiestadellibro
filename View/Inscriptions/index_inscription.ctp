<script language="JavaScript">
function doPrint(){
document.all.item("noprint").style.visibility='hidden';
document.getElementById("btnImprimir").style.display='none';
document.getElementById("footer").style.display='none';
document.getElementById("logospatroc").style.display='block';
window.print();
}
</script>
<div class="inscripciones">
<?php echo $this->Html->image('/img/banner-aplicativo4.jpg', array('border' => '0'))?>
<!--  <a href="javascript:window.print()"> imprimir </a>-->
<?php echo $this->Form->create('Inscripcion'); 
 
		$user_level= $this->Session->read('Auth.User.permission_level');
		if ($user_level == '1'){
		  echo $this->Html->link(__('Close Section'), array('controller' => 'users', 'action' => 'logout')); 
		 }
?>
	<table>
			<tr>
				<h2 align="center"></h2>	
				
		<?php	
				//echo $digitovers;
				echo "</br>";
				echo "</br>";
				echo 'Medellín, '.$fecha;
				echo "</br>";
				echo "</br>";
				echo "</br>";
				echo "</br>";
				echo $razon_social;
				echo "</br>";
				echo $nitc;
				echo "</br>";
				echo "</br>";
				echo "</br>";
				echo "</br>";
			   	echo "Apreciado postulante";
			   	echo "</br>";
			   	echo "</br>";
			   	echo "Agradecemos su interés en hacer parte de la 8va. Fiesta del libro y la cultura, evento de ciudad que hace parte de los Eventos del libro, estrategia del Plan Municipal Medellín Lectura Viva.";
			   	echo "</br>";
			   	echo "</br>";
			   	if($citacionn!=''){
			   	echo "De acuerdo a la convocatoria diligenciada anteriormente se asignarán las citas, según a su categoría y orden de inscripción a través del formulario, le enviamos este documento con el fin de informarle que su cita queda asignada de la siguiente manera:";		
			   	echo "</br>";
			   	echo "</br>";
				echo "<b>Fecha y hora de su cita:</b> \n";
				echo "</br>";
				echo $this->Time->format($citacionn, '%B %e, %Y %I:%M %p');
				echo "</br>";
				echo "</br>";
				echo '<b>Lugar:</b> Oficina  de Los Eventos del Libro, Casa del Patrimonio, Carrera 50 No 59 – 06 Prado Centro';
				echo "</br>";
				echo "</br>";
				echo '<b>Su cita será atendida por:</b> Nathalia Ortega';
				echo "</br>";
				echo "</br>";
				echo 'Recuerde adjuntar por este medio todos los documentos solicitados para hacer válida la asignación de su stand.';
				echo "</br>";
				echo "</br>";
				echo "•	Cámara de comercio, renovada del 2014 y con una vigencia máxima de 30 días.";
				echo "</br>";
				echo "•	RUT (actualizado del 2013 en adelante)";
				echo "</br>";
				echo "•	Cédula del representante legal";
				echo "</br>";
				echo "</br>";
				echo 'Esperamos contar con su presencia en la 8va. Fiesta del libro y la cultura. Agradecemos su participación, colaboración y puntualidad en su cita. Si por algún motivo no asiste a la misma, su stand quedará disponible';
				echo "</br>";
				echo "</br>";
				if($attached1!='' && $attached2!='' && $attached3!=''){
				echo "Sus archivos ya han sido adjuntados:";
				echo "</br>";
				echo "</br>";
				echo $attached1;
				echo "</br>";
				echo "</br>";
				echo $attached2;
				echo "</br>";
				echo "</br>";
				echo $attached3;
				}
				}else{
				echo 'Las citas serán asignadas de acuerdo a la categoría y orden de inscripción del formulario diligenciado anteriormente. Según el procedimiento fueron asignados la totalidad de los cupos disponibles. 
Actualmente su entidad queda en lista de espera. En caso de tener disponibilidad de stands después de atendidas las citas, comenzaremos a asignarlos en el orden de la lista de espera que arroja el sistema.';
				echo "</br>";
				echo "</br>";
				echo 'Esté pendiente de nuestras comunicaciones.';
				}
				echo "</br>";
				echo "</br>";
				echo 'Cordialmente';
				echo "</br>";
				echo "</br>";
				echo '<b>Nathalia Ortega Viana</b>';
				echo "</br>";
				echo 'Jefe Comercial Eventos del Libro 2014';
				echo "</br>";
				echo 'comercializacion@fiestadellibroylacultura.com';
				echo "</br>";
				echo 'Teléfono: (034) 444 86 91 – Ext. 105';
				echo "</br>";
				echo 'Celular: 321 759 84 22';
				echo "</br>";
				echo "</br>";
				
					//echo $institutionidp;
					//echo "id de la institucion";
					//echo  $condicionp;
					//echo  $nit;
					//echo  $condciudad;
					//echo  $compciudad;
					?>
			</tr>			
	</table>
	<div id=noprint>
	    <div class="actions" align="left">
		<?php if(($attached1=='' || $attached2=='' || $attached3=='') && $citacionn!=''){
				echo $this->Html->link(__('Adjuntar archivos'), array('controller' => 'Inscriptions', 'action' => 'attached_add',$nitc)); 
			  }
		?>
		</div>
		<div class="submit" style="padding:24px ">
		<input type="submit" id="btnImprimir" name="imprimir" value="Imprimir" onclick="window.doPrint();">
		<?php //echo $this->Html->link(__('Adjuntar archivos'), array('controller' => 'Inscriptions', 'action' => 'attached_add',$nitc)); ?>
		</div>
   </div>
   <div id="logoscontainer">
	   <div id="logospatroc" >
	  		<?php echo $this->Html->image('/img/logosimp.jpg', array('border' => '0'))?>
	  </div>
   </div>
</div>
