<?php

    $aciertos = 0;
    $pregunta1 = $_POST["pregunta1"];
    $pregunta2 = $_POST["pregunta2"];
    $pregunta3 = $_POST["pregunta3"];
    $pregunta4 = $_POST["pregunta4"];
    $pregunta5 = $_POST["pregunta5"];
    $pregunta6 = $_POST["pregunta6"];
    $pregunta7 = $_POST["pregunta7"];
    $pregunta8 = $_POST["pregunta8"];
    $pregunta9 = $_POST["pregunta9"];
    $pregunta10 = $_POST["pregunta10"]; 


    //valida pregunta 1 - ¿Cuantas princesas alicornio hay en el mundo de my little pony?
    echo "<h3> ¿Cuantas princesas alicornio hay en el mundo de my little pony?";
    echo "<h5>Repuesta seleccionada ".$pregunta1." ---- Correcta = 4</h5>";
    if($pregunta1 == "4"){
        $aciertos ++;
        echo "<img src='correcto.webp' width='50px'><hr>";
    } else {                
        echo "<img src='incorrecto.png' width='50px'><hr>";
    }

    //Valido pregunta 2 - Nombre de la protagonista de my little pony

    echo "<h3> Nombre de la protagonista de my little pony";
    echo "<h5>Repuesta seleccionada ".$pregunta2." ---- Correcta = Twilight Sparkle </h5>";
    if(strtoupper($pregunta2) == "TWILIGHT SPARKLE"){
        $aciertos ++;
        echo "<img src='correcto.webp' width='50px'><hr>";
    } else {
        echo "<img src='incorrecto.png' width='50px'><hr>";
    }

    //Pregunta 3 - ¿Cuales son las princesas alicornios llamadas "Las dos hermanas"? (Selecciona 2)
    $p3_respuestas_correctas = 0;
    echo "<h3> ¿Cuales son las princesas alicornios llamadas Las dos hermanas? (Selecciona 2)</h3>";
    echo "<h5>Repuesta seleccionada " . implode(", ", $pregunta3) . " ---- Correcta = Princesa Luna y Princesa Celestia </h5>";

    if(count($pregunta3) == 2){
        for($i = 0; $i < count($pregunta3); $i++){
            if($pregunta3[$i] == "celestia" || $pregunta3[$i] == "luna"){
                $p3_respuestas_correctas++;
            }
        }
        if($p3_respuestas_correctas == 2){
            $aciertos++;
            echo "<img src='correcto.webp' width='50px'><hr>";
        } else {
            echo "<img src='incorrecto.png' width='50px'><hr>";
        }
    } else {
        echo "<img src='incorrecto.png' width='50px'><hr>";
    }

    //Pregunta 4 - ¿Quienes son las Mane Six?
    $p4_respuestas_correctas = 0;
    echo "<h3> ¿Quienes son las Mane Six? (Selecciona 6)</h3>";
    echo "<h5>Repuesta seleccionada " . implode(", ", $pregunta4) . " ---- Correcta = Twilight, Rainbow, Pinkie, Rarity, Apple y fluttershy. </h5>";

    if(count($pregunta4) == 6){
        for($i = 0; $i < count($pregunta4); $i++){
            if($pregunta4[$i] == "twilight" || $pregunta4[$i] == "rainbow" || $pregunta4[$i] == "pinkie" || $pregunta4[$i] == "rarity" || $pregunta4[$i] == "apple" || $pregunta4[$i] == "fluttershy"){
                $p4_respuestas_correctas++;
            }
        }
        if($p4_respuestas_correctas == 6){
            $aciertos++;
            echo "<img src='correcto.webp' width='50px'><hr>";
        } else {
            echo "<img src='incorrecto.png' width='50px'><hr>";
        }
    } else {
        echo "<img src='incorrecto.png' width='50px'><hr>";
    }
    
    //Pregunta 5 - ¿Cual fue la primera villano/a a la que se enfrentaron las Mane Six?
    echo "<h3> ¿Cual fue la primera villano/a a la que se enfrentaron las Mane Six?";
    echo "<h5>Repuesta seleccionada ".$pregunta5." ---- Correcta = Nightmare moon</h5>";
    if($pregunta5 == "moon"){
        $aciertos ++;
        echo "<img src='correcto.webp' width='50px'><hr>";
    } else {                
        echo "<img src='incorrecto.png' width='50px'><hr>";
        
    }

    //Pregunta 6 - ¿En que reino habitan los personajes de My Little Pony?
    echo "<h3> ¿En que reino habitan los personajes de My Little Pony?";
    echo "<h5>Repuesta seleccionada ".$pregunta6." ---- Correcta = Ecuestria </h5>";
    if(strtoupper($pregunta6) == "ECUESTRIA"){
        $aciertos ++;
        echo "<img src='correcto.webp' width='50px'><hr>";
    } else {
        echo "<img src='incorrecto.png' width='50px'><hr>";
    }


    //Pregunta 7 - Menciona quien representa el elemento de la lealtad
    echo "<h3> Menciona quien representa el elemento de la lealtad";
    echo "<h5>Repuesta seleccionada ".$pregunta7." ---- Correcta = Rainbow dash</h5>";
    if($pregunta7 == "rainbow"){
        $aciertos ++;
        echo "<img src='correcto.webp' width='50px'><hr>";
    } else {                
        echo "<img src='incorrecto.png' width='50px'><hr>";
    }    

    //Pregunta 8 - ¿Cuales son los elementos de la armonia?
    echo "<h3> ¿Cuales son los elementos de la armonia?";
    echo "<h5>Repuesta seleccionada ".implode(", ", $pregunta4)." ---- Correcta = Magia, lealtad, risa, generosidad, honestidad y amabilidad</h5>";
    $p8_respuestas_correctas = 0;
    if(count($pregunta8) == 6){
        for($i = 0; $i < count($pregunta8); $i++){
            if($pregunta8[$i] == "magia" || $pregunta8[$i] == "lealtad" || $pregunta8[$i] == "risa" || $pregunta8[$i] == "generosidad" || $pregunta8[$i] == "honestidad" || $pregunta8[$i] == "amabilidad"){
                $p8_respuestas_correctas++;
            }
        }
        if($p8_respuestas_correctas == 6){
            $aciertos++;
            echo "<img src='correcto.webp' width='50px'><hr>";
        } else {
            echo "<img src='incorrecto.png' width='50px'><hr>";
        }
    } else {
        echo "<img src='incorrecto.png' width='50px'><hr>";
    }

    //Pregunta 9 - ¿Cuál es el nombre del dragón bebé que es amigo de Twilight Sparkle?
    echo "<h3> ¿Cuál es el nombre del dragón bebé que es amigo de Twilight Sparkle?";
    echo "<h5>Repuesta seleccionada ".$pregunta9." ---- Correcta = Spike </h5>";
    if(strtoupper($pregunta9) == "SPIKE"){
        $aciertos ++;
        echo "<img src='correcto.webp' width='50px'><hr>";
    } else {
        echo "<img src='incorrecto.png' width='50px'><hr>";
    }

    //Pregunta 10 - ¿Cómo se llama la ciudad donde viven la mayoría de los ponys principales?
    echo "<h3> ¿Cómo se llama la ciudad donde viven la mayoría de los ponys principales?";
    echo "<h5>Repuesta seleccionada ".$pregunta10." ---- Correcta = Ponyville </h5>";
    if($pregunta10 == "ponyville"){
        $aciertos ++;
        echo "<img src='correcto.webp' width='50px'><hr>";
    } else {                
        echo "<img src='incorrecto.png' width='50px'><hr>";
    }

    echo "CALIFICACIÓN FINAl = " . ($aciertos * 10) . "%";

?>