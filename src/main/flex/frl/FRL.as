package frl
{
	import flash.display.Sprite;
	import flash.text.TextField;
	import flash.text.TextFormat;
	
	import frl.maze.Maze;
	import frl.maze.FixedMazeGenerator;
	
	import frl.view.TextFieldViewRenderer;
	import frl.view.ViewRenderer;
	import frl.maze.MazeGenerator;
	
	public class FRL extends Sprite implements ViewRenderer
	{
		private var viewRenderer:TextFieldViewRenderer;
		private var maze:Maze;

		public function FRL()
		{
			setupView();
			createMaze();
			renderMaze();
		}

		private function createMaze():void
		{
			var mazeGenerator:MazeGenerator = new FixedMazeGenerator();
			maze = mazeGenerator.createMaze();
		}
		
		private function renderMaze():void
		{
			viewRenderer.renderMaze(maze);
		}

		private function setupView():void
		{
			viewRenderer = new TextFieldViewRenderer();
			viewRenderer.name = "view";
			addChild(viewRenderer);
		}
	}
}