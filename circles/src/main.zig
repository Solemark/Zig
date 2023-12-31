const std = @import("std");
const math = std.math;

pub export fn calc_area(radius: f32) f32 {
    if (radius <= 0) return 0.0;
    return math.pi * (math.pow(f32, radius, 2));
}

pub export fn calc_circ(radius: f32) f32 {
    if (radius <= 0) return 0.0;
    return 2 * math.pi * radius;
}
