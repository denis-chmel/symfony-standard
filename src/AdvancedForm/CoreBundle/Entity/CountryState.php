<?php
namespace AdvancedForm\CoreBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * CountryState
 * @ORM\Entity
 * @ORM\Table(name="_obb_country_state")
 */
class CountryState {

	/** ----------------------- Attributes ----------------------- */

	/**
	 * @ORM\Id
	 * @ORM\Column(type="integer", name="country_state_id")
	 * @ORM\GeneratedValue(strategy="AUTO")
	 * @var integer
	 */
	private $id;

	/**
	 * @var string
	 * @ORM\Column(type="text")
	 */
	protected $title = "";

	/**
	 * @var string
	 * @ORM\Column(type="text")
	 */
	protected $code = "";

	/** ----------------------- Associations ----------------------- */

	/**
	 * @ORM\ManyToOne (targetEntity="\AdvancedForm\CoreBundle\Entity\Country")
	 * @ORM\JoinColumn(name="country_id", referencedColumnName="country_id", onDelete="CASCADE")
	 * @var \AdvancedForm\CoreBundle\Entity\Country
	 */
	private $country;

	/**
	 * Set country
	 * @param \AdvancedForm\CoreBundle\Entity\Country $country
	 */
	public function setCountry(\AdvancedForm\CoreBundle\Entity\Country $country) {
		$this->country = $country;
	}

	/**
	 * Get country
	 * @return \AdvancedForm\CoreBundle\Entity\Country
	 */
	public function getCountry() {
		return $this->country;
	}

	/**
	 * @return int
	 */
	public function getId() {
		return $this->id;
	}

	/**
	 * Set country state title
	 * @param string $title
	 */
	public function setTitle($title) {
		$this->title = $title;
	}

	/**
	 * Get country state title
	 * @return string
	 */
	public function getTitle() {
		return $this->title;
	}

	/**
	 * @param string $code
	 */
	public function setCode($code) {
		$this->code = $code;
	}

	/**
	 * @return string
	 */
	public function getCode() {
		return $this->code;
	}

	public function __toString() {
		return $this->getTitle();
	}
}
