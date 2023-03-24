sudo apt-get update
sudo apt-get install ruby
sudo apt-get install wget
cd /home/ubuntu
sudo wget https://aws-codedeploy-us-east-1.s3.amazonaws.com/latest/install
sudo chmod +x ./install
sudo ./install auto
sudo ./install auto > /tmp/logfile
sudo service codedeploy-agent status
