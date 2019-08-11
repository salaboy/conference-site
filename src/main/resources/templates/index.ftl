<!DOCTYPE html>
<html class="no-js" lang="">

<head>
    <meta charset="utf-8">
    <title></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="manifest" href="site.webmanifest">
    <link rel="apple-touch-icon" href="icon.png">
    <!-- Place favicon.ico in the root directory -->
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/main.css">
    <link href="https://fonts.googleapis.com/css?family=Rubik:400,500&display=swap" rel="stylesheet">


    <meta name="theme-color" content="#fafafa">
</head>

<body>
<!--[if IE]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade
    your browser</a> to improve your experience and security.</p>
<![endif]-->

<!-- Add your site or application content here -->
<div class="block conference">
    <div class="container">

        <h1>Jenkins World 2019!</h1>
        <h2>Conference V${version}   <img src="jenkinsx-icon-black.png" width="7%"/></h2>
    </div>
</div>
<div class="bottom-blocks">
    <div class="block block-left">
        <div class="container">
            <h2>Sponsors banner: <br/>${sponsors}</h2>
        </div>
    </div>
    <div class="block block-right">
        <div class="container">
            <h2>Agenda Banner: <br/>${agenda}</h2>
        </div>
    </div>
</div>
<script src="js/vendor/modernizr-3.7.1.min.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"
        integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
<script>window.jQuery || document.write('<script src="js/vendor/jquery-3.4.1.min.js"><\/script>')</script>
<script src="js/plugins.js"></script>
<script src="js/main.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        setInterval(function () {
            window.location = window.location;
        }, 3000);
    });
</script>


</body>

</html>