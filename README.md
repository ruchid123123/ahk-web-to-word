# sdf# ahk-web-to-word

---

按下F1自动将网页论坛中发帖用户、发帖内容、发帖连接拷贝并替换word中设置好的标示，如aaaaaa。

---

# 1.新建autohokey 1.0脚本

# 2.将f1设置为快捷键

# 3.ctrl+u得到chrome.exe浏览器打开的网页源码。

# 4.复制网页源码中的完整xpath路径
```
/html/body/div[2]/div[2]/div/div/div[2]/div[1]/div[2]/div/a[2]
```

**这部分xpath代码显示的文字****

# 5.切换到已经打开的wps.exe。

# 6.自动按下ctrl+h，输入aaaaaa，tab后粘贴剪切板内容，替换。

# 7.还需要标题、贴文内容、帖子网页连接，分别替换bbbbbb、cccccc、dddddd

————————————————————————————————————————————————————————————————

## 从下列链接中提取“测试用户名”需要用什么语法？

```
<a class="aw-user-name" href="\/people\/[^"]*" data-id="\d*" data-reputation="\d*">\s*([^<]*)\s*<\/a>
```

