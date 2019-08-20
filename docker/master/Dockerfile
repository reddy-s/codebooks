FROM bde2020/spark-master:latest

COPY *.jar /spark/jars/

COPY spark-defaults.conf /spark/conf/

COPY master-new.sh /

RUN rm -rf /master.sh && \
    mv /master-new.sh /master.sh && \
    chmod +x /master.sh
