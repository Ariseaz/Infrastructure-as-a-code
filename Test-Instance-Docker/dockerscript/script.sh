# Create Docker Volume for Data and Log
docker volume create jenkins-data
docker volume create jenkins-log

# build docker file
docker build -t myjenkins .

# run Jenkins container
docker run -p 8080:8080 -p 50000:50000 -v var/jenkins_home:/var/jenkins_home --name=jenkins-master --mount source=jenkins-log,target=/var/log/jenkins --mount source=jenkins-data,target=/var/jenkins_home -d myjenkins