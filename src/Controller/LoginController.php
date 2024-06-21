<?php

namespace App\Controller;

use Exception;
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
        throw new Exception('Don\'t forger to activate logout in security.yaml');
    }
}
