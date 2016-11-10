FROM java:8

# Gradle
ENV GRADLE_VERSION 2.14
ENV GRADLE_SHA 993b4f33b652c689e9721917d8e021cab6bbd3eae81b39ab2fd46fdb19a928d5

# RUN apk add --update curl && \
#     rm -rf /var/cache/apk/*

RUN cd /usr/lib \
 && curl -fl https://downloads.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip -o gradle-bin.zip \
 && echo "$GRADLE_SHA  gradle-bin.zip" | sha256sum -c - \
 && unzip "gradle-bin.zip" \
 && ln -s "/usr/lib/gradle-${GRADLE_VERSION}/bin/gradle" /usr/bin/gradle \
 && rm "gradle-bin.zip"

ENV GRADLE_HOME /usr/lib/gradle
ENV PATH $PATH:$GRADLE_HOME/bin

WORKDIR /usr/bin/app
ENTRYPOINT ["gradle"]
CMD ["-version"]