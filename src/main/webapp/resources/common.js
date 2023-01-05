// Form 생성
function createForm(name, action, method) {
	const form = document.createElement("form");
	if (name != "") form.setAttribute("name", name);
	form.setAttribute("action", action);
	form.setAttribute("method", method);
	return form;
}

// Input box 생성
function createInput(type, name, value, placeholder) {
	const input = document.createElement("input");
	input.setAttribute("type", type);
	input.setAttribute("name", name);
	if (value != "") input.setAttribute("value", value);
	if (placeholder != "") input.setAttribute("placeholder", placeholder);
	return input;
}

// message in
function pageInit(message) {
	if (message != "") {
		alert(message);
	}
}