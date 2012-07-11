<?php
/**
 * @var $form \Symfony\Component\Form\FormView
 * @var $view \Symfony\Bundle\FrameworkBundle\Templating\PhpEngine
 */
?>
<? $view->extend('AdvancedFormCoreBundle::layout.html.php') ?>
<? $view['form']->setTheme($form, array('AdvancedFormCoreBundle:TaxClass', 'AdvancedFormCoreBundle:Form')) ?>
<?
$time = time();

/** @var $taxClass \AdvancedForm\CoreBundle\Entity\TaxClass */
$taxClass = $form->getVar('value');

/** @var $formHelper \Symfony\Bundle\FrameworkBundle\Templating\Helper\FormHelper */
$formHelper = $view['form'];

$pageTitle = $view['slots']->get('pageTitle');
if ($pageTitle) $title = $pageTitle;
?>


<?
$saveUrl = '';
if ($taxClass->getId() !== null && is_numeric($taxClass->getId()))
	$saveUrl = $view['router']->generate('BETaxClassEdit', array("id" => $taxClass->getId()));
else
	$saveUrl = $view['router']->generate('BETaxClassNew');
?>
<form class="b-edit-form" action="<?=$saveUrl ?>" method="post" <?=$view['form']->enctype($form) ?>>
	<div class="b-admin-form">

		<div class="b-module">
			<div class="b-box b-box_rounded">

				<div class="b-legend"><?= _("Internal Information") ?></div>
				<div class="b-box_inner b-reduce_middle">
					<div class="error">
						<?=$formHelper->errors($form) ?>
					</div>
					<?=$formHelper->widget($form['_token']) ?>

					<div class="error">
						<?=$formHelper->errors($form['title']) ?>
					</div>
					<dl class="b-defs-list b-defs_indent_middle clearfix">
						<dt>
							<?=$formHelper->label($form['title']) ?>
						</dt>
						<dd class="info">Title for you</dd>
						<dd class="info-layout">
							<?=$formHelper->widget($form['title']) ?>
						</dd>
					</dl>

					<div class="error">
						<?=$formHelper->errors($form['description']) ?>
					</div>
					<dl class="b-defs-list b-defs_indent_middle clearfix">
						<dt>
							<?=$formHelper->label($form['description']) ?>
						</dt>
						<dd class="info">Description for your colleagues</dd>
						<dd class="info-layout">
							<?=$formHelper->widget($form['description']) ?>
						</dd>
					</dl>

					<dl class="b-defs-list b-defs_indent_middle">
						<dd class="info">Preselect it for new products</dd>
						<dd class="info-layout">
							<div class="error">
								<?=$formHelper->errors($form['defaultForProducts']) ?>
							</div>
							<div class="b-choice">
								<?=$formHelper->widget($form['defaultForProducts']) ?>
								<?=$formHelper->label($form['defaultForProducts']) ?>
							</div>
						</dd>
					</dl>
				</div>
			</div>
		</div>


		<div class="b-title">
			<span class="b-h4">World Taxes</span>
		</div>

		<div class="b-msg">
			<div class="b-msg-body b-note">
				Tax rules are searched in the order they are listed here.
				<br>
				Only the first matching rule will be triggered.
			</div>
		</div>

		<? $view['slots']->append('xmp_templates');?>
			<xmp style="display: none" id="">

			</xmp>
		<? $view['slots']->stop();?>

		<?=$formHelper->widget($form['rules']) ?>

		<div class="b-control b-control-bottom">
			<table class="b-control-list wide">
				<tbody>
				<tr>
					<td class="b-control-list-item">
						<button class="btn btn-action" bhv="save" type="submit"><?= _("Save") ?></button>
						<button class="btn" bhv="cancel"><?= _("Cancel") ?></button>
					</td>
					<td class="b-control-list-item b-ar">
						<span class="b-note">
							<?= _("Current class is used for 10 products, 1 shipping method, gift wrapping.") ?>
						</span>
						<a href="<?= $view['router']->generate('BETaxClassDelete', array("id" => $taxClass->getId()))?>" class="btn btn-delete" bhv="delete"><?= _("Delete") ?></a>
					</td>
				</tr>
				</tbody>
			</table>
		</div>

	</div>
</form>

<?=$view['slots']->get('xmp_templates');?>
