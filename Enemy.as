package  {
	
	import flash.display.MovieClip
	import flash.events.Event 
	
	public class Enemy extends MovieClip {
    
	  public var itemContainer: MovieClip
		
	  public function Enemy() {
			// constructor code
			this.addEventListener(Event.ENTER_FRAME, moveEnemy)
		}
		
	     public function moveEnemy(e:Event): void
	     {
		   trace("Enemy class: Move")
	     }
		

  }	// End of class
	
}	// end of package
