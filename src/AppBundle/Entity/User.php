<?php
//src/AppBundle/Entity/User

namespace AppBundle\Entity; 

use ED\BlogBundle\Interfaces\Model\BlogUserInterface;
use ED\BlogBundle\Interfaces\Model\ArticleCommenterInterface;
use FOS\UserBundle\Model\User as BaseUser;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity
 * @ORM\Table(name="user")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\UserRepository")
 */
class User extends BaseUser implements BlogUserInterface, ArticleCommenterInterface
{
    /**
         * @ORM\Id
         * @ORM\Column(type="integer")
         * @ORM\GeneratedValue(strategy="AUTO")
         */
        protected $id;

    /**
     * Required by BlogUserInterface
     *
     * @ORM\Column(name="blog_display_name", type="string", nullable=true)
     */
    protected $blogDisplayName;

    public function getBlogDisplayName()
    {
        return $this->blogDisplayName;
    }
    
    public function setBlogDisplayName($blogDisplayName)
    {
        $this->blogDisplayName = $blogDisplayName;
    
        return $this;
    }
    
    public function getCommenterDisplayName()
    {
        return $this->blogDisplayName;
    }
}