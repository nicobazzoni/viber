// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//= require jquery3
//= require bootstrap-sprockets
//= require popper
//= require jquery_ujs
import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
// // var client_id = 'APP_ID'; // Your client id
// // var client_secret = 'APP_SECRET'; // Your secret
// // const redirectUri = 'http://localhost:8888/callback'; // Your redirect uri
 Rails.start()
 Turbolinks.start()
 ActiveStorage.start()

import "controllers"

// jQuery(function() {
//   return $.ajax({
//     url: 'https://apis.google.com/js/client:plus.js?onload=gpAsyncInit',
//     dataType: 'script',
//     cache: true
//   });
// });

// window.gpAsyncInit = function() {
//   $('.googleplus-login').click(function(e) {
//     e.preventDefault();
//     gapi.auth.authorize({
//       immediate: true,
//       response_type: 'code',
//       cookie_policy: 'single_host_origin',
//       client_id: '000000000000.apps.googleusercontent.com',
//       scope: 'email profile'
//     }, function(response) {
//       if (response && !response.error) {
//         // google authentication succeed, now post data to server and handle data securely
//         jQuery.ajax({type: 'POST', url: "/auth/google_oauth2/callback", dataType: 'json', data: response,
//           success: function(json) {
//             // response from server
//           }
//         });
//       } else {
//         // google authentication failed
//       }
//     });
//   });
// };

