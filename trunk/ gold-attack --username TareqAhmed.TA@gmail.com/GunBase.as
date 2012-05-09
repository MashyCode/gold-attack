package  {
	
	import flash.display.MovieClip;
	import flash.events.Event;

	public class GunBase extends MovieClip{
			
		public var plrSpeed: int = Player.PLAYER_SPEED
			
		public function GunBase()  {
			// constructor code
		}
		
		public function keyboardEvent(e:Event):void {
			if(e.keyCode == 87){
				this.y -= plrSpeed
			}
			else if (e.keyCode == 83){
				this.y += plrSpeed
			}
		}
	}
	
}
