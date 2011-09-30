package frl.maze
{
	import flash.geom.Rectangle;

	public class FixedMazeWallGenerator implements MazeWallGenerator
	{
		private var mazeWalls:MazeWalls;
		
		public function FixedMazeWallGenerator()
		{
			mazeWalls = new MazeWalls();
			
			mazeWalls.setEmptyArea(new Rectangle(10, 3, 5, 8));
		}

		public function createMazeWalls():MazeWalls
		{
			return mazeWalls;
		}
	}
}