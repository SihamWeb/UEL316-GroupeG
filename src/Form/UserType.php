<?php

namespace App\Form;

use App\Entity\User;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Validator\Constraints\NotBlank;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Validator\Constraints\Length;
use Symfony\Component\Form\Extension\Core\Type\PasswordType;
use Symfony\Component\Form\Extension\Core\Type\RepeatedType;

class UserType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
        ->add('email', EmailType::class, [
            'constraints' => [
                new NotBlank([
                    'message' => 'Saisissez un email valide',
                ]),
            ],
        ])
        ->add('firstname', null, [
            'constraints' => [
                new NotBlank([
                    'message' => 'Saisissez un prénom',
                ]),
            ],
        ])
        ->add('lastname', null, [
            'constraints' => [
                new NotBlank([
                    'message' => 'Saisissez un nom',
                ]),
            ],
        ])
        ->add('plainPassword', PasswordType::class, [
            'mapped' => false,
            'attr' => ['autocomplete' => 'new-password'],
            'constraints' => [
                new NotBlank([
                    'message' => 'Saisissez un mot de passe',
                ]),
                new Length([
                    'min' => 6,
                    'minMessage' => 'Votre mot de passe doit être au minimum de {{ limit }} characters',
                    'maxMessage' => 'Votre mot de passe doit être au maximum de {{ limit }} characters',
                    'max' => 25,
                ]),
            ],
        ])
        ->add('submit', SubmitType::class, [
            'attr' =>[
                'class' => 'btn btn-block btn-signup me-3',
            ]
        ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => User::class,
        ]);
    }
}
