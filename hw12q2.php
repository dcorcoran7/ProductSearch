<!doctype html>
<html>
    <head>
        <title>HTML Table</title>

        <style>
            table {
                border: 1px solid white;
            }

            .Name {
                background-color: orange;
            }

            .Header {
                background-color: orange;
                color: white;
                text-align: center;
                font-weight: bold;
            }

            .Body {
                background-color: peachpuff;
            }

        </style>
    </head>

    <body>
        <?php
            $proID = "";
            $proName = "";
            $supID = "";
            $catID = "";
            $units = 0; 
            $unitprice = 0;

            if(isset($_POST["proID"])) $proID = $_POST["proID"];
            if(isset($_POST["proName"])) $proName = $_POST["proName"];
            if(isset($_POST["supID"])) $supID = $_POST["supID"];
            if(isset($_POST["catID"])) $catID = $_POST["catID"];
            if(isset($_POST["units"])) $units = $_POST["units"];
            if(isset($_POST["unitprice"])) $unitprice = $_POST["unitprice"];
        ?>
 
        <?php 
            //add a new employee record if emptype is new. otherwise, modify the existing employee record
            require_once("hw12db.php");

            if($proID == "") {
            $sql = "insert into products(ProductID, ProductName, SupplierID, CategoryID, UnitPrice, UnitsInStock) values('$proID', '$proName', '$supID', '$catID', '$unitprice', '$units')";

            $result=$mydb->query($sql);

            if ($result==1) {
                echo "<p>A new product record has been created</p>";
            }
            } else {
            //update the existing product record...
                $sql = "update products set ProductName='$proName', SupplierID=$supID, CategoryID='$catID', UnitPrice='$unitprice', UnitsInStock='$units' where ProductID=$proID";
                $result=$mydb->query($sql);

                if ($result==1) {
                echo "<p>A product record has been updated</p>";
                }
            }

            //send a query to the database
            $sql = "Select ProductID, ProductName, SupplierID, CategoryID, UnitPrice, UnitsInStock from products Order By ProductID ASC";
            $result = $mydb->query($sql);
            
            //$result should be a resultset
            echo "<table>";
                echo "<thead>";
                    echo "<tr class = 'Header'>";
                        echo "<td>","Product ID","</td>";
                        echo "<td>","Supplier Name","</td>";
                        echo "<td>","Supplier ID","</td>";
                        echo "<td>","Category ID","</td>";
                        echo "<td>","UnitPrice","</td>";
                        echo "<td>","Units In Stock","</td>";
                    echo "</tr>";
                echo "</thead>";

                echo "<tbody>";
                    while($row = mysqli_fetch_array($result)){
                        echo "<tr>";
                        echo "<td class = 'Name'>".$row["ProductID"]."</td>";
                        echo "<td class = 'Body'>".$row["ProductName"]."</td>";
                        echo "<td class = 'Body'>".$row["SupplierID"]."</td>";
                        echo "<td class = 'Body'>".$row["CategoryID"]."</td>";
                        echo "<td class = 'Body'>".$row["UnitPrice"]."</td>";
                        echo "<td class = 'Body'>".$row["UnitsInStock"]."</td>";
                        echo "</tr>";
                    }
                echo "</tbody>";
            echo "</table>"; 
        ?>

    
    </body>
</html>
