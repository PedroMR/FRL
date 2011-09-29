package frl.view
{
	import flash.geom.Rectangle;
	
	import frl.maze.Maze;

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
					text += maze.isEmptyAt(x, y) ? "." : "#";
				}
				text += '\n';
			}
			
			return text;
		}
	}
}