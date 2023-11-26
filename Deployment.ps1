#Removing old war
#cmd.exe /c echo y | ssh -i "C:\Users\win10\Downloads\tomcat_vm.pem" ec2-user@65.1.130.52 sudo rm -rf /mnt/tomcat/apache-tomcat-9.0.73/webapps/mvnwebapp.war
#cmd.exe /c echo y | ssh -i "C:\Users\win10\Downloads\tomcat_vm.pem" ec2-user@65.1.130.52 sudo rm -rf /mnt/tomcat/apache-tomcat-9.0.73/webapps/mvnwebapp

#Copying war file which is build with extension/artifacts .war
cmd.exe /c echo y | scp -i "C:\Users\win10\Downloads\tomcat_vm.pem" "D:\azure agent\_work\19\a\target\mvnwebapp.war" ec2-user@3.109.3.248:/mnt/tomcat/apache-tomcat-9.0.73/webapps/

#Giving root permission to Webapp.war 
cmd.exe /c echo y | ssh -i "C:\Users\win10\Downloads\tomcat_vm.pem" ec2-user@3.109.3.248 sudo chown tomcat:tomcat /mnt/tomcat/apache-tomcat-9.0.73/webapps/mvnwebapp.war

#Changing mod to READ WRITE AND EXECUTE
cmd.exe /c echo y | ssh -i "C:\Users\win10\Downloads\tomcat_vm.pem" ec2-user@3.109.3.248 sudo chmod -R 777 /mnt/tomcat/apache-tomcat-9.0.73/webapps/mvnwebapp.war

#Starting services
cmd.exe /c echo y | ssh -i "C:\Users\win10\Downloads\tomcat_vm.pem" ec2-user@3.109.3.248 sudo /mnt/tomcat/apache-tomcat-9.0.73/bin/shutdown.sh
start-sleep -m 20000

