<?php

session_start();
include("includes/dmconfig.php");
unset($_SESSION['user_token']);
session_destroy();
header("Location: dmindex.php");

?>
<script language="javascript">
document.location="dmindex.php";
</script>
