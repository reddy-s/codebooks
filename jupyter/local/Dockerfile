FROM jupyter/base-notebook:python-3.7.6

USER root

LABEL application=jupyter.notbook.customized \
      maintainer=SangramReddy<reddy.horcrux@gmail.com>

ENV AWS_DEFAULT_PROFILE=training

RUN groupadd -r reddys && useradd -r -g reddys reddys && \
    pip install --no-cache-dir \
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

VOLUME [ "/home/reddys/work/books", "/home/reddys/work/data", "/home/reddys/.aws", "/home/reddys/work/kaggle" ]

USER reddys
