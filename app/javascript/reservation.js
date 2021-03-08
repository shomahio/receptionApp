const { nodeName } = require("jquery");

function check() {
  const days = document.querySelectorAll(".has-events");
  days.forEach(function (day) { 
    day.addEventListener("click", () => {
      const hiddenClass = day.getAttribute("");
      //hiddenClass.removeAttribute("style","display; none;")
      console.log(hiddenClass);
      console.log(day);
    });
  });
}
window.addEventListener("load", check)
