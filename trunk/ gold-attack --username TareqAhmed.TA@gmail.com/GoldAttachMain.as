package  {
	
	import flash.display.MovieClip;
	import flash.events.KeyboardEvent ;
	import flash.events.Event ;
	
	public class GoldAttachMain extends MovieClip {
		
		public var randNum: int = Math.random()* 10
		
		
		public function GoldAttachMain() {
			// constructor code
			
			//Declaring the border
			var border: Border = new Border();
			addChild(border)
			border.x = 175
			border.y = stage.stageHeight /2
			//border.en = borderContainer
			
			//Declaring GoldBars
			var gldBar1: GoldBar = new GoldBar
			addChild(gldBar1)
			gldBar1.x = 100
			gldBar1.y = 50 
			
			var gldBar2: GoldBar = new GoldBar
			addChild(gldBar2)
			gldBar2.x = 100
			gldBar2.y = 130
			
			var gldBar3: GoldBar = new GoldBar
			addChild(gldBar3)
			gldBar3.x = 100
			gldBar3.y = 210
			
			var gldBar4: GoldBar = new GoldBar
			addChild(gldBar4)
			gldBar4.x = 100
			gldBar4.y = 290
			
			var wep: GunBase = new GunBase();
			addChild(wep)
			wep.x = 50
			wep.y = stage.stageHeight/2
			stage.addEventListener(KeyboardEvent.KEY_DOWN, wep.keyboardEvent)
			
			var plr: Player = new Player();
			addChild(plr)
			plr.x = 35
			plr.y = stage.stageHeight/2
			stage.addEventListener(KeyboardEvent.KEY_DOWN, plr.keyboardEvent) 
			
			for(var i: int = 0; i< randNum; i++){
				var en: EnemySoldier = new EnemySoldier();
				addChild(en)
				en.x = 600
				/*if(en.x <= 400){
					en.x = Math.random()*800
				}*/
				en.y = Math.random()*400
				//this.addEventListener(Event.ENTER_FRAME, en.moveEnemy)
				en.borderContainer=border;
				en.gldBar1Cont=gldBar1;
			}
			
			trace(randNum)
		}
	}
	
}
