 //JavaScript para efecto de maquina de escribir

    var elementoAEscribir = function(padre, elemento, periodo) {
       this.elemento = elemento;
        this.padre = padre;
        this.loop =0;
        this.periodo = parseInt(periodo, 10) || 2000;
        this.txt = '';
        this.borrando = false;

        this.escribir();
    };

    elementoAEscribir.prototype.escribir = function() {
        if( this.loop / this.elemento.length < 1){
            var i = this.loop % this.elemento.length;
            var fullTxt = this.elemento[i];

            if (this.borrando) {
                this.txt = fullTxt.substring(0, this.txt.length - 1);
            } else {
                this.txt = fullTxt.substring(0, this.txt.length + 1);
            }

            this.padre.innerHTML = '<span class="wrap">'+this.txt+'</span>';

            var that = this;
            var delta = 200 - Math.random() * 100;

            if (this.borrando) { 
                delta /= 2; 
            }
            if (!this.borrando && this.txt === fullTxt) {
                if(this.loop!==(this.elemento.length-2)){
                    delta = this.periodo;
                    this.borrando = true;
                }
                else{
                    this.loop++;
                }
            } else if (this.borrando && this.txt === '') {
                this.borrando = false;
                this.loop++;
                delta = 500;
            }


            if(this.loop!==(this.elemento.length-1)){
                setTimeout(function() {
                    that.escribir();
                }, delta);
            }
        }
    };

    window.onload = function() {
        var elementos = document.getElementsByClassName('typewrite');
        for (var i=0; i<elementos.length; i++) {
            var rotacion = elementos[i].getAttribute('data-type');
            var periodoo = elementos[i].getAttribute('data-periodo');
            if (rotacion) {
              new elementoAEscribir(elementos[i], JSON.parse(rotacion), periodoo);
            }
        }
        // INJECT CSS
        var css = document.createElement("style");
        css.type = "text/css";
        css.innerHTML = ".typewrite > .wrap { border-right: 0.08em solid #333}";
        document.body.appendChild(css);
    };