package acceptance
{
	import flash.text.TextField;
	
	import org.flexunit.assertThat;
	import org.hamcrest.text.containsString;

	public class AcceptanceTests
	{	
		private var frl:FRL;
		
		[Before]
		public function setUp():void
		{
			frl = new FRL();
		}
		
		[After]
		public function tearDown():void
		{
		}

		[Test]
		public function whenGameRuns_canSeeMaze():void
		{
			var gameView:TextField = getView();
			
			var display:String = gameView.text;
			
			assertThat(display, containsString('###'));
			assertThat(display, containsString('...'));
		}

		private function getView():TextField
		{
			return frl.getChildByName("view") as TextField
		}
		
	}
}