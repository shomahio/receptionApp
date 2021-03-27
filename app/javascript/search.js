window.addEventListener('load', function(){

  const pullDownRadioButton = document.getElementById("search_genre1")
  const pullDownRadioButtons = document.getElementById("genre_btn1")
  const pullDownRadioButton1 = document.getElementById("search_place1")
  const pullDownRadioButtons1 = document.getElementById("place_btn1")

  pullDownRadioButton.addEventListener('click', function(){
    pullDownRadioButtons.removeAttribute("style", "display:none;")
  })

  pullDownRadioButtons.addEventListener("mouseleave", () => {
    if (pullDownRadioButtons.getAttribute("style") != "display:none;") {
      pullDownRadioButtons.setAttribute("style", "display:none;")
    }
  });

  pullDownRadioButton1.addEventListener('click', function(){
    pullDownRadioButtons1.removeAttribute("style", "display:none;")
  })

  pullDownRadioButtons1.addEventListener("mouseleave", () => {
    if (pullDownRadioButtons1.getAttribute("style") != "display:none;") {
      pullDownRadioButtons1.setAttribute("style", "display:none;")
    }
  });
})