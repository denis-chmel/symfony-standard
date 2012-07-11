<?php

namespace AdvancedForm\CoreBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;

/**
 * Customer Type
 * @ORM\Entity
 * @ORM\Table(name="_obb_customer_type")
 * @Assert\Callback(methods={"checkValid"})
 */
class CustomerType {

	/** ----------------------- Attributes ----------------------- */

	/**
	 * @ORM\Id
	 * @ORM\Column(type="integer", name="customer_type_id")
	 * @ORM\GeneratedValue(strategy="AUTO")
	 * @var integer
	 */
	protected $id;

	/**
	 * @var string
	 * #Gedmo\Translatable
	 * @ORM\Column(type="string", name="title", nullable=false)
	 */
	protected $title = '';

	/**
	 * @var string
	 * #Gedmo\Translatable
	 * @ORM\Column(type="string", name="footer_invoice", nullable=true)
	 */
	protected $footerInvoice = '';

	/**
	 * #Gedmo\Locale
	 * Used locale to override Translation listener`s locale
	 * this is not a mapped field of entity metadata, just a simple property
	 */
	protected $locale;

	/**
	 * @ORM\Column(name="is_enabled", type="boolean")
	 * @var bool
	 */
	protected $isEnabled = true;

	/**
	 * @ORM\Column(name="is_vat", type="boolean")
	 * @var bool
	 */
	protected $isVATRequired = false;

	/**
	 * @ORM\Column(name="is_ean", type="boolean")
	 * @var bool
	 */
	protected $isEANRequired = false;

	/**
	 * @var string
	 * @ORM\Column(type="string", name="scan_address", nullable=true)
	 */
	protected $scanAddress = '';

	/**
	 * @var \DateTime
	 * #Gedmo\Timestampable(on="create")
	 * @ORM\Column(type="datetime", name="created_at", nullable=false)
	 */
	protected $createdAt;

	/**
	 * @var \DateTime
	 * #Gedmo\Timestampable(on="update")
	 * @ORM\Column(type="datetime", name="modified_at", nullable=false)
	 */
	protected $modifiedAt;

	function __construct() {
		$this->translations = new \Doctrine\Common\Collections\ArrayCollection();
	}

	/**
	 * @param \DateTime $createdAt
	 */
	public function setCreatedAt($createdAt) {
		$this->createdAt = $createdAt;
	}

	/**
	 * @return \DateTime
	 */
	public function getCreatedAt() {
		return $this->createdAt;
	}

	/**
	 * @param string $footerInvoice
	 */
	public function setFooterInvoice($footerInvoice) {
		$this->footerInvoice = $footerInvoice;
	}

	/**
	 * @return string
	 */
	public function getFooterInvoice() {
		return $this->footerInvoice;
	}

	/**
	 * @param int $id
	 */
	public function setId($id) {
		$this->id = $id;
	}

	/**
	 * @return int
	 */
	public function getId() {
		return $this->id;
	}

	public function setLocale($locale) {
		$this->locale = $locale;
	}

	/**
	 * @param \DateTime $modifiedAt
	 */
	public function setModifiedAt($modifiedAt) {
		$this->modifiedAt = $modifiedAt;
	}

	/**
	 * @return \DateTime
	 */
	public function getModifiedAt() {
		return $this->modifiedAt;
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

	/**
	 * @param boolean $isEANRequired
	 */
	public function setIsEANRequired($isEANRequired) {
		$this->isEANRequired = $isEANRequired;
	}

	/**
	 * @return boolean
	 */
	public function getIsEANRequired() {
		return $this->isEANRequired;
	}

	/**
	 * @param boolean $isEnabled
	 */
	public function setIsEnabled($isEnabled) {
		$this->isEnabled = $isEnabled;
	}

	/**
	 * @return boolean
	 */
	public function getIsEnabled() {
		return $this->isEnabled;
	}

	/**
	 * @param boolean $isVATRequired
	 */
	public function setIsVATRequired($isVATRequired) {
		$this->isVATRequired = $isVATRequired;
	}

	/**
	 * @return boolean
	 */
	public function getIsVATRequired() {
		return $this->isVATRequired;
	}

	/**
	 * @param string $scanAddress
	 */
	public function setScanAddress($scanAddress) {
		$this->scanAddress = $scanAddress;
	}

	/**
	 * @return string
	 */
	public function getScanAddress() {
		return $this->scanAddress;
	}

	public function __toString() {
		return $this->getTitle();
	}

}
