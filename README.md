SYMFONY 2.8 john marx PS: merci Cyrfan


Blog réalisé grâce au bundle EDBLOGBUNDLE https://github.com/EtonDigital/EDBlogBundle


1) Clôner le repository

1) composer install.

2)/web crée un dossier média, dans média un dossié upload

3) import database
	1) * php app/console doctrine:database:create
	2) * puis importez dans la base de donnée symfony le fichier symfony.sql qui ce trouve à la racine de votre dossier blog

4) correction vendors

5) blog\vendor\ed\blog-bundle\Security\Authorization\Voter\ArticleVoter.php LIGNE 48

        catch(\Exception $e)
        {
            return false;
        }
        catch(\Error $e)
        {
            return false;
        }


6) blog\vendor\ed\blog-bundle\Resources\views\Comment\comment.html.twig Entre la ligne 1 et 5 :

{{ comment.id }} 

Verification

7) lancer le serveur : php app/console server:run

8) utilisateur pseudo : admin   mdp: admin