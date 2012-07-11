<?php

namespace AdvancedForm\CoreBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilder;
use Symfony\Component\Form\FormBuilderInterface;

class TaxClassType extends AbstractType {

    /** @var \Doctrine\ORM\EntityManager */
    private $em;

    function __construct(\Doctrine\ORM\EntityManager $em)
    {
        $this->em = $em;
    }

    public function getName() {
        return 'taxclass';
    }

    public function buildForm(FormBuilderInterface $builder, array $options) {
        $builder->add('title', 'text', array(
            'attr' => array(
                'class' => 'b-input_title'
            ),
        ));
        $builder->add('description', 'textarea', array(
            'required' => false,
            'attr' => array(
                'rows' => 7,
                'class' => 'b-input',
            ),
        ));

        $builder->add('defaultForProducts', 'checkbox', array(
            'required' => false,
            'property_path' => false,
            'label' => _("Default for products"),
        ));

        $builder->add('rules', 'collection', array(
            'allow_add' => true,
            'allow_delete' => true,
            'prototype' => true,
            'type' => new \AdvancedForm\CoreBundle\Form\TaxRuleType($this->em),
        ));
    }

    public function getDefaultOptions() {
        return array(
            'data_class' => 'AdvancedForm\CoreBundle\Entity\TaxClass',
        );
    }

}

