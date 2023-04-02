import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Gallery",
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/view': (context) => const ViewImage(),
      },
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    List images = ["image1.jpg", "image2.jpg", "image3.jpg", "image4.jpg"];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gallery"),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(5),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 5),
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return InkResponse(
            child: Image.asset("images/${images[index]}"),
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return InkResponse(
                    child: Image.asset("images/${images[index]}"),
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return SimpleDialog(
                            title: const Text("Buka di halaman baru?"),
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/view',
                                      arguments:
                                          ViewImageArgument(images[index]));
                                },
                                child: const Text("Ya"),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text("Tidak"),
                              )
                            ],
                          );
                        },
                      );
                    },
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}

class ViewImageArgument {
  final String image;

  ViewImageArgument(this.image);
}

class ViewImage extends StatelessWidget {
  const ViewImage({super.key});
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as ViewImageArgument;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Gallery"),
      ),
      body: Image.asset("images/${args.image}"),
    );
  }
}
