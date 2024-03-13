<?php

namespace App\Controller;

use App\Entity\Contact;
use App\Form\ContactType;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Form\FormInterface;
use Symfony\Component\HttpFoundation\RedirectResponse;

class ContactController extends AbstractController
{
    /**
     * @Route("/contact",name="main")
     */
    public function index(): Response
    {   
        if(!$this->getUser())
        {
            return $this->redirectToRoute('app_login');
        }

        $data = $this->getDoctrine()->getRepository(Contact::class)->findAll();
        return $this->render('contacts/tables.html.twig', [
            'list'=> $data
        ]);
    }

    /**
     * @Route("/create", name="create")
     */
    public function create(Request $request) : Response
    {
        $contact = new Contact();
        $form = $this->createForm(ContactType::class,$contact);
        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid())
        {
            $em = $this->getDoctrine()->getManager();
            $em->persist($contact);
            $em->flush();
            $this->addFlash('notice', 'Created Successfully!!');
            return $this->redirectToRoute('main');
        }

        return $this->render('contacts/create.html.twig', [
            'form' => $form->createView()
        ]);
    }

    /**
     * @Route("/update/{id}", name="update")
     */
    public function update(Request $request, $id)
    {
        $contact = $this->getDoctrine()->getRepository(Contact::class)->find($id);
        $form = $this->createForm(ContactType::class,$contact);
        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid())
        {
            $em = $this->getDoctrine()->getManager();
            $em->persist($contact);
            $em->flush();

            $this->addFlash('notice', 'Updated Successfully!!');
            return $this->redirectToRoute('main');
        }

        return $this->render('contacts/update.html.twig', [
            'form' => $form->createView()
        ]);    
    }

    /**
     * @Route("/delete/{id}", name="delete")
     */
    public function delete($id)
    {
        $data = $this->getDoctrine()->getRepository(Contact::class)->find($id);
        $em = $this->getDoctrine()->getManager();
        $em->remove($data);
        $em->flush();

        $this->addFlash('notice', 'Deleted Successfully!!');
        return $this->redirectToRoute('main');

    }
    
}