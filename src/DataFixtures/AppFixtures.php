<?php

namespace App\DataFixtures;

use App\Entity\Furniture;
use App\Entity\Modell;
use Faker;
use App\Entity\User;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;

class AppFixtures extends Fixture
{
    /**
     * @var UserPasswordEncoderInterface
     */
    private $encoder;

    /**
     * @var Faker\Generator
     */
    private $faker;

    public function __construct(UserPasswordEncoderInterface $encoder)
    {
        $this->faker = Faker\Factory::create();
        $this->encoder = $encoder;
    }

    public function load(ObjectManager $manager)
    {

        $this->createAdminUser($manager);
        $this->createDefaultUser($manager);
        $this->createRandomUsers(10,$manager);
        $this->createRandomFurniture(10,$manager);

        $manager->flush();
    }

    private function createRandomUsers($num,ObjectManager $manager){
        for($i = 0;$i<$num;$i++){
            $user = new User();

            $pass = $this->encoder->encodePassword($user, 'pass');
            $user->setPassword($pass);
            $user->setEmail($this->faker->email());
            $user->setRoles(['ROLE_USER']);
            $user->setName($this->faker->name());
            $user->setActive($this->faker->boolean(60));

            $manager->persist($user);
        }
    }

    private function createAdminUser(ObjectManager $manager)
    {
        $user = new User();

        $pass = $this->encoder->encodePassword($user, 'pass');
        $user->setPassword($pass);
        $user->setEmail('admin@admin.com');
        $user->setRoles(['ROLE_ADMIN']);
        $user->setName('Admin');
        $user->setActive(true);

        $manager->persist($user);
    }

    private function createDefaultUser(ObjectManager $manager)
    {
        $user = new User();

        $pass = $this->encoder->encodePassword($user, 'pass');
        $user->setPassword($pass);
        $user->setEmail('user@user.com');
        $user->setRoles(['ROLE_USER']);
        $user->setName('User');
        $user->setActive(true);

        $manager->persist($user);
    }

    private function createRandomFurniture(int $num, ObjectManager $manager)
    {

        for($i = 0;$i<$num;$i++){
            $furniture = new Furniture();

            $furniture->setInventoryNum($this->faker->randomNumber(6, true));
            $furniture->setPrice($this->faker->numberBetween(1000,1000000));
            $furniture->setQuantity($this->faker->numberBetween(1,1000));

            $modell = new Modell();
            $modell->setColor($this->faker->colorName());
            $modell->setDescreption($this->faker->realText());
            $modell->setMaterial($this->faker->word());
            $modell->setType($this->faker->word());
            $modell->setFurniture($furniture);

            $manager->persist($modell);
            $manager->persist($furniture);
        }
    }
}
