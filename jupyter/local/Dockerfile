FROM jupyter/base-notebook:python-3.7.6

RUN pip install --no-cache-dir \
        awscli \
        s3fs \
        boto3 \
        numpy \
        scipy \
        pandas \
        matplotlib \
        scikit-learn \
        tensorflow \
        keras \
        torch \
        seaborn

ENV AWS_DEFAULT_PROFILE=training

VOLUME [ "/home/jovyan/work/books", "/home/jovyan/work/data", "/home/jovyan/.aws" ]
