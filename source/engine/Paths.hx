package engine;

class Paths {

    public static function Fonts(file, ext=".otf"):String {
        return "assets/fonts/" + file + ext;
    }

    public static function Images(file, ext=".png"):String {
        return "assets/images/" + file + ext;
    }

    public static function Sound(file, ext=".ogg"):String {
        return "assets/sounds/" + file + ext;
    }
}