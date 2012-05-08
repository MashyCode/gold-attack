package  {
	
	import flash.display.MovieClip;
	import flash.events.KeyboardEvent ;
	import flash.events.Event ;
	
	public class GoldAttachMain extends MovieClip {
		
		public var randNum: int = 1 //Math.random()* 10
		
		public function GoldAttachMain() {
			// constructor code
			
			var ite: ValuedItem = new ValuedItem();
			addChild(ite)
			ite.x = 210
			ite.y = 50
			
			
			var plr: Player = new Player();
			addChild(plr)
			plr.x = 35
			plr.y = stage.stageHeight /2
			stage.addEventListener(KeyboardEvent.KEY_DOWN, plr.keyboardEvent) 
			
			for(var i: int = 0; i< randNum; i++){
				var en: Enemy = new Enemy();
				addChild(en)
				en.x = 500
				en.y = Math.random()*500
				this.addEventListener(Event.ENTER_FRAME, en.moveEnemy)
			}
			
			trace(randNum)
		}
	}
	
}
