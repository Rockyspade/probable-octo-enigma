require=function a(o,u,s){function c(r,e){if(!u[r]){if(!o[r]){var n="function"==typeof require&&require;if(!e&&n)return n(r,!0);if(d)return d(r,!0);var i=new Error("Cannot find module '"+r+"'");throw i.code="MODULE_NOT_FOUND",i}var t=u[r]={exports:{}};o[r][0].call(t.exports,function(e){return c(o[r][1][e]||e)},t,t.exports,a,o,u,s)}return u[r].exports}for(var d="function"==typeof require&&require,e=0;e<s.length;e++)c(s[e]);return c}({"projects/automation-rules":[function(e,r,n){var i=e("jquery");function t(e){i("#id_predefined_match_arg").siblings(".helptext").text({"all-versions":"All versions will be matched.","semver-versions":"Versions incremented based on semantic versioning rules will be matched.","":""}[e])}i(function(){var e=i("#id_predefined_match_arg").val();""!==e&&i("#id_match_arg").parent().hide(),t(e),i("#id_predefined_match_arg").bind("change",function(e){""===this.value?i("#id_match_arg").parent().show():i("#id_match_arg").parent().hide(),t(this.value)})})},{jquery:"jquery"}]},{},[]);