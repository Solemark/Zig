const std = @import("std");
const testing = std.testing;

pub export fn palindrome(input: [*]const u8, length: usize) bool {
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
