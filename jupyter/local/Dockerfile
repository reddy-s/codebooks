FROM jupyter/base-notebook:python-3.7.6

LABEL application=jupyter.notbook.customized \
      maintainer=SangramReddy<reddy.horcrux@gmail.com>

ENV AWS_DEFAULT_PROFILE=training

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

VOLUME [ "/home/root/work/books", "/home/root/work/data", "/home/root/.aws", "/home/root/work/kaggle" ]

WORKDIR /home/root
