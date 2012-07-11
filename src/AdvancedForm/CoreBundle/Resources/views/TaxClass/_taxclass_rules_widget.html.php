<?php
	/**
	 * @var $view \Symfony\Bundle\FrameworkBundle\Templating\PhpEngine
	 * @var $form \Symfony\Component\Form\FormView
	 * @var $child \Symfony\Component\Form\FormView
	 * @var $formHelper \Symfony\Bundle\FrameworkBundle\Templating\Helper\FormHelper
	 */
	$formHelper = $view['form'];
?>
<div class="error">
	<?= $formHelper->errors($form) ?>
</div>
<table border="1" class="advanced wide" id="tax-rules" data-prototype="<?=$view->escape($formHelper->row($form->getVar('prototype'))) ?>">
<thead>
<tr class="titles">
	<th class="first">
		<span>Destination</span>
	</th>
	<th>
		<span>Customer Type</span>
	</th>
	<th>
		<span>Tax Title</span>
	</th>
	<th>
		<span>Tax, %</span>
	</th>
</tr>
</thead>
<? foreach($form as $child):?>

<?= $formHelper->row($child) ?>
<? endforeach ?>
<tfoot>
<tr>
	<td colspan="5" class="first"></td>
</tr>
</tfoot>
</table>
