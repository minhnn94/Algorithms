import 'package:untitled/common/array_common.dart';

List<int> insertionSort(List<int> array) {
  for (int i = 0; i < array.length - 1; i++) {
    for (int j = i + 1; j < array.length; j++) {
      if (array[i] > array[j]) {
        int temp = array[i];
        array[i] = array[j];
        array[j] = temp;
      }
    }
  }
  return array;
}

void main() {
  List<int> array = [9, 2, 3, 8, 6, 123, 12, 23, 45, 6, 3, 78, 6, 4];
  Stopwatch stopwatch = new Stopwatch()..start();
  array = insertionSort(array100K);
  print('InsertionSort() executed in ${stopwatch.elapsed}');
  // print(array);
}
