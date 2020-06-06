import 'dart:math';

class CalculatorBrain{

  CalculatorBrain({this.height, this.weight});
  final int height;
  final int weight;

  double _bmi;



  String calculateBMI(){
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }
  String getResults(){
    if(_bmi>=25){
      return "Overweight";
    }
    else if(_bmi>18){
      return "Normal";
    }
    else{
      return "Underweight";
    }
  }
  String getInterpretation(){
    if(_bmi>=25){
      return "You have a weight more than the normal weight. You should exercise more.";
    }
    else if(_bmi>18){
      return "You have normal weight. Stay fit!!";
    }
    else{
      return "You have a weight less than the normal weight. You should eat more.";
    }
  }
}
