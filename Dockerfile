FROM nvidia/cuda:12.1.0-devel-ubuntu20.04 as dev
USER root
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ="Asia/Kolkata"
RUN apt-get update && apt-get install -y tzdata
WORKDIR /ITMS/
RUN apt-get -y update && apt-get install -y vim ffmpeg
RUN apt-get install python3.8-dev python3-pip -y
RUN python3.8 -m pip install --upgrade pip 
COPY requiremnet.txt /ITMS/
RUN pip install -r /ITMS/requiremnet.txt
RUN pip install cython
RUN pip install shapely
RUN pip install paddlepaddle paddleocr
COPY ./*.py /ITMS/
COPY ./PaddleOCR/ /ITMS/PaddleOCR/
COPY ./models/ /models/
COPY ./streams.txt /ITMS/streams.txt
COPY ./run_itms.sh /ITMS/
#RUN python3.8 setup.py build_ext --inplace
#RUN rm /ITMS/*py
ENTRYPOINT ["/ITMS/run_itms.sh"]
