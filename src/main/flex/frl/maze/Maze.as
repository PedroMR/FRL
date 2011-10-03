package frl.maze
{
	import flash.geom.Point;
	import flash.geom.Rectangle;

	public class Maze
	{
		private var walls:MazeWalls;
		private var playerPosition:Point;
		
		public function Maze(walls : MazeWalls)
		{
			this.walls = walls;
			
			setRandomPlayerPosition();
		}

		private function setRandomPlayerPosition():void
		{
			var bounds:Rectangle = walls.getDimensions();
			
			var position:Point = new Point();
			for (var y:int = bounds.top; y < bounds.bottom; y++)
			{
				for (var x:int = bounds.left; x < bounds.right; x++)
				{
					position.x = x; position.y = y;
					if (walls.isEmptyAt(position))
					{
						playerPosition = position.clone();
						return;
					}
				}
			}
		}

		public function getDimensions():Rectangle
		{
			return walls.getDimensions();
		}
		
		public function hasWallAt(position:Point) : Boolean
		{
			return !walls.isEmptyAt(position);
		}

		public function getPlayerPosition():Point
		{
			return playerPosition.clone();
		}
	}
}