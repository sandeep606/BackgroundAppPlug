var exec = require("cordova/exec");

exports.runAppInBG = function(arg0, success, error) {
  exec(success, error, "BackgroundHandlerPlug", "runApplicationInBG", [arg0]);
};
