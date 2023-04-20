<%-- 
    
--%>

<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
    
       
    String errorMessage = null;
    int m = 0;
    String mes="";
    int dias = 0;
    
    try{
        m = Integer.parseInt(request.getParameter("m"));
        
        if(m == 1){
            mes = "Janeiro";
            
        }else if(m == 2){
            mes = "Fevereiro";
            
        }else if(m == 3){
            mes = "Março";
            
        }else if(m == 4){
            mes = "Abril";
            
        }else if(m == 5){
            mes = "Maio";
            
        }else if(m == 6){
            mes = "Junho";
            
        }else if(m == 7){
            mes = "Julho";
            
        }else if(m == 8){
            mes = "Agosto";
            
        }else if(m == 9){
            mes = "Setembro";
            
        }else if(m == 10){
            mes = "Outubro";
            
        }else if(m == 11){
            mes = "Novembro";
            
        }else if(m == 12){
            mes = "Dezembro";
        }                                    
              
        
    }catch(Exception e){
        errorMessage = "Erro ao ler parâmetro mês" + request.getParameter("m");
    }
    
    int y = 0;
    
    try{
       y = Integer.parseInt(request.getParameter("y"));        
        
    }catch(Exception e){
        errorMessage = "Erro ao ler parâmetro ano" + request.getParameter("y");
    }
    
    
            
%>


<%
    Calendar c = Calendar.getInstance();
    c.set(Calendar.YEAR, y);
    c.set(Calendar.MONTH, m-1);
    c.set(Calendar.DAY_OF_MONTH,1);
    c.get(Calendar.DAY_OF_WEEK);
    
    Integer date = (c.get(Calendar.DAY_OF_WEEK));    
    Integer year =(c.get(Calendar.YEAR));
    Integer month =(c.get(Calendar.MONTH));
    Integer week =(c.get(Calendar.DAY_OF_MONTH));
    
%>

<html>
    <head>
        <title>Calendario</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <header>
            
           
            <div>
                <h2>
                    <a href="index.jsp">Voltar</a>
                </h2>
                
      
            </div>
           
             
            <p>
            Raphael Vieira, RA:
            </p>
            
                    
            
        </header>
        
        <div class="title">
            <h1>CALENDARIO</h1>
       
    
        <article>
            <div class="flex-container">

              <div style="text-align:left"> Mes: <%= mes %> </div>
              <div style="text-align:left"> Ano: <%= y %></div>
                <table border="7" bordercolor="blue" class="calendario">
                    
                    
                    <tr class="dia"><th>DOMINDO</th><th>SEGUNDA</th><th>TERÇA</th><th>QUARTA</th><th>QUINTA</th><th>SEXTA</th><th>SABADO</th></tr>                 
                  
                     
                                        
                    
                    <!--30 dias--------------------------------------------------------------------------------------->
                    <% if(m == 4 || m == 5 || m == 9 || m == 11 ){ 
                    
                    int cont = 1;
                    %>
                    
                       <%for(int i = 1;i<=6;i++){%> <!--quantidade maxima de semanas em um mes-->

                        <tr>            
                            <% if(cont == 1){%> <!--primeira semana ( para cair  no dia certo)-->
                                <% for(int j = 1;j<=7;j++){%> <!--dias numericos-->

                                    <%if(j >= date){%>

                                        <%if(cont < 31){%>

                                            <th><%= cont++ %></th>

                                        <%}%>

                                    <%}else{%>

                                        <th></th>

                                    <%}%>

                                <%}%>

                            <%}else{%><!--Semanas posteriores-->
                                <% for(int j = 1;j<=7;j++){%> <!--dias numericos-->

                                    <%if(cont < 31){%>

                                        <th><%= cont++ %></th>

                                    <%}%>     
                                <%}%>  
                            <%}%>
                        </tr>
                    <%}%>
                <%}
                
                
                else if(m == 2 && y%4==0 ){int cont = 1;%><!--29 dias- Achar bissexto------------>
                    
                       <%for(int i = 1;i<=6;i++){%> <!--quantidade maxima de semanas em um mes-->

                        <tr>            
                            <% if(cont == 1){%> <!--primeira semana ( para cair  no dia certo)-->
                                <% for(int j = 1;j<=7;j++){%> <!--dias numericos-->

                                    <%if(j >= date){%>

                                        <%if(cont < 30){%>

                                            <th><%= cont++ %></th>

                                        <%}%>

                                    <%}else{%>

                                        <th></th>

                                    <%}%>

                                <%}%>

                            <%}else{%><!--Semanas posteriores-->
                                <% for(int j = 1;j<=7;j++){%> <!--dias numericos-->

                                    <%if(cont < 30){%>

                                        <th><%= cont++ %></th>

                                    <%}%>     
                                <%}%>  
                            <%}%>
                        </tr>
                    <%}%>
                <%}        
                          
                
                else if(m == 2 ){ int cont = 1;%><!--28 dias achar bissexto>
                    
                       <%for(int i = 1;i<=6;i++){%> <!--quantidade maxima de semanas em um mes-->

                        <tr>            
                            <% if(cont == 1){%> <!--primeira semana ( para cair  no dia certo)-->
                                <% for(int j = 1;j<=7;j++){%> <!--dias numericos-->

                                    <%if(j >= date){%>

                                        <%if(cont < 29){%>

                                            <th><%= cont++ %></th>

                                        <%}%>

                                    <%}else{%>

                                        <th></th>

                                    <%}%>

                                <%}%>

                            <%}else{%><!--Semanas posteriores-->
                                <% for(int j = 1;j<=7;j++){%> <!--dias numericos-->

                                    <%if(cont < 29){%>

                                        <th><%= cont++ %></th>

                                    <%}%>     
                                <%}%>  
                            <%}%>
                        </tr>
                    <%}%>
                <%}    
                    
                
                 else{int cont = 1;%><!--31 dias--------------------------------------------------------------------------------------->
                    
                       <%for(int i = 1;i<=6;i++){%> <!--quantidade maxima de semanas em um mes-->

                        <tr>            
                            <% if(cont == 1){%> <!--primeira semana ( para cair  no dia certo)-->
                                <% for(int j = 1;j<=7;j++){%> <!--dias numericos-->

                                    <%if(j >= date){%>

                                        <%if(cont < 32){%>

                                            <th><%= cont++ %></th>

                                        <%}%>

                                    <%}else{%>

                                        <th></th>

                                    <%}%>

                                <%}%>

                            <%}else{%><!--Semanas posteriores-->
                                <% for(int j = 1;j<=7;j++){%> <!--dias numericos-->

                                    <%if(cont < 32){%>

                                        <th><%= cont++ %></th>

                                    <%}%>     
                                <%}%>  
                            <%}%>
                        </tr>
                    <%}%>
                <%}%>                
                              
                </table>   
                
                
        </article>
           
               
    </body>
    
</html>
