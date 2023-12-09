## Итоговая контрольная работа
## Информация о проекте
Необходимо организовать систему учета для питомника в котором живут домашние и Pack animals.

Задание
# Операционные системы и виртуализация (Linux)

# 1. и 2.
    - Создать два текстовых файла: "Pets"(Домашние животные) и "Pack
    animals"(вьючные животные), используя команду `cat` в терминале Linux. В
    первом файле перечислить собак, кошек и хомяков. Во втором — лошадей,
    верблюдов и ослов.
    - Объединить содержимое этих двух файлов в один и просмотреть его
    содержимое.
    - Переименовать получившийся файл в "Human Friends"(.
    Пример конечного вывода после команды “ls” :
    Desktop Documents Downloads HumanFriends.txt Music PackAnimals.txt
    Pets.txt Pictures Videos 

     - Создать новую директорию и переместить туда файл "Human Friends".
   


![2023-11-30_22-21-24](https://github.com/VladislavDr/FinalControlWorkForQuarter/assets/124360247/03f81889-77d2-4978-a5bf-50805340d351)
![2023-11-30_22-20-44](https://github.com/VladislavDr/FinalControlWorkForQuarter/assets/124360247/5d3e1849-f1cd-4d11-bdcf-3a61fe76c8cf)



# 3.
     - Подключить дополнительный репозиторий MySQL и установить один из
     пакетов из этого репозитория.


wget https://dev.mysql.com/get/mysql-apt-config_0.8.24-1_all.deb

sudo dpkg -i mysql-apt-config_0.8.24-1_all.deb

sudo apt-get update

sudo apt-get install mysql-server

systemctl status mysql

# 4.
    - Установить и затем удалить deb-пакет, используя команду `dpkg`.


wget https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-j_8.0.32-1ubuntu22.04_all.deb

sudo dpkg -i mysql-connector-j_8.0.32-1ubuntu22.04_all.deb

sudo dpkg -r mysql-connector-j

sudo apt-get autoremove

# 5.
    - Сохранить и выложить историю ваших терминальных команд в Ubuntu.

![2023-11-30_22-47-18](https://github.com/VladislavDr/FinalControlWorkForQuarter/assets/124360247/514b3f38-935e-4a4c-b551-7fcc7358dae7)
![2023-11-30_22-47-44](https://github.com/VladislavDr/FinalControlWorkForQuarter/assets/124360247/5d77da75-d468-4e05-94fd-cc28d5eb6fe5)


# 6. 
    - Создать диаграмму классов с родительским классом "Животные", и двумя
    подклассами: "Pets" и "Pack animals".
    В составы классов которых в случае Pets войдут классы: собаки, кошки,
    хомяки, а в класс Pack animals войдут: Лошади, верблюды и ослы).
    Каждый тип животных будет характеризоваться (например, имена, даты
    рождения, выполняемые команды и т.д)


![2023-12-09_06-44-47](https://github.com/VladislavDr/FinalControlWorkForQuarter/assets/124360247/9b2e41df-95ed-4b89-b061-e2ae56457f00)


# 7 
    Работа с MySQL.

# 7.1
    После создания диаграммы классов в 6 пункте, в 7 пункте база данных
    "Human Friends" должна быть структурирована в соответствии с этой
    диаграммой. Например, можно создать таблицы, которые будут
    соответствовать классам "Pets" и "Pack animals", и в этих таблицах будут поля,
    которые характеризуют каждый тип животных (например, имена, даты
    рождения, выполняемые команды и т.д.).
# 7.2 
    В ранее подключенном MySQL создать базу данных с названием
    "Human Friends".
    - Создать таблицы, соответствующие иерархии из вашей диаграммы
    классов.
    - Заполнить таблицы данными о животных, их командах и датами
    рождения.
    - Удалить записи о верблюдах и объединить таблицы лошадей и ослов.
    - Создать новую таблицу для животных в возрасте от 1 до 3 лет и вычислить
    их возраст с точностью до месяца.
    - Объединить все созданные таблицы в одну, сохраняя информацию о
    принадлежности к исходным таблицам.


https://github.com/VladislavDr/FinalControlWorkForQuarter/blob/main/PeaopleFrineads.sql
