import 'package:test/test.dart';
import '../bin/main.dart';

void main() {
  List<int> list= List<int>.generate(100, (int index) => index+1);
  test("Calculate Percentile", () {
    expect(checkOutput([8, 6, 6, 20, 9, 1, 12, 16, 3, 16, 22, 2]),
        {25:3,50:8,75:16,90:20,95:22,99:22,100:22});
  });
  test("Calculate Percentile", () {
    expect(checkOutput(list),
        {25: 25, 50: 50, 75: 75, 90: 90, 95: 95, 99: 99, 100: 100});
  });
  test("Calculate Percentile", () {
    expect(checkOutput([1,1,1,1,1,1,1,1,1]),
        {25: 1, 50: 1, 75: 1, 90: 1, 95: 1, 99: 1, 100: 1});
  });
  test("Calculate Percentile", () {
    expect(checkOutput([1]),
        {25: 1, 50: 1, 75: 1, 90: 1, 95: 1, 99: 1, 100: 1});
  });
  test("Calculate Percentile", () {
    expect(checkOutput([]),
        {});
  });
}