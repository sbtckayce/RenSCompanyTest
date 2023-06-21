void main(List<String> args) {
  Solution solution = Solution();
  print('Case 1 : 1, 3, 5, 7, 9 ');
  solution.miniMaxSum([1, 3, 5, 7, 9]);
  print('----------------------------------------------------------------------------------------------------------------');
  print('Case 2 : 11, 13, 5, 17, 19');
  solution.miniMaxSum([11, 13, 5, 17, 19]);
  print('----------------------------------------------------------------------------------------------------------------');

  print('Case 3 : 23, 3, 5, 127, 1');
  solution.miniMaxSum([23, 3, 5, 127, 1]);
  print('----------------------------------------------------------------------------------------------------------------');

  print('Case 4 : 151, 139, 53, 173, 59');
  solution.miniMaxSum([151, 139, 53, 173, 59]);
  print('----------------------------------------------------------------------------------------------------------------');

  print('Case 5 : 2, 1, 59, 107, 29');
  solution.miniMaxSum([2, 1, 59, 107, 29]);
}

class Solution {
  int minSum = 0;
  int maxSum = 0;
  int sum = 0;
  int min = 1;
  int max = 0;
  List<int> evens = [];
  List<int> odds = [];

  miniMaxSum(List<int> arr) {
    arr.sort();

    for (int i = 0; i < arr.length; i++) {
      // total
      sum += arr[i];

      // minSum
      minSum = sum - arr[arr.length - 1];

      // maxSum
      maxSum = sum - arr[0];

      // min
      min = arr[0];
      if (arr[i] < min) {
        min = arr[i];
      }

      //max
      if (arr[i] > max) {
        max = arr[i];
      }

      // Find even elements
      if (arr[i] % 2 == 0) {
        evens.add(arr[i]);
      }

      //Find odd elements
      if (arr[i] % 2 != 0) {
        odds.add(arr[i]);
      }
    }
    print('Result');
    print('$minSum $maxSum');
    print('**********');
    print('Bouns:');
    print('Total : $sum');

    print('Min : $min');
    print('Max : $max');
    print('Even elements : $evens');
    print('Odd elements : $odds');

    //refresh
    minSum = 0;
    maxSum = 0;
    sum = 0;
    min = 1;
    max = 0;
    evens = [];
    odds = [];
  }
}
