<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

class TrainingController extends AbstractController
{
    #[Route('/formations', name: 'app_training')]
    public function formations(): Response
    {
        return $this->render('training/training.html.twig', [
            'controller_name' => 'TrainingController',
        ]);
    }

    #[Route('/formation/{id}-{slug}', name: 'app_training_show')]
    public function detailFormation(): Response
    {
        return $this->render('training/training_show.html.twig', [
            'controller_name' => 'TrainingController',
        ]);
    }
}
