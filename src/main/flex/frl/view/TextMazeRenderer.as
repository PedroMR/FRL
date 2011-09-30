package frl.view
{
	import flash.geom.Rectangle;
	
	import frl.maze.Maze;
	import frl.maze.MazeWalls;

	public class TextMazeRenderer
	{
		public function TextMazeRenderer()
		{
		}

		public function renderMaze(maze:Maze):String
		{
			var viewBounds:Rectangle = maze.getDimensions();
			var text:String = "";
			
			for (var y:int = viewBounds.top - 1; y <= viewBounds.bottom; y++)
			{
				for (var x:int = viewBounds.left - 1; x <= viewBounds.right; x++)
				{
					var character:String = getCharacterFor(maze, x, y);
					text += character;
				}
				text += '\n';
			}
			
			return text;
		}

		private function getCharacterFor(maze:Maze, x:int, y:int):String
		{
			if (maze.hasWallAt(x, y))
			{
				return "#";
			}
			return ".";
		}
	}
}