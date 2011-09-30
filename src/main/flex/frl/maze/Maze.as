package frl.maze
{
	import flash.geom.Point;
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
		
		public function hasWallAt(position:Point) : Boolean
		{
			return !walls.isEmptyAt(position);
		}
	}
}