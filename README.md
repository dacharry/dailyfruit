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
Ubuntu上直接sudo apt-get install redis-server
ps -aux|grep redis
让redis服务器可远程登陆，修改redis配置文件，sudo vim /etc/redis/redis.conf
将bind 127.0.0.1注释掉
重启redis服务
sudo /etc/init.d/redis-server restart
## 测试
在manage.py所在目录下
输入python manage.py runserver 
如果看到下面信息，表示正确
February 26, 2019 - 14:14:52
Django version 1.8.2, using settings 'dailyfruit.settings'
Starting development server at http://127.0.0.1:8085/
Quit the server with CONTROL-C
## fastdfs与nginx安装
pass
## 服务器部署
pass<br>
<br>
最终效果请点击http://www.laizhida.cn
如果有任何问题，请私信我
