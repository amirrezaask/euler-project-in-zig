const std = @import("std");

pub fn is_multiply_of(multiply: u32, n: u32) bool {
    return switch(n % multiply) {
        0 => true,
        else => false,
    };
}

pub fn is_multiply_of_3_5(n: u32) bool {
    return is_multiply_of(3, n) or is_multiply_of(5, n);
}

pub fn main() void {
    var counter: u32 = 0;
    var sum: u32 = 0;
    while (counter < 1000) {
        if (counter != 0 and counter != 1 and is_multiply_of_3_5(counter)) {
            sum += counter;

        }
        counter += 1;
    }
    std.debug.warn("{}\n", .{sum});
}
