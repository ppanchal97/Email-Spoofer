# TODO - this needs to be fixed
FROM python:3

COPY requirements.txt /tmp/requirements.txt
RUN python3 -m pip install -r /tmp/requirements.txt

WORKDIR /spoofcheck
COPY . .

ENTRYPOINT ["./spoofcheck.py"]