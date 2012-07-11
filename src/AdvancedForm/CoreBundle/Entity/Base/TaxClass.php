<?php

namespace AdvancedForm\CoreBundle\Entity\Base;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\MappedSuperclass
 */
abstract class TaxClass {

    /**
     * @ORM\Id
     * @ORM\Column(name="tax_class_id", type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     * @var integer
     */
    protected $id;

    /**
     * @var string
     * @ORM\Column(type="string", length=255)
     */
    protected $title = "";

    /**
     * @var string
     * @ORM\Column(type="text")
     */
    protected $description = "";

    /** ----------------------- Associations ----------------------- */

    /**
     * @ORM\OneToMany(targetEntity="\AdvancedForm\CoreBundle\Entity\TaxClassRule", mappedBy="taxClass", cascade={"persist", "remove"}, orphanRemoval=true)
     * @var \AdvancedForm\CoreBundle\Entity\TaxClassRule[] | \Doctrine\Common\Collections\ArrayCollection
     */
    protected $rules;

    function __construct() {
        $this->rules    = new \Doctrine\Common\Collections\ArrayCollection();
    }

    /**
     * Get self id
     *
     * @return integer
     */
    public function getId() {
        return $this->id;
    }

    /**
     * @param string $description
     */
    public function setDescription($description) {
        $this->description = $description;
    }

    /**
     * @return string
     */
    public function getDescription() {
        return $this->description;
    }

    /**
     * @param string $title
     */
    public function setTitle($title) {
        $this->title = $title;
    }

    /**
     * @return string
     */
    public function getTitle() {
        return $this->title;
    }

    public function setRules($rules) {
        /** @var $rule \AdvancedForm\CoreBundle\Entity\TaxClassRule */
        foreach ($rules as $rule)
            $rule->setTaxClass($this);
        $this->rules = $rules;
    }

    /**
     * @return \AdvancedForm\CoreBundle\Entity\TaxClassRule[] | \Doctrine\Common\Collections\ArrayCollection
     */
    public function getRules() {
        return $this->rules;
    }

    public function addRule(\AdvancedForm\CoreBundle\Entity\TaxClassRule $rate) {
        $rate->setTaxClass($this);
        return $this->getRules()->add($rate);
    }

    public function removeRule(\AdvancedForm\CoreBundle\Entity\TaxClassRule $rate) {
        $rate->setTaxClass(null);
        $this->getRules()->removeElement($rate);
    }

    public function __toString() {
        return $this->getTitle();
    }

}
