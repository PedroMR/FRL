package frl.view
{
	import flash.text.TextField;
	
	import org.flexunit.asserts.assertEquals;
	import org.flexunit.asserts.assertNotNull;

	public class TextFieldViewRendererTest
	{		
		private var textFieldViewRenderer:TextFieldViewRenderer;

		[Before]
		public function setUp():void
		{
			textFieldViewRenderer = new TextFieldViewRenderer(new TextMazeRenderer());
			
		}
		
		[Test]
		public function hasMazeViewTextField():void
		{
			 assertNotNull(getViewText());
		}
		
		private function getViewText():String
		{
			var textField:TextField = textFieldViewRenderer.getChildByName(TextFieldViewRenderer.MAZE_VIEW_NAME) as TextField;
			return textField.text;
		}
		
		
	}
}