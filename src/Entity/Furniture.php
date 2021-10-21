<?php

namespace App\Entity;

use App\Repository\FurnitureRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=FurnitureRepository::class)
 */
class Furniture
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="integer")
     */
    private $inventory_num;

    /**
     * @ORM\Column(type="integer")
     */
    private $price;

    /**
     * @ORM\Column(type="integer")
     */
    private $quantity;

    /**
     * @ORM\OneToMany(targetEntity=Modell::class, mappedBy="furniture")
     */
    private $modell;

    public function __construct()
    {
        $this->modell = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getInventoryNum(): ?int
    {
        return $this->inventory_num;
    }

    public function setInventoryNum(int $inventory_num): self
    {
        $this->inventory_num = $inventory_num;

        return $this;
    }

    public function getPrice(): ?int
    {
        return $this->price;
    }

    public function setPrice(int $price): self
    {
        $this->price = $price;

        return $this;
    }

    public function getQuantity(): ?int
    {
        return $this->quantity;
    }

    public function setQuantity(int $quantity): self
    {
        $this->quantity = $quantity;

        return $this;
    }

    /**
     * @return Collection|Modell[]
     */
    public function getModell(): Collection
    {
        return $this->modell;
    }

    public function addModell(Modell $modell): self
    {
        if (!$this->modell->contains($modell)) {
            $this->modell[] = $modell;
            $modell->setFurniture($this);
        }

        return $this;
    }

    public function removeModell(Modell $modell): self
    {
        if ($this->modell->removeElement($modell)) {
            // set the owning side to null (unless already changed)
            if ($modell->getFurniture() === $this) {
                $modell->setFurniture(null);
            }
        }

        return $this;
    }
}
