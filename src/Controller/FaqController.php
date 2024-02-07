<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

class FaqController extends AbstractController
{
    #[Route('/faq', name: 'app_faq')]
    public function faq(): Response
    {
        return $this->render('faq/faq.html.twig', [
            'controller_name' => 'FaqController',
        ]);
    }

    #[Route('/faq/{id}-{slug}', name: 'app_faq_show')]
    public function detailFaq(): Response
    {
        return $this->render('faq/faq_show.html.twig', [
            'controller_name' => 'FaqController',
        ]);
    }
}
