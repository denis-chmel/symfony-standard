<?php
namespace AdvancedForm\CoreBundle\Helpers;

class SlotsHelper extends \Symfony\Component\Templating\Helper\SlotsHelper{


	/**
	 * Start appending data to a slot.
	 *
	 * This method starts an output buffer that will be
	 * closed when the stop() method is called.
	 *
	 * @param string $name The slot name
	 *
	 * @throws \InvalidArgumentException if a slot with the same name is already started
	 *
	 * @api
	 */
	public function append($name)
	{
		if (in_array($name, $this->openSlots)) {
			throw new \InvalidArgumentException(sprintf('A slot named "%s" is already started.', $name));
		}

		$this->openSlots[] = $name;

		if (!isset($this->slots[$name])) {
			$this->slots[$name] = '';
		}

		ob_start();
		ob_implicit_flush(0);
	}

	/**
	 * Stops a slot.
	 *
	 * @throws \LogicException if no slot has been started
	 *
	 * @api
	 */
	public function stop()
	{
		if (!$this->openSlots) {
			throw new \LogicException('No slot started.');
		}

		$name = array_pop($this->openSlots);

		$this->slots[$name] .= ob_get_clean();
	}
}
