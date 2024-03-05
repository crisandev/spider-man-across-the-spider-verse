import 'package:flutter/material.dart';
import 'package:movie_app/utils/containers.dart';

class Character extends StatelessWidget {
  const Character({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Align(
              alignment: Alignment.center,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 80,
                    ),
                    Text("Personajes", style: TextStyle(
                      fontSize: 30,
                      color: Colors.white, 
                      fontWeight: FontWeight.w900
                      
                    ),),
                    SizedBox(height: 10,), 
                    ContainerCharacter(
                        imageUrl: 'assets/images/characters/miles.jpg',
                        name: 'Miles Morales',
                        details:
                            'Miles es un adolescente de Brooklyn que se convierte en el nuevo Spider-Man después de la muerte de Peter Parker en su universo. Tiene habilidades arácnidas similares a las de Peter, pero también algunas únicas. Miles es valiente, ingenioso y lucha por proteger su ciudad y el multiverso.'),
                    ContainerCharacter(
                        imageUrl: 'assets/images/characters/gwen.jpg',
                        name: 'Gwen',
                        details:
                            'Spider-Woman, también conocida como Gwen Stacy, es un personaje destacado en la película “Spider-Man: Across the Spider-Verse”. Gwen proviene de la realidad alternativa conocida como Earth-65. Al igual que Peter Parker, Gwen tiene habilidades arácnidas, como fuerza sobrehumana, agilidad, reflejos rápidos y la capacidad de trepar paredes. En Earth-65, ella es la amiga y compañera de clase de Peter Parker. Sin embargo, cuando Peter muere, Gwen asume el manto de Spider-Woman para honrar su legado y proteger su ciudad.'),
                    ContainerCharacter(
                        imageUrl: 'assets/images/characters/peter-parker.jpg',
                        name: 'Peter Parker',
                        details:
                            'Spider-Man 2099, también conocido como Miguel O’Hara, es un personaje destacado en la película “Spider-Man: Across the Spider-Verse”. Miguel es un científico genético en el año 2099. Después de un accidente, se ve afectado por una versión modificada del ADN de una araña y adquiere habilidades similares a las de Spider-Man. Spider-Man 2099 tiene fuerza sobrehumana, agilidad, reflejos rápidos y la capacidad de trepar paredes.'),
                    ContainerCharacter(
                        imageUrl: 'assets/images/characters/spider-punk.jpg',
                        name: 'Spider Punk',
                        details:
                            'Spider-Punk, también conocido como Hobart “Hobie” Brown, hace su debut cinematográfico en “Spider-Man: Across the Spider-Verse”. Hobie era un adolescente sin hogar en la realidad alternativa Tierra-138. Inspirado en el punk rock, se convirtió en Spider-Punk después de ser transformado por una araña irradiada con vertidos de desechos tóxicos del presidente Norman Osborn. Mató a Norman con una guitarra y se desenmascaró ante el mundo como su salvador.'),
                    ContainerCharacter(
                        imageUrl: 'assets/images/characters/jessica-drew.jpg',
                        name: 'Jessica Drew',
                        details:
                            'Spider-Woman, también conocida como Jessica Drew, es un personaje destacado en la película “Spider-Man: Across the Spider-Verse”. En esta versión cinematográfica, Jessica Drew es una mujer afroamericana con un exuberante afro. A diferencia de su contraparte de los cómics, Jessica no usa el traje rojo y amarillo característico, sino que opta por una chaqueta de motociclista negra y pantalones de cuero negros. '),
                  ])),
        ));
  }
}
