FROM python:3.6

COPY requirements.txt manage.py data.sqlite /vue/

WORKDIR /vue

RUN pip install --upgrade pip setuptools==45.2.0

RUN pip install -r requirements.txt

EXPOSE 80

ENTRYPOINT [ "python" ]

CMD ["manage.py"]
