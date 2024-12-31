package states;

import engine.MascotSelector;
import engine.Paths;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.group.FlxSpriteGroup;
import flixel.util.FlxColor;

class PlayState extends FlxState
{
	var sprites:FlxSpriteGroup = new FlxSpriteGroup();
	var bg:FlxSprite;

	override public function create()
	{
		bg = new FlxSprite();
		bg.makeGraphic(FlxG.width, FlxG.height, FlxColor.WHITE);
		add(bg);

		super.create();
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);

		sprites.forEach(function(sprite)
		{
			sprite.alpha -= 0.005;
			if (sprite.alpha <= 0)
			{
				sprites.remove(sprite);
				sprite.destroy();
			}
		});

		if (FlxG.keys.justPressed.ANY)
		{
			CreateNewShape();
		}
	}

	public function CreateNewShape()
	{
		var sprite = new FlxSprite();

		sprite.loadGraphic(Paths.Images(MascotSelector.ChooseMascot()));
		sprite.x = FlxG.random.float(FlxG.width);
		sprite.y = FlxG.random.float(FlxG.height);
		sprite.flipX = FlxG.random.bool(50);
		sprite.flipY = FlxG.random.bool(1);

		bg.color = FlxColor.fromRGB(FlxG.random.int(0, 255), FlxG.random.int(0, 255), FlxG.random.int(0, 255));

		add(sprite);
		sprites.add(sprite);
	}
}