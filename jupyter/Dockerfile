FROM continuumio/anaconda3

RUN apt-get update && \
    apt-get install -y \
    software-properties-common python-software-properties

RUN \
  echo debconf shared/accepted-oracle-license-v1-1 select true | \
  debconf-set-selections && \
  echo debconf shared/accepted-oracle-license-v1-1 seen true | \
  debconf-set-selections && \
  echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main" | \
  tee /etc/apt/sources.list.d/webupd8team-java.list && \
  echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main" | \
  tee -a /etc/apt/sources.list.d/webupd8team-java.list && \
  apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EEA14886 && \
  apt-get update && \
  apt-get install -y oracle-java8-installer && \
  apt-get install -y oracle-java8-set-default && \
  rm -rf /var/cache/oracle-jdk8-installer

RUN apt-get install -y \
    build-essential \
    && apt-get -y clean all \
    && rm -rf /var/lib/apt/lists/*

ADD requirements.txt /
RUN pip install -r /requirements.txt

ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

RUN wget https://raw.githubusercontent.com/alexarchambault/jupyter-scala/master/jupyter-scala -O /jupyter-scala && \
    chmod +x /jupyter-scala && \
    /jupyter-scala --jupyter-path /opt/conda/share/jupyter

CMD ["/opt/conda/bin/jupyter", "notebook", "--notebook-dir=/opt/notebooks", "--ip='*'", "--no-browser", "--allow-root"]

