<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ page import="model.*"%>

<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <link href='css/style.css' rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet">
    </head>
    <body>
        <div class="formulario">
            <%
                String tipo, nulo =" ";
                double area = 0,n1,n2,n3;
                tipo = request.getParameter("tipo"); 
                n1 = Double.parseDouble(request.getParameter("n1"));
                if(tipo.equals("0")){
                    nulo = "Nem uma figura selecionada";
                }
                else{
                    if(tipo.equals("circulo")){
                        Circulo circ = new Circulo();
                        area = circ.area(n1);
                    }

                    else if(tipo.equals("quadrado")){
                        n2 = Double.parseDouble(request.getParameter("n2"));
                        Quadrado quad = new Quadrado();
                        area = quad.area(n1,n2);
                
                    }

                    else if(tipo.equals("triangulo")){
                        n3 = Double.parseDouble(request.getParameter("n2"));
                        Triangulo tri = new Triangulo();
                        area = tri.area(n1,n3);
                    }

                }

            %>
            <h2>Cálculo da área</h2>
            <p>Figura: <%= tipo %></p>
            <p>Área: <%= area %></p>
            <p><%= nulo %></p>
        </div>
        
    </body>
</html>