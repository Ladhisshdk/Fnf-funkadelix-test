function onCreate()
	makeLuaSprite('back', 'week2/images/back', -175, 40);
	scaleObject('back', 1.2, 1.0);

	addLuaSprite('back', false);

	makeLuaSprite('overlay', 'week2/images/overlay', -650, -95);
	scaleObject('overlay', 2.0, 2.0)

	addLuaSprite('overlay', true)
end