<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20211020141853 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE furniture (id INT AUTO_INCREMENT NOT NULL, inventory_num INT NOT NULL, price INT NOT NULL, quantity INT NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE modell ADD furniture_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE modell ADD CONSTRAINT FK_69DE3DFCCF5485C3 FOREIGN KEY (furniture_id) REFERENCES furniture (id)');
        $this->addSql('CREATE INDEX IDX_69DE3DFCCF5485C3 ON modell (furniture_id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE modell DROP FOREIGN KEY FK_69DE3DFCCF5485C3');
        $this->addSql('DROP TABLE furniture');
        $this->addSql('DROP INDEX IDX_69DE3DFCCF5485C3 ON modell');
        $this->addSql('ALTER TABLE modell DROP furniture_id');
    }
}
