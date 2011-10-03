package frl.maze
{
	import flash.geom.Point;
	import flash.geom.Rectangle;
	
	import org.flexunit.asserts.assertNotNull;
	import org.flexunit.asserts.assertTrue;

	public class MazeTest
	{	
		private var maze:Maze;
		
		[Before]
		public function setUp():void
		{
			var walls:MazeWalls = new MazeWalls(); //TODO Mock!
			walls.setEmptyArea(new Rectangle(5, 5, 10, 10));
			maze = new Maze(walls);
		}
		
		[Test]
		public function givenWalls_hasWall() : void
		{
			assertTrue(maze.hasWallAt(new Point(90, 90))); 
		}			
		
		[Test]
		public function playerStartsInEmptySpace() : void
		{
			var playerPosition:Point = maze.getPlayerPosition();
			assertNotNull("null player position!", playerPosition);
			assertTrue(!maze.hasWallAt(playerPosition));
		}
		
	}
}