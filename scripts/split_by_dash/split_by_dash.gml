// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function split_by_dash(str) {
    var arr = [];
    var current = "";
    
    for (var i = 1; i <= string_length(str); i++) {
        var ch = string_char_at(str, i);
        
        if (ch == "-") {
            array_push(arr, current);
            current = "";
        } else {
            current += ch;
        }
    }
    
    // добавить последнее слово
    array_push(arr, current);
    
    return arr;
}