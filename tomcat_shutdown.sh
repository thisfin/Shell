ps -ef | grep tomcat | grep -v grep | awk '{print $2}' | xargs kill -9
