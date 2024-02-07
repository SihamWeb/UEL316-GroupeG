<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

class NewsController extends AbstractController
{
    #[Route('/actualites', name: 'app_news')]
    public function actualites(): Response
    {
        return $this->render('news/actualite.html.twig', [
            'controller_name' => 'NewsController',
        ]);
    }

    #[Route('/actualite/{id}-{slug}', name: 'app_news_show')]
    public function detailActualite(): Response
    {
        return $this->render('news/actualite_show.html.twig', [
            'controller_name' => 'NewsController',
        ]);
    }
}
