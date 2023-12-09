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
   


    

![2023-11-30_22-20-44](https://github.com/VladislavDr/FinalControlWorkQuarter/assets/124360247/2013701f-e77f-4342-9067-1dd52a6a6746)

    
![2023-11-30_22-21-24](https://github.com/VladislavDr/FinalControlWork/assets/124360247/2c8b48d6-41f7-4b35-b2c6-109cfe83b78c)



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


![2023-11-30_22-47-18](https://github.com/VladislavDr/FinalControlWork/assets/124360247/f8de2748-5576-45c8-b372-619fe1940277)
![2023-11-30_22-47-44](https://github.com/VladislavDr/FinalControlWork/assets/124360247/932beadd-37a4-444f-84a3-a15b655e8479)

# 6. 
    - Создать диаграмму классов с родительским классом "Животные", и двумя
    подклассами: "Pets" и "Pack animals".
    В составы классов которых в случае Pets войдут классы: собаки, кошки,
    хомяки, а в класс Pack animals войдут: Лошади, верблюды и ослы).
    Каждый тип животных будет характеризоваться (например, имена, даты
    рождения, выполняемые команды и т.д)
