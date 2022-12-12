FROM python:3.10

WORKDIR beautycity

COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

RUN mkdir beautycity
COPY beautycity/ /beautycity/beautycity/

ADD salon_bot/ /beautycity/salon_bot/

COPY db.sqlite3 .
COPY manage.py .

RUN ls 
RUN ls beautycity
RUN ls salon_bot

CMD ["python3", "manage.py", "beauty_bot"]
