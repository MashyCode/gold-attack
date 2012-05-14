package  {
	
	import flash.display.MovieClip;
	import flash.events.KeyboardEvent;

	public class Player extends MovieClip {
		
	   public const PLAYER_SPEED: int = 5
		
	public function Player() {
			// constructor code
			
			this.addEventListener(KeyboardEvent.KEY_DOWN, keyboardEvent);
		}
		
		public function keyboardEvent(e:KeyboardEvent): void 
		{			
			trace(e.keyCode)
				
				
			if(e.keyCode == 87)
			{
			  this.y -= PLAYER_SPEED
			}
			else if (e.keyCode == 83)
			{
			  this.y += PLAYER_SPEED
			}
					
		}	// End of keyBoard function
			
		
		
		
	}// end of class
	
}	// end of package