import 'package:flutter/material.dart';

import '../../bussines/bloc/chrctrs_bloc.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard({
    super.key,
    required this.charState,
  });
  final ChrctrsLoaded charState;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: charState.characters.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              SizedBox(
                width: 300,
                height: 300,
                child: Image.network(
                  charState.characters[index].photoUrl,
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  charState.characters[index].name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    shadows: [
                      Shadow(
                        color: Colors.black,
                        offset: Offset.zero,
                        blurRadius: 2.5,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
