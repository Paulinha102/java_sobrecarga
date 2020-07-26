<%@
    page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"
    
%>

<%@ page import="ifsp.com.br.src.main.java.model.*" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <link href='css/style.css' rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet">
    </head>
    <body>
        <div class="formulario">
            <h2>Cálculo de area</h2>
            <form action="receberDados.jsp" method="post" >
                <label for="area">Escolha uma figura para efetuar o cálculo da área: </label>
                <select re name="tipo" id="tipo" required>
                    <option   value="0" > -- Escolha -- </option> 
                    <option  name="circulo" value="circulo">Circulo</option>
                    <option name="quadrado" value="quadrado">Quadrado</option>
                    <option name="triangulo" value="triangulo">Triângulo</option>
                </select>
                <br>
                <br>
                    <label class="lbl">Informe o diametro do Circulo</label>
                    <input class="circulo" name="n1" type="text" placeholder="Informe a base">
                    <input class="demais" name="n2" type="text" placeholder="Informe a altura">
                <br>
            
                <input class="btn" name="" type="submit" value="Calcular">
                
            </form>
            <p></p>
        </div>


        <script>

            var select = document.querySelector('select');
            var para = document.querySelector('p');

            var circulo = document.querySelector('.circulo');
            var demais = document.querySelector('.demais');
            var lbl = document.querySelector('.lbl');

            demais.style.display = "none";
            circulo.style.display = "none";  
            lbl.style.display = "none";

            function tipo() {
                var escolha = select.value;
                
                if(escolha === 'circulo') { 
                    demais.style.display = "none";
                    lbl.style.display = "block";
                    circulo.style.display = "block";
                } 
                else if (escolha === 'quadrado') {
                    demais.style.display = "block";
                    circulo.style.display = "block";
                    lbl.style.display = "none";
                }
                else if (escolha === 'triangulo') {
                    demais.style.display = "block";
                    circulo.style.display = "block";
                    lbl.style.display = "none";
                }
                else {
                    demais.style.display = "none";
                    circulo.style.display = "none";
                    lbl.style.display = "none";
                }
            }
            select.addEventListener('change',tipo);
    </script>

    </body>
</html>
