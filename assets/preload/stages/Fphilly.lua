function onCreate()
	makeLuaSprite('philly', 'week3/images/philly', -125, -10);
	scaleObject('philly', 1.1, 1.0);

	addLuaSprite('philly', false);

	makeLuaSprite('overlay', 'week3/images/overlay', -1000, 10)
	scaleObject('overlay', 2.0, 2.0);

	addLuaSprite('overlay', true)
end
