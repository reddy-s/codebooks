FROM bde2020/spark-worker:latest

COPY *.jar /spark/jars/

COPY spark-defaults.conf /spark/conf/

COPY worker-new.sh /

RUN rm -rf /worker.sh && \
    mv /worker-new.sh /worker.sh && \
    chmod +x /worker.sh
