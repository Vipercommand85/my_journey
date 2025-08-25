// File: reverseString.zig will take user input and print out the reverse of the user input

const std = @import("std");

// Need a buffer to read the user input into the variable
fn forwardInput() ![]u8 {
  var usrInput = std.io.getStdIn().reader();
  var buffer: [100]u8 = undefined;
  var forwardInput = try stdin.readUntilDelimiterOrEof(&buffer, '\n');
  return forwardInput;
}

// Need to allocate memory to read in the string
// While the variable that has stored the allocated memory is being used, you need to defer the release/deinitialization of the allocated memory
fn reverseString(revOutput, allocator: std.mem.Allocator) ![]u8 {
  var result = try allocator.alloc(u8, input.len);
  defer allocator.free(result);

  var i: usize = 0;
  while (i < revOutput.len) : (i += 1) {
    result[revOutput.len - 1 - i] = revOutput[i];
  }
  return result;
}

pub fn main() void {
  var gpa = std.heap.GeneralPurposeAllocator(.{}){};
  const allocator = gpa.allocator();
  
  var forwardString = forwardInput();
  const revOutput = try reverseString(forwardString, allocator);
  defer allocator.free(revOutput);
  std.debug.print("The reverse of {s} is {s}", .{forwardString, revOutput});
}

test "Testing Functions" {
  var gpa = std.heap.GeneralPurposeAllocator(.{}){};
  const allocator = gpa.allocator();
  
  const result = try forwardInput("Hello", allocator);
  defer allocator.free(result);
  try std.testing.expectEqualStrings("Hello", result);
  
  const revResult = try reverseString("Hello", allocator);
  defer allocator.free(revResult);
  try std.testing.expectEqualStrings("olleH", revResult);
}
