Dim objXMLHTTP, strURL, strData
Dim objFSO, objFile

' 创建XMLHTTP对象
Set objXMLHTTP = CreateObject("MSXML2.XMLHTTP")

' 创建FileSystemObject对象
Set objFSO = CreateObject("Scripting.FileSystemObject")

' 设置要下载的网页 URL
strURL = "https://ngosang.github.io/trackerslist/trackers_best.txt"

' 发送请求以获取网页内容
objXMLHTTP.open "GET", strURL, False
objXMLHTTP.send

' 获取响应的内容
strData = objXMLHTTP.responseText

' 创建一个文件并将内容写入其中
Set objFile = objFSO.CreateTextFile("trackers_all.txt", True)
objFile.Write strData
objFile.Close

' 释放对象
Set objXMLHTTP = Nothing
Set objFSO = Nothing