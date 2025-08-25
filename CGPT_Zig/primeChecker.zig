// This file will check to see if a number is a prime number for a range of 1 to 100

const std = @import("std");

fn isPrime(num: u32) bool {
  var divisor: u32 = 2;
  if (num % divisor == 0) {
      return false; // divisible by something other than 1 & itself
    }
  return true;
}

pub fn main() void {
  var num: u32 = 2;
  while (num <=100) : (num += 1) {
    if (isPrime(num)) {
      std.debug.print("{} is a prime number\n", .{num});
    }
    
  } 
}


test primeFunction {
  try std.testing.expectEqual(true, isPrime(2));
  try std.testing.expectEqual(true, isPrime(14));
  try std.testing.expectEqual(false, isPrime(77));
  try std.testing.expectEqual(true, isPrime(12));
  try std.testing.expectEqual(false, isPrime(5));
}
