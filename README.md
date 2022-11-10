# Hostel
Приложение для ведения организации отеля. Среда разработки Lazarus, база данных Access

Перед загрузкой кода необходимо:
- Установить Lazarus - кроссплатформенную визуальную интегрированную среду разработки (IDE) для быстрой разработки приложений (RAD) с использованием свободного компилятора Pascal (https://www.lazarus-ide.org/index.php?page=downloads).
- Установить Microsoft Access - Реляционная система управления базами данных (СУБД) корпорации Microsoft (https://www.microsoft.com/ru-RU/download/details.aspx?id=50040).
- Связать Lazarus и Access.
Системный DSN
1. Вводим в поиске меню Пуска слово ODBC, запускаем 64-bit версию.
2. Переходим в меню Системный DSN(System DSN)
3. Нажимаем кнопку Добавить 
4. Если в открывшемся окне нет такого перечня

 ![image](https://user-images.githubusercontent.com/79350472/201032320-e80def9f-d45a-42d5-b5ad-f36af854182c.png)

Рисунок 7 – Создание нового источника данных

То скачиваем данные драйвера - ( https://www.microsoft.com/en-us/download/details.aspx?id=54920 )
Теперь у вас есть всё необходимое, кликаем по Microsoft Access Driver(*mdb, *accdb). 

Открылась такое окно

 ![image](https://user-images.githubusercontent.com/79350472/201032485-f706393a-ea57-4d51-95ef-adcf519a4143.png)

Рисунок 8 – Занесение своей базы данных

Заполняем Data Source Name, называя «hostel».
Далее выбираем нашу БД, нажав кнопку Select.
Нажимаем ОК и уже переходим в Lazarus.
В Lazarus на форму добавлены следующие компоненты:
Из вкладки Data Controls - TDBGrid. 
В его свойствах(Propertis), Align на alBottom.
Из вкладки Data Access - TDataSource
Из вкладки SQLDb - TODBCConection, SQLTransaction и SQLQuery
 
 ![image](https://user-images.githubusercontent.com/79350472/201032881-af8e9241-2420-4258-8a8d-b17026e940d2.png)

Рисунок 9 – Компоненты формы

Все необходимые приложения установлены. Можете запускать продукт.
