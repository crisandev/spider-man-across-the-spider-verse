import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              const Text(
                "Spider-Man: Across the Spider-Verse",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              _buildSectionTitle("Directores"),
              _buildText(
                  "Joaquim Dos Santos, Kemp Powers y Justin K. Thompson"),
              _buildSectionTitle("Guionistas"),
              _buildText("David Callaham, Phil Lord y Christopher Miller"),
              _buildSectionTitle("Protagonistas"),
              _buildText("Shameik Moore como Miles Morales / Spider-Man"),
              _buildText("Hailee Steinfeld como Gwen Stacy / Spider-Woman"),
              _buildText("Oscar Isaac como Miguel O'Hara / Spider-Man 2099"),
              _buildText("Issa Rae como Jessica Drew / Spider-Woman"),
              _buildText("Jake Johnson como Peter B. Parker"),
              _buildText("Jason Schwartzman en un papel no especificado"),
              _buildSectionTitle("Estreno en Estados Unidos"),
              _buildText("2 de junio de 2023"),
              _buildSectionTitle("Duración"),
              _buildText("140 minutos"),
              _buildSectionTitle("Géneros"),
              _buildText(
                  "Comedia de acción, cine de superhéroes, acción, comedia y drama"),
              _buildSectionTitle("Presupuesto"),
              _buildText("\$100,000,000"),
              _buildSectionTitle("Recaudación"),
              _buildText("\$690,648,475"),
              const SizedBox(height: 10),
              const Text(
                "En esta película, Miles Morales y Gwen Stacy se embarcan en una nueva aventura a través del multiverso, enfrentándose al siniestro villano 'The Spot' y a un sinnúmero de héroes de dimensiones paralelas. La animación, las actuaciones de voz y la historia han sido elogiadas por la crítica, y los fanáticos pueden esperar más emocionantes momentos arácnidos en esta secuela.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                    fontSize: 20, ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }

  Widget _buildText(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, bottom: 8),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
      ),
    );
  }
}
