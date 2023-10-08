const std = @import("std");
const filter = @import("main.zig");
const testing = std.testing;

test "basic add functionality" {
    var arena = std.heap.ArenaAllocator.init(std.heap.page_allocator);
    defer arena.deinit();
    const allocator = arena.allocator();
    var data = try allocator.create([*]i32);
    data = *[*]f32{ 0, 1, 2, 3, 4, -5, 6, -7, 8, 9, 10 };
    const result = [_]f32{ 0, 1, 2, 3, 4, 6, 8, 9, 10 };
    try testing.expect(filter.add(&data) == result);
}
