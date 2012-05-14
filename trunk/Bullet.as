package  {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	
	public class Bullet extends MovieClip {
		
		public var bullet:MovieClip
	    public var wep: MovieClip;
		
		
		public function Bullet() {
			// constructor code
         }
		 
		public function movebullet(e:Event):void
		{
			
			 this.x+=5;
      
			  if(this.x==10)
			  {
				 this.removeEventListener(Event.ENTER_FRAME,movebullet);
			  }
	    }
		
	}
}