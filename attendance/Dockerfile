FROM python:latest
# MAINTAINER OpsTree Solutions
LABEL maintainer="OpsTree Solutions" \
      application="attendance" \
      stack="OT-Microservices"

WORKDIR /attendance/
COPY requirements.txt /attendance/
RUN pip3 install --no-cache-dir -r requirements.txt
# RUN pip3 install -r requirements.txt

COPY attendance_api.py /attendance/
COPY config.yaml /app/config/config.yaml
EXPOSE 8081
ENTRYPOINT ["gunicorn"]
CMD ["--bind", "0.0.0.0:8081", "attendance_api:app"]
