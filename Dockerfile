FROM xgorn/python-phantomjs:3.9

COPY . /app/
WORKDIR /app/
ENV PYTHONUNBUFFERED=1
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt
RUN apt-get update
RUN sudo apt-get install ffmpeg
CMD python3 bot.py
