package
{
	import flash.display.Sprite;
	import flash.text.TextField;
	import flash.text.TextFormat;
	
	public class FRL extends Sprite
	{
		private var view:TextField;

		public function FRL()
		{
			setupView();
		}

		public function setViewText(text:String):void
		{
			view.text = text;
		}

		private function setupView():void
		{
			view = new TextField();
			view.name = "view";
			var textFormat:TextFormat = new TextFormat();
			textFormat.font = "Consolas";
			textFormat.color = 0x33DD33;
			view.defaultTextFormat = textFormat;
			view.backgroundColor = 0x000000;
			view.background = true;
			view.width = 640;
			view.height = 480;
			
			addChild(view);
		}
	}
}