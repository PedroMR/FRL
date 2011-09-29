package frl.maze
{
	import flash.geom.Rectangle;

	public class FixedMazeGenerator implements MazeGenerator
	{
		private var maze:Maze;
		
		public function FixedMazeGenerator()
		{
			maze = new Maze();
			
			maze.setEmptyArea(new Rectangle(10, 3, 5, 8));
		}

		public function createMaze():Maze
		{
			return maze;
		}
	}
}