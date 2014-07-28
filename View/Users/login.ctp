	<div class="login">
		<?php echo $this->Session->flash('auth'); ?>
		<?php echo $this->Form->create('User'); ?>
		    <fieldset>
		        <legend>
		            <?php //echo __('Please enter your username and password'); ?>
		        </legend>
		        <?php echo $this->Form->input('username',array('label'=>'usuario'));
		         echo $this->Form->input('password',array('label'=>'contrasena'));     
		        ?>
		    
		    </fieldset>
		   
		<?php echo $this->Form->end(__('Login')); ?>
	</div>



