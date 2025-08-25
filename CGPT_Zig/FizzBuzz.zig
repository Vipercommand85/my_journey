// File: FizzBuzz.zig
// this will print Fuzz for numbers divisable by 3, Buzz for numbers divisable by 5, and FuzzBuzz for numbers divisable by both 3 & 5.

const std = @import("std");

var num: u32 = 1;
fn FizzBuzz(num: u32) []const u8 {
    if ( num % 3 == 0) {
      return "Fizz";
    } elseif (num % 5 == 0) {
      return "Buzz";
    } elseif (num %15 == 0) {
      return "FizzBuzz";
    } else {
      return "Number";
    }
}

pub fn main() void {
  while (num <= 100) : (num += 1) {
    std.debug.print(" {} gives {s}\n", .{ num, FizzBuzz(num) });
  }
  
}


test divBy3 {
  const msg = FizzBuzz();
  try std.testing.expectEqualStrings("Fizz", FizzBuzz(9));
  try std.testing.expectEqualStrings("Buzz", FizzBuzz(10));
  try std.testing.expectEqualStrings("FizzBuzz", FizzBuzz(30));
  try std.testing.expectEqualStrings("Number", FizzBuzz(1));
}
