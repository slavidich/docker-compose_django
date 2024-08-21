FROM python:3.12.5
# не делать pyc file и выводить все ошибки в логи 
ENV PYTHONDONTWRITEBYTECODE 1 
ENV PYTHONUNBUFFERED 1

WORKDIR /app/

COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

COPY . /app/

# значит что скрипт будет выполняться каждый раз при запуске контейнера 
ENTRYPOINT ["/app/entrypoint.sh"]