window.addEventListener('load',()=>{
  const pullDownButton = document.getElementById("lists")
  const pullDownParents = document.getElementById("pull-down")

  pullDownButton.addEventListener('click', ()=>{
    if (pullDownParents.getAttribute("style") == "display:block;") {
      pullDownParents.removeAttribute("style", "display:block;")
    } else {
      pullDownParents.setAttribute("style", "display:block;")
    }
  });

  const pullDownButton1 = document.getElementById("toggle_btn")
  const pullDownParents1 = document.getElementById("more-list")

  pullDownButton1.addEventListener('click', ()=>{
    if (pullDownParents1.getAttribute("style") == "display:block;") {
      pullDownParents1.removeAttribute("style", "display:block;")
    } else {
      pullDownParents1.setAttribute("style", "display:block;")
    }
  });
});