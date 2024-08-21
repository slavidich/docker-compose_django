Данный проект предназначен для запуска django с gunicorn, nginx и postgresql с помощью docker-compose

Django версии 3.12.5, выбиралась максимальная стабильная версия 

Для сборка проекта 

git clone https://github.com/slavidich/g4hw.git
cd g4hw/
sudo chmod +x django/entrypoint.sh 
docker compose up --build -d 

# для добавления admin 
docker exec -it g4hw-django-1 python G4/manage.py createsuperuser
