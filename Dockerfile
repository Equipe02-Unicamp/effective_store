From ubuntu:20.04

RUN apt-get -qq update && \ 
apt-get -qq install --yes --no-install-recommends locales wget python3-pip

COPY ./ ./

RUN pip3 install -r requirements.txt

CMD ["jupyter", "notebook", "--ip", "0.0.0.0"]  CMD jupyter-lab --ip=0.0.0.0 --port=8888 --no-browser --notebook-dir=/jupyter/data --allow-root
