const { nodeName } = require("jquery");

function check() {
  const days = document.querySelectorAll(".has-events");
  days.forEach(function (day) { 
    day.addEventListener("click", () => {
      const hiddenClass = day.getAttribute("class");
      let children = day.childNodes;
      const children2 = children[3];
      if (children2.getAttribute("style") == "display:none;") {
        children2.removeAttribute("style", "display:none;")
      }
    });

    day.addEventListener("mouseout", () => {
      const hiddenClass = day.getAttribute("class");
      let children = day.childNodes;
      const children2 = children[3];
      if (children2.getAttribute("style") != "display:none;") {
        children2.setAttribute("style", "display:none;")
      }
    });
  });
}
window.addEventListener("load", check)


//pullDownButton.addEventListener('click', function() {
  //debugger
  // プルダウンメニューの表示と非表示の設定
  //if (pullDownParents.getAttribute("style") == "display:block;") {
    //pullDownParents.removeAttribute("style", "display:block;")
  //} else {
    //pullDownParents.setAttribute("style", "display:block;")
  //}
//})
