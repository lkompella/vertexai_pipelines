FROM mirror.gcr.io/library/python:3.11
WORKDIR /
COPY requirements3.txt /requirements.txt
COPY src /src
RUN pip install --upgrade pip && pip install -r requirements.txt
ENTRYPOINT [ "bash" ]
