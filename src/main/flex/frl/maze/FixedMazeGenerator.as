package frl.maze
{
	public class FixedMazeGenerator implements MazeGenerator
	{
		private var maze:Maze;
		
		public function FixedMazeGenerator()
		{
			maze = new Maze();
		}

		public function createMaze():Maze
		{
			return maze;
		}
	}
}