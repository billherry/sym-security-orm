# sym-security-orm
Simple authentication and Doctrine ORM project

#Ezeket használtam:

Authentikációs User entitások, pass hash db-be
	make:user

.env-ben a mysql connetion string alapján kerülnek le a táblák.
	doctrine:database:create
	make:migration
	doctrine:migrations:migrate


Minta adatok a AppFixtures class-ban 
	composer require orm-fixtures --dev
	Doctrine\Bundle\FixturesBundle\DoctrineFixturesBundle::class => ['dev' => true, 'test' => true],
	doctrine:fixtures:load

Végpontok létrehozása dekralált Entity alapján 
	make:crud
		created: src/Controller/UserController.php
		created: src/Form/UserType.php
		created: templates/user/_delete_form.html.twig
		created: templates/user/_form.html.twig
		created: templates/user/edit.html.twig
		created: templates/user/index.html.twig
		created: templates/user/new.html.twig
		created: templates/user/show.html.twig

php bin\console 
	make:auth
		created: src/Security/LoignFormAuthenticator.php
		updated: config/packages/security.yaml
		created: src/Controller/SecurityController.php
		created: templates/security/login.html.twig

Furniture és Modell létrehozása
php bin\console make:entity
