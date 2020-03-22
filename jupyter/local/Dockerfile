FROM jupyter/base-notebook:python-3.7.6

RUN pip install --no-cache-dir \
        numpy \
        scipy \
        pandas \
        matplotlib \
        scikit-learn \
        tensorflow \
        keras \
        torch \
        seaborn \
        awscli

ENV AWS_DEFAULT_PROFILE=training

VOLUME [ "/home/jovyan/work/books", "/home/jovyan/work/data", "/home/jovyan/.aws" ]
