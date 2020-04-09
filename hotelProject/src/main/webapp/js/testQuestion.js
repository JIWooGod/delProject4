var table = document.getElementById("tableForm");
var add = document.getElementById("addBtn");
function ready(){
	var i = 6;
	
	if(i<=10){
		add.addEventListener("click",addQuest,false);
	}else{
		alert("!최대 문항 수 초과! 더 이상 추가할 수 없습니다.");
	}
	
	function addQuest(i){
		var input = new Array();
		var br = new Array();
		
		var tr1 = document.createElement("tr");
		var tr2 = document.createElement("tr");
		var td1 = document.createElement("td");
		var td2 = document.createElement("td");
		var td3 = document.createElement("td");
		var td4 = document.createElement("td");
		var txtarea = document.createElement("textarea");
		var txtq = document.createTextNode("Q"+i);
		var txta = document.createTextNode("A"+i);
		
		td2.setAttribute("colspan","3");
		txtarea.setAttribute("id","q"+i);
		txtarea.setAttribute("name","q"+i);
		
		td1.appendChild(txtq);
		td2.appendChild(txtarea);
		td3.appendChild(txta);
		for(var k=1;k>=5;k++){
			input[k] = k+") <input type='text' name='q"+k+"a"+k+"' id='q"+k+"a"+k+"'/><br/>";
			td4.append(input[k]);
		}
		
		tr.appendChild(td1);
		tr.appendChild(td2);
		tr.appendChild(td3);
		tr.appendChild(td4);
		table.appendChild(tr1);
		table.appendChild(tr2);

		i++;
	}
	
	
	
}
window.addEventListener("load",ready,false);