<?php

namespace App\Form;

use App\Entity\User;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\PasswordType;
use Symfony\Component\Form\Extension\Core\Type\RepeatedType;

class UserPasswordType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder

        ->add('plainPassword', RepeatedType::class, [
            'type' => PasswordType::class, 
            'first_options' => [
                'attr' => [
                    'class' => 'form-control'
                ],
                'label' => 'Mot de passe',
                'label_attr' => [
                    'class' => 'form-label'
                ],
                'constraints' => [
                    new Assert\NotBlank(),
                    new Assert\Length(['min' => 2]),
                ],
                
            ], 
            'second_options' => [
                'attr' => [
                    'class' => 'form-control'
                ],
                'label' => "Confirmation du mot de passe",
                'label_attr' => [
                        'class' => 'form-label'
                    ],
            ],
            'invalid_message' => "Les mots de passe ne correspondent pas"
        ])
        ->add('newPassword', PasswordType::class, [
            'attr'=>[
                'class'=>'form-control'
            ],
            'label' => 'Nouveau mot de passe',
            'label_attr' => [
                'class' => 'form-label mt-4'
            ],
            'constraints' => [new Assert\NotBlank()]
        ])
        ->add('submit', SubmitType::class, [
            'attr' => [
                'class' => 'btn btn-primary mt-4'
            ],
            'label' => 'Changer mon mot de passe'
        ]) 
    ;
    }
}