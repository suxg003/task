nohup java -Xms500m -Xmx500m -Xmn100m -XX:PermSize=64m -XX:+UseParNewGC -XX:+UseConcMarkSweepGC -XX:+UseCMSCompactAtFullCollection -XX:CMSFullGCsBeforeCompaction=0 -XX:CMSInitiatingOccupancyFraction=70 -Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.port=1986 -Dcom.sun.management.jmxremote.authenticate=false -Dcom.sun.management.jmxremote.ssl=false -jar task-web.war --spring.profiles.active=test --datasource.druid.url=jdbc:mysql://121.40.121.133:3306/task --datasource.druid.username=root --datasource.druid.password=root &