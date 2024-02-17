<?php

namespace App\Controller;

use App\Repository\ArticleRepository;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class ResearchController extends AbstractController
{
    #[Route('/research', name: 'app_research', methods: ['POST'])]
    public function search(Request $request, ArticleRepository $articleRepository): Response
    {      
        $word = $request->request->get('Keywords', '');

        $query = $articleRepository->createQueryBuilder('p')
            ->where('CONCAT(p.title, p.content) LIKE :word')
            ->setParameter('word', '%' . $word . '%')
            ->getQuery();

        $results = $query->getResult();

        return $this->render('research/index.html.twig', [
            'articles' => $results,
            'query' => $word,
        ]);
    }
}