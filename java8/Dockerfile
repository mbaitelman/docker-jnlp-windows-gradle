FROM mbaitelman/jnlp-slave-windows:java8

RUN mkdir "C:\Gradle", "C:\mingit"
ADD https://services.gradle.org/distributions/gradle-4.9-bin.zip C:/temp/gradle-4.9-bin.zip
RUN Tar.exe -xf C:\temp\gradle-4.9-bin.zip -C C:\Gradle

ADD https://github.com/git-for-windows/git/releases/download/v2.27.0.windows.1/MinGit-2.27.0-busybox-64-bit.zip C:/temp/mingit.zip
RUN Tar.exe -xf C:\temp\mingit.zip -C C:\mingit

#RUN rd /S /Q c:\temp TODO: fix this

RUN setx path '%path%;C:\mingit\cmd;C:\Gradle\gradle-4.9\bin'
