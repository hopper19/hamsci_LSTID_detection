FROM python:3.11.9-alpine

COPY requirements.txt requirements.txt
COPY setup.py setup.py

COPY hamsci_LSTID_detect hamsci_LSTID_detect

RUN pip install -e .

WORKDIR hamsci_LSTID_detection

ENTRYPOINT ["python3", "run_LSTID_detection.py"]