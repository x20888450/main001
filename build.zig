const std = @import("std");
const builder = std.build.Builder;

pub fn build(b: *builder.Builder) void {
    // 设置目标平台和架构
    const target = std.Target.Android.aarch64;
    const cross_target_triple = "aarch64-linux-android";

}
