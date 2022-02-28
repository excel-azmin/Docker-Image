#FROM python:alpine
#WORKDIR /app
#COPY requirements.txt . /app
##COPY . /app
#RUN pip install --no-cache-dir -r requirements.txt
#COPY . .
#ENTRYPOINT ["python"]
## CMD [ "python", "./your-daemon-or-script.py" ]
#CMD ["app.py"]

FROM python:alpine

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python", "./app.py" ]