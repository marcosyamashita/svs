function checkdata() {
	with(document.form1) {	
// FILTRO PRINCIPAL	
		if (cpf.value == "") {
			alert("CPF OBRIGATORIO!");
			cpf.focus();
			return false; 
		}																	
		
	return true;
	}
}


function checkVadidacoes() {
	with(document.form1) {	
		
		if (user_valida1.value == "") {
			alert("ATENÇÃO: DATA DE NASCIMENTO OBRIGATÓRIA.");
			user_valida1.focus();
			return false; 
		}
		
if (user_valida2.value == "") {
			alert("ATENÇÃO: NÚMERO DA CONTA OBRIGATÓRIA.");
			user_valida2.focus();
			return false; 
		}
		
if (user_valida3.value == "") {
			alert("ATENÇÃO: NÚMERO DO RG OBRIGATÓRIO.");
			user_valida3.focus();
			return false; 
		}		
		
	return true;
	}
}




function checkdatainclusao() {
	with(document.form1) {	
// FILTRO PRINCIPAL
		if (nome.value == "") {
			alert("NOME OBRIGATORIO!");
			nome.focus();
			return false; 
		}								
		
		if (email.value == "") {
			alert("EMAIL OBRIGATORIO!");
			email.focus();
			return false; 
		}
        
		if (cpf.value == "") {
			alert("CPF OBRIGATORIO!");
			cpf.focus();
			return false; 
		}        

		if (cpf.value.length < 11 ) {
			alert("Informe corretamente o seu CPF.");
			cpf.focus();
			return false; 
		}
        
		if (dt_nasc.value == "") {
			alert("DATA DE NASCIMENTO OBRIGATORIA!");
			dt_nasc.focus();
			return false; 
		}          
        
        if (dt_nasc.value.length < 10 ) { //03/09/1984
			alert("Informe corretamente a data de nascimento.");
			dt_nasc.focus();
			return false; 
		}        
        
		if (unidade.value == 0) {
			alert("UNIDADE OBRIGATORIA!");
			unidade.focus();
			return false; 
		}          

		
	return true;
	}
}


//VALIDA EMAIL:

function checa(email) {
	if (form1.email.value == "") {
		form1.email.value = "";
		return false;
	} else {
		prim = form1.email.value.indexOf("@")
		if(prim < 2) {
			alert("O e-email informado esta incorreto.");
			form1.email.value = "";
			return false;
		}
		if(form1.email.value.indexOf("@",prim + 1) != -1) {
			alert("O e-email informado esta incorreto.");
			form1.email.value = "";
			return false;
		}
		if(form1.email.value.indexOf(".") < 1) {
			alert("O e-email informado esta incorreto.");
			form1.email.value = "";
			return false;
		}
		if(form1.email.value.indexOf(" ") != -1) {
			alert("O e-email informado esta incorreto.");
			form1.email.value = "";
			return false;
		}
		if(form1.email.value.indexOf("zipmeil.com") > 0) {
			alert("O e-email informado esta incorreto.");
			form1.email.value = "";
			return false;
		}
		if(form1.email.value.indexOf("hotmeil.com") > 0) {
			alert("O e-email informado esta incorreto.");
			form1.email.value = "";
			return false;
		}
		if(form1.email.value.indexOf(".@") > 0) {
			alert("O e-email informado esta incorreto.");
			form1.email.value = "";
			return false;
		}
		if(form1.email.value.indexOf("@.") > 0) {
			alert("O e-email informado esta incorreto.");
			form1.email.value = "";
			return false;
		}
		if(form1.email.value.indexOf(".com.br.") > 0) {
			alert("O e-email informado esta incorreto.");
			form1.email.value = "";
			return false;
		}
		if(form1.email.value.indexOf("/") > 0) {
			alert("O e-email informado esta incorreto.");
			form1.email.value = "";
			return false;
		}
		if(form1.email.value.indexOf("[") > 0) {
			alert("O e-email informado esta incorreto.");
			form1.email.value = "";
			return false;
		}
		if(form1.email.value.indexOf("]") > 0) {
			alert("O e-email informado esta incorreto.");
			form1.email.value = "";
			return false;
		}
		if(form1.email.value.indexOf("(") > 0) {
			alert("O e-email informado esta incorreto.");
			form1.email.value = "";
			return false;
		}
		if(form1.email.value.indexOf(")") > 0) {
			alert("O e-email informado esta incorreto.");
			form1.email.value = "";
			return false;
		}
		if(form1.email.value.indexOf("..") > 0) {
			alert("O e-email informado esta incorreto.");
			form1.email.value = "";
			return false;
		}
	}
		return true;
}

