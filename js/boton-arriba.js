function irArriba(pxPantalla) {
    window.addEventListener('scroll', () => {
        var scroll = document.documentElement.scrollTop;
        var botonArriba = document.getElementById('scroll-arriba')
        if(scroll > pxPantalla) {
            botonArriba.style.opacity=0.9;
            botonArriba.style.transform='scale(1)';
        }
        else {
            botonArriba.style.opacity=0;
            botonArriba.style.transform='scale(0)';
        }
    })
}
irArriba(350);