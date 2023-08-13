import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_example/user_model.dart';

part 'main.g.dart';

// 1. String 상태값 Provider
final stringProvider = StateProvider((ref) {
  return "##### 1번 ######";
});

// 2. UserModel 객체 상태값 Provider
UserModel defaultUserModel = UserModel(
  name: "##### 2번 #####",
  phoneNumber: "1231231234",
  emailAddress: "bora@mealant.com",
);

final userProvider = StateProvider(
  (ref) => defaultUserModel,
);

// 3. riverpod_annotation 사용
@riverpod
String helloWorld(HelloWorldRef ref) {
  return "##### 3번 ######";
}

@riverpod
class Name extends _$Name {
  @override
  build() {
    return "##### 4번 #####";
  }

  // void changedName(String name) {
  //   state = name;
  // }
}

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 1. String 상태값 관찰
    final stringValue = ref.watch(stringProvider);

    // 2. 객체 상태값 관찰
    // final userMoel = ref.watch(userProvider);
    final userMoelName = ref.watch(userProvider.select((value) => value.name));

    // 3. riverpod_annotation 활용한 상태값 관찰 - 1
    final annotaionStringValue = ref.watch(helloWorldProvider);

    // 4. riverpod_annotation 활용한 상태값 관찰 - 2
    final annotaionNameValue = ref.watch(nameProvider);

    // 5. ref.listen() 사용예시
    // ref.listen(stringProvider, (previous, next) {
    //   print("priviout $previous");
    //   print("next $next");
    //   ref.read(stringProvider.notifier).state = "스트링 또 변경!!!";
    // });

    print(" adfjadslfkjasdlfkjasdlkfjadslf");
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            ref.read(stringProvider.notifier).state = "스트링 변경";
            ref.read(userProvider.notifier).state =
                defaultUserModel.copyWith(name: "유저모델 이름 변경");

            ref.read(nameProvider.notifier).state = 'dfjkladsfjlasdfjasd';

            // ref.read(userProvider.notifier).state =
            //     defaultUserModel.copyWith(emailAddress: "유저모델 이름 변경");
            // ref.read(annotaionStringValue.notifier).state = "스트링 변경";
          },
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 200,
              ),
              Text(stringValue),
              Text(userMoelName),
              Text(annotaionStringValue),
              Text(annotaionNameValue),
            ],
          ),
        ),
      ),
    );
  }
}
