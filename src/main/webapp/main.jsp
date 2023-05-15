<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
    boolean _trigger = false;
%>
<%! void changeTrigger () {
        _trigger = !_trigger;
    }
%>


<html>
<head>
    <title>Два</title>
</head>
<body>
<jsp:useBean id="mybean" scope="session" class="jspappl.TriggerHandler" />
<%
    changeTrigger();
    mybean.ChangeTrigger();
%>
<p>Триггер в bean: ${mybean.trigger}</p>
<p>Триггер на странице <%= _trigger%></p>
<h1>
    Введите числа через пробел:
</h1>
<input type="text" id="numbers-input" name="nimput"/>
<button type="text" onclick="go()">Решить</button>
</body>
<script>
    const go = () => {
        function isEven (number){
            return number % 2 === 0;
        }

        function isPositive(number){
            return number >= 0;
        }

        function isAdding(number){
            return (isEven(number) && isPositive(number) ||
                !isEven(number) && !isPositive(number));
        }

        const inputString = document.getElementById("numbers-input").value;
        if (inputString == null) return;
        const initArr = inputString.split(" ");
        let number;
        let total = 0;
        let finishArr = [];

        if (initArr != null){
            initArr.forEach (item => {
                try {
                    number = parseInt(item);
                    finishArr.push(number);
                    if (isAdding(number)) {
                        total += number;
                    }
                } catch (e) {}
            })
        }
        let url = 'finish.jsp?total='+total;
        finishArr.forEach(number => url += ('&element='+number))

        window.location.href = url;
    }
</script>
</html>
