package  {
	
	import flash.display.MovieClip
	import flash.events.Event 
	
	public class Enemy extends MovieClip {

		public var tempSpeed:int =2
		public var itemContainer: MovieClip
		
		public function Enemy() {
			// constructor code
			this.addEventListener(Event.ENTER_FRAME, moveEnemy)
		}
		
		public function moveEnemy(e:Event): void {
			this.x-= tempSpeed
			if (this.x == 250){
				tempSpeed = -tempSpeed
				grabItem();
			}
		}
		
		public function grabItem(): void{
			// Grab the item, and escape with it
		}


	}	// End of class
	
}	// end of package
