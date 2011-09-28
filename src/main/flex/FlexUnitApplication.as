package
{
	import Array;
	
	import acceptance.AcceptanceTests;
	
	import flash.display.Sprite;
	
	import flexUnitTests.FRLTest;
	
	import flexunit.flexui.FlexUnitTestRunnerUIAS;
	
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
			testsToRun.push(flexUnitTests.FRLTest);
			return testsToRun;
		}
	}
}