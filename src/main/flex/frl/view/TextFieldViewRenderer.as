package frl.view
{
	import flash.display.Sprite;
	import flash.text.TextField;
	import flash.text.TextFormat;
	
	import frl.maze.Maze;

	public class TextFieldViewRenderer extends Sprite implements ViewRenderer
	{
		public static const MAZE_VIEW_NAME:String = "maze";

		private var mazeTF:TextField;

		public function TextFieldViewRenderer()
		{
			super();
			
			mazeTF = new TextField();
			mazeTF.name = MAZE_VIEW_NAME;
			var textFormat:TextFormat = new TextFormat();
			textFormat.font = "Consolas";
			textFormat.color = 0x33DD33;
			mazeTF.defaultTextFormat = textFormat;
			mazeTF.backgroundColor = 0x000000;
			mazeTF.background = true;
			mazeTF.width = 640;
			mazeTF.height = 480;
			
			addChild(mazeTF);	
		}

		private function setViewText(text:String):void
		{
			mazeTF.text = text;
		}

		public function renderMaze(maze:Maze):void
		{
			// render maze as ASCII through setViewText
		}
	}
}