class Calculate {
  String input;
  Calculate(this.input);

  void setData(String data) {
    input += data;
  }

  String getData() {
    return input;
  }

  void clear() {
    input = "";
  }

  void delete() {
    if (input.isNotEmpty) {
      input = input.substring(0, input.length - 1);
    }
  }

  void calculate() {
    List<double> numberList = [];
    List<String> operatorList = [];
    if (input.isNotEmpty && predence(input[0]) == 0) {
      String number = "";
      for (int i = 0; i < input.length; i++) {
        if (predence(input[i]) == 0) {
          number += input[i];
          if (i == input.length - 1) {
            numberList.add(double.parse(number));
          }
        } else {
          numberList.add(double.parse(number));
          number = "";
          operatorList.add(input[i]);
        }
      }
    } else {}
  }

  int predence(String operator) {
    switch (operator) {
      case "-":
        return 1;
      case "+":
        return 1;
      case "x":
        return 2;
      case "/":
        return 2;
      default:
        return 0;
    }
  }
}
