module Datatypes where

data Liste a = LeereListe | Listenelement (Liste a)  a
  deriving (Show)

data Arbeiter = Angestellter
              | Manager
              | Hilfspersonal
                deriving (Show)

listeErzeugen :: Arbeiter -> Liste Arbeiter
listeErzeugen Angestellter = Listenelement LeereListe Angestellter
listeErzeugen Manager = Listenelement LeereListe Manager
listeErzeugen Hilfspersonal = Listenelement LeereListe Hilfspersonal

elementHinzufuegen :: Liste Arbeiter -> Arbeiter -> Liste Arbeiter
elementHinzufuegen x y = Listenelement x y

instance Semigroup (Liste a) where
  (<>) LeereListe LeereListe = LeereListe
  (<>) LeereListe v = v
  (<>) v LeereListe = v
  (<>) v (Listenelement w z) = Listenelement (v <> w) z
