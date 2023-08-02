FROM python:3.8-alpine
RUN pip install flask
RUN mkdir /app
ADD . /app
WORKDIR /app
RUN pip freeze > requirements.txt
CMD ["python", "app.py"]

