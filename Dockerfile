FROM python:3.8-alpine

WORKDIR /app

COPY . ./

RUN pip install virtualenv
RUN virtualenv venv --python=python3.8
RUN /bin/bash -c "source venv/bin/activate"
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

ENV FLASK_APP=core/server.py

CMD ["bash", "run.sh"]
