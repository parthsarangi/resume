FROM python:3.7-alpine
RUN mkdir -p ./home/app
COPY . ./home/app
WORKDIR /home/app
RUN pip install -r requirements.txt
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
CMD flask run --host=0.0.0.0