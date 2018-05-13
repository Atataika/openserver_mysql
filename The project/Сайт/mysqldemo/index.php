<!DOCTYPE html>
<html lang="ru">
<head>
	<meta charset="utf-8">
	<title>Демонстрация работы базы данных MySQL</title>
	<link rel="stylesheet" type="text/css" href="style/index_style.css">
</head>
<body>
	<div class="wrapper">
	<header>
		<div class="logo">
			<a href="index.php">
				<img src="img/mysql.jpg">
			</a>
		</div>
		<nav>
			<ul>
				<li>
					<a href="index.php">Главная</a>
				</li>
				<li>
					<a href="adddata.php">Добавить номер</a>
				</li>
			</ul>
		</nav>
	</header>
	<main>
		<h1 class="hotel_list">Доступные варианты</h1>
		<?php
			$connection = mysql_connect("localhost", "root", "");
			$db = mysql_select_db("testdb");
			mysql_set_charset(utf8);

			if(!$connection || !$db)
			{
				exit(mysql_error());
			}

			$result = mysql_query(" SELECT * FROM hotels");

			mysql_close();

			while($row = mysql_fetch_array($result))
			{ ?>
			
		<div class="hotel_post">

			<h3 class="hotel_caption"><?php echo $row['hotel_name']; ?>. Цена аренды
			<?php echo $row['holding_price'];?> рублей.</h3>
			<div class="datatime"><?php echo $row['date']; ?></div>
			<div class="datatime"><?php echo $row['time']; ?></div>
			<p class="description"><?php echo $row['hotel_description']; ?></p>
		</div>
			 <?php }?>
	</main>
	</div>
</body>
</html>