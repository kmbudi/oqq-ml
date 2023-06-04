# Gunakan image base Python versi 3.8
FROM python:3.8-slim-buster

# Set direktori kerja dalam Docker
WORKDIR /app

# Salin dependencies file
COPY requirements.txt requirements.txt

# Install dependencies
RUN pip3 install -r requirements.txt

# Salin semua file ke direktori kerja
COPY . .

# gunicorn
CMD ["gunicorn", "--config", "gunicorn-cfg.py", "run:app"]
