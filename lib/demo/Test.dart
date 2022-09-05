main(List<String> args) {

  final man = SuperMan();
  man.running();

}

// 隐式接口: Dart中没有哪个关键字是来定义接口的，也没有这些关键字 interface/protocol
// 默认情况下️所有的类都是隐式接口
// Dart只继承自单继承
// 当将一个类当做接口使用时，那么实现这个接口的类，必须实现这个接口中所有的方法
// 继承过来的可以super/实现的不可以

class Animal {
  // void running() {
  //   print("Animal..running");
  // }

  void eating() {
  }
}

class Runner {
  void running() {
    print("Runner..running");
  }
}

class Flyer {
  void flyering() {
  }
}

// 即继承又实现的相同的方法，只能实现一个，但是可以调super方法
class SuperMan extends Runner implements Flyer {
  // 继承
  @override
  void eating() {
    // TODO: implement eatting
   //  super.eatting();
  }

  @override
  void running() {
    // TODO: implement running
    super.running();
    print("继承： Animal..running");
  }

  @override
  void flyering() {
    // TODO: implement flyering
  }

// @override
// void running() {
// print("Runner..running");
// // TODO: implement running
// }

}