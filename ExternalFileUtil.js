window.ExternalFileUtil = {
    
    openWith: function ( path, uti, success, fail) {
        cordova.exec(success, fail, "ExternalFileUtil", "openWith", [path, uti]);
    }  
};