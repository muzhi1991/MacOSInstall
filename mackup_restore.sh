#!/bin/bash

# 新的 macos 系统（例如 14/15） 存在软连接的 bug，这个 issue 不知道什么时候修复
# 一种替代方案如下面的 comment 的方法
# https://github.com/lra/mackup/issues/1924#issuecomment-1756300279

read -r -p "注意不要使用 iterm 执行，请使用 terminal，并关闭 iterm 进程, Are You Sure? [Y/n] " input
case $input in
    [yY][eE][sS]|[yY])
        echo "Yes"
        # 恢复
        mackup restore && mackup uninstall
        ;;
    [nN][oO]|[nN])
        echo "No"
        ;;
    *)
        echo "Invalid input..."
        exit 1
        ;;
esac