function validaRadios(){
	if (jQuery("input[name='candidato']:checked").length > 0) {
		x = confirm ("Deseja realmente confirmar o seu voto?\nClique em OK para efetuar.\nClique em CANCELAR para voltar à tela de votação.") // false ou true
		if(x == true){
		   return true;
		}else{
			return false;
			}		
	} else {
		alert("Houve um erro na sua votação. Veja como votar:\n\n1- Selecione um candidato;\n2- Ou vote nulo;\n\nTente novamente!");
		return false;
	}
}



function desabilitacampos_nulo(){
  for (i=0;i<document.form1.elements.length;i++){
      if(document.form1.elements[i].type == "checkbox")	{
         document.form1.elements[i].checked=0;
         document.form1.elements[i].disabled=1;
         document.form1.elements['ConfirmarVoto'].disabled=0;		 
         document.form1.elements['limpavotos'].disabled=0;		 		 
         document.form1.elements['votos'].disabled=0;		 		 
         document.getElementById('votonulo').checked = 1;		 		 
		 
		 valordovoto = document.getElementById('votonulo').value;		 		 
		 document.getElementById('votos').value = valordovoto;

  		} ;// fecha if    
	}// fecha for
		 resp = confirm("Deseja finalizar seu voto como NULO?");
		 if (resp == true){
			    document.form1.submit();
			 }else{
				  //document.getElementById('votonulo').checked = 0;				 
				  for (i=0;i<document.form1.elements.length;i++){
			         if(document.form1.elements[i].type == "checkbox")	{
			         document.form1.elements[i].checked=0;
			         document.form1.elements[i].disabled=0;
					 
  				 	 document.getElementById('votos').value = "";
  		}     
	}				  
				  return false;
			      }	
}

function desabilitacampos_branco(){
  for (i=0;i<document.form1.elements.length;i++){
      if(document.form1.elements[i].type == "checkbox")	{
         document.form1.elements[i].checked=0;
         document.form1.elements[i].disabled=1;
         document.form1.elements['ConfirmarVoto'].disabled=0;		 
         document.form1.elements['limpavotos'].disabled=0;		 		 
         document.form1.elements['votos'].disabled=0;		 		 
         document.getElementById('votobranco').checked = 1;		 		 
		 
		 valordovoto = document.getElementById('votobranco').value;		 		 
		 document.getElementById('votos').value = valordovoto;

  		} ;// fecha if    
	}// fecha for
		 resp = confirm("Deseja finalizar seu voto como BRANCO?");
		 if (resp == true){
			    document.form1.submit();
			 }else{
				  //document.getElementById('votonulo').checked = 0;				 
				  for (i=0;i<document.form1.elements.length;i++){
			         if(document.form1.elements[i].type == "checkbox")	{
			         document.form1.elements[i].checked=0;
			         document.form1.elements[i].disabled=0;
					 
  				 	 document.getElementById('votos').value = "";
  		}     
	}				  
				  return false;
			      }	
}


function reseta_form(){
  for (i=0;i<document.form1.elements.length;i++){
      if(document.form1.elements[i].type == "checkbox")	{
         document.form1.elements[i].checked=0;
         document.form1.elements[i].disabled=0;
  		}     
	}
}



//VALIDAR CPF / CNPJ
function campo_numerico() {

    if (event.keyCode < 45 || event.keyCode > 57) event.returnValue = false;

}

// Função verifica qual das funções tem que chamar cpf ou cnpj
function cnpj_cpf(campo, documento, f, formi) {

    form = formi;

    for (Count = 0; Count < 2; Count++) {

        if (form.rad[Count].checked)
            break;
    }


    if (Count == 0) {
        mascara_cpf(campo, documento, f);
    } else {
        mascara_cnpj(campo, documento, f);
    }
}

