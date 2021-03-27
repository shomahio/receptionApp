function check() {
  const days = document.querySelectorAll(".has-events");
  days.forEach(function (day) {
    const hiddenClass = day.getAttribute("class");
      let children = day.childNodes;
      const children2 = children[3];
      const children3 = children[1];
    day.addEventListener("click", () => {
      children2.removeAttribute("style", "display:none;")
    });

    day.addEventListener("mouseleave", () => {
      if (children2.getAttribute("style") != "display:none;") {
        children2.setAttribute("style", "display:none;")
      }
    });
  });
}
window.addEventListener("turbolinks:load", check)