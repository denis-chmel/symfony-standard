<?php
/**
 * TODO this is a copy of widget of supportedCountries in CheckoutBundle/Shippings, I think they must reuse the widget
 * @var $entity \AdvancedForm\CoreBundle\Entity\TaxClass
 */
?>
<? foreach ($entity->getCountries() as $country): ?>
<img src="/img/countries/<?=strtolower($country->getIsoCode2())?>.png" width="16" height="11" title="<?=$country->getTitle()?>" alt="<?=$country->getTitle()?>" />
<? endforeach ?>
