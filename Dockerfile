FROM python:3.9-slim
WORKDIR /app

COPY static/ /app/static/
COPY templates/ /app/templates/
COPY *.py /app
COPY requirements.txt /app
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8000
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "app:app"]
