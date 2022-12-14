import 'package:untitled/common/array_common.dart';

List<int> mergeSort(List<int> array) {
  if (array.length <= 1) {
    return array;
  } else if (array.length == 2) {
    if (array[0] > array[1]) {
      int temp = array[0];
      array[0] = array[1];
      array[1] = temp;
    }
    return array;
  } else {
    int splitIndex = (array.length + 1) ~/ 2;
    List<int> leftArray = mergeSort(array.sublist(0, splitIndex));
    List<int> rightArray = mergeSort(array.sublist(splitIndex));
    return merge(leftArray, rightArray);
  }
}

List<int> merge(List<int> leftArray, List<int> rightArray) {
  int leftIndex = 0;
  int rightIndex = 0;
  int i = 0;
  List<int> array = [];
  while (leftIndex < leftArray.length && rightIndex < rightArray.length) {
    if (leftArray[leftIndex] >= rightArray[rightIndex]) {
      array.add(rightArray[rightIndex]);
      if (rightArray.length > rightIndex) {
        rightIndex++;
      }
    } else {
      array.add(leftArray[leftIndex]);
      if (leftArray.length > leftIndex) {
        leftIndex++;
      }
    }
  }
  return [
    ...array,
    ...leftArray.sublist(leftIndex),
    ...rightArray.sublist(rightIndex)
  ];
}

void main() {
  List<int> array = [9, 2, 3, 8, 6, 123, 12, 23, 45, 6, 3, 78, 6, 4];
  // List<int> array = [4, 3, 2, 1, 5];
  Stopwatch stopwatch = new Stopwatch()..start();
  // final array = insertionSort(array100K);
  array = mergeSort(array100K);

  print('InsertionSort() executed in ${stopwatch.elapsed}');
  // print(array.toString());
}
