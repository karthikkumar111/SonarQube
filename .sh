#install java
amazon-linux-extras install java-openjdk11 -y
sudo cd /opt
#sonarqube link address
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.9.5.90363.zip
#unzip
unzip sonarqube-9.9.5.90363.zip
#rename
mv ssonarqube-9.9.5.90363 sonar
#useradd sonar
useradd sonar

#Creat ethe password for sonar user
passwd sonar
type password = karthik111

#change owners
chown sonar:sonar filename  -R
#give full permissions
chmod 777 filename -R
su - sonar
#change directory to opt folder
cd /opt
ll
cd sonar
cd bin
cd linux*
./sonar.sh start
./sonar status
