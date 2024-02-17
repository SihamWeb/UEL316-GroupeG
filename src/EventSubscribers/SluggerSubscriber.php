<?php

namespace App\EventSubscribers;
use App\Entity\Article ;
use Symfony\EventSubscriberInterface ;
use Symfony\BeforeEntityPersistedEvent ;

class SluggerSubscriber implements EventSubscriberInterface
{

    public function __construct(private SluggerInterface $slugger)
    {
    }

    public static function getSubscribedEvents()
    {
        return [
            BeforeEntityPersistedEvent::class => ['addSlug'],
            BeforeEntityUpdatedEvent::class => ['updateSlug']
            ] ;
    }

    public function addSlug(BeforeEntityPersistedEvent $event)
    {
        $entity = $event->getEntityInstance() ;
        if ($entity instanceof Article){
            $slug = strtolower($this->slugger->slugify($entity->getTitle())) ;
        }
    }

}