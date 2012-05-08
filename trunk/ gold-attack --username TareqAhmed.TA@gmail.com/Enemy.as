package  {
	
	import flash.display.MovieClip
	import flash.events.Event 
	
	public class Enemy extends MovieClip {

		//public var tempSpeed:int =2
		public var itemContainer: MovieClip
		//public var enSpeed: int
		//public var enBorder: int
		
		public function Enemy() {
			// constructor code
			this.addEventListener(Event.ENTER_FRAME, moveEnemy)
			
		}
		
		public function moveEnemy(e:Event): void {
			trace("Enemy class: Move")
			}
		


	}	// End of class
	
}	// end of package
