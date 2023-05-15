<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Раз</title>
</head>
<body>
<h3>Группа 4311</h3>
<h2>Задание:</h2>
<p>
    1. В зависимости от варианта выполняется разработка web-приложения. Пример
    приложения похожего на то, которое нужно разработать, см. выше. Показать работу
    приведённого выше примера.
</p>
<p>
    2. В целом, нужно создать web-приложение в NetBeans IDE, которое должно состоять
    из трёх JSP-страниц – стартовой, главной и финишной, а также при необходимости
    использовать для обмена данными между страницами Bean-компоненту
</p>
<p>
    3. На «Главной странице» инициировать вычисление функции из задания первой
    лабораторной работы.
</p>
<p>
    4. Параметры необходимые для работы функции реализуемой на «Главной странице»
    задавать на ней в текстовом поле, а результат её работы показывать на «Финишной
    странице».
</p>
<p>
    5. Программный код вычисляемой функции разместить: 0 - на «Главной странице»
</p>
<p>
    6. Заголовки страниц должны иметь следующий вид: 1 - «Раз», «Два» и «Три».
</p>
<p>
    7. Формат «Стартовой страницы»: 1 – содержит текст задания на лабораторную работу,
    группа студента и кнопку для перехода на «Главную страницу».
</p>
<p>
    8. Организовать вывод результатов работы функции на «Финишной странице»: 0 -
    строки следуют одна за другой сверху вниз (таблица без видимых границ, состоящая
    из одного столбца и множества строк)
</p>
<p>
    9. При повторном переходе на «Главную страницу», например при нажатии кнопки
    «Возврат» на «Финишной странице», на «Главной странице» должно отображаться: 0
    – изменение триггера, размещённого на «Главной странице»; 0 – изменение триггера,
    размещённого в Bean-компоненте;
</p>
<p>
    10. Среди средств автоматизации разработки web-приложения можно выделить
    инструмент окно «Палитра» для JSP – страниц и средства реорганизации кода для
    класса bean-компоненты, см. рисунки выше.
</p>
<button id="go-to-main-button" onclick="go()">
    На главную страницу
</button>
</body>
<script type="text/javascript">
    function go(){ window.location.href='main.jsp' }
</script>
</html>