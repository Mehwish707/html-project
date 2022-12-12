FROM python:3.7-slim 
RUN ls -lsa
WORKDIR Home/mehwish
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
EXPOSE 8000
CMD [ "gunicorn", "--bind", "0.0.0.0:80", "app:app" ]
