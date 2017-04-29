<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Cálculo de IMC</title>

    <!-- Bootstrap -->
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet">





</head>
<body>

<div class="container" style="margin-top:30px">
    <div class="col-md-4">
        <div class="panel panel-default">
            <div class="panel-heading"><h3 class="panel-title"><strong>Cálculo de IMC</strong></h3></div>
            <div class="panel-body">
                <form role="form" name="imcForm" id="imcForm">

                    <div class="form-group">
                        <label for="altura" class="col-sm-2 control-label">Altura</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="altura">
                        </div>
                    </div>


                    <div class="form-group">
                        <label for="peso" class="col-sm-2 control-label">Peso</label>
                        <div class="col-sm-10">
                            <input type="number" class="form-control" name="peso">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="sexo" class="col-sm-2 control-label">Sexo</label>
                        <div class="col-sm-10">
                            <select class="form-control" name="sexo">
                                <option>Masculino</option>
                                <option>Feminino</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <button type="submit" class="btn btn-primary">Calcular</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>

        <%
                                String temp;

								float altura = 0;
								temp = request.getParameter("altura");
								temp = temp == null ? "0" : temp;
								altura = Float.parseFloat(temp);

								float peso = 0;
								temp = request.getParameter("peso");
								temp = temp == null ? "0" : temp;
								peso = Float.parseFloat(temp);

								String sexo;
								sexo = request.getParameter("sexo");

								float imc = 0;
								imc = peso / (altura * altura);

								String resultado = "0";

								if ("Masculino".equals(sexo)) {
        							if (imc < 20.7) {
        								  resultado = "IMC: " + imc + " (abaixo do peso)";
									} else if (imc >= 20.7 && imc < 26.4) {
										resultado = "IMC: " + imc + " (no peso normal)";
									} else if (imc >= 26.4 && imc < 27.8) {
										resultado = "IMC: " + imc + " (marginalmente acima do peso)";
									} else if (imc >= 27.8 && imc < 31.1) {
										resultado = "IMC: " + imc + " (acima do peso ideal)";
									} else if (imc > 31.1) {
										resultado = "IMC: " + imc + " (obeso)";
									}
								} else{
        							if (imc < 19.1) {
										resultado = "IMC: " + imc + " (abaixo do peso)";
									} else if (imc >= 19.1 && imc < 25.8) {
										resultado = "IMC: " + imc + " (no peso normal)";
									} else if (imc >= 25.8 && imc < 27.3) {
										resultado = "IMC: " + imc + " (marginalmente acima do peso)";
									} else if (imc >= 27.3 && imc < 32.3) {
										resultado = "IMC: " + imc + " (acima do peso ideal)";
									} else if (imc > 32.3) {
										resultado = "IMC: " + imc + " (obeso)";
									}
								}
%>

    <div class="alert alert-success" role="alert" style="margin-top:45px"><%=resultado%></div>
        </div>
    </div>
</div>
</body>
</html>