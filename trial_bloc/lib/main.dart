// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:trial_bloc/c_data/web_services/trial.dart';
import 'app_router.dart';
import 'd_constants/strings.dart';

void main() {
  runApp(BreakingBadApp());
}

class BreakingBadApp extends StatefulWidget {
  const BreakingBadApp({super.key});

  @override
  State<BreakingBadApp> createState() => _BreakingBadAppState();
}

class _BreakingBadAppState extends State<BreakingBadApp> {
  String? photoUrl;
  @override
  void initState() {
    // TODO: implement initState
    // myApi.fetchApiData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          (photoUrl == null)
              ? const CircularProgressIndicator()
              : Container(
                  width: 300,
                  height: 300,
                  child: Image.network(
                    photoUrl!,
                    fit: BoxFit.contain,
                  ),
                ),
          ElevatedButton(
              onPressed: () async {
                String profileNam = await myApi.fetchApiData();
                print(profileNam);
                photoUrl = generatePhotoUrl(profileNam);
                print(photoUrl);
                setState(() {});
              },
              child: const Text("Get Photo"))
        ],
      ),
    )));
  }
}

// class BreakingBadApp extends StatelessWidget {
//   BreakingBadApp({super.key});
//   final AppRouter ar = AppRouter();
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       onGenerateRoute: ar.generateRoute,
//     );
//   }
// }
