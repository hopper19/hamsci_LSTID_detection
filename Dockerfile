FROM python:3.11.9-alpine

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY hamsci_LSTID_detect hamsci_LSTID_detect
COPY run_LSTID_detection.py run.py

ENTRYPOINT ["python3", "run.py"]