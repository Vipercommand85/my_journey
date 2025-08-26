// This file helps to demostrate the data flow and control of flow of a program

// standard call to import the Zig standard Library
const std = @import("std");

// gives a unique variable name to a specific error that might occur
// will have less to type to call this error name when handling errors
const FactorialError = error.{Overflow});

// read in a u64 while returning a u128
// helps to minimize the memory allocation, espically if only smaller numbers are being used 
// while being able to perform some operation with the small number to return a much larger number
fn factorial_iter(num: u64) !u128 {
  if (num > 34) { 
    return FactorialError.Overflow;
    } else {
    // use an accumalator to hold the result of the factorial as we iterate through the numbers that we want to use
    var accumalator: u128 = 1;
    // use a variable that will hold the numbers that we have iterated through
    var inter: u64 = 2;
    while ( iter <= num ) : ( iter += 1) {
      // type cast the iterator to the same as the accumalator so that we can keep ourselves in bounds without allocating more memory than what is needed
      accumalator = accumalator * @as(u128, iter);
    }
    return accumalator;
    }
}

// Recursive function will perform the same operation as the iterator but in the reverse order
fn factorial_recursive( num: u64) !u128 {
  if (num > 34) {
    return FactorialError.Overflow;
  } else if (num == 1 or num == 0) {
    return @as(u128, 1);
  } else {
    const prev_num: u128 = try factorial_recursive(num - 1);
    return prev_num * @as(u128, num);
  }
}


pub fn main() void {
  factorial_iter();
  factorial_recursive();
}



