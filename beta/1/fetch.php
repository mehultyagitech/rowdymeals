<?php
$connect = mysqli_connect("localhost", "cryptina_rowdy", "cryptina_rowdy", "cryptina_rowdy");
$output = '';
if(isset($_POST["query"]))
{
	$search = mysqli_real_escape_string($connect, $_POST["query"]);
	$query = "
	SELECT * FROM dishes
	WHERE title LIKE '%".$search."%'
	OR slogan LIKE '%".$search."%' 
	";
}
else
{
	$query = "
	SELECT * FROM dishes ORDER BY d_id";
}
$result = mysqli_query($connect, $query);
if(mysqli_num_rows($result) > 0)
{
	$output .= '<div class="table-responsive">
					<table class="table table bordered">
						<tr>
							<th>Dish ID</th>
							<th>Restro Name </th>
							<th>title</th>
							<th>slogan</th>
							<th>price</th>
							<th>Link</th>
						</tr>';
	while($row = mysqli_fetch_array($result))
	{
		$output .= '
			<tr>
				<td>'.$row["d_id"].'</td>
				<td>'.$row["rs_id"].'</td>
				<td>'.$row["title"].'</td>
				<td>'.$row["slogan"].'</td>
				<td>'.$row["price"].'</td>
					<td><a href="https://www.rowdymeals.com/dishes.php?res_id='.$row["rs_id"].'&action=add&id='.$row["d_id"].'#qqw">Add</a></td>
			</tr>
		';
	}
	echo $output;
}
else
{
	echo 'Data Not Found';
}
?>