const std = @import("std");
const circle = @import("main.zig");
const math = std.math;
const testing = std.testing;

fn get_area_data() [3][2]f32 {
    return [3][2]f32{
        [2]f32{ 1.0, math.pi },
        [2]f32{ 0.0, 0.0 },
        [2]f32{ 2.1, (math.pi * math.pow(f32, 2.1, 2)) },
    };
}

fn get_circ_data() [3][2]f32 {
    return [3][2]f32{
        [2]f32{ 1.0, (math.pi * 2) },
        [2]f32{ 0.0, 0.0 },
        [2]f32{ 2.1, (math.pi * 2.1 * 2) },
    };
}

test "test calc_area" {
    const data: [3][2]f32 = get_area_data();
    for (data) |item| {
        try testing.expect(circle.calc_area(item[0]) == item[1]);
    }
}

test "test calc_circ" {
    const data: [3][2]f32 = get_circ_data();
    for (data) |item| {
        try testing.expect(circle.calc_circ(item[0]) == item[1]);
    }
}
