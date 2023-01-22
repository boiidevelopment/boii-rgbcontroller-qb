# BOII | DEVELOPMENT - UTILITY: RGB CONTROLER V2.0.0

Here we have a simple RGB controller for vehicles.
Script has finally been updated to include a simple ui.
Enjoy :)

### INSTALL

1) Customise `shared/language.lua` to your liking
2) Drag and drop `boii-rgbcontroller` into your server resources if downloaded from GitHub make sure to rename the folder!!
3) Add `ensure boii-rgbcontroller` into your server cfg
4) Add items provided under **SHARED/ITEMS.LUA** into your `qb-core/shared/items.lua`
5) Restart server

### SHARED/ITEMS.LUA

    --<!>-- RGB CONTROLLER --<!>--
	['rgbc']                	 = {['name'] = 'rgbc',               	['label'] = 'RGB Controller',             ['weight'] = 100,       ['type'] = 'item',      ['image'] = 'rgbc.png',        	['unique'] = false,     ['useable'] = true,     ['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'A rgb controller for use in vehicles!'},
    ['rgbkit']                	 = {['name'] = 'rgbkit',               	['label'] = 'RGB Kit',             ['weight'] = 100,       ['type'] = 'item',      ['image'] = 'lightingkit.png',        	['unique'] = false,     ['useable'] = false,     ['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'Fit a rgb lighting kit to your vehicle!'},

### PREVIEW
COMING SOON

### SUPPORT
https://discord.gg/MUckUyS5Kq
