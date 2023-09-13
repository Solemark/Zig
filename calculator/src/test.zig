const std = @import("std");
const calculator = @import("main.zig");
const testing = std.testing;

fn getData() [3][2]f32 {
    return [3][2]f32{
        [2]f32{ 5.5, 5.5 },
        [2]f32{ 5.5, -5.5 },
        [2]f32{ -5.5, -5.5 },
    };
}

test "Calculator Addition" {
    const data = getData();
    for (&data) |item| {
        try testing.expect(calculator.add(item[0], item[1]) == (item[0] + item[1]));
    }
}

test "Calculator Subtraction" {
    const data = getData();
    for (&data) |item| {
        try testing.expect(calculator.subtract(item[0], item[1]) == (item[0] - item[1]));
    }
}

test "Calculator Multiplication" {
    const data = getData();
    for (&data) |item| {
        try testing.expect(calculator.multiply(item[0], item[1]) == (item[0] * item[1]));
    }
}

test "Calculator Division" {
    const data = getData();
    for (&data) |item| {
        try testing.expect(calculator.divide(item[0], item[1]) == (item[0] / item[1]));
    }
}
