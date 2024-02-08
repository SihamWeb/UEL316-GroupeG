<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

class UserController extends AbstractController
{

    #[Route('/utilisateur/{id}', name: 'app_user_show')]
    public function detailUtilisateur(): Response
    {
        return $this->render('user/utilisateur_show.html.twig', [
            'controller_name' => 'UserController',
        ]);
    }
}
