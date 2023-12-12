<?php
// Conexión a la base de datos (ajusta los valores según tu configuración)
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "tiendap";

$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar la conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

// Manejo de las operaciones
if (isset($_POST['insertar'])) {
    $venta_id = $_POST['venta_id'];
    $fecha = $_POST['fecha'];
    $producto = $_POST['producto'];
    $precio_producto = $_POST['precio_producto'];
    $cantidad = $_POST['cantidad'];
    $cliente_id = $_POST['cliente_id'];

    $total = $precio_producto * $cantidad; // Calcula el total multiplicando el precio por la cantidad

    $sql = "INSERT INTO ventas (C_VENTA, FECHA, PRODUCTO, PRECIO_PRODUCTO, TOTAL, C_CLIENTE) 
            VALUES ('$venta_id', '$fecha', '$producto', '$precio_producto', '$total', '$cliente_id')";

    if ($conn->query($sql) === TRUE) {
        echo "Registro insertado correctamente";
    } else {
        echo "Error al insertar el registro: " . $conn->error;
    }
} elseif (isset($_POST['eliminar'])) {
    $venta_id = $_POST['venta_id'];

    $sql = "DELETE FROM ventas WHERE C_VENTA = '$venta_id'";

    if ($conn->query($sql) === TRUE) {
        echo "Registro eliminado correctamente";
    } else {
        echo "Error al eliminar el registro: " . $conn->error;
    }
} elseif (isset($_POST['actualizar'])) {
    $venta_id = $_POST['venta_id'];
    $fecha = $_POST['fecha'];
    $producto = $_POST['producto'];
    $precio_producto = $_POST['precio_producto'];
    $cantidad = $_POST['cantidad'];
    $cliente_id = $_POST['cliente_id'];

    $total = $precio_producto * $cantidad; // Calcula el total multiplicando el precio por la cantidad

    $sql = "UPDATE ventas 
            SET FECHA = '$fecha', PRODUCTO = '$producto', PRECIO_PRODUCTO = '$precio_producto', 
                TOTAL = '$total', C_CLIENTE = '$cliente_id' 
            WHERE C_VENTA = '$venta_id'";

    if ($conn->query($sql) === TRUE) {
        echo "Registro actualizado correctamente";
    } else {
        echo "Error al actualizar el registro: " . $conn->error;
    }
}

$conn->close();
?>
