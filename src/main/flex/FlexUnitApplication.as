package
{
	import Array;
	
	import acceptance.AcceptanceTests;
	
	import flash.display.Sprite;
	
	import flexunit.flexui.FlexUnitTestRunnerUIAS;
	
	import frl.maze.FixedMazeGeneratorTest;
	import frl.maze.MazeWallsTest;
	import frl.view.TextFieldViewRendererTest;
	import frl.view.TextMazeRendererTest;
	
	public class FlexUnitApplication extends Sprite
	{
		public function FlexUnitApplication()
		{
			onCreationComplete();
		}
		
		private function onCreationComplete():void
		{
			var testRunner:FlexUnitTestRunnerUIAS=new FlexUnitTestRunnerUIAS();
			this.addChild(testRunner); 
			testRunner.runWithFlexUnit4Runner(currentRunTestSuite(), "FRL");
		}
		
		public function currentRunTestSuite():Array
		{
			var testsToRun:Array = new Array();
			testsToRun.push(acceptance.AcceptanceTests);
			testsToRun.push(frl.view.TextFieldViewRendererTest);
			testsToRun.push(frl.view.TextMazeRendererTest);
			testsToRun.push(frl.maze.FixedMazeGeneratorTest);
			testsToRun.push(frl.maze.MazeWallsTest);
			return testsToRun;
		}
	}
}