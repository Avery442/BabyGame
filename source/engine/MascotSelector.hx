package engine;

import flixel.FlxG;

class MascotSelector
{
	public static var potentialImages = ["fish_mascot", "tiger_mascot"];

	public static function ChooseMascot()
	{
		return potentialImages[FlxG.random.int(0, potentialImages.length - 1)];
	}
}