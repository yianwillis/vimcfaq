vimcfaq
=======

Vim 中文常见问题解答

# 关 于

这是 https://vimhelp.org/vim_faq.txt.html 的中文翻译。Vim FAQ 创建自
vim@vim.org 用户邮件列表和 comp.editors 新闻组的问与答。

# 安装

## Vim 8+ 自带软件包支持

```shell
$ mkdir -p ~/.vim/pack/foo/start
$ cd ~/.vim/pack/foo/start
$ git clone git://github.com/yianwillis/vimcfaq.git
```

重启 Vim。

其中 foo 可以是任何你自选的名字。

当然，如果不想用 git，也可用解压下载的 tar.gz 包到 `~/.vim/pack/foo/start`。git
方式的好处可以随时进行更新。

## [vim-plug](https://github.com/junegunn/vim-plug)

.vimrc 中加入:

```
Plug 'yianwillis/vimcfaq'
```

重启 Vim 后执行命令 `:PlugInstall`。

## [Vundle](https://github.com/VundleVim/Vundle.vim)

.vimrc 中加入:

```
Plugin 'yianwillis/vimcfaq'
```

重启 Vim 后执行 `:PluginInstall`。

## [NeoBundle](https://github.com/Shougo/neobundle.vim)

.vimrc 中加入：

```
NeoBundle 'yianwillis/vimcfaq'
```

重启 Vim 后执行命令 `:NeoBundleInstall`。

## [Pathogen](https://github.com/tpope/vim-pathogen)

```shell
$ cd ~/.vim/bundle
$ git clone git://github.com/yianwillis/vimcfaq.git
```

重启 Vim。

## 设 置

你的 'encoding' 设置及字体必须支持中文显示。对于使用非 utf-8 中文环境的用户，在
浏览某些帮助文件的时候可能会遇到麻烦。这是因为那些文件包含无法在 gbk, gb2312 等
编码方式下显示的字符。遇到这种情况，有以下几种解决方案：

1. 使用 utf-8 中文环境。例如，将 `LC_ALL` 设定为 `zh_CN.UTF-8`
2. 强制 vim 使用 utf-8 编码。做法是 `:set enc=utf-8`
3. 如果你的系统有 GB18030 支持，可以让 vim 使用 GB18030 编码，因为 GB18030 对非
   中文字符也能进行适当的处理。方法是

   ```vim
   :set enc=2byte-gb18030
   ```

   这时，Vim 会正确地进行转换。注意这里不能通过设置 `LC_ALL` 来完成。

如果使用 2 或 3，建议把 vim 设置写入你的个人 .vimrc 设置文件，避免每次都要输入
命令的麻烦。

备注：如果 `set enc=utf-8` 时，使用的中文消息出现乱码，可以同时设置

```vim
:language message zh_CN.UTF-8
```

# 在 线 阅 读

可在线阅读帮助文档的 HTML 版。

https://yianwillis.github.io/vimcfaq/

为了最佳阅读效果，请确保你的系统安装了 'Noto Sans Mono CJK SC' 或 NSimsun 字
体，否则可能有字体不能完全对齐的情况。

# 信 息

欢迎访问我们的主页以获取更多的信息和最新的版本:

https://github.com/yianwillis/vimcfaq


# 联 系

任何建议、问题等等，请送往 yianwillis@gmail.com。
