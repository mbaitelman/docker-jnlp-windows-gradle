FROM mbaitelman/jnlp-slave-windows:java8

RUN mkdir "C:\Gradle", "C:\mingit"
ADD https://services.gradle.org/distributions/gradle-4.9-bin.zip C:/temp/gradle-4.9-bin.zip
RUN Tar.exe -xf C:\temp\gradle-4.9-bin.zip -C C:\Gradle

#RUN rd /S /Q c:\temp TODO: fix this 

RUN setx path '%path%;C:\Gradle\gradle-4.9\bin'
