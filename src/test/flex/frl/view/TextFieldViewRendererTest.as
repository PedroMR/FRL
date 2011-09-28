package frl.view
{
	import flash.text.TextField;
	
	import org.flexunit.asserts.assertEquals;

	public class TextFieldViewRendererTest
	{		
		private var textFieldViewRenderer:TextFieldViewRenderer;

		[Before]
		public function setUp():void
		{
			textFieldViewRenderer = new TextFieldViewRenderer();
			
		}
		
		[Test]
		public function hasViewTextField():void
		{
			 
		}
		
		private function getViewText():String
		{
			var textField:TextField = textFieldViewRenderer.getChildByName(TextFieldViewRenderer.MAZE_VIEW_NAME) as TextField;
			return textField.text;
		}
		
		
	}
}