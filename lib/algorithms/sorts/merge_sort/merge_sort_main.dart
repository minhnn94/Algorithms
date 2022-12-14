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
      if (rightArray.length - 1 > rightIndex) {
        rightIndex++;
      }
    } else {
      array.add(leftArray[leftIndex]);
      if (leftArray.length - 1 > leftIndex) {
        leftIndex++;
      }
    }
  }
  return array;
}

List<int> recursiveCompare(List<int> array) {
  if (array.length > 2) {
    int leftIndex = 0;
    int rightIndex = (array.length + 1) ~/ 2;
    return recursiveCompare(array.sublist(leftIndex, rightIndex));
    // recursiveCompare(array.sublist(rightIndex, array.length));
  } else {
    int temp = array.first;
    array[0] = array.last;
    array.last = temp;
    return array;
  }
}

void main() {
  // List<int> array = [9, 2, 3, 8, 6, 123, 12, 23, 45, 6, 3, 78, 6, 4];
  List<int> array = [4, 3, 2, 1, 5];
  array = mergeSort(array);
  print(array.toString());
}
