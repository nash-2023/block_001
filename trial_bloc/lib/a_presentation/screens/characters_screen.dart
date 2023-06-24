import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trial_bloc/d_constants/my_colors.dart';
import '../../bussines/bloc/chrctrs_bloc.dart';
// import '../../bussines/cubit/characters_cubit.dart';

/*
class CharactersScreen extends StatefulWidget {
  const CharactersScreen({super.key});

  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen> {
  void getAllCharacters() async {
    await BlocProvider.of<CharactersViewModel>(context).charsVMFetchApiData();
  }

  @override
  void initState() {
    getAllCharacters();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // final vm = BlocProvider.of<CharactersViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.myYellow,
        title: const Text(
          'Characters',
          style: TextStyle(color: MyColors.myGrey),
        ),
        centerTitle: true,
      ),
      body: BlocBuilder<CharactersViewModel, CharactersState>(
        builder: (context, state) {
          if (state is CharactersLoaded) {
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: state.characters.length,
              itemBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: 300,
                  height: 300,
                  child: Image.network(state.characters[index].photoUrl),
                );
              },
            );
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
*/

class CharactersScreen extends StatelessWidget {
  const CharactersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = BlocProvider.of<ChrctrsBlocVM>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.myYellow,
        title: const Text(
          'Characters',
          style: TextStyle(color: MyColors.myGrey),
        ),
        centerTitle: true,
      ),
      body: BlocBuilder<ChrctrsBlocVM, ChrctrsState>(
        builder: (context, state) {
          if (state is ChrctrsInitial) {
            vm.add(EvenInitial());
            return const Center(
              child: SizedBox(
                width: 100,
                height: 100,
                child: CircularProgressIndicator(
                  color: MyColors.myGrey,
                  strokeWidth: 5.0,
                ),
              ),
            );
          } else if (state is ChrctrsLoaded) {
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: state.characters.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 300,
                    height: 300,
                    child: Image.network(
                      state.characters[index].photoUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
