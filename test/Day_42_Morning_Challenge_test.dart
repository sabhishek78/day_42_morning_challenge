import 'package:test/test.dart';
import '../bin/main.dart';

void main() {
  List<int> list= List<int>.generate(100, (int index) => index+1);
  test("Calculate Percentile", () {
    expect(printPercentile([8, 6, 6, 20, 9, 1, 12, 16, 3, 16, 22, 2]),
        [3,8,16,20,22,22,22]);
  });
  test("Calculate Percentile", () {
    expect(printPercentile(list),
        [25,50,75,90,95,99,100]);
  });
  test("Calculate Percentile", () {
    expect(printPercentile([1]),
        [1,1,1,1,1,1,1]);
  });
  test("Calculate Percentile", () {
    expect(printPercentile([]),
        []);
  });
  test("Calculate Percentile", () {
    expect(printPercentile([1,1,1,1,1,1,1,1,1,1,1,1]),
        [1, 1, 1, 1, 1, 1, 1]);
  });
}