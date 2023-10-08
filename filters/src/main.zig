pub export fn filter(data: [*]i32) [*]i32 {
    var output: [*]i32 = undefined;
    for (data) |item| {
        if (item >= 0) {
            output = output ++ item;
        }
    }
    return output;
}
