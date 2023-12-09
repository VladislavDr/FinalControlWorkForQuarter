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
   


    

![2023-11-30_22-20-44](https://github.com/VladislavDr/FinalControlWork/assets/124360247/2013701f-e77f-4342-9067-1dd52a6a6746)

    
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

[Uploading Diagram.drawio…]()<mxfile host="app.diagrams.net" modified="2023-12-09T03:36:29.065Z" agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.5993.2470 YaBrowser/23.11.0.2470 Yowser/2.5 Safari/537.36" etag="SgmcqdtN4OZtWBlFPUeT" version="22.1.7" type="device">
  <diagram id="C5RBs43oDa-KdzZeNtuy" name="Page-1">
    <mxGraphModel dx="1066" dy="611" grid="1" gridSize="10" guides="1" tooltips="1" connect="1" arrows="1" fold="1" page="1" pageScale="1" pageWidth="827" pageHeight="1169" math="0" shadow="0">
      <root>
        <mxCell id="WIyWlLk6GJQsqaUBKTNV-0" />
        <mxCell id="WIyWlLk6GJQsqaUBKTNV-1" parent="WIyWlLk6GJQsqaUBKTNV-0" />
        <mxCell id="ncRvDCoSPYdS6_dtSOEw-0" value="Animal" style="rounded=0;whiteSpace=wrap;html=1;" parent="WIyWlLk6GJQsqaUBKTNV-1" vertex="1">
          <mxGeometry x="280" y="90" width="200" height="30" as="geometry" />
        </mxCell>
        <mxCell id="ncRvDCoSPYdS6_dtSOEw-1" value="Pets" style="rounded=0;whiteSpace=wrap;html=1;" parent="WIyWlLk6GJQsqaUBKTNV-1" vertex="1">
          <mxGeometry x="160" y="200" width="120" height="40" as="geometry" />
        </mxCell>
        <mxCell id="ncRvDCoSPYdS6_dtSOEw-2" value="Pack animals" style="rounded=0;whiteSpace=wrap;html=1;" parent="WIyWlLk6GJQsqaUBKTNV-1" vertex="1">
          <mxGeometry x="480" y="200" width="120" height="40" as="geometry" />
        </mxCell>
        <mxCell id="ncRvDCoSPYdS6_dtSOEw-3" value="name: String&lt;br&gt;birthday: Date&lt;br&gt;commands: ArrayList" style="rounded=0;whiteSpace=wrap;html=1;" parent="WIyWlLk6GJQsqaUBKTNV-1" vertex="1">
          <mxGeometry x="280" y="120" width="200" height="60" as="geometry" />
        </mxCell>
        <mxCell id="ncRvDCoSPYdS6_dtSOEw-7" value="" style="endArrow=classic;html=1;rounded=0;entryX=0.2;entryY=1;entryDx=0;entryDy=0;entryPerimeter=0;exitX=1;exitY=0;exitDx=0;exitDy=0;" parent="WIyWlLk6GJQsqaUBKTNV-1" target="ncRvDCoSPYdS6_dtSOEw-3" edge="1" source="ncRvDCoSPYdS6_dtSOEw-1">
          <mxGeometry width="50" height="50" relative="1" as="geometry">
            <mxPoint x="280" y="280" as="sourcePoint" />
            <mxPoint x="320" y="210" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="ncRvDCoSPYdS6_dtSOEw-8" value="" style="endArrow=classic;html=1;rounded=0;entryX=0.8;entryY=1;entryDx=0;entryDy=0;entryPerimeter=0;exitX=0;exitY=0;exitDx=0;exitDy=0;" parent="WIyWlLk6GJQsqaUBKTNV-1" target="ncRvDCoSPYdS6_dtSOEw-3" edge="1" source="ncRvDCoSPYdS6_dtSOEw-2">
          <mxGeometry width="50" height="50" relative="1" as="geometry">
            <mxPoint x="480" y="280" as="sourcePoint" />
            <mxPoint x="530" y="230" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="haJW7uJ9ahlA6qZSarh4-0" value="Cat" style="rounded=0;whiteSpace=wrap;html=1;" vertex="1" parent="WIyWlLk6GJQsqaUBKTNV-1">
          <mxGeometry x="80" y="280" width="80" height="40" as="geometry" />
        </mxCell>
        <mxCell id="haJW7uJ9ahlA6qZSarh4-1" value="Dog" style="rounded=0;whiteSpace=wrap;html=1;" vertex="1" parent="WIyWlLk6GJQsqaUBKTNV-1">
          <mxGeometry x="280" y="280" width="80" height="40" as="geometry" />
        </mxCell>
        <mxCell id="haJW7uJ9ahlA6qZSarh4-2" value="Humster" style="rounded=0;whiteSpace=wrap;html=1;" vertex="1" parent="WIyWlLk6GJQsqaUBKTNV-1">
          <mxGeometry x="180" y="280" width="80" height="40" as="geometry" />
        </mxCell>
        <mxCell id="haJW7uJ9ahlA6qZSarh4-3" value="GuineaPig" style="rounded=0;whiteSpace=wrap;html=1;" vertex="1" parent="WIyWlLk6GJQsqaUBKTNV-1">
          <mxGeometry x="120" y="360" width="80" height="40" as="geometry" />
        </mxCell>
        <mxCell id="haJW7uJ9ahlA6qZSarh4-4" value="Parrot" style="rounded=0;whiteSpace=wrap;html=1;" vertex="1" parent="WIyWlLk6GJQsqaUBKTNV-1">
          <mxGeometry x="240" y="360" width="80" height="40" as="geometry" />
        </mxCell>
        <mxCell id="haJW7uJ9ahlA6qZSarh4-5" value="Mule" style="rounded=0;whiteSpace=wrap;html=1;" vertex="1" parent="WIyWlLk6GJQsqaUBKTNV-1">
          <mxGeometry x="500" y="280" width="80" height="40" as="geometry" />
        </mxCell>
        <mxCell id="haJW7uJ9ahlA6qZSarh4-6" value="Horse" style="rounded=0;whiteSpace=wrap;html=1;" vertex="1" parent="WIyWlLk6GJQsqaUBKTNV-1">
          <mxGeometry x="400" y="280" width="80" height="40" as="geometry" />
        </mxCell>
        <mxCell id="haJW7uJ9ahlA6qZSarh4-7" value="Donkey" style="rounded=0;whiteSpace=wrap;html=1;" vertex="1" parent="WIyWlLk6GJQsqaUBKTNV-1">
          <mxGeometry x="560" y="360" width="80" height="40" as="geometry" />
        </mxCell>
        <mxCell id="haJW7uJ9ahlA6qZSarh4-8" value="Camel" style="rounded=0;whiteSpace=wrap;html=1;" vertex="1" parent="WIyWlLk6GJQsqaUBKTNV-1">
          <mxGeometry x="610" y="280" width="80" height="40" as="geometry" />
        </mxCell>
        <mxCell id="haJW7uJ9ahlA6qZSarh4-9" value="Rabbit" style="rounded=0;whiteSpace=wrap;html=1;" vertex="1" parent="WIyWlLk6GJQsqaUBKTNV-1">
          <mxGeometry y="360" width="80" height="40" as="geometry" />
        </mxCell>
        <mxCell id="haJW7uJ9ahlA6qZSarh4-10" value="" style="endArrow=classic;html=1;rounded=0;entryX=0;entryY=1;entryDx=0;entryDy=0;" edge="1" parent="WIyWlLk6GJQsqaUBKTNV-1" target="ncRvDCoSPYdS6_dtSOEw-1">
          <mxGeometry width="50" height="50" relative="1" as="geometry">
            <mxPoint x="120" y="280" as="sourcePoint" />
            <mxPoint x="170" y="230" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="haJW7uJ9ahlA6qZSarh4-11" value="" style="endArrow=classic;html=1;rounded=0;entryX=0.5;entryY=1;entryDx=0;entryDy=0;" edge="1" parent="WIyWlLk6GJQsqaUBKTNV-1" target="ncRvDCoSPYdS6_dtSOEw-1">
          <mxGeometry width="50" height="50" relative="1" as="geometry">
            <mxPoint x="220" y="280" as="sourcePoint" />
            <mxPoint x="270" y="230" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="haJW7uJ9ahlA6qZSarh4-12" value="" style="endArrow=classic;html=1;rounded=0;entryX=1;entryY=1;entryDx=0;entryDy=0;" edge="1" parent="WIyWlLk6GJQsqaUBKTNV-1" target="ncRvDCoSPYdS6_dtSOEw-1">
          <mxGeometry width="50" height="50" relative="1" as="geometry">
            <mxPoint x="320" y="280" as="sourcePoint" />
            <mxPoint x="370" y="230" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="haJW7uJ9ahlA6qZSarh4-13" value="" style="endArrow=classic;html=1;rounded=0;entryX=0.192;entryY=0.975;entryDx=0;entryDy=0;entryPerimeter=0;" edge="1" parent="WIyWlLk6GJQsqaUBKTNV-1" target="ncRvDCoSPYdS6_dtSOEw-1">
          <mxGeometry width="50" height="50" relative="1" as="geometry">
            <mxPoint x="160" y="360" as="sourcePoint" />
            <mxPoint x="210" y="310" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="haJW7uJ9ahlA6qZSarh4-14" value="" style="endArrow=classic;html=1;rounded=0;entryX=0.833;entryY=1;entryDx=0;entryDy=0;entryPerimeter=0;" edge="1" parent="WIyWlLk6GJQsqaUBKTNV-1" target="ncRvDCoSPYdS6_dtSOEw-1">
          <mxGeometry width="50" height="50" relative="1" as="geometry">
            <mxPoint x="280" y="360" as="sourcePoint" />
            <mxPoint x="330" y="310" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="haJW7uJ9ahlA6qZSarh4-15" value="" style="endArrow=classic;html=1;rounded=0;entryX=0;entryY=0.5;entryDx=0;entryDy=0;" edge="1" parent="WIyWlLk6GJQsqaUBKTNV-1" target="ncRvDCoSPYdS6_dtSOEw-1">
          <mxGeometry width="50" height="50" relative="1" as="geometry">
            <mxPoint x="40" y="360" as="sourcePoint" />
            <mxPoint x="100" y="140" as="targetPoint" />
            <Array as="points">
              <mxPoint x="40" y="220" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="haJW7uJ9ahlA6qZSarh4-16" value="" style="endArrow=classic;html=1;rounded=0;entryX=0;entryY=1;entryDx=0;entryDy=0;" edge="1" parent="WIyWlLk6GJQsqaUBKTNV-1" target="ncRvDCoSPYdS6_dtSOEw-2">
          <mxGeometry width="50" height="50" relative="1" as="geometry">
            <mxPoint x="440" y="280" as="sourcePoint" />
            <mxPoint x="490" y="230" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="haJW7uJ9ahlA6qZSarh4-17" value="" style="endArrow=classic;html=1;rounded=0;entryX=0.5;entryY=1;entryDx=0;entryDy=0;" edge="1" parent="WIyWlLk6GJQsqaUBKTNV-1" target="ncRvDCoSPYdS6_dtSOEw-2">
          <mxGeometry width="50" height="50" relative="1" as="geometry">
            <mxPoint x="540" y="280" as="sourcePoint" />
            <mxPoint x="590" y="230" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="haJW7uJ9ahlA6qZSarh4-18" value="" style="endArrow=classic;html=1;rounded=0;entryX=1;entryY=1;entryDx=0;entryDy=0;" edge="1" parent="WIyWlLk6GJQsqaUBKTNV-1" target="ncRvDCoSPYdS6_dtSOEw-2">
          <mxGeometry width="50" height="50" relative="1" as="geometry">
            <mxPoint x="650" y="280" as="sourcePoint" />
            <mxPoint x="700" y="230" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="haJW7uJ9ahlA6qZSarh4-19" value="" style="endArrow=classic;html=1;rounded=0;entryX=0.858;entryY=1.075;entryDx=0;entryDy=0;entryPerimeter=0;" edge="1" parent="WIyWlLk6GJQsqaUBKTNV-1" target="ncRvDCoSPYdS6_dtSOEw-2">
          <mxGeometry width="50" height="50" relative="1" as="geometry">
            <mxPoint x="600" y="360" as="sourcePoint" />
            <mxPoint x="650" y="310" as="targetPoint" />
          </mxGeometry>
        </mxCell>
      </root>
    </mxGraphModel>
  </diagram>
</mxfile>


     
     
