package frl
{
	import flash.display.Sprite;
	import flash.text.TextField;
	import flash.text.TextFormat;
	
	import frl.maze.FixedMazeWallGenerator;
	import frl.maze.Maze;
	import frl.maze.MazeWallGenerator;
	import frl.maze.MazeWalls;
	import frl.view.TextFieldViewRenderer;
	import frl.view.TextMazeRenderer;
	import frl.view.ViewRenderer;
	
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
			var mazeGenerator:MazeWallGenerator = new FixedMazeWallGenerator();
			maze = new Maze(mazeGenerator.createMazeWalls());
		}
		
		private function renderMaze():void
		{
			viewRenderer.renderMaze(maze);
		}

		private function setupView():void
		{
			viewRenderer = new TextFieldViewRenderer(new TextMazeRenderer());
			viewRenderer.name = "view";
			addChild(viewRenderer);
		}
	}
}