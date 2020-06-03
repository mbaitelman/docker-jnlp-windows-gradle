FROM mbaitelman/jnlp-slave-windows:java8

RUN mkdir 'C:\Gradle'
ADD https://services.gradle.org/distributions/gradle-4.9-bin.zip C:/Gradle/gradle-4.9-bin.zip
RUN powershell -command Expand-Archive -Path C:\Gradle\gradle-4.9-bin.zip -DestinationPath C:\Gradle
ADD https://github.com/git-for-windows/git/releases/download/v2.27.0.windows.1/MinGit-2.27.0-busybox-64-bit.zip C:/temp/mingit.zip
RUN powershell -command Expand-Archive -Path C:\temp\mingit.zip -DestinationPath c:\mingit
RUN setx path '%path%;C:\mingit\cmd;C:\Gradle\gradle-4.9\bin'
