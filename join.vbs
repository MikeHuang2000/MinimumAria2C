Dim objFSO, objInputFile1, objInputFile2, objOutputFile
Dim strInputFile1, strInputFile2, strOutputFile, strData1, strData2

' 创建FileSystemObject对象
Set objFSO = CreateObject("Scripting.FileSystemObject")

' 设置输入文件和输出文件的路径
strInputFile1 = "aria2bak.conf"
strInputFile2 = "trackers_all_format.txt"
strOutputFile = "aria2.conf"

' 打开并读取第一个输入文件的内容
Set objInputFile1 = objFSO.OpenTextFile(strInputFile1, 1, False, -1)
strData1 = objInputFile1.ReadAll
objInputFile1.Close

' 打开并读取第二个输入文件的内容
Set objInputFile2 = objFSO.OpenTextFile(strInputFile2, 1, False, -1)
strData2 = objInputFile2.ReadAll
objInputFile2.Close

' 将两个文件的内容合并
strMergedData = strData1 & strData2

' 创建输出文件并将合并后的内容写入其中（编码类型为UTF-8）
Set objOutputFile = objFSO.CreateTextFile(strOutputFile, True, True)
objOutputFile.Write strMergedData
objOutputFile.Close

' 设置输出文件的编码类型为UTF-8
Set objOutputFile = objFSO.OpenTextFile(strOutputFile, 2, False, -1)
objOutputFile.Write(strMergedData)
objOutputFile.Close

' 释放对象
Set objFSO = Nothing