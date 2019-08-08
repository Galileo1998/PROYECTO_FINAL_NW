var hmbElement = null;
var menuHolder = null;
document.addEventListener("DOMContentLoaded", page_init);
function page_init(e){
  hmbElement = document.getElementById("menuhmb");
  menuHolder = document.getElementById("menuholder");
  hmbElement.addEventListener('click', hmbElement_onClick);
}

function hmbElement_onClick(e){
  e.preventDefault();
  e.stopPropagation();
  var tmpClass = menuHolder.className===""?"hidden":"";
  menuHolder.className = tmpClass;

}
