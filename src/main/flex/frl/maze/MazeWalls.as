package frl.maze
{
	import flash.geom.Point;
	import flash.geom.Rectangle;

	public class MazeWalls
	{
		private var dimensions:Rectangle;
		
		private var rows:Array = [];

		public function MazeWalls()
		{
			dimensions = null;
		}
		
		public function setEmpty(position : Point) : void
		{
			var x:int = position.x;
			var y:int = position.y;
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
		
		public function isEmptyAt(position:Point) : Boolean
		{
			var x:int = position.x;
			var y:int = position.y;
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
			var position:Point = new Point();
			for (var y:int = area.top; y < area.bottom; y++) {
				for (var x:int = area.left; x < area.right; x++) {
					position.x = x; position.y = y;
					setEmpty(position);
				}
			}
		}
	}
}