FROM java:8

MAINTAINER nadavsr@trueaccord.com

ENV GERRIT_VERSION 2.11.3

ENV GERRIT_WAR /gerrit-bin/gerrit.war

RUN mkdir /gerrit-bin && chmod 0755 /gerrit-bin

ADD bin/release.war /gerrit-bin/gerrit.war

ADD init_or_upgrade.sh /

USER root
RUN adduser --gecos "Gerrit" --disabled-password --disabled-login gerrit2
RUN mkdir /gerrit
RUN chown -R gerrit2:gerrit2 /gerrit

USER gerrit2

EXPOSE 49417 29418

USER gerrit2

CMD exec bash -c "cd /gerrit; exec ./bin/init.sh"

