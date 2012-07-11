<?php

namespace AdvancedForm\CoreBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * TaxClassRule
 *
 * This entity has title1/rate1 and title2/rate2 to avoid one-to-many to some more table, taking into account that max
 * two taxes is enough in probably all real-life cases. Title is what distinct them, thus if they have same title (e.g.
 * "myVAT") checkout, as a side effect, will show only one "myVAT" line with both taxes in one (depending on the type of
 * combination - addictive (by default) or compound.
 *
 * Entity doesn't exist w/o TaxClass, so depends on it much and auto-removed with TaxClass.
 *
 * @ORM\Entity
 * @ORM\Table(name="_obb_tax_class_rule")
 */
class TaxClassRule {

    /**
     * @ORM\Id
     * @ORM\Column(name="tax_rule_id", type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     * @var integer
     */
    private $id;

    /**
     * @var string
     * @ORM\Column(type="string", length=255, nullable=false)
     * #Gedmo\Translatable
     */
    private $title1 = "";

    /**
     * @var string
     * @ORM\Column(type="float", nullable=false)
     */
    private $rate1 = 0.0;

    /**
     * @var string
     * @ORM\Column(type="string", length=255, nullable=true)
     * #Gedmo\Translatable
     */
    private $title2 = null;

    /**
     * @var string
     * @ORM\Column(type="float", nullable=true)
     */
    private $rate2 = null;

    /**
     * @var bool
     * @ORM\Column(type="boolean", name="is_compound", nullable=false)
     */
    private $isCompound = false;

    /**
     * @var string
     * @ORM\Column(type="string", nullable=true, name="zip_codes")
     */
    private $zipCodes = null;

    /**
     * @var \DateTime
     * #Gedmo\Timestampable(on="create")
     * @ORM\Column(type="datetime", name="created_at", nullable=false)
     */
    private $createdAt;

    /**
     * @var \DateTime
     * #Gedmo\Timestampable(on="update")
     * @ORM\Column(type="datetime", name="modified_at", nullable=false)
     */
    private $modifiedAt;

    /** ----------------------- Associations ----------------------- */

    /**
     * @ORM\ManyToOne (targetEntity="\AdvancedForm\CoreBundle\Entity\CustomerType")
     * @ORM\JoinColumn(name="customer_type_id", referencedColumnName="customer_type_id", nullable=true, onDelete="CASCADE")
     * @var \AdvancedForm\CoreBundle\Entity\CustomerType
     */
    private $customerType = null;

    /**
     * @ORM\ManyToOne (targetEntity="\AdvancedForm\CoreBundle\Entity\TaxClass", cascade={"persist"})
     * @ORM\JoinColumn(name="tax_class_id", referencedColumnName="tax_class_id", nullable=false, onDelete="CASCADE")
     * @var \AdvancedForm\CoreBundle\Entity\TaxClass
     */
    private $taxClass;

    /**
     * @ORM\ManyToOne (targetEntity="\AdvancedForm\CoreBundle\Entity\Country")
     * @ORM\JoinColumn(name="country_id", referencedColumnName="country_id", nullable=true, onDelete="CASCADE")
     * onDelete="CASCADE" to make it possible to TRUNCATE `countries` (and delete all its rules here)
     * @var \AdvancedForm\CoreBundle\Entity\Country
     */
    private $country = null;

    /**
     * @ORM\ManyToOne (targetEntity="\AdvancedForm\CoreBundle\Entity\CountryState")
     * @ORM\JoinColumn(name="country_state_id", referencedColumnName="country_state_id", nullable=true, onDelete="CASCADE")
     * onDelete="CASCADE" to make it possible to TRUNCATE `countries` (and delete all its rules here)
     * @var \AdvancedForm\CoreBundle\Entity\CountryState
     */
    private $state = null;

//    /**
//     * @var \AdvancedForm\CoreBundle\Entity\Translations\TaxClassRuleTranslation[] | \Doctrine\Common\Collections\ArrayCollection $translations
//     * @ORM\OneToMany(targetEntity="\AdvancedForm\CoreBundle\Entity\Translations\TaxClassRuleTranslation", mappedBy="object", cascade={"persist", "remove"})
//     */
//    protected $translations;

    function __construct() {
        $this->translations = new \Doctrine\Common\Collections\ArrayCollection();
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
     * @return \DateTime
     */
    public function getCreatedAt() {
        return $this->createdAt;
    }

    /**
     * @return \DateTime
     */
    public function getModifiedAt() {
        return $this->modifiedAt;
    }

    /**
     * @param string $rate1
     */
    public function setRate1($rate1) {
        $this->rate1 = $rate1;
    }

    /**
     * @return string
     */
    public function getRate1() {
        return $this->rate1;
    }

    /**
     * @param string $rate2
     */
    public function setRate2($rate2) {
        $this->rate2 = $rate2;
    }

    /**
     * @return string
     */
    public function getRate2() {
        return $this->rate2;
    }

    /**
     * @param \AdvancedForm\CoreBundle\Entity\TaxClass $taxClass
     */
    public function setTaxClass($taxClass) {
        $this->taxClass = $taxClass;
    }

    /**
     * @return \AdvancedForm\CoreBundle\Entity\TaxClass
     */
    public function getTaxClass() {
        return $this->taxClass;
    }

    /**
     * @param string $title1
     */
    public function setTitle1($title1) {
        $this->title1 = $title1;
    }

    /**
     * @return string
     */
    public function getTitle1() {
        return $this->title1;
    }


    /**
     * @param string $title2
     */
    public function setTitle2($title2) {
        $this->title2 = $title2;
    }

    /**
     * @return string
     */
    public function getTitle2() {
        return $this->title2;
    }

    /**
     * @param boolean $isCompound
     */
    public function setIsCompound($isCompound) {
        $this->isCompound = $isCompound;
    }

    /**
     * @return boolean
     */
    public function getIsCompound() {
        return $this->isCompound;
    }

    /**
     * @param \AdvancedForm\CoreBundle\Entity\CustomerType $customerType
     */
    public function setCustomerType(\AdvancedForm\CoreBundle\Entity\CustomerType $customerType) {
        $this->customerType = $customerType;
    }

    /**
     * @return \AdvancedForm\CoreBundle\Entity\CustomerType
     */
    public function getCustomerType() {
        return $this->customerType;
    }

    /**
     * @param \AdvancedForm\CoreBundle\Entity\Country $country
     */
    public function setCountry(\AdvancedForm\CoreBundle\Entity\Country $country) {
        $this->country = $country;
    }

    /**
     * @return \AdvancedForm\CoreBundle\Entity\Country
     */
    public function getCountry() {
        return $this->country;
    }

    /**
     * @param \AdvancedForm\CoreBundle\Entity\CountryState $state
     */
    public function setState($state) {
        $this->state = $state;
    }

    /**
     * @return \AdvancedForm\CoreBundle\Entity\CountryState
     */
    public function getState() {
        return $this->state;
    }

    /**
     * @param string $zipCodes
     */
    public function setZipCodes($zipCodes) {
        $this->zipCodes = $zipCodes;
    }

    /**
     * @return string
     */
    public function getZipCodes() {
        return $this->zipCodes;
    }

    public function getTranslationClass(){
        return '\AdvancedForm\CoreBundle\Entity\Translations\TaxClassRuleTranslation';
    }

}
