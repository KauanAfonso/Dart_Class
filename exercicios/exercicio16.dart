import 'dart:ffi';
import 'dart:io';


class Shape{
  
  double? base;
  double? height;
  double? radius;
  double? side;

  Shape({this.base, this.height, this.radius, this.side});

  void areaCalculate(){
    print("Processar");
  }
}


class Square extends Shape{

Square({required double side}):super(side:side);

  @override
  void areaCalculate(){
    print("area quadrado: ${side! * 2}");
  }

}


class Triangle extends Shape{

Triangle({required double base, required double height}):super(base: base, height: height);

  @override
  void areaCalculate(){
    print("area triangulo: ${(base! * height!) / 2 }");
  }

}

class Retangle extends Shape{

Retangle({required double base, required double height}):super(base: base, height: height);

  @override
  void areaCalculate(){
    print("area retangulo: ${base! * height!}");
  }

}


class Circule extends Shape{

Circule({required double radius}):super(radius: radius);

  @override
  void areaCalculate(){
  print("Área do círculo: ${3.14 *radius! * radius!}");
  }


}

void main() {
 
  Square square = Square(side:4);
  Triangle triangle = Triangle(base: 6, height: 3);
  Retangle retangle = Retangle(base:5, height:2);
  Circule circule = Circule(radius: 3);
  
  square.areaCalculate();
  triangle.areaCalculate();
  retangle.areaCalculate(); 
  circule.areaCalculate();
}
