# dailyfruit
环境配置
-----
环境ubuntu16.04 <br>
python3.6 、 Django1.8.2<br>
安装python3后<br>
安装虚拟环境(https://blog.csdn.net/da953824/article/details/87946504)
进入项目目录  req.txt所在目录<br>
安装相应python包
pip install -r req.txt
如果自己安装python包，版本请一致，因为有些PY包会导致django版本的变动
## 数据库安装
### mysql
安装服务端
sudo apt-get install mysql-server
安装客户端
sudo apt-get install mysql-client
sudo apt-get install libmysqlclient-dev
### redis
查看https://blog.csdn.net/da953824/article/details/87947987
