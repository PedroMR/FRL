package frl.maze
{
	import flash.geom.Rectangle;

	public class Maze
	{
		private var dimensions:Rectangle;
		
		private var rows:Array = [];

		public function Maze()
		{
			dimensions = new Rectangle(0, 0, 1, 1);
		}
		
		public function setEmpty(x:int, y:int) : void
		{
			if (!rows[y])
			{
				rows[y] = [];
			}
			rows[y][x] = true;
			
			dimensions.right = Math.max(dimensions.right, x+1);
			dimensions.left = Math.min(dimensions.left, x);
			dimensions.bottom = Math.max(dimensions.bottom, y+1);
			dimensions.top = Math.min(dimensions.top, y);
		}
		
		public function isEmptyAt(x:int, y:int) : Boolean
		{
			return rows[y] && rows[y][x];
		}
		
		public function getDimensions():Rectangle
		{
			return dimensions;
		}
	}
}