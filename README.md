# IL学习
## 环境搭建
### 编辑器
VS Code
### 插件
* IL Complete （用于语法高亮和代码片段）
* Code Runner （用于编译和运行）
### Code Runner的配置
```json

"code-runner.executorMap": {

    "csharp": "cd $dir && csc $fileName && echo =====compile_$fileNameWithoutExt.exe===== && .\\$fileNameWithoutExt.exe && echo =====ildasm_$fileNameWithoutExt.exe.il===== && ildasm /output=$fileNameWithoutExt.exe.il $fileNameWithoutExt.exe",

    "il": "cd $dir && ilasm.exe /OUTPUT=$fileName.exe $fileName && echo =====$fileName.exe===== && .\\$fileName.exe"
},
"code-runner.runInTerminal": true
```
### 环境变量
* ilasm & csc 在C:\Windows\Microsoft.NET\Framework\<version>\
* ildasm 在 C:\Program Files (x86)\Microsoft SDKs\Windows\vXX.XX\bin\NETFX X.X Tools\
## 资料
* [List of CIL instructions](https://en.wikipedia.org/wiki/List_of_CIL_instructions) 
* [OpCodes](https://learn.microsoft.com/en-us/dotnet/api/system.reflection.emit.opcodes)
* [microclr](https://github.com/Leowbattle/microclr) (一个很好的学习IL的入口，可以完全跳过PE结构，metadata等等内容)
## C# to IL
* [Contents - C# to IL](http://vijaymukhi.com/documents/books/ilbook/contents.htm)
* [(翻译) 《C# to IL》第一章 IL入门](https://www.cnblogs.com/Jax/archive/2009/05/29/1491523.html)
* [(翻译) 《C# to IL》第二章 IL基础](https://www.cnblogs.com/Jax/archive/2009/05/31/1492572.html)
* [(翻译) 《C# to IL》第三章 选择和循环](https://www.cnblogs.com/Jax/archive/2009/06/01/1493346.html)
* [(翻译) 《C# to IL》第四章 关键字和操作符](https://www.cnblogs.com/Jax/archive/2009/06/03/1495013.html)