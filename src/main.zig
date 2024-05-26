const std = @import("std");
const raw = @cImport(@cInclude("libraw/libraw.h"));

pub fn main() !void {
    const libraw = raw.lib_raw_init();
    _ = libraw;
    const img_path = "/home/pedro-dev/Pictures/Fotos-Edicao/IMG_0005.CR3";
    _ = img_path;
    std.debug.print("All your {s} are belong to us.\n", .{"codebase"});
}

test "simple test" {
    var list = std.ArrayList(i32).init(std.testing.allocator);
    defer list.deinit(); // try commenting this out and see if zig detects the memory leak!
    try list.append(42);
    try std.testing.expectEqual(@as(i32, 42), list.pop());
}
