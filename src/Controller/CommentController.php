<?php

namespace App\Controller;

use App\Entity\Comment;
use App\Entity\Article;
use App\Form\CommentType;
use App\Repository\CommentRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Doctrine\Persistence\ManagerRegistry;
use DateTimeImmutable;

#[Route('/comment')]
class CommentController extends AbstractController
{
    #[Route('/', name: 'app_comment_index', methods: ['GET'])]
    public function index(CommentRepository $commentRepository): Response
    {
        return $this->render('comment/index.html.twig', [
            'comments' => $commentRepository->findAll(),
        ]);
    }

    #[Route('/new/{articleId}', name: 'app_comment_new', methods: ['POST'])]
    public function new(Request $request, int $articleId, ManagerRegistry  $doctrine): Response
    {
        $comment = new Comment();
        $form = $this->createForm(CommentType::class, $comment);
        $form->handleRequest($request);
    
        if ($form->isSubmitted() && $form->isValid()) {
            $article = $doctrine->getRepository(Article::class)->find($articleId);
            $comment->setArticle($article);
    
            $user = $this->getUser();
            $comment->setUserId($user);
    
            $comment->setCreatedAt(new DateTimeImmutable());
    
            $entityManager = $doctrine->getManager();
            $entityManager->persist($comment);
            $entityManager->flush();
    
            return $this->redirectToRoute('app_article_show', ['id' => $articleId]);
        }
    
        $this->addFlash('error', 'Erreur lors de l\'ajout du commentaire');
        return $this->redirectToRoute('app_article_show', ['id' => $articleId]);
    }


    #[Route('/{id}', name: 'app_comment_show', methods: ['GET'])]
    public function show(Comment $comment): Response
    {
        return $this->render('comment/show.html.twig', [
            'comment' => $comment,
        ]);
    }
    
    #[Route('/{id}/edit', name: 'app_comment_edit', methods: ['GET', 'POST'])]
    public function edit(Request $request, Comment $comment, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(CommentType::class, $comment);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $comment->setUpdatedAt(new \DateTime());

            $entityManager->flush();

            return $this->redirectToRoute('app_article_show', ['id' => $comment->getArticle()->getId()], Response::HTTP_SEE_OTHER);
        }

        return $this->render('comment/edit.html.twig', [
            'comment' => $comment,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_comment_delete', methods: ['POST'])]
    public function delete(Request $request, Comment $comment, EntityManagerInterface $entityManager): Response
    {
        if ($this->isCsrfTokenValid('delete'.$comment->getId(), $request->request->get('_token'))) {
            $articleId = $comment->getArticle()->getId();

            $entityManager->remove($comment);
            $entityManager->flush();

            return $this->redirectToRoute('app_article_show', ['id' => $articleId], Response::HTTP_SEE_OTHER);
        }
    
        return $this->redirectToRoute('app_article_index');
    }

    #[Route('/{id}/report', name: 'app_comment_report', methods: ['POST'])]
    public function reportComment(Comment $comment, EntityManagerInterface $entityManager): Response
    {
        $comment->setReported(true);
        $entityManager->flush();

        return $this->redirectToRoute('app_article_show', ['id' => $comment->getArticle()->getId()]);
    }
}
