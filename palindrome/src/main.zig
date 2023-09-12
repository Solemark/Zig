const std = @import("std");
const testing = std.testing;

export fn palindrome(input: [*]const u8, length: usize) bool {
    var x: usize = 0;
    var y: usize = length - 1;
    while (x < y) {
        if (input[x] != input[y]) {
            return false;
        }
        x += 1;
        y -= 1;
    }
    return true;
}

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
