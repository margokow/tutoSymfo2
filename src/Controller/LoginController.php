<?php

namespace App\Controller;

use Exception;
use App\Entity\User;
use App\Form\RegistrationType;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Security\Http\Authentication\AuthenticationUtils; 

class LoginController extends AbstractController
{
    #[Route('/login', name: 'app_login', methods:['GET','POST'])]
    public function index(AuthenticationUtils $authenticationUtils): Response
    {
        $error = $authenticationUtils->getLastAuthenticationError();
        $lastUsername = $authenticationUtils->getLastUsername();

        return $this->render('pages/login/index.html.twig', [
            'last_username' => $lastUsername,
            'error' => $error, 
        ]);
    }

    #[Route('/deconnexion', name:'app_logout')]
    public function logout(): never {
        throw new Exception('Don\'t forget to activate logout in security.yaml');
    }

    #[Route('/inscription', name: 'app_registration', methods: ['GET', 'POST'])]
    public function registration(Request $request, EntityManagerInterface $entityManager): Response
    {
        $user = new User();
        $form = $this->createForm(RegistrationType::class, $user);

        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            // Enregistrer l'utilisateur en base de données
            $entityManager->persist($user);
            $entityManager->flush();

            // Ajouter un message flash de succès
            $this->addFlash(
                'success',
                'Votre compte a bien été créé.'
            );

            // Redirection après l'inscription réussie
            return $this->redirectToRoute('app_login');
        }

        // Afficher le formulaire d'inscription en cas d'erreur ou de première visite
        return $this->render('pages/login/registration.html.twig', [
            'form' => $form->createView(),
        ]);
    }
}
