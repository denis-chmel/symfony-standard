<?php

namespace AdvancedForm\CoreBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;

/**
 * Country
 * @ORM\Entity
 * @ORM\Table(name="_obb_country")
 */
class Country {

	/**
	 * @ORM\Id
	 * @ORM\Column(name="country_id", type="integer")
	 * @ORM\GeneratedValue(strategy="AUTO")
	 * @var integer
	 */
	protected $id;

	/**
	 * @var string
	 * @ORM\Column(type="string", length=255)
	 * @Assert\NotBlank()
	 */
	protected $title = "";

	/**
	 * @var string
	 * @ORM\Column(type="string", length=2, name="iso_code_2")
	 * @Assert\NotBlank()
	 */
	protected $isoCode2 = "";

	/**
	 * @var string
	 * @ORM\Column(type="string", length=3, name="iso_code_3", nullable=true)
	 */
	protected $isoCode3 = "";

	/**
	 * @var string
	 * @ORM\Column(type="string", length=3, name="call_prefix", nullable=true)
	 */
	protected $callPrefix = "";

	/**
	 * @var bool
	 * @ORM\Column(name="is_zip_required", type="boolean")
	 */
	protected $isZipRequired = false;

	/**
	 * @ORM\Column(name="is_enabled", type="boolean")
	 * @var bool
	 */
	private $isEnabled = true;

	/** ----------------------- Associations ----------------------- */

	/**
	 * @var \Doctrine\Common\Collections\ArrayCollection
	 * @ORM\OneToMany(targetEntity="\AdvancedForm\CoreBundle\Entity\CountryState", mappedBy="country", cascade={"persist", "remove"})
	 */
	protected $states;

	function __construct() {
		$this->states = new \Doctrine\Common\Collections\ArrayCollection();
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
	 * Get country States
	 *
	 * @return \Doctrine\Common\Collections\ArrayCollection | \AdvancedForm\CoreBundle\Entity\CountryState[]
	 */
	public function getStates() {
		return $this->states;
	}

	/**
	 * Set  country States
	 *
	 * @param \Doctrine\Common\Collections\ArrayCollection $states
	 * @return void
	 */
	public	function setStates(\Doctrine\Common\Collections\ArrayCollection $states) {
		$this->states = $states;
	}

	/**
	 * Add state to country
	 *
	 * @param \AdvancedForm\CoreBundle\Entity\CountryState $states
	 * @return void
	 */
	public function addState(\AdvancedForm\CoreBundle\Entity\CountryState $state) {
		$state->setCountry($this); // synchronously updating inverse side
		$this->getStates()->add($state);
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
	 * @param string $callPrefix
	 */
	public function setCallPrefix($callPrefix) {
		$this->callPrefix = $callPrefix;
	}

	/**
	 * @return string
	 */
	public function getCallPrefix() {
		return $this->callPrefix;
	}

	/**
	 * @param boolean $isZipRequired
	 */
	public function setIsZipRequired($isZipRequired) {
		$this->isZipRequired = $isZipRequired;
	}

	/**
	 * @return boolean
	 */
	public function getIsZipRequired() {
		return $this->isZipRequired;
	}

	/**
	 * @param string $isoCode2
	 */
	public function setIsoCode2($isoCode2) {
		$this->isoCode2 = $isoCode2;
	}

	/**
	 * @return string
	 */
	public function getIsoCode2() {
		return $this->isoCode2;
	}

	/**
	 * @param string $isoCode3
	 */
	public function setIsoCode3($isoCode3) {
		$this->isoCode3 = $isoCode3;
	}

	/**
	 * @return string
	 */
	public function getIsoCode3() {
		return $this->isoCode3;
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

	public function __toString() {
		return $this->getTitle();
	}

}
