<!DOCTYPE html>
<html lang="en">

<head>
    <title>MyBank </title>
    <meta charset="UTF-8">
    <style>
        .slidecontainer {
            width: 60%;
            margin-left: 20%;
            margin-top: 5%;
            position: relative;
        }

        .slider {
            -webkit-appearance: none;
            width: 100%;
            height: 15px;
            border-radius: 5px;
            background: #d3d3d3;
            outline: none;
            opacity: 0.7;
            -webkit-transition: .2s;
            transition: opacity .2s;
        }

        .slider:hover {
            opacity: 1;
        }

        .slider::-webkit-slider-thumb {
            -webkit-appearance: none;
            appearance: none;
            width: 25px;
            height: 25px;
            border-radius: 50%;
            background: #4CAF50;
            cursor: pointer;
        }

        .slider::-moz-range-thumb {
            width: 25px;
            height: 25px;
            border-radius: 50%;
            background: #4CAF50;
            cursor: pointer;
        }
        .value{
            margin-left: 45%;
        }
        .left{


        }
        .right{

        }
        .values{
            width: 100%;
        }
    </style>
</head>
<body>

<h1>Credit calculator</h1>

<div class="slidecontainer">
    <p class = "values">
        <span class = "left"><% Object minSum = request.getAttribute("minSum");
        out.print(minSum);%></span>
        <span class= ="right"><% Object maxSum = request.getAttribute("maxSum");
        out.print(maxSum);%></span>
    </p>

    <% Object avg = request.getAttribute("avg");%>
<input type="range" step="1000" min=<%= minSum%> max=<%= maxSum%> value=<%=avg%> class="slider" id="myRange">
<p class="value"><span id="demo"></span></p>
</div>

<div class="slidecontainer">

    <span class = "left"> <% Object minTime = request.getAttribute("minTime");
        out.print(minTime);
    %>
    </span> <span class = "right"> <% Object maxTime = request.getAttribute("maxTime");
    out.print(maxTime);
%>
    <% Object avgTime = request.getAttribute("avgTime");%>
</span><input type="range" min=<%= minTime%> max=<%= maxTime%> value=<%=avgTime%> class="slider" id="myRange1">
    <p class="value"><span id="demo1"></span></p>
</div>



<script>
    var slider = document.getElementById("myRange");
    var output = document.getElementById("demo");
    output.innerHTML = slider.value;

    slider.oninput = function() {
        output.innerHTML = this.value;
    }
</script>

<script>
    var slider1 = document.getElementById("myRange1");
    var output1 = document.getElementById("demo1");
    output1.innerHTML = slider1.value;

    slider1.oninput = function() {
        output1.innerHTML = this.value;
    }
</script>

</body>
</html>