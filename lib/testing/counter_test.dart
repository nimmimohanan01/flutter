import 'package:test/test.dart';
import 'package:demo1/testing/counter_test.dart';

import 'counter.dart';

main(){
  Counter counter = Counter();
  counter.increment();
  int expected = 1;
  int actual = counter.value;
  expect(expected,actual);
}