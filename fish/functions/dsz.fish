function dsz
    # 获取目录路径，如果没有传递参数则使用当前目录
    if test (count $argv) -eq 0
        set directory "."
    else
        set directory $argv[1]
    end

    # 检查目录是否存在
    if not test -d $directory
        echo "Directory not found: $directory"
        return 1
    end

    # 使用 du 命令统计目录下所有文件的大小，并用 awk 进行求和
    set total_size (du -b $directory/* | awk '{sum += $1} END {print sum}')

    # 将总大小从字节转换为MB
    set total_size_mb (echo "scale=2; $total_size / 1024 / 1024" | bc)

    # 输出总大小，单位为MB
    echo "Total size of all files in directory '$directory' is:$total_size B == $total_size_mb MB."
end
