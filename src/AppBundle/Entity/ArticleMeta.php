<?php        
//src/Acme/DemoBundle/Entity/ArticleMeta.php

namespace AppBundle\Entity; 

use ED\BlogBundle\Interfaces\Model\ArticleMetaInterface;
use ED\BlogBundle\Model\Entity\ArticleMeta as BaseArticleMeta;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Table(name="acme_demo_article_meta")
 * @ORM\Entity()
 */
class ArticleMeta extends BaseArticleMeta implements ArticleMetaInterface
{
}