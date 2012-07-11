    <?php
/**
 * @var $view \Symfony\Component\Templating\PhpEngine
 * @var $form \Symfony\Component\Form\FormView
 * @var $formHelper \Symfony\Bundle\FrameworkBundle\Templating\Helper\FormHelper
 */
$formHelper = $view['form'];

/** @var $rule \AdvancedForm\CoreBundle\Entity\TaxClassRule */
$rule = $form->getVar('value');
$ruleId = 'new';
?>
<tbody class="entry-block" id="<?$form->getVar('id')?>" rel="<?= (!empty($rule)) ? $rule->getId() : '' ?>">
<tr class="entry-data" valign="top">
	<td>
		<div class="data-country"> <? // Micro format adr (http://microformats.org/wiki/adr) applied ?>
			<? if ($rule): ?>
				<?=$rule->getCountry()?>
			<? endif;?>
		</div>
		<div class="data-region">
			<? if ($rule): ?>
				<?=$rule->getState()?>
			<? endif;?>
		</div>

		<span class="data-zip-codes">
			<?= $form['zipCodes']->getVar('value') ?>
		</span>
	</td>
	<td>
		<span class="data-customer-type nowrap">
			<? if ($value = $form['customerType']->getVar('value')): ?>
			<?= $value ?>
			<? else: ?>
			<span class="disabled"><?= _("Any") ?></span>
			<? endif ?>
		</span>
	</td>
	<td>
		<div class="data-title1">
			<? foreach($form['title1'] as $title1): ?>
			<? /** @var $title1 \Symfony\Component\Form\FormView */?>
			<?
			$attr = $title1->getVar('attr');
			$value = $title1->getVar('value');
			?>
			<div class="b-l10n b-preview-holder locale" lang="<?=$attr['lang']?>">
				<i class="b-flag <?=$attr['lang']?>"></i>
				<span class="b-locale-preview"><?= (empty($value)) ? _("No title") : $value ?></span>
			</div>
			<? endforeach ?>
		</div>
		<div class="data-title2">
			<? foreach($form['title2'] as $title2): ?>
			<? /** @var $title2 \Symfony\Component\Form\FormView */?>
			<?
			$attr = $title2->getVar('attr');
			$value = $title2->getVar('value');
			?>
			<div class="b-l10n b-preview-holder locale" lang="<?=$attr['lang']?>">
				<i class="b-flag <?=$attr['lang']?>"></i>
				<span class="b-locale-preview"><?= (empty($value)) ? _("No title") : $value ?></span>
			</div>
			<? endforeach ?>
		</div>
	</td>
	<td class="b-ar">
		<div class="data-rate1">
			<?= $form['rate1']->getVar('value') ?>
		</div>
		<div class="data-rate2">
			<?= $form['rate2']->getVar('value') ?>
		</div>
	</td>
	<td>
		<span class="data-compound" <? if ($form['isCompound']->getVar('value') !== "true"): ?>style="display: none"<? endif ?>><?= _("Compounded") ?></span>
	</td>
</tr>
<tr class="entry-form" valign="top">
	<td>
		<div class="b-fields">
			<div class="error"><?= $formHelper->errors($form['country']) ?></div>
			<dl class="b-field b-field_vertical">
				<dt>
					<span>
						<?= $formHelper->label($form['country']) ?>
					</span>
				</dt>
				<dd>
					<?= $formHelper->widget($form['country']) ?>
				</dd>
			</dl>

			<div class="error"><?= $formHelper->errors($form['state']) ?></div>
			<dl class="b-field b-field_vertical">
				<dt>
					<span>
						<?= $formHelper->label($form['state']) ?>
					</span>
				</dt>
				<dd>
					<?= $formHelper->widget($form['state']) ?>
				</dd>
			</dl>

			<div class="error"><?= $formHelper->errors($form['zipCodes']) ?></div>
			<dl class="b-field b-field_vertical">
				<dt>
					<span>
						<?= $formHelper->label($form['zipCodes']) ?>
					</span>
				</dt>
				<dd>
					<?= $formHelper->widget($form['zipCodes']) ?>
				</dd>
			</dl>
		</div>
	</td>
	<td>
		<div class="error"><?= $formHelper->errors($form['customerType']) ?></div>
		<dl class="b-field b-field_vertical">
			<dt>
				<span>
					<?= $formHelper->label($form['customerType']) ?>
				</span>
			</dt>
			<dd>
				<?= $formHelper->widget($form['customerType']) ?>
			</dd>
		</dl>
	</td>
	<td>
		<div class="b-fields">
			<div class="error"><?= $formHelper->errors($form['title1']) ?></div>
			<dl class="b-field b-field_vertical">
				<dt>
					<span>
						<?= $formHelper->label($form['title1']) ?>
					</span>
				</dt>
				<dd>
					<?= $formHelper->widget($form['title1']) ?>
				</dd>
			</dl>
			<div class="error"><?= $formHelper->errors($form['title2']) ?></div>
			<dl class="b-field b-field_vertical">
				<dt>
					<span>
						<?= $formHelper->label($form['title2']) ?>
					</span>
				</dt>
				<dd>
					<?= $formHelper->widget($form['title2']) ?>
				</dd>
			</dl>
			<div>
				<div class="error"><?= $formHelper->errors($form['isCompound']) ?></div>
				<div class="b-choice">
					<?= $formHelper->widget($form['isCompound']) ?>
					<span>
						<?= $formHelper->label($form['isCompound']) ?> <span></span>
					</span>
				</div>
			</div>

		</div>
	</td>
	<td class="b-ar">
		<div class="b-fields">
			<div class="error"><?= $formHelper->errors($form['rate1']) ?></div>
			<dl class="b-field b-field_vertical">
				<dt>
					<span>
						<?= $formHelper->label($form['rate1']) ?>
					</span>
				</dt>
				<dd>
					<?= $formHelper->widget($form['rate1']) ?>
				</dd>
			</dl>
			<div class="error"><?= $formHelper->errors($form['rate2']) ?></div>
			<dl class="b-field b-field_vertical">
				<dt>
					<span>
						<?= $formHelper->label($form['rate2']) ?>
					</span>
				</dt>
				<dd>
					<?= $formHelper->widget($form['rate2']) ?>
				</dd>
			</dl>
		</div>
	</td>
</tr>
</tbody>

