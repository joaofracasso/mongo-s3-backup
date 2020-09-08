FROM centos/mongodb-36-centos7

# Install Python and Cron
USER root
RUN yum update -y && yum install cronie -y
# Install Python and Cron
COPY mc /bin

ENV CRON_TIME="0 3 * * *" \
  TZ=US/Eastern \
  CRON_TZ=US/Eastern

ADD run.sh /run.sh
CMD /run.sh