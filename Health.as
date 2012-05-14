package  {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	
    public class Health extends MovieClip {
		 
		public var health:int=100;
		public var healthEffect:int=40;
		
		public var borderPointer:MovieClip;
		
		public function Health() 
		{
			// constructor code
					
			//this.addEventListener(Event.ENTER_FRAME,playerHealth)
		}
	
	   public function healthdecrease():void
	   {
			health-=healthEffect;
			
			trace("health is " +health )
			
			//this.scaleX = 10;
			 this.width-=35;
		}
			
	}
	
}
