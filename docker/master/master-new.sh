#!/bin/bash

export SPARK_MASTER_HOST=`hostname`

. "/spark/sbin/spark-config.sh"

. "/spark/bin/load-spark-env.sh"

mkdir -p $SPARK_MASTER_LOG

export SPARK_HOME=/spark

ln -sf /dev/stdout $SPARK_MASTER_LOG/spark-master.out

echo "spark.hadoop.fs.s3n.awsAccessKeyId    ${AWS_ACCESS_KEY_ID}" >> /spark/conf/spark-defaults.conf
echo "spark.hadoop.fs.s3n.awsSecretAccessKey    ${AWS_SECRET_ACCESS_KEY}" >> /spark/conf/spark-defaults.conf

cd /spark/bin && /spark/sbin/../bin/spark-class org.apache.spark.deploy.master.Master \
    --ip $SPARK_MASTER_HOST --port $SPARK_MASTER_PORT --webui-port $SPARK_MASTER_WEBUI_PORT >> $SPARK_MASTER_LOG/spark-master.out
