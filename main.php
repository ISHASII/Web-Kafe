<?php
    //session_start();
    if(empty($_SESSION['username_foodienow'])){
        header('location:login');
    }

    include "proses/connect.php";
    $query = mysqli_query($conn, "SELECT * FROM tb_user WHERE username = '$_SESSION[username_foodienow]'");
    $hasil = mysqli_fetch_array($query);
?>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>FoodieNow - Aplikasi Pemesanan Makanan Dan Minuman Di Cafe Kekinian</title>
    <link rel="icon" href="assets/img/Logo/logo.png" type="image/png">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">

    <style>
      body{
        font-family: Arial, Helvetica, sans-serif;
      }
    .custom-navbar-color {
      background-color: #8B4513;
    }

    .custom-nav-pills .nav-link.active {
      background-color: #8B4513;
      color: white;
    }

    .custom-nav-pills .nav-link {
      color: #555;
    }
    .card-header{
      background-color: #8B4513;
      color:white;
    }

    .custom-order-button {
      background-color: #8B4513;
      color: white;
      border: none;
    }

    .custom-order-button:hover {
      background-color: #e64a19;
      color : white;
      /* Warna saat hover */
    }
    .custom-tambah-button {
      background-color: #8B4513;
      color: white;
      border: none;
    }

    .custom-tambah-button:hover {
      background-color: #e64a19;
      color : white;
      /* Warna saat hover */
    }
    .custom-cancel-button {
      background-color: #F18F6E;
      color: white;
      border: none;
    }

    .custom-cancel-button:hover {
      background-color: #e64a19;
      color : white;
      /* Warna saat hover */
    }
    .custom-masukDapur-button {
      background-color: #FB7D53;
      color: white;
      border: none;
    }

    .custom-masukDapur-button:hover {
      background-color: #e64a19;
      color : white;
      /* Warna saat hover */
    }
    .custom-terima-button {
      background-color: #BB2322;
      color: white;
      border: none;
    }

    .custom-terima-button:hover {
      background-color: #e64a19;
      color : white;
      /* Warna saat hover */
    }
    .custom-siapsaji-button {
      background-color: #A05036;
      color: white;
      border: none;
    }

    .custom-siapsaji-button:hover {
      background-color: #e64a19;
      color : white;
      /* Warna saat hover */
    }
    .custom-lihat-button {
      background-color: #A05036;
      color: white;
      border: none;
    }

    .custom-lihat-button:hover {
      background-color: #e64a19;
      color : white;
      /* Warna saat hover */
    }
    .custom-edit-button {
      background-color: #A05036;
      color: white;
      border: none;
    }

    .custom-edit-button:hover {
      background-color: #e64a19;
      color : white;
      /* Warna saat hover */
    }
  </style>
</head>

<body>
    <!--Header-->
    <?php include "header.php"; ?>
    <!-- End Header-->
    <div class="container-lg">
        <div class="row mb-5">
            <!-- Sidebar -->
            <?php include "sidebar.php"; ?>
            <!-- End sidebar -->

            <!--Content-->
                <?php 
                    include $page;
                ?>
            <!-- End content -->
        </div>
        <div class="fixed-bottom text-center bg-light py-2">
            Copyright Mei - 2024 Kelompok 4
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

    <script>
    // Example starter JavaScript for disabling form submissions if there are invalid fields
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