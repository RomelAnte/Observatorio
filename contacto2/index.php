<style type="text/css">
    :root{
    --colorTextos: #49454567;
    }



    *,
    ::before,
    ::after {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }



    h1{
        text-align: center;
        margin: 10px 0;
        font-weight: 800;
    }

    form{
        background: #fff;
        width: 85%;
        padding: 10px 0;
        border-radius: 10px;
        box-shadow: 0 0 6px 0 rgba(255, 255, 255, 0.8);
        border: 2px dashed #312783;
    }

    .form{
        width: 100%;
        margin: auto;
    }

    form .grupo{
        position: relative;
        margin: 45px;
    }

    input, textarea{
        background: none;
        color:#c6c6c6;
        font-size: 18px;
        padding: 10px 10px 10px 5px;
        display: block;
        width: 100%;
        border:none;
        border-bottom: 1px solid var(--colorTextos);
        resize: none;
    }

    input:focus,textarea:focus{
        outline: none;
        color: rgb(94,93,93);
    }

    input:focus~label, 
    input:valid~label, 
    textarea:focus~label, textarea:valid~label{
        position: absolute;
        top: -14px;
        font-size: 12px;
        color: #2196F3;
    }

    label{
        color: var(--colorTextos);
        font-size: 16px;
        position: absolute;
        left: 5px;
        top:10px;
        transition: 0.5s ease all;
        pointer-events: none;
    }


    input:focus~.barra::before, textarea:focus~.barra::before{
        width: 100%;
    }
    .barra{
        position: relative;
        display: block;
        width: 100%;
    }
    .barra::before{
        content: '';
        height: 2px;
        width: 0%;
        bottom: 0;
        position: absolute;
        background: linear-gradient(to right, #6A82FB, #FC5C7D);
        transition: 0.3s ease all;
        left: 0%;
    }
    button{
        background: #FC5C7D;
        /* fallback for old browsers */
        background: -webkit-linear-gradient(to right, #6A82FB, #FC5C7D);
        /* Chrome 10-25, Safari 5.1-6 */
        background: linear-gradient(to right, #6A82FB, #FC5C7D);
        /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
        display: block;
        width: 100px;
        height: 40px;
        border:none;
        color:#fff; 
        border-radius: 4px;
        font-size: 16px;
        margin: 10px auto;
        cursor: pointer;
    }

    @media screen and (max-width:1100px){
        form{
            width: 50%;
        }
    }

    @media screen and (max-width:600px){
        form{
            width: 60%;
        }
    }

    @media screen and (max-width:450px){
        form{
            width: 80%;
        }
    }

    @media screen and (max-width:300px){
        form{
            width: 90%;
        }
    }
</style>
    
    <link rel="stylesheet" href="estilos.css">
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,800,900" rel="stylesheet">

<body>
<!-- Hola qué tal, te recuerdo que la web es de uso libre -->
<!-- usala para lo que desees y no olvides suscribirte a AlexCG Design -->
<!-- Web hecha por AlexCG Design, si te sirvió la plantilla por favor entra a AlexCG Design -->
<!-- ->>>> https://www.youtube.com/alexcgdesign <<<<- -->
    <center>
    <form action="contacto2/save_task.php" method="POST">
        <div class="form">
            <h1></h1>
            <div class="grupo">
                <input type="text" name="nombre" id="nombre" required><span class="barra"></span>
                <label>Nombre</label>
            </div>
            <div class="grupo">
                <input type="email" name="email" id="email" required><span class="barra"></span>
                <label>Email</label>
            </div>
            
            <div class="grupo">
                <textarea name="mensaje" id="mensaje" rows="3" required></textarea><span class="barra"></span>
                <label>Mensaje</label>
            </div>
            
            <input style="background:#002147;;" type="submit" name="save_task"  value="Enviar">
        </div>
    </form>
</center>