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
  Stopwatch stopwatch = new Stopwatch()..start();
  final array = insertionSort([1232]);
  print('InsertionSort() executed in ${stopwatch.elapsed}');
  // print(array);
}
