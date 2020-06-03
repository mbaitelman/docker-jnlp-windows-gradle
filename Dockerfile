FROM mbaitelman/jnlp-slave-windows

ADD https://repo.jenkins-ci.org/public/org/jenkins-ci/main/remoting/4.2.1/remoting-4.2.1.jar slave.jar
COPY "slave-launch.ps1" ".\slave-launch.ps1"
RUN mkdir 'C:\Gradle'
ADD https://services.gradle.org/distributions/gradle-4.9-bin.zip C:\Gradle\gradle-4.9-bin.zip
RUN powershell -command Expand-Archive -Path C:\Gradle\gradle-4.9-bin.zip -DestinationPath C:\Gradle
  
RUN setx path '%path%;C:\Gradle\gradle-4.9\bin'
