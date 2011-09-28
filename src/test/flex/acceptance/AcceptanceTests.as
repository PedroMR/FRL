package acceptance
{
	import flash.text.TextField;
	
	import org.flexunit.assertThat;
	import org.hamcrest.text.containsString;
	
	import frl.view.TextFieldViewRenderer;
	import frl.view.ViewRenderer;
	import frl.FRL;

	public class AcceptanceTests
	{	
		private var mainApp:FRL;
		
		[Before]
		public function setUp():void
		{
			mainApp = new FRL();
		}
		
		[After]
		public function tearDown():void
		{
		}

		[Test]
		public function whenGameRuns_canSeeMaze():void
		{
			var mazeView:TextField = getMazeView();
			
			var display:String = mazeView.text;
			
			assertThat(display, containsString('###'));
			assertThat(display, containsString('...'));
		}

		private function getMazeView():TextField
		{
			return getView().getChildByName("maze") as TextField;
		}
		
		private function getView():TextFieldViewRenderer
		{
			return mainApp.getChildByName("view") as TextFieldViewRenderer;
		}
		
	}
}