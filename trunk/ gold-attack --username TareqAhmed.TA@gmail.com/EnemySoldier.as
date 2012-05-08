package  {
	/*Enemy soldier's role is to go and grab the gold bars. It does not
	affect/ harm the player in any way. Reach a certain point, checks whether there 
	are any gold-bars left. If available, take one gold away from player cache. 
	If there are no gold bars available, enemy goes back. 
	
	When carrying gold away from the player, if shot by player, carried-gold coordinates
	resets back to player's cache
	*/
	
	import flash.events.Event 
	
	public class EnemySoldier extends Enemy{
		
		public var soldierSpeed: int = 3;
		public var xBorder: int = 150;
		
		public function EnemySoldier(){
			// constructor code
			// If enemy reaches border, commence check
			
		//	enSpeed = soldierSpeed;
		//	enBorder = xBorder
		}
			
		public function checkGoldPresent(): void {
			/* Checks whether there's gold in player's cache. If true, call function
			"takeGold" and then run back. If no gold, run back*/
			//If gold is present, commence "takeGold" else
			//commence "runBack"
		}
		
		public function takeGold(): void{
			/* Take one gold away from player*/
			// once this is done, commence override of moveEnemy
		}

		
		override public function moveEnemy(e:Event): void {
			/*Reason for "<=" : Because it's minusing a set amount, chances are, it's going to skip 
			over the specific destination, so we check whether it has gone over specfied coordinate*/
			trace("EnemySoldier move")
			this.x-= soldierSpeed
			if (this.x <= xBorder){	
				soldierSpeed = -soldierSpeed
				this.x += soldierSpeed;
				}
		}
		
	}// Class
	
} //Package
