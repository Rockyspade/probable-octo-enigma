require=function r(s,n,u){function i(t,e){if(!n[t]){if(!s[t]){var o="function"==typeof require&&require;if(!e&&o)return o(t,!0);if(c)return c(t,!0);throw(e=new Error("Cannot find module '"+t+"'")).code="MODULE_NOT_FOUND",e}o=n[t]={exports:{}},s[t][0].call(o.exports,function(e){return i(s[t][1][e]||e)},o,o.exports,r,s,n,u)}return n[t].exports}for(var c="function"==typeof require&&require,e=0;e<u.length;e++)i(u[e]);return i}({"builds/detail":[function(e,t,o){var r=e("knockout"),n=e("jquery");function u(e){var t=this;t.id=r.observable(e.id),t.command=r.observable(e.command),t.output=r.observable(e.output),t.exit_code=r.observable(e.exit_code||0),t.successful=r.observable(0===t.exit_code()),t.run_time=r.observable(e.run_time),t.is_showing=r.observable(!t.successful()),t.toggleCommand=function(){t.is_showing(!t.is_showing())},t.command_status=r.computed(function(){return t.successful()?"build-command-successful":"build-command-failed"})}function s(t){var s=this,t=t||{};s.state=r.observable(t.state),s.state_display=r.observable(t.state_display),s.cancelled=r.computed(function(){return"cancelled"===s.state()}),s.finished=r.computed(function(){return"finished"===s.state()||"cancelled"===s.state()}),s.date=r.observable(t.date),s.success=r.observable(t.success),s.error=r.observable(t.error),s.length=r.observable(t.length),s.commands=r.observableArray(t.commands),s.display_commands=r.computed(function(){var e,t=[],o=s.commands();for(e in o){var r=new u(o[e]);t.push(r)}return t}),s.commit=r.observable(t.commit),s.docs_url=r.observable(t.docs_url),s.commit_url=r.observable(t.commit_url),s.legacy_output=r.observable(!1),s.show_legacy_output=function(){s.legacy_output(!0)},function e(){s.finished()||(n.getJSON("/api/v2/build/"+t.id+"/",function(e){for(var t in s.state(e.state),s.state_display(e.state_display),s.date(e.date),s.success(e.success),s.error(e.error),s.length(e.length),s.commit(e.commit),s.docs_url(e.docs_url),s.commit_url(e.commit_url),e.commands){var o=e.commands[t];r.utils.arrayFirst(s.commands(),function(e){return e.id===o.id})||s.commands.push(o)}}),setTimeout(e,2e3))}()}s.init=function(e,t){e=new s(e),t=t||n("#build-detail")[0];return r.applyBindings(e,t),e},t.exports.BuildDetailView=s},{jquery:"jquery",knockout:"knockout"}]},{},[]);