package  {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.events.Event;
	
	public class TankerClass extends MovieClip {

	public var tanker:MovieClip;
	public var bullet:MovieClip;
	
    public function TankerClass() {
			// constructor code
			
			stage.addEventListener(MouseEvent.MOUSE_MOVE,mousemove)
			stage.addEventListener(MouseEvent.MOUSE_DOWN,shoot)
								  
		}
		
		 public function mousemove(e:MouseEvent)
		{
			trace("mouse move");
			
			tanker.x=mouseX;
			tanker.y=mouseY;
		}
	
	    public function shoot(e:MouseEvent)
	    {
		   trace("bullet");
		   
		   addChild(bullet);
		   bullet.x=tanker.x;
		   bullet.y=tanker.y;
		   
		   bullet.addEventListener(Event.ENTER_FRAME,movebullet);
	   }
	   
        public function movebullet(e:Event):void
	   {
		  
	     e.target.x-=10;
      
	    if(e.target.x==-4)
        {
		  e.target.removeEventListener(Event.ENTER_FRAME,movebullet);

        }

}
	

 }
	
}
