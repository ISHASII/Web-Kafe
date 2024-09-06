<!doctype html>
<html lang="en" data-bs-theme="auto">

<head>
    <script src="../assets/js/color-modes.js"></script>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author"
        content="Abdullah Faqih, Moniqca Sandha Iskandar. Ilham Saputra, Alfieny Putri Heriyanto, Abid Athananda Aziz">
    <title>FoodieNow - Aplikasi Pemesanan Makanan Dan Minuman Di Cafe Kekinian</title>
    <link rel="icon" href="assets/img/Logo/logo.png" type="image/png">

    <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/sign-in/">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">


    <link href="assets/css/login.css" rel="stylesheet">
    <style>
    .form-signin {
        max-width: 400px;
        padding: 15px;
        margin: auto;
    }

    .form-floating input[type="email"],
    .form-floating input[type="password"] {
        background-color: #EEE4B1;
        border-radius: 10px;
        padding: 10px;
    }

    .btn-primary {
        background-color: #7F3A23;
        border-color: none;
    }

    .btn-primary:hover {
        background-color: #23527c;
        border-color: #1d4e73;
    }

    body {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        background-color: #f8f9fa;
    }
    </style>
</head>

<body class="text-center">

    <main class="form-signin">
        <form class="needs-validation" novalidate action="proses/proses_login.php" method="POST">
            <img src="assets/img/Logo/logo.png" alt="Logo" style="width: 300px; height: auto;">
            <h1 class="h3 mb-3 fw-bold">Please Login In Here</h1>

            <div class="form-floating mb-3">
                <input name="username" type="email" class="form-control" id="floatingInput"
                    placeholder="name@example.com"
                    value="<?php echo isset($_COOKIE['username_foodienow']) ? $_COOKIE['username_foodienow'] : ''; ?>"
                    required>
                <label for="floatingInput">Email address</label>
                <div class="invalid-feedback">
                    Masukkan email yang valid.
                </div>
            </div>
            <div class="form-floating">
                <input name="password" type="password" class="form-control" id="floatingPassword" placeholder="Password"
                    value="<?php echo isset($_COOKIE['password_foodienow']) ? $_COOKIE['password_foodienow'] : ''; ?>"
                    required>
                <label for="floatingPassword">Password</label>
                <div class="invalid-feedback">
                    Masukkan password.
                </div>
            </div>

            <div class="checkbox mt-3 mb-3">
                <input class="form-check-input" type="checkbox" name="remember_me" value="remember-me"
                    id="flexCheckDefault" <?php echo isset($_COOKIE['username_foodienow']) ? 'checked' : ''; ?>>
                <label class="form-check-label" for="flexCheckDefault">
                    Remember me
                </label>
            </div>
            <button class="w-100 btn btn-lg btn-primary" type="submit" name="submit_validate" value="abc">Login</button>
            <p class="mt-2 text-body-secondary">&copy; Kelompok 4 - 2024</p>
        </form>
    </main>

    <script>
    (() => {
        'use strict'

        // Fetch all the forms we want to apply custom Bootstrap validation styles to
        const forms = document.querySelectorAll('.needs-validation')

        // Loop over them and prevent submission
        Array.from(forms).forEach(form => {
            form.addEventListener('submit', event => {
                if (!form.checkValidity()) {
                    event.preventDefault()
                    event.stopPropagation()
                }

                form.classList.add('was-validated')
            }, false)
        })
    })()
    </script>
</body>

</html>