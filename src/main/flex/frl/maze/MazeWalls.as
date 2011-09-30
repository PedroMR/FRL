package frl.maze
{
	import flash.geom.Rectangle;

	public class MazeWalls
	{
		private var dimensions:Rectangle;
		
		private var rows:Array = [];

		public function MazeWalls()
		{
			dimensions = null;
		}
		
		public function setEmpty(x:int, y:int) : void
		{
			if (!rows[y])
			{
				rows[y] = [];
			}
			rows[y][x] = true;
			
			if (dimensions == null)
			{
				dimensions = new Rectangle(x, y, 1, 1);
			}
			else
			{
				dimensions.right = Math.max(dimensions.right, x+1);
				dimensions.left = Math.min(dimensions.left, x);
				dimensions.bottom = Math.max(dimensions.bottom, y+1);
				dimensions.top = Math.min(dimensions.top, y);
			}
		}
		
		public function isEmptyAt(x:int, y:int) : Boolean
		{
			return rows[y] && rows[y][x];
		}
		
		public function getDimensions():Rectangle
		{
			if (dimensions == null)
			{
				return new Rectangle(0, 0, 1, 1);
			}
			
			return dimensions.clone();
		}

		public function setEmptyArea(area:Rectangle):void
		{
			for (var y:int = area.top; y < area.bottom; y++) {
				for (var x:int = area.left; x < area.right; x++) {
					setEmpty(x, y);
				}
			}
		}
	}
}