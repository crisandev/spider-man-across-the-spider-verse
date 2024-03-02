import 'package:flutter/material.dart';
import 'package:movie_app/utils/containers.dart';

class Moments extends StatelessWidget {
  const Moments({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(
                height: 70,
              ),
              Text(
                "Mejores Momentos",
                style: TextStyle(
                    // fontFamily: "Impact",
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 20,
              ),
              MomentsContainer(
                imageUrl: 'assets/images/best_moments/allspiderman.png',
                name: 'MULTIVERSE Reunion',
                details:
                    'Spider-Man: Across the Spider-Verse 2023: Después de reunirse con Gwen Stacy, Spider-Man, el amigable vecindario de Brooklyn a tiempo completo, es catapultado a través del Multiverso, donde se encuentra con un equipo de Spider-People encargados de proteger su propia existencia. Sin embargo, cuando los héroes se enfrentan sobre cómo manejar una nueva amenaza, Miles se encuentra enfrentado a las otras arañas. Pronto debe redefinir lo que significa ser un héroe para poder salvar a las personas que más ama.',
                youtbeUrl: 'https://youtu.be/AsMbZ8IJxoY',
              ),
              MomentsContainer(
                imageUrl: 'assets/images/best_moments/milesvsmiles.png',
                name: 'Miles Is the Prowler Crazy',
                details:
                    'Miles Morales regresa para el próximo capítulo de la saga Spider-Verse, ganadora del Oscar®, una aventura épica que transportará al amigable Spider-Man del vecindario de Brooklyn a través del Multiverso para unir fuerzas con Gwen Stacy y un nuevo equipo de Spider-People para enfrentarse a un villano más poderoso que cualquier cosa que hayan encontrado.',
                youtbeUrl: 'https://youtu.be/uKPJ-QmYXLU',
              ),
              MomentsContainer(
                imageUrl: 'assets/images/best_moments/milesvsohala.png',
                name: 'Miles vs. Miguel Spider-Man',
                details:
                    'En “Spider-Man: Across the Spider-Verse,” Miles Morales se embarca en una aventura multiversal donde se encuentra con una diversidad de héroes arácnidos. Uno de los encuentros más impactantes es con Miguel O’Hara, también conocido como Spider-Man 2099.',
                youtbeUrl: 'https://youtu.be/EkASynf8rJo',
              )
            ],
          ),
        ),
      ),
    );
  }
}
