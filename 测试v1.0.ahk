; 新建autohotkey 1.0脚本
f1::
    ; 将f1设置为快捷键
    IfWinExist, ahk_class Chrome_WidgetWin_1
    {
        ; 如果Chrome窗口存在
        WinActivate
        Sleep, 100
        Send, ^u ; 按下ctrl+u得到Chrome网页源码
        Sleep, 1000 ; 等待1秒，确保页面加载完成
        ClipWait ; 等待剪切板中有数据
        Clipboard := "" ; 清空剪切板
        Send, ^a ; 选中整个页面源码
        Send, ^c ; 复制选中内容到剪切板
        ClipWait ; 等待剪切板中有数据
        ; 提取指定XPath路径的网页内容
        Clipboard = %Clipboard%
        StringGetPos, startPos, Clipboard, "/html/body/div[2]/div[2]/div/div/div[2]/div[1]/div[2]/div/a[2]", 1
        StringTrimLeft, Clipboard, Clipboard, startPos
        StringGetPos, endPos, Clipboard, "</a>", 1
        StringLeft, Clipboard, Clipboard, endPos
        ; 显示提取到的文字
        MsgBox, %Clipboard%
        
        ; 切换到WPS
        IfWinExist, ahk_class WPS_Window
        {
            WinActivate
            Sleep, 100
            Send, ^h ; 按下ctrl+h
            Sleep, 1000 ; 等待1秒，确保查找替换框出现
            Send, aaaaaa ; 输入替换内容
            Sleep, 500 ; 等待0.5秒
            Send, {Tab} ; 切换到替换内容输入框
            Sleep, 500 ; 等待0.5秒
            Send, ^v ; 粘贴剪切板内容
            Sleep, 500 ; 等待0.5秒
            Send, {Enter} ; 执行替换
        }
        Else
        {
            MsgBox, WPS窗口未打开
        }
    }
    Else
    {
        MsgBox, Chrome窗口未打开
    }
return
