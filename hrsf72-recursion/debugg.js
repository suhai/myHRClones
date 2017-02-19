// Learning to debug
// write a function locaLoka that takes a num greater than zero and do the following : 
// 1. compute the factorial of the number
// 2. compute the sum of all numbers from 1 to num
// 3. divide (1) by (2)
// 4. take the square root of (3) and return the value to 5 decimal places
let locaLoka = function (num) {
  let numArr = [];
  for (var i = 1; i <= num; i++) {
  // for (var i = 2; i < num; i++) {
    numArr.push(i);
  }

  let factorial = numArr.reduce(function(a, b) { return a * b; });
  let sum = numArr.reduce(function(a, b) { return a + b; });
  return Math.sqrt((factorial / sum)).toFixed(5);

};
console.log(locaLoka(2)); // 0.81650
// console.log(locaLoka(3)); // 1.00000
console.log(locaLoka(5)); // 2.82843
console.log(locaLoka(10)); // 256.86218
console.log(locaLoka(100)); // expecting 5 decimal places
console.log();



// Lattice paths
// Problem 15
// Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner:
// right,right,down,down;  right,down,right,down;  right,down,down,right;
// down,right,right,down;  down,right,down,right;  down,down,right,right;
// How many such routes are there through a 20×20 grid?

var factorial = function (num) {
  var numArr = [];
  for (var i = 1; i <= num; i++) {
    numArr.push(i);
  } 
  return numArr.reduce(function(a, b) { return a * b; });
};
//----------------------------------------------------------------------
var combination = function (num1, num2) {
  return (factorial(num1) / (factorial(num2) * (factorial(num1 - num2))));
};
//----------------------------------------------------------------------
var latticePath = function (i, j) {
  return combination((i + j), j);
};
console.log(latticePath(1, 1)); // 2
console.log(latticePath(2, 1)); // 3
console.log(latticePath(1, 2)); // 3
console.log(latticePath(2, 2)); // 6
console.log(latticePath(2, 3)); // 10
console.log(latticePath(3, 2)); // 10
console.log(latticePath(3, 3)); // 20
console.log(latticePath(20, 20)); // 137846528820
console.log();



//
var countingSundays = function (startDate, endDate) {
  var nuDate = new Date();
  var result = 0;
   
  for (var i = startDate + 1; i <= endDate; i++) {
    for (var j = 0; j <= 11; j++) {
      nuDate.setFullYear(i, j, 1);
      if ( nuDate.getDay() === 0 ) {
        result++;
      }
    }
  }
  return result;
};
console.log(countingSundays(1900, 2000)); // 171
console.log(countingSundays(1, 2000)); // 3438
console.log(countingSundays(1776, 2017)); // 415
console.log(); 