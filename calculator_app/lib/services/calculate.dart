class Calculate {
  String input;
  String output;
  Calculate(this.input, this.output);

  void setData(String data) {
    input += data;
  }

  String getInput() {
    return input;
  }

  String getResult() {
    return output;
  }

  void clear() {
    input = "";
    output = "0";
  }

  void delete() {
    if (input.isNotEmpty) {
      input = input.substring(0, input.length - 1);
    }
  }

  void convert() {
    List<String> postfix = [];
    List<String> operatorList = [];
    if (input.isNotEmpty && predence(input[0]) == 0) {
      String number = "";
      for (int i = 0; i < input.length; i++) {
        if (predence(input[i]) == 0) {
          number += input[i];
          if (i == input.length - 1) {
            postfix.add(number);
          }
        } else {
          postfix.add(number);
          number = "";
          if (operatorList.isEmpty) {
            operatorList.add(input[i]);
          } else {
            if (predence(operatorList.last) < predence(input[i])) {
              operatorList.add(input[i]);
            } else {
              for (int i = operatorList.length - 1; i >= 0; i--) {
                postfix.add(operatorList[i]);
              }
              operatorList.clear();
              operatorList.add(input[i]);
            }
          }
        }
      }
      for (int i = operatorList.length - 1; i >= 0; i--) {
        postfix.add(operatorList[i]);
      }
      operatorList.clear();
      calculate(postfix);
    } else {
      print("hata");
    }
  }

  void calculate(List<String> postfix) {
    int index = 0;
    while (postfix.length != 1) {
      if (predence(postfix[index]) != 0) {
        double num2 = double.parse(postfix[index - 1]);
        double num1 = double.parse(postfix[index - 2]);
        double res = result(num1, num2, postfix[index]);
        postfix[index - 2] = res.toString();
        postfix.removeAt(index - 1);
        postfix.removeAt(index - 1);
        index = 0;
      }
      index++;
    }
    output = postfix[0];
  }

  double result(double num1, double num2, String operator) {
    switch (operator) {
      case "-":
        return num1 - num2;
      case "+":
        return num1 + num2;
      case "x":
        return num1 * num2;
      case "/":
        return num1 / num2;
      default:
        return 0;
    }
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
