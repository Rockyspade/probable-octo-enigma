require=function o(r,i,u){function c(n,e){if(!i[n]){if(!r[n]){var t="function"==typeof require&&require;if(!e&&t)return t(n,!0);if(l)return l(n,!0);throw(e=new Error("Cannot find module '"+n+"'")).code="MODULE_NOT_FOUND",e}t=i[n]={exports:{}},r[n][0].call(t.exports,function(e){return c(r[n][1][e]||e)},t,t.exports,o,r,i,u)}return i[n].exports}for(var l="function"==typeof require&&require,e=0;e<u.length;e++)c(u[e]);return c}({"gold/checkout":[function(e,n,t){function o(e){var u=this,e=e||{};u.stripe=Stripe(e.stripeKey),u.formId=e.formId||"",u.levelId=e.levelId||"",u.checkoutSessionUrl=e.checkoutSessionUrl||"",u.csrfToken=e.csrfToken||"",u.initForm=function(){document.getElementById(u.formId).addEventListener("click",function(e){e.preventDefault(),u.createCheckoutSession().then(function(e){e.json().then(function(e){u.stripe.redirectToCheckout({sessionId:e.session_id})})})})},u.createCheckoutSession=function(){var e=document.getElementById(u.levelId).value,n=document.getElementById("id_name"),t=document.getElementById("id_email"),o=document.getElementById("id_logo_url"),r=document.getElementById("id_site_url"),i=document.getElementById("id_public");return fetch(u.checkoutSessionUrl,{method:"POST",headers:{"Content-Type":"application/json","X-CSRFToken":u.csrfToken},body:JSON.stringify({priceId:e,name:n?n.value:null,email:t?t.value:null,logoUrl:o?o.value:null,siteUrl:r?r.value:null,public:i?i.checked:null})})}}o.init=function(e){e=new o(e);return e.initForm(),e},n.exports.StripeCheckoutView=o},{}]},{},[]);