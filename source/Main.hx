package;

import flixel.FlxGame;
import openfl.display.Sprite;
import states.Prewarning;

class Main extends Sprite
{
	public function new()
	{
		super();
		addChild(new FlxGame(0, 0, Prewarning, 60, 60, true, true));
	}
}
