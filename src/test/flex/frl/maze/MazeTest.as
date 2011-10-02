package frl.maze
{
	public class MazeTest
	{	
		private var maze:Maze;
		
		[Before]
		public function setUp():void
		{
			var walls:MazeWalls; //TODO Mock!
			maze = new Maze(walls);
		}
		
		
	}
}