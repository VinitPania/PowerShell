#Stoping services
cmd.exe /c echo y | ssh -i "C:\Users\win10\Downloads\tomcat_vm.pem" ec2-user@3.109.211.62 sudo /mnt/tomcat/apache-tomcat-9.0.73/bin/shutdown.sh
Start-Sleep -m 20000

#Starting services 
cmd.exe /c echo y | ssh -i "C:\Users\win10\Downloads\tomcat_vm.pem" ec2-user@3.109.211.62 sudo /mnt/tomcat/apache-tomcat-9.0.73/bin/startup.sh
Start-Sleep -m 20000