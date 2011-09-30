package acceptance
{
	import flash.text.TextField;
	
	import frl.FRL;
	import frl.view.TextFieldViewRenderer;
	import frl.view.ViewRenderer;
	
	import org.flexunit.assertThat;
	import org.hamcrest.text.containsString;
	import org.hamcrest.text.re;

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
			var display:String = getMazeDisplay();
			
			assertThat(display, containsString('###'));
			assertThat(display, containsString('\.\.\.'));
		}

		private function getMazeDisplay():String
		{
			var mazeView:TextField = getMazeView();
		
			var display:String = mazeView.text;
			return display;
		}


		private function getMazeView():TextField
		{
			return getView().getChildByName("maze") as TextField;
		}
		
		private function getView():TextFieldViewRenderer
		{
			return mainApp.getChildByName("view") as TextFieldViewRenderer;
		}

		[Test]
		public function whenGameRuns_canSeeAvatarInMaze() : void
		{
			assertThat(getMazeDisplay(), re(/[\.#]@[\.#]/));
		}
		/*
		[Test]
		public function whenGameRuns_canOnlySeeSpacesAroundYou() : void
		{
			
		}
		*/
		
	}
}