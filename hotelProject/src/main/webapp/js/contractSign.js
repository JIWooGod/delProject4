var videoUp = document.getElementById("videoUp");
var video = document.getElementById("video");
var canvas, context, tool;
var submit = document.getElementById("submit");

if (window.addEventListener) {
    window.addEventListener('load', InitEvent, false);
    window.addEventListener('load', wrapAll, false);
    window.addEventListener('load', aboutVideo, false);
}

function InitEvent() {
    canvas = document.getElementById('drawCanvas');
    if (!canvas) {
	alert("캔버스 객체를 찾을 수 없음");
	return;
    }
    if (!canvas.getContext) {
	alert("Drawing Contextf를 찾을 수 없음");
	return;
    }
    context = canvas.getContext('2d');
    if (!context) {
	alert("getContext() 함수를 호출 할 수 없음");
	return;
    }
    // Pencil tool 객체를 생성 한다.
    tool = new tool_pencil();
    canvas.addEventListener('mousedown', ev_canvas, false);
    canvas.addEventListener('mousemove', ev_canvas, false);
    canvas.addEventListener('mouseup', ev_canvas, false);
    canvas.addEventListener('touchstart', ev_canvas, false);
    canvas.addEventListener('touchmove', ev_canvas, false);
    canvas.addEventListener('touchend', ev_canvas, false);
}
function tool_pencil() {
    var tool = this;
    this.started = false;

    // 마우스를 누르는 순간 그리기 작업을 시작 한다. 
    this.mousedown = function (ev) {
	context.beginPath();
	context.moveTo(ev._x, ev._y);
	tool.started = true;
    };
    // 마우스가 이동하는 동안 계속 호출하여 Canvas에 Line을 그려 나간다
    this.mousemove = function (ev) {
	if (tool.started) {
	    context.lineTo(ev._x, ev._y);
	    context.stroke();
	}
    };
    // 마우스 떼면 그리기 작업을 중단한다
    this.mouseup = function (ev) {
	if (tool.started) {
	    tool.mousemove(ev);
	    tool.started = false;
	}
    };

    // 마우스를 누르는 순간 그리기 작업을 시작 한다. 
    this.touchstart = function (ev) {
	context.beginPath();
	context.moveTo(ev._x, ev._y);
	tool.started = true;
    };
    // 마우스가 이동하는 동안 계속 호출하여 Canvas에 Line을 그려 나간다
    this.touchmove = function (ev) {
	if (tool.started) {
	    context.lineTo(ev._x, ev._y);
	    context.stroke();
	}
    };
    // 마우스 떼면 그리기 작업을 중단한다
    this.touchend = function (ev) {
	if (tool.started) {
	    tool.touchmove(ev);
	    tool.started = false;
	}
    };
}
// Canvas요소 내의 좌표를 결정 한다.
function ev_canvas(ev) {
    if (ev.layerX || ev.layerX == 0) { // Firefox 브라우저
	ev._x = ev.layerX;
	ev._y = ev.layerY;
    }
    else if (ev.offsetX || ev.offsetX == 0) { // Opera 브라우저
	ev._x = ev.offsetX;
	ev._y = ev.offsetY;
    }
    else if (ev.targetTouches[0] || ev.targetTouches[0].pageX == 0) {	//핸드폰
	var left = 0;
	var top = 0;
	var elem = document.getElementById('drawCanvas');

	while (elem) {
	    left = left + parseInt(elem.offsetLeft);
	    top = top + parseInt(elem.offsetTop);
	    elem = elem.offsetParent;
	}

	ev._x = ev.targetTouches[0].pageX - left;
	ev._y = ev.targetTouches[0].pageY - top;
    }
    // tool의 이벤트 핸들러를 호출한다.
    var func = tool[ev.type];
    if (func) {
	func(ev);
    }
}
//다시 그리기를 실행한다.
function onClear() {
    canvas = document.getElementById('drawCanvas');
    context.save();
	context.setTransform(1, 0, 0, 1, 0, 0);
	context.clearRect(0, 0, canvas.width, canvas.height);
	context.restore();
}

//이동
function wrapAll(){
	function warp(){
		location.href='../lecture';
	}
	function warp2(){
		location.href='../lecture/upload';
	}
	cancel.addEventListener("click",warp,false);
}

//컨버스 저장
function canvasToImage(){
	var canvas = document.getElementById("drawCanvas");
	var image = canvas.toDateURL("image/png");
	var blobBin = atob(image);
	var file = new Blob([new Uint8Array(blobBin)], {type: 'image/png'});
	var formdata = new FormData();	// formData 생성
	formdata.append("file", file);

}