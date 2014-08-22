(function (module) {
    'use strict';

    var Shuffle = {},
        regex = {
            shuffle: /\((?:shuffle|!)\)\(\s*\[([\s\S]+?)\]\s*\)/g,
            separator: /\]\s*\[/g,
            image: /((?:https?:\/\/)?(?:[a-z\-]+\.)+[a-z]{2,6}(?:\/[^\/#?]+)+\.(?:jpg|gif|png)(?:\?[^\s]*)?(?:#[^\s]*)?)/i
        };

    Shuffle.parse = function (postContent, callback) {
        postContent = postContent.replace(regex.shuffle, function (match, capture) {
            var parts = capture.split(regex.separator);

            return parts[Math.floor(Math.random() * parts.length)].replace(regex.image, '![image]($1)');
        });

        callback(null, postContent);
    };

    module.exports = Shuffle;
}(module));