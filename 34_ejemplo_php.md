# Programación Orientada a Objetos (POO)

La programación orientada a objetos **(Object Oriented Programming OOP)** es un **modelo de lenguaje de programación** organizado por **objetos** constituidos por **datos y funciones**, entre los cuales se pueden crear relaciones como herencia, cohesión, abstracción, polimorfismo o encapsulamiento. Esto permite que haya una gran flexibilidad y se puedan crear **objetos** que pueden heredarse y transmitirse sin necesidad de ser modificados continuamente.

## Clases y objetos
Una clase define los datos y la lógica de un objeto. La lógica se divide en funciones (métodos) y variables (propiedades).

<ins>Para definir una propiedad:</ins>

~~~ php
class Coche {
    public $color;
}
~~~

<ins>Para definir un método:</ins>

~~~ php
class Coche {
    public function getColor()
    {
        // Contenido de la función
    }
}
~~~

<ins>Para **crear un objeto** hay que **instanciar una clase:**</ins>

~~~ php
class Coche {
    // Contenido de la clase
}

$micoche = new Coche(); // Objeto
~~~
