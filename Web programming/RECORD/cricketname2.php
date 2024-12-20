 <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Indian Cricket Players</title>
</head>
<body>
    <h2>List of Indian Cricket Players</h2>

    <?php
    // Step 1: Define an array of Indian cricket players
    $players = [
        "Virat Kohli",
        "Rohit Sharma",
        "MS Dhoni",
        "Shikhar Dhawan",
        "Hardik Pandya",
        "KL Rahul",
        "Jasprit Bumrah",
        "Ravindra Jadeja",
        "Rishabh Pant",
        "Mohammad Shami"
    ];

    // Step 2: Start the HTML table
    echo "<table border='1' cellpadding='10' cellspacing='0'>
            <tr>
                <th>Sr. No.</th>
                <th>Player Name</th>
            </tr>";

    // Step 3: Loop through the array and display each player's name in the table
    $srNo = 1; // Initialize the serial number
    foreach ($players as $player) {
        echo "<tr>
                <td>$srNo</td>
                <td>$player</td>
              </tr>";
        $srNo++; // Increment the serial number for each player
    }

    // Step 4: End the HTML table
    echo "</table>";
    ?>

</body>
</html>
