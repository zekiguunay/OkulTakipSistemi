<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OnlineOkulSistemi.Login" %>


<!DOCTYPE html>
<html lang="tr">
<head>
<title>Kullanıcı Girişi</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="icon" type="image/png" href="Login1/images/icons/favicon.ico" />

<link rel="stylesheet" type="text/css" href="Login1/vendor/bootstrap/css/bootstrap.min.css">

<link rel="stylesheet" type="text/css" href="Login1/fonts/font-awesome-4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" type="text/css" href="Login1/vendor/animate/animate.css">

<link rel="stylesheet" type="text/css" href="Login1/vendor/css-hamburgers/hamburgers.min.css">

<link rel="stylesheet" type="text/css" href="Login1/vendor/select2/select2.min.css">

<link rel="stylesheet" type="text/css" href="Login1/css/util.css">
<link rel="stylesheet" type="text/css" href="Login1/css/main.css">

<meta name="robots" content="noindex, follow">
<script nonce="1b5647ac-dd7b-475a-a720-ca1821c77b74">(function(w,d){!function(a,b,c,d){a[c]=a[c]||{};a[c].executed=[];a.zaraz={deferred:[],listeners:[]};a.zaraz.q=[];a.zaraz._f=function(e){return async function(){var f=Array.prototype.slice.call(arguments);a.zaraz.q.push({m:e,a:f})}};for(const g of["track","set","debug"])a.zaraz[g]=a.zaraz._f(g);a.zaraz.init=()=>{var h=b.getElementsByTagName(d)[0],i=b.createElement(d),j=b.getElementsByTagName("title")[0];j&&(a[c].t=b.getElementsByTagName("title")[0].text);a[c].x=Math.random();a[c].w=a.screen.width;a[c].h=a.screen.height;a[c].j=a.innerHeight;a[c].e=a.innerWidth;a[c].l=a.location.href;a[c].r=b.referrer;a[c].k=a.screen.colorDepth;a[c].n=b.characterSet;a[c].o=(new Date).getTimezoneOffset();if(a.dataLayer)for(const n of Object.entries(Object.entries(dataLayer).reduce(((o,p)=>({...o[1],...p[1]})),{})))zaraz.set(n[0],n[1],{scope:"page"});a[c].q=[];for(;a.zaraz.q.length;){const q=a.zaraz.q.shift();a[c].q.push(q)}i.defer=!0;for(const r of[localStorage,sessionStorage])Object.keys(r||{}).filter((t=>t.startsWith("_zaraz_"))).forEach((s=>{try{a[c]["z_"+s.slice(7)]=JSON.parse(r.getItem(s))}catch{a[c]["z_"+s.slice(7)]=r.getItem(s)}}));i.referrerPolicy="origin";i.src="/cdn-cgi/zaraz/s.js?z="+btoa(encodeURIComponent(JSON.stringify(a[c])));h.parentNode.insertBefore(i,h)};["complete","interactive"].includes(b.readyState)?zaraz.init():a.addEventListener("DOMContentLoaded",zaraz.init)}(w,d,"zarazData","script");})(window,document);</script></head>
<body>
<div class="limiter">
<div class="container-login100">
<div class="wrap-login100">
<div class="login100-pic js-tilt" data-tilt>
<img src="Login1/images/img-01.png" alt="IMG">
</div>
<form class="login100-form validate-form" runat="server">
<span class="login100-form-title">
Kullanıcı Girişi
</span>
<div class="wrap-input100 validate-input" data-validate="Kullanıcı Adı gerekli...">
	<asp:TextBox ID="txtUserName" CssClass="input100" runat="server" placeholder="Kullanıcı Adı"></asp:TextBox>
<span class="focus-input100"></span>
<span class="symbol-input100">
<i class="fa fa-envelope" aria-hidden="true"></i>
</span>
</div>
<div class="wrap-input100 validate-input" data-validate="Şifre gereklidr...">
<asp:TextBox ID="txtSifre" CssClass="input100" runat="server" placeholder="Şifre"></asp:TextBox>
<span class="focus-input100"></span>
<span class="symbol-input100">
<i class="fa fa-lock" aria-hidden="true"></i>
</span>
</div>
<div class="container-login100-form-btn">
<asp:Button ID="Button1" runat="server" Text="Giriş" CssClass="login100-form-btn" OnClick="Button1_Click" />
</div>
<div class="text-center p-t-12">
<span class="txt1">
unuttum
</span>
<a class="txt2" href="#">
Kullanıcı Adı / Şifre?
</a>
</div>
	<p>
		<asp:Label ID="Label1" runat="server" Text="" ForeColor="Red"></asp:Label></p>
<div class="text-center p-t-136">
<a class="txt2" href="#">
Yeni Hesap Oluştur
<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
</a>
</div>
</form>
</div>
</div>
</div>

<script src="Login1/vendor/jquery/jquery-3.2.1.min.js"></script>

<script src="Login1/vendor/bootstrap/js/popper.js"></script>
<script src="Login1/vendor/bootstrap/js/bootstrap.min.js"></script>

<script src="Login1/vendor/select2/select2.min.js"></script>

<script src="Login1/vendor/tilt/tilt.jquery.min.js"></script>
<script>
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>

<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-23581568-13');
</script>

<script src="Login1/js/main.js"></script>
<script defer src="https://static.cloudflareinsights.com/beacon.min.js/v8b253dfea2ab4077af8c6f58422dfbfd1689876627854" integrity="sha512-bjgnUKX4azu3dLTVtie9u6TKqgx29RBwfj3QXYt5EKfWM/9hPSAI/4qcV5NACjwAo8UtTeWefx6Zq5PHcMm7Tg==" data-cf-beacon='{"rayId":"81627fb4fa312a27","token":"cd0b4b3a733644fc843ef0b185f98241","version":"2023.8.0","si":100}' crossorigin="anonymous"></script>
</body>
</html>