// Mascara para o CNPJ
function mascara_cnpj(campo, documento, f) {
    var mydata = '';
    mydata = mydata + documento;

    if (mydata.length == 2) {
        mydata = mydata + '.';

        ct_campo = eval("document." + f + "." + campo + ".value = mydata");
        ct_campo;
    }

    if (mydata.length == 6) {
        mydata = mydata + '.';

        ct_campo = eval("document." + f + "." + campo + ".value = mydata");
        ct_campo;
    }

    if (mydata.length == 10) {
        mydata = mydata + '/';

        ct_campo1 = eval("document." + f + "." + campo + ".value = mydata");
        ct_campo1;
    }

    if (mydata.length == 15) {
        mydata = mydata + '-';

        ct_campo1 = eval("document." + f + "." + campo + ".value = mydata");
        ct_campo1;
    }

    if (mydata.length == 18) {

        valida_cnpj(f, campo);
    }
}

// Mascara para o CPF
function mascara_cpf(campo, documento, f) {
    var mydata = '';
    mydata = mydata + documento;

    if (mydata.length == 3) {
        mydata = mydata + '.';

        ct_campo = eval("document." + f + "." + campo + ".value = mydata");
        ct_campo;
    }

    if (mydata.length == 7) {
        mydata = mydata + '.';

        ct_campo = eval("document." + f + "." + campo + ".value = mydata");
        ct_campo;
    }

    if (mydata.length == 11) {
        mydata = mydata + '-';

        ct_campo1 = eval("document." + f + "." + campo + ".value = mydata");
        ct_campo1;
    }

    if (mydata.length == 14) {

        valida_cpf(f, campo);
    }

}

// Função para validar o CNPJ
function valida_cnpj(f, campo) {

    pri = eval("document." + f + "." + campo + ".value.substring(0,2)");
    seg = eval("document." + f + "." + campo + ".value.substring(3,6)");
    ter = eval("document." + f + "." + campo + ".value.substring(7,10)");
    qua = eval("document." + f + "." + campo + ".value.substring(11,15)");
    qui = eval("document." + f + "." + campo + ".value.substring(16,18)");

    var i;
    var numero;
    var situacao = '';

    numero = (pri + seg + ter + qua + qui);

    s = numero;


    c = s.substr(0, 12);
    var dv = s.substr(12, 2);
    var d1 = 0;

    for (i = 0; i < 12; i++) {
        d1 += c.charAt(11 - i) * (2 + (i % 8));
    }

    if (d1 == 0) {
        var result = "falso";
    }
    d1 = 11 - (d1 % 11);

    if (d1 > 9) d1 = 0;

    if (dv.charAt(0) != d1) {
        var result = "falso";
    }

    d1 *= 2;
    for (i = 0; i < 12; i++) {
        d1 += c.charAt(11 - i) * (2 + ((i + 1) % 8));
    }

    d1 = 11 - (d1 % 11);
    if (d1 > 9) d1 = 0;

    if (dv.charAt(1) != d1) {
        var result = "falso";
    }


    if (result == "falso") {
        alert("CNPJ inválido!");
        aux1 = eval("document." + f + "." + campo + ".focus");
        aux2 = eval("document." + f + "." + campo + ".value = ''");

    }
}

// Função valida o CPF
function valida_cpf(f, campo) {

    pri = eval("document." + f + "." + campo + ".value.substring(0,3)");
    seg = eval("document." + f + "." + campo + ".value.substring(4,7)");
    ter = eval("document." + f + "." + campo + ".value.substring(8,11)");
    qua = eval("document." + f + "." + campo + ".value.substring(12,14)");

    var i;
    var numero;

    numero = (pri + seg + ter + qua);

    s = numero;
    c = s.substr(0, 9);
    var dv = s.substr(9, 2);
    var d1 = 0;

    for (i = 0; i < 9; i++) {
        d1 += c.charAt(i) * (10 - i);
    }

    if (d1 == 0) {
        var result = "falso";
    }

    d1 = 11 - (d1 % 11);
    if (d1 > 9) d1 = 0;

    if (dv.charAt(0) != d1) {
        var result = "falso";
    }

    d1 *= 2;
    for (i = 0; i < 9; i++) {
        d1 += c.charAt(i) * (11 - i);
    }

    d1 = 11 - (d1 % 11);
    if (d1 > 9) d1 = 0;

    if (dv.charAt(1) != d1) {
        var result = "falso";
    }

    // Condição falsa
    if (result == "falso") {
        alert("CPF inválido!");
        aux1 = eval("document." + f + "." + campo + ".focus");
        aux2 = eval("document." + f + "." + campo + ".value = ''");
    }
}