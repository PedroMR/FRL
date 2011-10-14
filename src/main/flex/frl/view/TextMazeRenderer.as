package frl.view
{
	import flash.geom.Point;
	import flash.geom.Rectangle;
	
	import frl.maze.Maze;
	import frl.maze.MazeWalls;

	public class TextMazeRenderer
	{
		public var renderWallsOnly:Boolean = false;
		
		public function TextMazeRenderer()
		{
		}

		public function renderMaze(maze:Maze):String
		{
			var viewBounds:Rectangle = maze.getDimensions();
			var text:String = "";
			
			var position:Point = new Point();
			for (var y:int = viewBounds.top - 1; y <= viewBounds.bottom; y++)
			{
				for (var x:int = viewBounds.left - 1; x <= viewBounds.right; x++)
				{
					position.x = x; position.y = y;
					var character:String = getCharacterFor(maze, position);
					text += character;
				}
				text += '\n';
			}
			
			return text;
		}

		private function getCharacterFor(maze:Maze, position:Point):String
		{
			if (!renderWallsOnly)
			{
				if (maze.getPlayerPosition().equals(position))
				{
					return '@';
				}
			}
			if (maze.hasWallAt(position))
			{
				return "#";
			}
			return ".";
		}
	}
}