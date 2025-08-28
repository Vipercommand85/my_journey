// File: menu_program.zig
// I will continue to add all of the exercises here to be chosen from to run interactively

const std = @import("std");

pub fn main_menu() u32 {
  const stdout = std.io.getStdOut().writer();
  const stdin = std.io.getStdIn().reader();
  const main_menu_text =
    \\*********************************************************************************************************
    \\This is a small TUI that allows you to interact with all the exercises
    \\that ChapGPT has given me to help better my knowledge & comfortability with the Zig programming language.
    \\Please select the program by entering the number of the day of the program.
    \\*********************************************************************************************************
    \\
    \\*********************************************************************************************************
    \\Day 1: Print Hello world! 
    \\Day 2: Temperature Converter ( C <--> F)
    \\Day 3: FizzBuzz (1 - 100 / or your choice of number)
    \\Day 4: Prime Checker, checks if a number that was provided is a prime
    \\Day 5: Factorial, prints the factorial of a given number
    \\Day 6: Tests, runs all the test that validated the code for all exercises
    \\Day 7: This program
    \\Day 8: 
    \\Day 9:
    \\Day 10:
    \\Day 11:
    \\Day 12:
    \\Day 13:
    \\Day 14:
    \\Day 15:
    \\Day 16:
    \\Day 17:
    \\Day 18: 
    \\Day 19:
    \\Day 20:
    \\Day 21:
    \\Day 22:
    \\Day 23:
    \\Day 24:
    \\Day 25:
    \\Day 26:
    \\Day 27:
    \\Day 28:
    \\Day 29:
    \\Day 30:
    \\*********************************************************************************************************
;
  try stdout.print("{}\n", .{main_menu_text});
}



pub fn main() !void {

}
