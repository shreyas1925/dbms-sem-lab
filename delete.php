<?php

include "connection.php";

$serial_number=$_GET['serial_number'];

$deletequery="delete from distribution where serial_number=$serial_number ";

$query=mysqli_query($con,$deletequery);

if($query){
    ?>
    <script>
    alert("Deleted Successfully");
    </script>
   
<?php

header("location:new_display.php");
}else{
    ?>
     <script>
    alert(" Not Deleted");
    </script>
    <?php
}





?>