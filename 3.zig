const std = @import("std");


fn is_prime(n: u64) bool {
    var c: u64 = 2;
    while(c < n) {
        if (n % c == 0) {
            return false;
        }
        c += 1;
    }
    return true;
}

fn smallest_prime_factor(n: u64) u64 {
    var c: u64 = 2;
    while (c < n) {
        if (n % c == 0 and is_prime(c)) {
            return c;
        }
        c += 1;
    }
    return n;
}

fn largest_prime(n: u64) u64 {
    const spf = smallest_prime_factor(n);
    if (spf < n) {
        std.debug.warn("\n n=>{} spf=>{}\n", .{n, spf});
        const nlp = largest_prime(n/spf);
        return nlp;
    }
    return n;
}

pub fn main () void {
    const n = 600851475143;
    std.debug.warn("{}", .{largest_prime(n)});

}
