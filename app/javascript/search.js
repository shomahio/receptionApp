window.addEventListener('pageshow', function(){
  const genrePictures = document.querySelector(".genre_btn")
  const placeBtns = document.querySelector(".place_btn")
  const detailTags = document.querySelectorAll(".detail_tag")
  const detailBtns = document.querySelectorAll(".radio_btns")
  const sampleBtns = document.querySelectorAll(".sample_btn")
  

  const genrePicture = genrePictures.childNodes
  genrePicture.forEach(function (picture) { 
    picture.addEventListener ("click", () => {
      if (picture.getAttribute("style") == "filter: opacity(40%);") {
        picture.removeAttribute("style", "filter: opacity(40%);")
      }else {
        picture.setAttribute("style", "filter: opacity(40%);")
      };
    });
  });
  
  sampleBtns.forEach(function (sampleBtn) {
    sampleBtn.checked = false;
  });


  const placeChild = placeBtns.childNodes
  placeChild.forEach(function (placeBtn) {
    placeBtn.addEventListener ("click", () => {
      if (placeBtn.getAttribute("style") == "background-color:#FFBEDA;") {
        placeBtn.removeAttribute("style", "background-color:#FFBEDA;")
      }else {
        placeBtn.setAttribute("style", "background-color:#FFBEDA;")
      };
    });
  });

  // こだわり検索の表示・非表示
  detailTags.forEach(function (detailTag) {
    detailTag.addEventListener ("click", () => {
      const next = detailTag.nextElementSibling;
      if (next.getAttribute("style") == "display:none;") {
        next.removeAttribute("style", "display:none;")
      }else {
        next.setAttribute("style", "display:none;")
      }
    });
  });

  //こだわり、雰囲気選択した背景を変える
  detailBtns.forEach(function (detailBtn) {
    const detailRadioBtns = detailBtn.childNodes
    detailRadioBtns.forEach(function (detailRadioBtn) {
      detailRadioBtn.addEventListener ("click", () => {
        if (detailRadioBtn.getAttribute("style") == "background-color:#FFBEDA;") {
          detailRadioBtn.removeAttribute("style", "background-color:#FFBEDA;")
        }else {
          detailRadioBtn.setAttribute("style", "background-color:#FFBEDA;")
        }
      });
    });
  });
});