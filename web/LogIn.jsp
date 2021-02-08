<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>LogIn</title>
    <style>
        body {
            background: #212D40;
        }

        #left-box {
            position: absolute;
            left: 107.57px;
            top: 99.23px;
            background: #C8CDF5;
            width: 424.85px;
            height: 601.54px;
            border-radius: 30px;
        }


        #login-form {
            position: absolute;
            left: 770px;
            top: 140px;
            width: 400px;
            height: 200px;
        }

        #con {
            position: relative;
        }

        input[type=text ], input[type=password] {
            border: 2px solid gray;
            border-radius: 50px;
            width: 380px;
            height: 50px;
            font-family: "Cooper Std Black";
        }

        input[type=submit] {
            background-color: #C8CDF5;
            border: 2px solid #ccc;
            border-radius: 12px;
            font-size: 16px;
            color: #212D40;
            padding: 12px 45px;
            cursor: pointer;
            margin-left: 130px;
            font-family: "Cooper Std Black";
        }

        h1 {
            position: absolute;
            left: 200px;
            top: 20px;
            font-family: "Cooper Std Black";
            color: #C8CDF5;
        }

        #left-box p {
            position: absolute;
            top: 24px;
            font-family: "Cooper Std Black";
            text-align: center;
            font-size: 25px;
            color: #212D40;
        }

        #left-box a {
            position: absolute;
            font-family: "Cooper Std Black";
            text-decoration: none;
            color: #212D40;
            text-align: center;
            font-size: 20px;
            left: 170px;
            top: 550px;
        }

        #login-form p {
            color: #C8CDF5;
            position: absolute;
            top: 280px;
            left: 140px;
        }

        #login-form a {
            position: absolute;
            text-decoration: none;
            color: #C8CDF5;
            top: 380px;
            left: 80px;

        }
        svg {
            position: absolute;
            top: 76px;
        }
    </style>
</head>
<body id="con">
<h1>FOX MESSENGER</h1>
<div id="left-box">
    <svg id="Capa_1" enable-background="new 0 0 512 512" height="512" viewBox="0 0 512 512" width="420"
         xmlns="http://www.w3.org/2000/svg">
        <g>
            <g>
                <g>
                    <path d="m256 512c-68.244 0-132.439-25.354-180.759-71.391-19.313-18.4-35.172-39.223-47.267-61.753l26.993-73.645 68.296-52.82h56.124l228.151-168.399c5.604-4.137 13.32-3.871 18.627.643 54.549 46.402 85.835 113.013 85.835 182.757 0 65.475-26.721 126.992-75.241 173.218-48.32 46.036-112.515 71.39-180.759 71.39z"
                          fill="#ced3df"/>
                    <path d="m426.165 84.635c-5.306-4.514-13.023-4.78-18.627-.643l-151.538 111.851v316.157c68.244 0 132.439-25.354 180.759-71.391 48.52-46.226 75.241-107.742 75.241-173.217 0-69.744-31.286-136.355-85.835-182.757z"
                          fill="#aeb5c7"/>
                </g>
                <path d="m15 252.392c-8.284 0-15 6.716-15 15 0 39.413 9.696 77.385 27.986 111.458 43.302-20.275 93.187-84.026 95.277-126.458z"
                      fill="#f3f5fb"/>
            </g>
            <g>
                <g>
                    <g>
                        <path d="m256.009 342.761c-3.513 0-7.025-1.228-9.848-3.685l-114.405-99.581c-32.539-28.322-51.201-68.715-51.201-110.821v-113.674c0-5.644 3.168-10.811 8.199-13.37 5.031-2.559 11.072-2.077 15.634 1.246l66.713 48.606c27.215-9.144 55.734-13.774 84.899-13.774 28.74 0 56.867 4.5 83.732 13.386l68.026-48.323c4.575-3.25 10.582-3.674 15.567-1.1 4.987 2.574 8.119 7.717 8.119 13.329v113.679c0 42.102-18.659 82.493-51.193 110.814l-114.394 99.581c-2.822 2.458-6.335 3.687-9.848 3.687z"
                              fill="#f3f5fb"/>
                        <path d="m423.326 1.671c-4.985-2.574-10.993-2.15-15.567 1.1l-68.026 48.323c-26.866-8.886-54.993-13.386-83.733-13.386v305.052h.009c3.513 0 7.026-1.229 9.849-3.686l114.394-99.581c32.534-28.322 51.193-68.712 51.193-110.814v-113.679c0-5.612-3.132-10.754-8.119-13.329z"
                              fill="#dbe2eb"/>
                    </g>
                    <g>
                        <path d="m271 309.624c0-8.284-6.716-15-15-15s-15 6.716-15 15v24.958l5.161 4.492c2.823 2.457 6.335 3.685 9.848 3.685s7.026-1.229 9.849-3.686l5.142-4.476z"
                              fill="#5b5555"/>
                        <path d="m256 294.624v48.136h.009c3.513 0 7.026-1.229 9.849-3.686l5.142-4.476v-24.974c0-8.284-6.716-15-15-15z"
                              fill="#463f3f"/>
                    </g>
                </g>
                <g>
                    <path d="m311 199.71c-6.285 0-11.98-4.053-14.115-9.946-2.128-5.874-.239-12.703 4.605-16.654 4.862-3.966 11.833-4.465 17.218-1.26 5.371 3.196 8.233 9.664 7.003 15.79-1.392 6.927-7.64 12.07-14.711 12.07z"
                          fill="#463f3f"/>
                    <path d="m201 199.71c-6.285 0-11.98-4.053-14.115-9.946-2.128-5.874-.238-12.703 4.605-16.654 4.875-3.976 11.817-4.45 17.217-1.26 5.38 3.178 8.231 9.676 7.004 15.79-1.392 6.926-7.64 12.07-14.711 12.07z"
                          fill="#5b5555"/>
                </g>
            </g>
        </g>
    </svg>
    <p>Connect With friends and the world around you on FOX Messenger.</p>
    <a href="#">About Us...</a>
</div>
<div id="login-form">
    <form action="Login" method="post">

        <input type="text" id="Us" name="user" placeholder="Username or Phone Number" required><br><br><br>
        <input type="password" id="Pass" name="pass" placeholder="Password" required><br><br><br>
        <input type="submit" value="Login">
    </form>
    <p>Forgot Password ?</p>
    <a href="SignUp.jsp">Don't Have An account yet? Sign Up</a>
</div>
</body>
</html>
