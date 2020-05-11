# http-flv-conf
学习用

1. 运行脚本`init.bat`

2. 推流
[OBS software](https://obsproject.com/) 
OBS 设置 - 推流 
服务器：`rtmp://localhost:1935/demo` 
串流密钥：`custom` 

3. 拉流
打开浏览器:`http://localhost:8080`
URL: `http://localhost:8080/live?app=demo&stream=custom`