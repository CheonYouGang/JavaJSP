<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script>
$(document).ready(function(){
    $("button").click(function(){
        //$("h1").slideToggle();
        $("h1").css('background-color', 'rgb(255, 255, 153').slideToggle();
    });
});
</script>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>2018. 7. 24.</title>
</head>
<body>

<h1 style="border-color: rgb(255, 102, 102);">
<span class="">&lt;h1&gt;</span>
Welcome to My Homepage
<span class="markup">&lt;/h1&gt;</span></h1>

<button>$("h1")</button>
</body>
</html>