Dim objFSO, objInputFile, objOutputFile
Dim strInputFile, strOutputFile, strData

' 创建FileSystemObject对象
Set objFSO = CreateObject("Scripting.FileSystemObject")

' 设置输入文件和输出文件的路径
strInputFile = "trackers_all.txt"
strOutputFile = "trackers_all_format.txt"

' 打开输入文件
Set objInputFile = objFSO.OpenTextFile(strInputFile, 1)

' 读取输入文件的内容
strData = objInputFile.ReadAll
objInputFile.Close

' 将换行符替换为逗号
strData = Replace(Replace(strData, vbCrLf, ","), vbLf, ",")
strData = Replace(strData, ",,", ",")

' 创建输出文件并将修改后的内容写入其中
Set objOutputFile = objFSO.CreateTextFile(strOutputFile, True)
objOutputFile.Write strData
objOutputFile.Close

' 释放对象
Set objFSO = Nothing