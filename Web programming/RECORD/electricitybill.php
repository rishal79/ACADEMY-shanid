<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Electricity Bill</title>
</head>
<body>
    <h2>Electricity Bill Calculation</h2>
    
    <!-- Form to collect customer data -->
    <form action="" method="POST">
        <label for="customerName">Customer Name:</label>
        <input type="text" id="customerName" name="customerName" required><br><br>
        
        <label for="units">Units Consumed (kWh):</label>
        <input type="number" id="units" name="units" min="0" required><br><br>

        <label for="rate">Rate per Unit (₹):</label>
        <input type="number" id="rate" name="rate" min="1" step="any" required><br><br>

        <label for="additionalCharges">Additional Charges (₹):</label>
        <input type="number" id="additionalCharges" name="additionalCharges" step="any"><br><br>

        <label for="discount">Discount (%) (Optional):</label>
        <input type="number" id="discount" name="discount" min="0" max="100" step="any"><br><br>

        <button type="submit">Generate Bill</button>
    </form>

    <?php
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        // Collect form data
        $customerName = htmlspecialchars($_POST['customerName']);
        $unitsConsumed = $_POST['units'];
        $ratePerUnit = $_POST['rate'];
        $additionalCharges = isset($_POST['additionalCharges']) ? $_POST['additionalCharges'] : 0;
        $discount = isset($_POST['discount']) ? $_POST['discount'] : 0;

        // Calculate total bill
        $baseAmount = $unitsConsumed * $ratePerUnit;
        $discountAmount = ($baseAmount + $additionalCharges) * ($discount / 100);
        $totalBill = $baseAmount + $additionalCharges - $discountAmount;

        // Display the bill details
        echo "<h3>Bill Details</h3>";
        echo "<table border='1'>
                <tr><th>Customer Name</th><td>$customerName</td></tr>
                <tr><th>Units Consumed</th><td>$unitsConsumed kWh</td></tr>
                <tr><th>Rate per Unit</th><td>₹$ratePerUnit</td></tr>
                <tr><th>Base Amount</th><td>₹" . number_format($baseAmount, 2) . "</td></tr>
                <tr><th>Additional Charges</th><td>₹" . number_format($additionalCharges, 2) . "</td></tr>
                <tr><th>Discount</th><td>" . number_format($discount, 2) . "%</td></tr>
                <tr><th>Total Bill</th><td>₹" . number_format($totalBill, 2) . "</td></tr>
              </table>";
    }
    ?>
</body>
</html>
