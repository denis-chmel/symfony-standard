<?php

namespace AdvancedForm\CoreBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * TaxClass
 * @ORM\Entity
 * @ORM\Table(name="_obb_tax_class")
 */
class TaxClass extends Base\TaxClass {

    /**
     * @return Country[]
     */
    public function getCountries() {
        $countries = array();
        foreach ($this->getRules() as $rule) {
            if ($rule->getCountry()) {
                $countries[] = $rule->getCountry();
            }
        }
        return (array) $countries;
    }

}
