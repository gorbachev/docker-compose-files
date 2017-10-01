FROM continuumio/anaconda3

RUN apt-get update && \
    apt-get install -y \
    build-essential \
    && apt-get -y clean all \
    && rm -rf /var/lib/apt/lists/*

ADD requirements.txt /
RUN pip install -r /requirements.txt

CMD ["/opt/conda/bin/jupyter", "notebook", "--notebook-dir=/opt/notebooks", "--ip='*'", "--no-browser", "--allow-root"]

