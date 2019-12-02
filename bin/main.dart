import 'dart:math';
// Write a function that takes an array of unordered integers and logs percentile
// values at 25%, 50%, 75%, 90%, 95%, 99% and 100%

// For example, given the list [8, 6, 6, 20, 9, 1, 12, 16, 3, 16, 22, 2] it should log the following:
//  25% of the numbers are less than or equal to 3
//  50% of the numbers are less than or equal to 8
//  75% of the numbers are less than or equal to 16
//  90% of the numbers are less than or equal to 20
//  95% of the numbers are less than or equal to 22
//  99% of the numbers are less than or equal to 22
//  100% of the numbers are less than or equal to 22

main() {
printPercentile([8, 6, 6, 20, 9, 1, 12, 16, 3, 16, 22, 2]);
List<int> list= List<int>.generate(100, (int index) => index+1);
printPercentile(list);

}

List<int> printPercentile(List<int> inputList){
  if(inputList.isEmpty){
    return [];
  }
  double indexPoint;
  int percentileValue;
  inputList.sort();
  List<int> outputList=[];
  List<int> desiredPercentiles=[25,50,75,90,95,99,100];
  for(int i=0;i<desiredPercentiles.length;i++){
    indexPoint=((desiredPercentiles[i])*(inputList.length)/100);
    indexPoint=indexPoint-1;
    percentileValue=inputList[indexPoint.ceil()];
    print("${desiredPercentiles[i]}\% of the numbers are less than or equal to $percentileValue");
    outputList.add(percentileValue);
  }
  return outputList;


}
