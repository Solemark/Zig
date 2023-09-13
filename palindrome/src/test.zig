const std = @import("std");
const palindrome = @import("palindrome.zig").palindrome;
const testing = std.testing;

test "test IS palindrome" {
    const input = "DAD";
    try testing.expect(palindrome(input, input.len) == true);
    const inputB = "ABCDCBA";
    try testing.expect(palindrome(inputB, inputB.len) == true);
}

test "test NOT palindrome" {
    const input = "Dad";
    try testing.expect(palindrome(input, input.len) == false);
    const inputB = "ABCDcba";
    try testing.expect(palindrome(inputB, inputB.len) == false);
}
