<?php

namespace App\Controller\Admin;

use App\Entity\Comment;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\DateTimeField;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use Monolog\DateTimeImmutable;

class CommentCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Comment::class;
    }



    public function configureFields(string $pageName): iterable
    {
        return [
            IdField::new('id')-> hideOnForm(),
            TextEditorField::new('content'),
            DateTimeField::new('createdAt') -> hideOnForm(),
            # ARTICLE
            # USER ID
        ];
    }

}
