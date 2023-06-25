// import 'package:trial_bloc/c_data/web_services/fake_web_servics.dart';
// import 'package:trial_bloc/c_data/web_services/characters_web_services.dart';
// import 'c_data/models/characters.dart';
// import 'c_data/repos/repos.dart';
// import 'd_constants/strings.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'bussines/cubit/characters_cubit.dart';
import 'bussines/bloc/bloc_opserver.dart';
import 'e_router.dart';

void main() {
  // Bloc.observer = MyBlocObserver();
  runApp(const BreakingBadApp());
}

class BreakingBadApp extends StatelessWidget {
  const BreakingBadApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}



/*
class BreakingBadApp extends StatefulWidget {
  const BreakingBadApp({super.key});

  @override
  State<BreakingBadApp> createState() => _BreakingBadAppState();
}

class _BreakingBadAppState extends State<BreakingBadApp> {
  List<Character> chars = [];
  CharactersRepo wbSrv = CharactersWebServices();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          actions: [
            MaterialButton(
              onPressed: () async {
                chars = await wbSrv.fetchApiData();
                chars.forEach((element) => print(element.name));
                setState(() {});
              },
              child: const Text("Show Actors"),
            ),
          ],
        ),
        body: Center(
          child: (chars.isEmpty)
              ? const CircularProgressIndicator()
              : ListView.builder(
                  itemCount: chars.length,
                  itemBuilder: (context, i) => Container(
                    width: 300,
                    height: 300,
                    child: Image.network(
                      chars[i].photoUrl,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
*/