<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> <?= $title; ?> </title>

    <!-- Favicon Here -->
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />

    <!-- Font Awesome Script -->
    <script src="https://kit.fontawesome.com/f7402773f7.js" crossorigin="anonymous"></script>

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Kalam:wght@300;400;700&display=swap" rel="stylesheet">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <style>
        ::-webkit-scrollbar {
            width: 7px;
            height: 10px;
        }

        ::-webkit-scrollbar-track {
            border-radius: 5px;
        }

        ::-webkit-scrollbar-thumb {
            border-radius: 5px;
            background: #736357;
        }

        ::-webkit-scrollbar-thumb:hover {
            background: rgb(61, 49, 17);
        }

        body {
            background-color: blanchedalmond;
        }

        .header h1,
        p {
            font-family: Kalam;
        }

        .header p {
            font-size: 15px;
        }

        .main h1 {
            font-family: Kalam;
            text-align: center;
        }

        .main p {
            font-size: 20px;
            font-family: Arial, Helvetica, sans-serif;
            text-align: center;
        }

        nav {
            font-size: 15px;
            font-weight: 600;
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
        }

        nav ul li:hover {
            background-color: blanchedalmond;
        }

        nav #btn-login {
            background-color: rgb(255, 255, 255);
            color: black;
        }

        nav #btn-login:hover {
            background-color: #736357;
            color: white;
        }

        nav .dropdown-item:hover {
            background-color: #736357;
            color: white;
        }

        .deskripsi {
            margin-top: 10em;
        }

        /* Sosial Media CSS */
        .mediaSosial {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 8vh;
        }

        .icon {
            position: relative;
            display: flex;
        }

        .icon li {
            list-style: none;
        }

        .icon li a {
            position: relative;
            display: inline-block;
            width: 50px;
            height: 50px;
            background: blanchedalmond;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #736357;
            border-radius: 10px;
            text-decoration: none;
            margin: 20px;
            font-size: 2em;
            transform-style: preserve-3d;
            perspective: 500px;
            box-shadow: 0 5px 10px rgba(0, 0, 0, 0.3);
            transition: background 0.25s;
        }

        .icon li a:hover.facebook {
            background: #1877f2;
        }

        .icon li a:hover.instagram {
            background: linear-gradient(41deg, rgba(131, 58, 180, 1) 0%, rgba(253, 29, 29, 1) 50%, rgba(252, 176, 69, 1) 100%);
        }

        .icon li a:hover.twitter {
            background: #0099ff;
        }

        .icon li a:hover.youtube {
            background: #ff0000;
        }

        .icon li a:hover .fa {
            color: rgba(229, 233, 177, 1);
            text-shadow: 5px 3px 20px rgba(255, 255, 255);
            transform: scale(1) translateZ(50px);
        }

        .icon li a.fa {
            transition: 0.25s;
            pointer-events: none;
        }

        .js-tilt-glare {
            border-radius: 10px;
        }
    </style>
</head>

<body>
    <?= $this->include('layout/navbar'); ?>

    <?= $this->renderSection('content'); ?>

    <!-- JS Tilt Glare -->
    <script src="/assets/js/vanilla-tilt.min.js"></script>
    <script>
        VanillaTilt.init(document.querySelectorAll(".icon li a"), {
            max: 30,
            speed: 400,
            glare: true,
            "max-glare": 1,
        });
    </script>
    <!-- Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>

</html>