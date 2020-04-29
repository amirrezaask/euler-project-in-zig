const std = @import("std");

fn new_fib_number(a: usize, b: usize) usize {
    return a + b;
}

pub fn main() void {
    var a: usize = 1;
    var b: usize = 2;

    var sum: usize = 0;
    
    const threshold = 4000000;

    while (b < threshold) {
        if (b % 2 == 0) {
            sum += b;
        }
        const temp = new_fib_number(a, b);
        a = b;
        b = temp;
    }
    std.debug.warn("{}", .{sum});
}
