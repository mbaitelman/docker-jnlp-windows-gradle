FROM mbaitelman/jnlp-slave-windows

RUN mkdir 'C:\Gradle'
ADD https://services.gradle.org/distributions/gradle-4.9-bin.zip C:\Gradle\gradle-4.9-bin.zip
RUN powershell -command Expand-Archive -Path C:\Gradle\gradle-4.9-bin.zip -DestinationPath C:\Gradle
RUN setx path '%path%;C:\Gradle\gradle-4.9\bin'
