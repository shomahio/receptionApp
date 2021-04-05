window.addEventListener('load', function(){
  const genrePictures = document.querySelector(".genre_btn")
  const placeBtns = document.querySelector(".place_btn")
  const detailBtns = document.querySelectorAll(".detail_tag")

  const genrePicture = genrePictures.childNodes
  genrePicture.forEach(function (picture) { 
    picture.addEventListener ("click", () => {
      if (picture.getAttribute("style") == "filter: opacity(40%);") {
        picture.removeAttribute("style", "filter: opacity(40%);")
      }else {
        picture.setAttribute("style", "filter: opacity(40%);")
      }
    });
  });

  console.log(placeBtns);
  const unko = placeBtns.childNodes
  console.log(unko)
  unko.forEach(function (placeBtn) {
    placeBtn.addEventListener ("click", () => {
      if (placeBtn.getAttribute("style") == "background-color:#FFBEDA;") {
        placeBtn.removeAttribute("style", "background-color:#FFBEDA;")
      }else {
        placeBtn.setAttribute("style", "background-color:#FFBEDA;")
      }
    });
  });



  // こだわり検索の表示・非表示
  detailBtns.forEach(function (detailBtn) {
    detailBtn.addEventListener ("click", () => {
      const next = detailBtn.nextElementSibling;
      if (next.getAttribute("style") == "display:none;") {
        next.removeAttribute("style", "display:none;")
      }else {
        next.setAttribute("style", "display:none;")
      }
    });
  });
});