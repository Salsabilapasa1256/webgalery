<?php 
    session_start();
    include 'koneksi.php';

    $komentarid = $_POST['komentarid'];
    $userid = $_SESSION['userid'];
    $fotoid = $_POST['fotoid'];

    $sql = mysqli_query($conn, "delete from komentarfoto where komentarid='$komentarid' and userid='$userid'");

    if ($sql) {
    	echo "<script>
    		alert('komentar di hapus')
    		location.href='komentar.php'
    	</script>";
    }
?>