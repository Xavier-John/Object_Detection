FROM gcr.io/tensorflow/tensorflow
RUN apt-get update && apt-get install -y git-core tmux wget protobuf-compiler 
#RUN git clone https://github.com/wagonhelm/TF_ObjectDetection_API.git /notebooks/object
#RUN git clone https://github.com/Xavier-John/Object_Detection.git /notebooks/object
RUN git clone https://github.com/tensorflow/models.git /notebooks/object/models
RUN git clone https://github.com/Xavier-John/Object_Detection.git /notebooks/object/models/research/license_plate
RUN wget http://download.tensorflow.org/models/object_detection/ssd_mobilenet_v1_coco_11_06_2017.tar.gz
RUN tar xvzf ssd_mobilenet_v1_coco_11_06_2017.tar.gz
WORKDIR "/notebooks/object"
RUN pip install -r ./requirements.txt
CMD ["/run_jupyter.sh"]
