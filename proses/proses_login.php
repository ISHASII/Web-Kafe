<?php
session_start();
include "connect.php";
$username = (isset($_POST['username'])) ? htmlentities($_POST['username']) : "" ;
$password = (isset($_POST['password'])) ? md5(htmlentities($_POST['password'])) : "" ;

if(!empty($_POST['submit_validate'])){
    $query = mysqli_query($conn, "SELECT * FROM tb_user WHERE username = '$username' && password = '$password'");
    $hasil = mysqli_fetch_array($query);
    if($hasil){
        $_SESSION['username_foodienow'] = $username;
        $_SESSION['level_foodienow'] = $hasil['level'];
        $_SESSION['id_foodienow'] = $hasil['id'];

        if(isset($_POST['remember_me'])){
            setcookie('username_foodienow', $username, time() + (86400 * 30), "/");
            setcookie('password_foodienow', $password, time() + (86400 * 30), "/"); 
        }

        header('location:../home');
    }else{ ?>
<script>
alert('username atau password yang anda masukkan salah');
window.location = '../login';
</script>
<?php
    }
}
?>