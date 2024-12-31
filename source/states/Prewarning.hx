package states;

import engine.Paths;
import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.util.FlxColor;

class Prewarning extends FlxState
{
	override public function create()
	{
		var prewarningTextForParents = new FlxText();
		prewarningTextForParents.font = Paths.Fonts("Naturaly");
		prewarningTextForParents.size = 32;
		prewarningTextForParents.text = "BEWARE: Potential Flashing Lights and paterns that can cause seizures. Consult a doctor before use.";
		prewarningTextForParents.screenCenter();
		add(prewarningTextForParents);

		FlxG.camera.fade(FlxColor.BLACK, 2.5, false, function()
		{
			FlxG.switchState(new states.PlayState());
		});

		super.create();
	}
}