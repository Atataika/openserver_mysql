<!DOCTYPE html>
<html lang="ru">
<head>
	<meta charset="utf-8">
	<title>Демонстрация работы базы данных MySQL</title>
	<link rel="stylesheet" type="text/css" href="style/adddata_style.css">
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
		<h1 class="hotel_number">Добавить номер отеля</h1>
    	<form action="addmessage.php" method="POST">
        	<input class="input_text" type="text" name="hotel_name" placeholder="Название номера">
        	<input class="input_text" type="text" name="holding_price" placeholder="Цена за сутки">
        	<textarea name="hotel_description" cols="40" rows="10" placeholder="Описание номера"></textarea>
        	<input class="button" type="submit" value="Добавить">
   		 </form>
	</main>
	</div>
</body>
</html>