const std = @import("std");
const builder = std.build.Builder;

pub fn build(b: *builder.Builder) void {
    // 设置目标平台和架构
    const target = std.Target.Android.aarch64;
    const cross_target_triple = "aarch64-linux-android";

    // 设置 NDK 路径 (请根据实际情况修改)
    // const ndk_path = "/path/to/your/android-ndk";

    // 构建可执行文件
    const exe = b.addExecutable("main", "main.zig");

    // 应用 target 和 cross_target_triple
    exe.setTarget(target);
    exe.setCrossTargetTriple(cross_target_triple);

    // 设置链接器和链接器参数 (使用 ndk_path)
    // exe.linkSystemLibrary("c");
    // exe.linkSystemLibrary("log");
    // exe.addLinkPath(ndk_path ++ "/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/lib/aarch64-linux-android/21");
    // exe.addLinkPath(ndk_path ++ "/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/lib/aarch64-linux-android");

    // 设置编译器和链接器路径 (使用 ndk_path)
    // const cc = ndk_path ++ "/toolchains/llvm/prebuilt/linux-x86_64/bin/aarch64-linux-android21-clang";
    // const cxx = ndk_path ++ "/toolchains/llvm/prebuilt/linux-x86_64/bin/aarch64-linux-android21-clang++";
    // exe.setCompilerForStage(builder.Stage.C, cc);
    // exe.setCompilerForStage(builder.Stage.Cpp, cxx);

    // ... 其他构建选项 ...

    // 设置构建产物输出目录
    // const build_dir = std.fs.path.join(std.fs.cwd(), "build", "android", "arm64-v8a") catch unreachable;
    // exe.setBuildArtifactPath(build_dir ++ "/libmy_app.so");

    // 将可执行文件添加到默认构建目标 (使用 b 参数)
    // b.default_build_target = .{ .executable = exe };
}
