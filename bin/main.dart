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
calculatePercentile([8, 6, 6, 20, 9, 1, 12, 16, 3, 16, 22, 2]);
List<int> list= List<int>.generate(100, (int index) => index+1);
calculatePercentile(list);
checkOutput([8, 6, 6, 20, 9, 1, 12, 16, 3, 16, 22, 2]);
}
calculatePercentile(List<int> inputList){
  inputList.sort();
  Map<int,int> output={};
  printPercentile(25,inputList,output);
  printPercentile(50,inputList,output);
  printPercentile(75,inputList,output);
  printPercentile(90,inputList,output);
  printPercentile(95,inputList,output);
  printPercentile(99,inputList,output);
  printPercentile(100,inputList,output);
}
printPercentile(int percentile, List<int> inputList,Map<int,int> output){
  double indexPoint;
  int index;
  int percentileValue;
  indexPoint=(percentile*(inputList.length)/100);
  indexPoint=indexPoint-1;
  if(indexPoint is int){
  percentileValue=inputList[indexPoint.round()];
  }
  else{
    percentileValue=inputList[indexPoint.ceil()];
  }
  print("$percentile\% of the numbers are less than or equal to $percentileValue");
  output[indexPoint.round()]=percentileValue;
}
// function for test case
Map<int, int> checkOutput(List<int>inputList){
  if(inputList.isEmpty){
    return {};
  }
  inputList.sort();
  double indexPoint;
  int index;
  Map<int, int>output={};
  List<int> percentileList=[25,50,75,90,95,99,100];
  int percentileValue;
  for(int i=0;i<percentileList.length;i++){
    indexPoint=(percentileList[i]*(inputList.length)/100);
    indexPoint=indexPoint-1;
    if(indexPoint is int){
      percentileValue=inputList[indexPoint.round()];
    }
    else{
      percentileValue=inputList[indexPoint.ceil()];
    }
    //index=indexPoint.round();
    output[percentileList[i]]=percentileValue;
  }

  return output;
}