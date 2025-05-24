import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'utils/constants/text_strings.dart';
import 'utils/device/web_material_scroll.dart';
import 'utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: TTexts.appName,
      themeMode: ThemeMode.light,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      routes: {
        "/": (context) => FirstScreen(),
        "/second-screen": (context) => SecondScreen(),
      },
      getPages: [
        GetPage(name: "/", page: () => FirstScreen()),
        GetPage(name: "/second-screen/", page: () => SecondScreen()),
        GetPage(name: "/second-screen/:userID", page: () => SecondScreen()),
      ],
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Screen'), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Simple Navigation'),
            SizedBox(height: 15),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SecondScreen()),
                  );
                },
                child: Text('Default Navigation'),
              ),
            ),
            SizedBox(height: 15),

            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () => Get.to(() => SecondScreen()),
                child: Text('GetX Navigation'),
              ),
            ),

            SizedBox(height: 50),

            Divider(),

            Text('Named Navigation'),
            SizedBox(height: 15),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  Get.toNamed("/second-screen");
                },
                child: Text('Default Named Navigation'),
              ),
            ),
            SizedBox(height: 15),

            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () => Get.toNamed("/second-screen/1234"),
                child: Text('GetX Named Navigation'),
              ),
            ),
            SizedBox(height: 50),

            Divider(),

            Text('Navigation With Arguments'),
            SizedBox(height: 15),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  Get.toNamed("second-screen", arguments: "Hello World!");
                },
                child: Text('Getx'),
              ),
            ),
            SizedBox(height: 15),

            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () => Get.toNamed("/second-screen"),
                child: Text('due URL'),
              ),
            ),

            SizedBox(height: 15),

            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () => Get.toNamed("/second-screen/1234"),
                child: Text('due URL'),
              ),
            ),

            SizedBox(height: 15),

            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () => Get.toNamed(
                  "/second-screen?device=phone&id=978&name=Enzo",
                  arguments: "Hello World!",
                ),
                child: Text('URL With Arguments'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen'), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(Get.arguments ?? ''),

            Text("Device = ${Get.parameters['device'] ?? ''}"),
            Text("ID = ${Get.parameters['id'] ?? ''}"),
            Text("Phone = ${Get.parameters['name'] ?? ''}"),

            Text("Name = ${Get.parameters['userID'] ?? ''}"),
          ],
        ),
      ),
    );
  }
}
