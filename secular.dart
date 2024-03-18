int secular({year = 2024, roman = false}) => ((year/100).toInt()+1);





void main() {
  print(secular());
}
