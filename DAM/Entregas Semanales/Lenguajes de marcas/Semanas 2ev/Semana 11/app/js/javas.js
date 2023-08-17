
    $(document).ready(function(){
        $("section article").hover(function(){
            //Se hace grande al pasar el ranton
            $(this).addClass("aumentado")    
        })
            //Se hace pequeño de vuelta
        $("section article").mouseout(function(){
            $(this).removeClass("aumentado")    
        })
        
        //Para los botones avancen y retrocedan
        $(".anterior").click(function(){
            var midesfase = 0
            $(this).parent().parent().find(".ribbon").each(function(){
                midesfase = $(this).css("left")
            })
            
            midesfase = midesfase.replace("px","")*1
            midesfase -= 200;
            console.log(midesfase)
            
            $(this).parent().parent().find(".ribbon").each(function(){
                $(this).css("left",(midesfase)+"px")

            })
        })
        $(".posterior").click(function(){
            var midesfase = 0
            $(this).parent().parent().find(".ribbon").each(function(){
                midesfase = $(this).css("left")
            })
            
            midesfase = midesfase.replace("px","")*1
            midesfase += 200;
            console.log(midesfase)
            
            $(this).parent().parent().find(".ribbon").each(function(){
                $(this).css("left",(midesfase)+"px")

            })
        })
        //Al hacer click en unn artiuculo
        
        $("article").click(function(){
            //Les quita la clase abierto
            $(this).parent().parent().addClass("abierto")
            $(this).parent().parent().removeClass("muyabierto")
            //al segundo y medio carga
            var este = $(this)
            setTimeout(function(){
                
                este.parent().parent().next().find("h2").text(titulo)
                este.parent().parent().next().find("h3").text(subtitulo)
                este.parent().parent().next().find("p").text(descripcion)
                este.parent().parent().next().find("img").attr("src",imagen)
                este.parent().parent().removeClass("abierto")
            },1000)
            
            //Datos delm titulo, etc, del cual e echo click
            
            
            var titulo = ""
            $(this).find("h3").each(function(){
                titulo = $(this).text()
            })
            var subtitulo = ""
            $(this).find("h4").each(function(){
                subtitulo = $(this).text()
            })
            var descripcion = ""
            $(this).find("p").each(function(){
                descripcion = $(this).text()
            })
            var imagen = ""
            $(this).find("img").each(function(){
                imagen = $(this).attr("src")
            })
            $(".detalles h2").text(titulo)
            $(".detalles h3").text(subtitulo)
            $(".detalles p").text(descripcion)
            $(".detalles img").attr("src",imagen)
            
        })
        //mas grande
        $(".masinfo").click(function(){
            $(this).parent().addClass("muyabierto")
        })

    })