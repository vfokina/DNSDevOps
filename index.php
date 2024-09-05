<?php
// Подключение к базе данных
$conn = pg_connect("host=localhost dbname=appdb user=appuser password=password");

if (!$conn) {
    die("Ошибка подключения: " . pg_last_error());
}

// Получение данных из таблицы
$sql = "SELECT * FROM users LIMIT 2";
$result = pg_query($conn, $sql);

if ($result) {
    // Отображение результатов
    while($row = pg_fetch_array($result)) {
        echo "<pre>";
        print_r($row);
        echo "</pre>";
    }
} else {
    echo "Ошибка выполнения запроса: " . pg_last_error();
}

pg_close($conn);
?>
