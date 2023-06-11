<!DOCTYPE html>


<head>
    <meta charset="UTF-8">
    <title>商城界面</title>
    <style>
        * {
            margin: 0;
            padding: 0;
        }

        #top {
            width: 100%;
            border-bottom: 5px skyblue solid;
            font-size: 15px;
            float: left;
        }

        #top h1 {
            margin: 30px 0 13px 50px;
        }

        .text {
            margin: 30px 0 15px 50px;
            width: 300px;
            height: 40px;
            border: 1px solid skyblue;
            border-radius: 3px;
        }

        .btn {
            margin-left: 5px;
            height: 40px;
            width: 60px;
            border: none;
            text-align: center;
            line-height: 40px;
        }

        #box .getBtn {
            background-color: #ccc;
        }

        #box .addBtn {
            background-color: #3a8ee6;
            color: white;
        }

        #box table {
            width: 100%;
            text-align: center;
        }

        #box table thead td {
            padding: 5px 50px;
            border-bottom: 1px #ccc solid;
        }

        #box table tbody tr {
            border: 2px black solid;

        }

        #father {
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            overflow: auto;
        }

        #addBox {
            display: none;
            background-color: #0ab195;
            position: relative;
            width: 800px;
            height: 300px;
            margin: 200px auto;
            padding: 10px;
        }

        #addBox .nextText {
            margin: 30px 0 40px 10px;
        }

        .textarea {
            width: 720px;
            height: 50px;
            margin-left: 20px;
        }

        .cancelBtn {
            margin: 20px 0 10px 330px;
        }

        .confirmBtn {
            margin-left: 40px;
        }

        .span {
            font-size: 20px;
        }

        .close {
            float: right;
            font-size: 20px;
        }
    </style>
</head>
<body>
<meta charset="UTF-8">
<div id="app">
    <div id="top">
        <h1>图书管理</h1>
    </div>
    <div id="box">
        <!--        <form action="books.html">-->
        <input type="text" class="text" placeholder="请输入图书名称">
        <input type="button" value="查询" class="getBtn btn">
        <input type="button" value="添加" class="addBtn btn">
        <!--        </form>-->
        <table>
            <thead>
            <tr>
                <td>序号</td>
                <td>图书类别</td>
                <td>图书名称</td>
                <td>操作</td>
            </tr>
            </thead>
            <tbody>
            <!-- TODO 表单内容为未完成，需要动态传入-->
            </tbody>
        </table>
    </div>
    <div id="father">
        <div id="addBox">
            <sapn class="span">新增图书</sapn>
            <a class="close">×</a>
            <form action="">
                图书类别<input type="text" class="text nextText" required>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;图书名称<input type="text" class="text nextText" required><br>
                描述<textarea class="textarea"></textarea>
                <input type="button" value="取消" class="cancelBtn btn">
                <input type="submit" value="确认" class="confirmBtn btn">
            </form>
        </div>
    </div>

</div>
<script>
    let addBox = document.querySelector("#addBox")
    // let getBtn = document.querySelector(".getBtn")
    let addBtn = document.querySelector(".addBtn")
    let close = document.querySelector(".close")
    let confirmBtn = document.querySelector(".confirmBtn")
    let cancelBtn = document.querySelector(".cancelBtn")
    addBtn.addEventListener("click", function () {
        addBox.style.display = "block";
    })
    close.addEventListener("click", function () {
        addBox.style.display = "none";
    })
    cancelBtn.addEventListener("click", function () {
        addBox.style.display = "none";
    })
    confirmBtn.addEventListener("click", function () {
        alert("添加成功");
    })
</script>
</body>
</html>