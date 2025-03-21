FROM python:3.9-slim 
LABEL maintainer="thiago.1souto@gmail.com" \
      linkedin="https://linkedin.com/in/thiago1souto"   

WORKDIR /app

COPY requirements.txt .
RUN python -m pip install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 5000
CMD ["gunicorn", "--bind","0.0.0.0:5000","app:app"]



WORKDIR ${RUMOAELITE_DIR}
