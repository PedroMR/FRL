package frl.maze
{
	import flash.geom.Rectangle;

	public class Maze
	{
		private var walls:MazeWalls;
		
		public function Maze(walls : MazeWalls)
		{
			this.walls = walls;
		}

		public function getDimensions():Rectangle
		{
			return walls.getDimensions();
		}
		
		public function hasWallAt(x:int, y:int) : Boolean
		{
			return !walls.isEmptyAt(x, y);
		}
	}
}