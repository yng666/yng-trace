# yng-trace

1、用于YngPHP的页面Trace扩展，支持Html页面和浏览器控制台两种方式输出。

2、添加了使用debug模式和show_error_msg来控制是否显示右下角图标信息，例如：
>1). debug=false，show_error_msg=true，不显示

>2). debug=false，show_error_msg=false，不显示

>3). debug=true，show_error_msg=false，不显示

>4). debug=true，show_error_msg=true，显示


## 安装

```sh
composer require yng/yng-trace
```

## 配置

安装后config目录下会自带trace.php配置文件。

type参数用于指定trace类型，支持html和console两种方式。