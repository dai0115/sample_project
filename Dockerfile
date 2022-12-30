FROM amazonlinux

RUN yum update -y && yum install python3 python3-pip -y

RUN pip3 install bottle

COPY main.py ./

EXPOSE 80

CMD ["python3", "main.py"]