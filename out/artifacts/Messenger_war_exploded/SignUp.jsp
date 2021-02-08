<%@ page import="org.bihe.servlets.SignUp" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>SignUp</title>
    <style>
        body{
            background: #212D40;
        }
        div{
            text-align: center;
        }
        input[type=text], input[type=password], input[type=Date]{
            border:2px solid gray;
            border-radius:30px;
            width:200px;
            height:30px;
            font-family:"Quicksand Medium";
        }
        #flName{
            border:2px solid gray;
            border-radius:50px;
            width:100px;
            height:30px;
            font-family:"Quicksand Medium";
        }
        #lsName{
            border:2px solid gray;
            border-radius:50px;
            width:100px;
            height:30px;
            font-family:"Quicksand Medium";
        }
        form{
            font-family:"Quicksand Medium";
        }
        label{
            color:#C8CDF5;
        }
        h1{
            font-family:"Tekton Pro";
            text-align:center;
            color:#C8CDF5;
        }
        p{
            font-family:"Quicksand Medium";
            text-align:center;
            color:#C8CDF5;
        }
        input[type=submit]{
            background-color:#C8CDF5;
            border:2px solid #ccc;
            border-radius:12px;
            font-size:16px;
            color:#212D40;
            padding:8px 35px;
            cursor: pointer;
            font-family:"Quicksand Medium";
        }

    </style>
</head>
<body>

<div>
    <b><h1>Create a New Account!</h1></b>
    <p>It's quick and easy.</p>
    <form action="SignUp" method="post">

        <input type="text" id="flName" name="flName" placeholder=" First Name" required>
        <input type="text" id="lsName" name="lsName" placeholder=" Last Name" required><br><br><br>
        <input type="text" id="uName" name="uName" placeholder=" User Name" required><br><br><br>
        <input id="password" name="password" type="password" pattern="^\S{6,}$" onchange="this.setCustomValidity(this.validity.patternMismatch ? 'Must have at least 6 characters' : ''); if(this.checkValidity()) form.password_two.pattern = this.value;" placeholder="Password" required><br><br><br>
        <input id="password_two" name="conPassword" type="password" pattern="^\S{6,}$" onchange="this.setCustomValidity(this.validity.patternMismatch ? 'Please enter the same Password as above' : '');" placeholder="Confirm Password" required><br><br><br>
        <input type="text" name="birthDate" placeholder=" Birth Date" onfocus="(this.type='date')" onblur="(this.type='text')" required><br><br><br>
        <input type="text" id="phoneNum" name="phoneNum" placeholder=" Phone Number" required><br><br><br>
        <label>Gender:</label>
        <input type="radio" id="Male" name="Gender" value="Male"><label for="Male">Male</label>
        <input type="radio" id="Female" name="Gender" value="Female"><label for="Female">Female</label>
        <input type="radio" id="Other" name="Gender" value="Other"><label for="Other">Other</label><br><br>
        <p>By clicking Sign Up, you agree to our Terms, Data Policy and Cookies Policy.</p>
        <input type="submit">
    </form>
</div>
</body>
</html>
