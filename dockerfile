FROM gcr.io/tensorflow/tensorflow
RUN apt-get update && apt-get install -y git-core tmux wget protobuf-compiler 
#RUN git clone https://github.com/wagonhelm/TF_ObjectDetection_API.git /notebooks/object
#RUN git clone https://github.com/Xavier-John/Object_Detection.git /notebooks/object
#RUN git clone https://github.com/tensorflow/models.git /notebooks/object/models
ADD /models/ /notebooks/object
RUN git clone https://github.com/Xavier-John/Object_Detection.git /notebooks/object/models/research/License_Plate
RUN wget http://download.tensorflow.org/models/object_detection/ssd_mobilenet_v1_coco_11_06_2017.tar.gz
RUN tar xvzf ssd_mobilenet_v1_coco_11_06_2017.tar.gz
WORKDIR "/notebooks/object"
#RUN pip install -r ./requirements.txt
# RUN pip install --upgrade pip
# RUN pip install requirements.txt
#RUN pip install  req.txt
RUN pip install numpy
RUN pip install scipy 
RUN pip install matplotlib 
RUN pip install pillow
RUN pip install scikit-image
RUN pip install jupyter
RUN pip install pandas
RUN pip install lxml 

CMD ["/run_jupyter.sh"]
