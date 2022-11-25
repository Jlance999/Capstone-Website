function show_mens() {
    document.getElementsByClassName("womens").style.display="none";
}

document.getElementById('womensonly').addEventListener('click',function(){
    document.getElementById("womens").classList.add("d-none");
});

function show_womens() {
    document.getElementById("womens").classList.add("d-none");
}

//