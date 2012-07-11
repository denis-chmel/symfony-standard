<?php

namespace AdvancedForm\CoreBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

// these import the "@Route" and "@Template" annotations
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;

class TaxClassController extends Controller
{

    /**
     * @Route("/", name="TaxClassList")
     * @Template()
     */
    public function indexAction()
    {
        /** @var $doctrine \Doctrine\Bundle\DoctrineBundle\Registry */
        $doctrine = $this->get('doctrine');
        /** @var $em \Doctrine\ORM\EntityManager */
        $em = $doctrine->getManager();
        $taxClasses = $em->getRepository("AdvancedFormCoreBundle:TaxClass")->findAll();
        return array(
            "taxClasses" => $taxClasses,
        );
    }

    /**
     * @Route("/new", name="BETaxClassNew")
     * @Template()
     */
    public function newAction() {
    }

    /**
     * @Route("/{id}/delete", name="BETaxClassDelete")
     * @Template()
     */
    public function deleteAction($id = null) {
    }

    /**
     * @Route("/{id}", name="BETaxClassEdit")
     * @Template()
     */
    public function editAction($id = null) {
        /** @var $em \Doctrine\ORM\EntityManager */
        $em = $this->getDoctrine()->getManager();

        $request = $this->getRequest();
        /** @var $session \Symfony\Component\HttpFoundation\Session\Session */
        $session = $request->getSession();

        if (!empty($id) && is_numeric($id)) {
            $taxClass = $em->getRepository('AdvancedForm\CoreBundle\Entity\TaxClass')->findOneBy(array('id' => $id));
        } else {
            $taxClass = new \AdvancedForm\CoreBundle\Entity\TaxClass();
        }

        if (!$taxClass) {
            throw new \Symfony\Component\HttpKernel\Exception\NotFoundHttpException('The Tax Class does not exist.');
        }

        /** @var $form \Symfony\Component\Form\Form */
        $t = microtime(true);
        $form = $this->createForm(new \AdvancedForm\CoreBundle\Form\TaxClassType($em), $taxClass);
        echo sprintf("createForm took %.3f ms<br>", microtime(true) - $t);

        if ($request->getMethod() == 'POST') {
            $form->bindRequest($request);
            if ($form->isValid()) {

                /** @var $rule \AdvancedForm\CoreBundle\Entity\TaxClassRule */
                foreach ($taxClass->getRules() as $rule) {
                    $rule->setTaxClass($taxClass);
                }

                $em->persist($taxClass);
                $em->flush();

                $session->getFlashBag()->add('success', "Successfully saved!");
                return $this->redirect($this->generateUrl('BETaxClassEdit', array("id" => $taxClass->getId())));
            } else {
                $form->addError(new \Symfony\Component\Form\FormError(_("Changes were not applied! Please fix errors and try again.")));
            }
        }

        $t = microtime(true);
        $view = $form->createView();
        echo sprintf("createView took %.3f ms<br>", microtime(true) - $t);

        $t = microtime(true);
        $result = $this->render(
            'AdvancedFormCoreBundle:TaxClass:edit.html.php',
            array(
                'form' => $view,
            )
        );
        echo sprintf("Rendering template took %.3f ms<br><br>", microtime(true) - $t);

        return $result;
    }


}
