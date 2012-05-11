package  {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.events.MouseEvent;

	public class GunBase extends MovieClip{
		
		public var bullet:MovieClip;
		public var wep:MovieClip;
			
	public function GunBase()  {
			// constructor code
			
			this.addEventListener(KeyboardEvent.KEY_DOWN,keyboardEvent1)
			
			this.addEventListener(MouseEvent.MOUSE_DOWN,shoot)
		}
		
		public function keyboardEvent1(e:KeyboardEvent):void
		{
			if(e.keyCode==87)
			{
				this.y-=5;
			}
			else if(e.keyCode==83)
			{
				this.y+=5;
			}
		}
		
		
		public function shoot(e:MouseEvent):void
		{
			trace("bullet");
			
			var bullet:Bullet=new Bullet();
			this.parent.addChild(bullet);
			bullet.x=this.x;
			bullet.y=this.y;
			bullet.addEventListener(Event.ENTER_FRAME,bullet.movebullet)
			
			
		}
		
	}
	
}
