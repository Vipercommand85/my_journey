// File: testing.zig
// Will use this file to hold all my tests for the various exercises so that I can be comfortable with verifing and validating any code that I write
// I believe that this will help me to be prepared for unit testing and TDD in the real world

const std = @import("std");
const iter_recurs = @import("factorial_iter_recur.zig");
const FactorialError = error{Overflow};

test "factorial interative basics" {
	try std.testing.expectEqual(@as(u128, 1), try factorial_iter(0);
	try std.testing.expectEqual(@as(u128, 1), try factorial_iter(1);
	try std.testing.expectEqual(@as(u128, 120), try factorial_iter(5);
	try std.testing.expectEqual(@as(u128, 3628800), try factorial_iter(10);
}

test "factorial iterative boundry" {
	try std.testing.expectEqual(@as(u128, 2432902008176640000), try factorial_iter(20);
	try std.testing.expectEqual(@as(u128, 295232799039604140847618609643520000000), try factorial_iter(34);
}

test "factorial overflow" {
	if (factorial_iter(35)) |v| {
		//unexpected success
		std.testing.expect(false);
	} else |err| {
		try std.testing.expect(err == FactorialError.Overflow);
	}
}

// Catch statement way that gives better clarity on the progession of checking for errors
test "factorial overflow catch" {
	const result = iter_recurs.factorial_iter(35) catch |err| {
		try std.testing.expect(err == FactorialError.overflow);
		return;
	}

// If we got here, function didn't error - fail the test
	try std.testing.expect(false);
}

test "iterative & recursive match for small number" {
	for ([_]u64{0, 1, 2, 3, 4, 5, 10, 20}) |num| {
		try std.testing.expectEqual(try factorial_iter(num), try factorial_recursive(num));
	}
}
