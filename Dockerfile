FROM python:3.11-slim

ENV PYTHONBUFFERED=1

WORKDIR /app

COPY requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt

COPY . /app/

CMD ["python", "personal_assistant_folder/personal_assistant_folder/personal_assistant.py"]