<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Calendario</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <header>
            <h1 class="title">Calend�rio</h1>               
        </header>
        
        <article>
            <div class="flex-container">
                <div class="flex-container"></div>

                <form action="calendario.jsp">
                    
                    <div>                        
                        <select name="m">
                            <option value="0" selected disabled>M�s</option>
                            <option value="1">Janeiro</option>
                            <option value="2">Fevereiro</option>
                            <option value="3">Mar�o</option>
                            <option value="4">Abril</option>
                            <option value="5">Maio</option>
                            <option value="6">Junho</option>
                            <option value="7">Julho</option>
                            <option value="8">Agosto</option>
                            <option value="9">Setembro</option>
                            <option value="10">Outubro</option>
                            <option value="11">Novembro</option>
                            <option value="12">Dezembro</option>
                        </select>
                        <input type="number" placeholder="yyyy" class="fields" min="1" name="y"/>
                        <input type="submit" value="verificar" id="btn-calendar"/>
                    </div>
                     </form>
            </div>
        </article>
        
        
        <footer>
            
           
        </footer>
    </body>
</html>

