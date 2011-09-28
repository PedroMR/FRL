package flexUnitTests
{
	import flash.text.TextField;
	
	import org.flexunit.asserts.assertEquals;

	public class FRLTest
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
		public function setViewText_changesText():void
		{
			var text:String = 'my test text';
			frl.setViewText(text);
			
			assertEquals(text, getView().text);
		}
		
		private function getView():TextField
		{
			return frl.getChildByName("view") as TextField
		}

		
	}
}