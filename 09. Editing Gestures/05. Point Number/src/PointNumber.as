package 
{
	import com.gestureworks.core.GestureWorks;
	import com.gestureworks.core.TouchSprite;
	import com.gestureworks.events.GWGestureEvent;
	import com.gestureworks.utils.ExampleTemplate;
	
	[SWF(width="1280",height="720",backgroundColor="0x000000",frameRate="60")]
	
	public class PointNumber extends GestureWorks
	{
		public function PointNumber():void
		{
			gml = "point-number.gml";
		}
		
		override protected function gestureworksInit():void
		{
			trace("gestureWorksInit()");

			// create a touchable sprite 
			var touchSprite1:TouchSprite = new TouchSprite();			
			touchSprite1.graphics.beginFill(0xFF0000);
			touchSprite1.graphics.drawRect(0, 0, 300, 300);
			touchSprite1.graphics.endFill();			
			touchSprite1.x = 100;
			touchSprite1.y = 50
			addChild(touchSprite1);			
			touchSprite1.nativeTransform = true;
			
			//assign drag without delta filter
			touchSprite1.gestureList = { "1-to-2-finger-drag": true };
			
			//create second touchable sprite
			var touchSprite2:TouchSprite = new TouchSprite();			
			touchSprite2.graphics.beginFill(0xFFFFFF);
			touchSprite2.graphics.drawRect(0, 0, 300, 300);
			touchSprite2.graphics.endFill();			
			touchSprite2.x = 100;
			touchSprite2.y = 375;
			addChild(touchSprite2);			
			touchSprite2.nativeTransform = true;	
			
			//assign drag with delta filter
			touchSprite2.gestureList = { "2-finger-drag": true };			
		}
	
	}

}