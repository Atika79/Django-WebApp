FROM python:3
RUN pip install django==3.2

COPY . .

RUN python django_web_app/manage.py migrate

CMD ["python3", "django_web_app/manage.py", "runserver", "0.0.0.0:8001"]
