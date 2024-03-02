import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ContainerCharacter extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String details;
  const ContainerCharacter(
      {super.key,
      required this.imageUrl,
      required this.name,
      required this.details});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => {
              showModalBottomSheet(
                  context: context,
                  backgroundColor: const Color.fromARGB(255, 25, 1, 64),
                  isScrollControlled: true,
                  builder: (BuildContext context) {
                    return Center(
                      child: Modal(
                        name: name,
                        details: details,
                        imageUrl: imageUrl,
                      ),
                    );
                  })
            },
        child: Container(
          margin: const EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(color: Colors.white, width: 2)),
          child: SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage(imageUrl),
                  width: 200,
                  height: 200,
                  alignment: Alignment.center,
                  fit: BoxFit.cover,
                ),
                Text(
                  name,
                  style: const TextStyle(
                    fontFamily: 'Impact',
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class Modal extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String details;

  const Modal(
      {super.key,
      required this.name,
      required this.imageUrl,
      required this.details});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 14, 7, 7),
      ),
      child: Column(children: [
        const SizedBox(
          height: 40,
        ),
        Text(
          name,
          style: const TextStyle(
            fontFamily: 'Impact',
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Image(
          fit: BoxFit.cover,
          alignment: Alignment.topCenter,
          height: 400,
          width: 400,
          image: AssetImage(imageUrl),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              details,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            )),
        const SizedBox(
          height: 10,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
            ),
          ),
          child: const Text(
            'Cerrar',
            style: TextStyle(color: Colors.white),
          ),
        )
      ]),
    );
  }
}

class MomentsContainer extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String details;
  final String youtbeUrl;
  const MomentsContainer({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.details,
    required this.youtbeUrl,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => {
              showModalBottomSheet(
                  context: context,
                  backgroundColor: const Color.fromARGB(255, 25, 1, 64),
                  isScrollControlled: true,
                  builder: (BuildContext context) {
                    return Center(
                      child: ModalMoments(
                        name: name,
                        details: details,
                        youtbeUrl: youtbeUrl,
                      ),
                    );
                  })
            },
        child: Container(
          margin: const EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(color: Colors.white, width: 2)),
          child: SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage(imageUrl),
                  height: 200,
                  alignment: Alignment.center,
                  fit: BoxFit.cover,
                ),
                Text(
                  name,
                  style: const TextStyle(
                    fontFamily: 'Impact',
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class ModalMoments extends StatefulWidget {
  final String name;
  final String details;
  final String youtbeUrl;
  const ModalMoments(
      {super.key,
      required this.name,
      required this.details,
      required this.youtbeUrl});

  @override
  State<ModalMoments> createState() => ModalMomentsState();
}

class ModalMomentsState extends State<ModalMoments> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    final videoID = YoutubePlayer.convertUrlToId(widget.youtbeUrl);
    _controller = YoutubePlayerController(
        initialVideoId: videoID!,
        flags: const YoutubePlayerFlags(autoPlay: false));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 14, 7, 7),
      ),
      child: Column(children: [
        const SizedBox(
          height: 40,
        ),
        Text(
          widget.name,
          style: const TextStyle(
            fontFamily: 'Impact',
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        YoutubePlayer(
          controller: _controller,
          showVideoProgressIndicator: true,
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              widget.details,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            )),
        const SizedBox(
          height: 10,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
            ),
          ),
          child: const Text(
            'Cerrar',
            style: TextStyle(color: Colors.white),
          ),
        )
      ]),
    );
  }
}
