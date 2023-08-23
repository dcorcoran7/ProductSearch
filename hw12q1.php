<!doctype HTML>

<?php
  $proID = "";
  $proName = "";
  $supID = "";
  $catID = "";
  $units = 0;
  $unitprice = 0;
  $err = false; 
  
  if (isset($_POST["submit"])) {
    if(isset($_POST["proID"])) $proID = $_POST["proID"];
    if(isset($_POST["proName"])) $proName = $_POST["proName"];
    if(isset($_POST["supID"])) $supID = $_POST["supID"];
    if(isset($_POST["catID"])) $catID = $_POST["catID"];
    if(isset($_POST["units"])) $units = $_POST["units"];
    if(isset($_POST["unitprice"])) $unitprice = $_POST["unitprice"];
    
    if(!empty($proName) && !empty($supID) && !empty($catID) && !empty($units)&& $units >= 0 && !empty($unitprice) && $unitprice >= 0) {
      header("HTTP/1.1 307 Temprary Redirect");
      header("Location: hw12q2.php");
      echo $catID;
    } else{
      $err = true;
    }
  }
?>

<html>
    <head>
        <title> 
            Add A New Product Record
        </title>

        <style>
            .errlabel {
            color: red; 
            }
        </style>
    </head>

    <body>
        <form method="post" action="<?php echo $_SERVER['PHP_SELF'] ?>">
            <h2>Please Enter the Following Information:</h2>

            <label>Product ID: <label>
            <input type="number" name="proID" value = "<?php echo $proID; ?>">
            <br><br>

            <label>Product Name:</label>
            <input type="text" name="proName" value="<?php echo $proName; ?>">
            <?php 
            if ($err && empty($proName)) {
                echo "<label class = 'errlabel'> Error: Please enter a valid product name</label>";
            }
            ?>
            <br><br>

            <label>Supplier ID: </label>
            <select id="supplier" name="supID">
                <?php for ($num=1; $num<=29; $num++): ?>
                    <option value="<?php echo $num; ?>" <?php if($supID == $num) echo "selected"; ?>><?php echo $num;?></option>
                <?php endfor; ?>
            </select>
            <?php 
            if ($err && empty($supID)) {
                echo "<label class = 'errlabel'> Error: Please select a valid supplier ID</label>";
            }
            ?>
            <br><br> 

            <label>Category ID:</label>
            <select id = "category" name="catID">
                <option value="cat1" <?php if($catID == "cat1") echo "selected"; ?>>1</option>
                <option value="cat2" <?php if($catID == "cat2") echo "selected"; ?>>2</option>
                <option value="cat3" <?php if($catID == "cat3") echo "selected"; ?>>3</option>
                <option value="cat4" <?php if($catID == "cat4") echo "selected"; ?>>4</option>
                <option value="cat5" <?php if($catID == "cat5") echo "selected"; ?>>5</option>
                <option value="cat6" <?php if($catID == "cat6") echo "selected"; ?>>6</option>
                <option value="cat7" <?php if($catID == "cat7") echo "selected"; ?>>7</option>
                <option value="cat8" <?php if($catID == "cat8") echo "selected"; ?>>8</option>
            </select>
            <?php
            if ($err && empty($catID)) {
                echo "<label class = 'errlabel'> Error: Please select a valid category ID</label>";
            }
            ?>
            <br><br>

            <label>Units In Stock:</label>
            <input type="number" name="units" value="<?php echo $units; ?>">
            <?php 
            if ($err && empty($units)) {
                echo "<label class = 'errlabel'> Error: Please enter a valid amount for units in stock</label>";
            }
            elseif ($err && $units<=0) {
                echo "<label class = 'errlabel'> Error: Please enter a positive number</label>";
            }
            ?>
            <br><br>

            <label>Unit Price:</label>
            <input type="number" name="unitprice"  step ="0.01" value="<?php echo $unitprice; ?>">
            <?php 
            if ($err && empty($unitprice)) {
                echo "<label class = 'errlabel'> Error: Please enter a valid unit price</label>";
            }
            elseif ($err && $unitprice<=0) {
                echo "<label class = 'errlabel'> Error: Please enter a positive price</label>";
            }
            ?>
            <br><br>

            <input type="submit" name = "submit" value="Submit" />
            <br><br>

        <form>
        
    </body>

</html>