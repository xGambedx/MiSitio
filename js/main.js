$(function(){
    $("section").each(function(){ 
        let tituloSeccion = $(this).find("h2").text() 
        console.log(tituloSeccion);
        let idSeccion = $(this).attr("id");
        $("#main-menu").append('<li class="nav-item">'
            +'<a class="nav-link" href="#'+ idSeccion +'">'+ tituloSeccion +'</a>'
            +'</li>');
    })

    $("section").each(function(){
        let ocultar = true;
        let seccion = $(this).attr("id");
        $("#"+seccion+" h2").click(function(){
            if (ocultar === true) {
                $("#"+seccion+" .ocultar").hide(1000);
                ocultar = false;
            } else {
                $("#"+seccion+" .ocultar").show("slow");
                ocultar = true;
            }
        });
    })

    $("#menu-item-ayuda").click(function(){
        fetch("herramientas/ayuda.html")
            .then(response => response.text())
            .then(data => {
                console.log(data)
                $("#main-content").html(data);
            });
    })

    $("#menu-item-ranking").click(function(){
        fetch("herramientas/ranking.html")
            .then(response => response.text())
            .then(data => {
                console.log(data)
                $("#main-content").html(data);
            });
    })
    
})