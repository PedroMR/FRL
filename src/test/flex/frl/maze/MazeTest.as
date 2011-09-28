package frl.maze
{
	import flash.geom.Rectangle;
	
	import org.flexunit.assertThat;
	import org.flexunit.asserts.assertFalse;
	import org.flexunit.asserts.assertTrue;
	import org.hamcrest.object.equalTo;

	public class MazeTest
	{	
		private var maze:Maze;
		
		[Before]
		public function setUp():void
		{
			maze = new Maze();
		}
		
		[Test]
		public function mazeStartsWithSingleTile() : void
		{
			assertTrue(maze.getDimensions().equals(new Rectangle(0,0,1,1)));
		}
		
		[Test]
		public function addingSpaceRightExtendsMazeWidth() : void
		{
			maze.setEmpty(1, 0);
			assertTrue(maze.getDimensions().equals(new Rectangle(0, 0, 2, 1)));
		}
		
		[Test]
		public function addingSpaceDownExtendsMazeHeight() : void
		{
			maze.setEmpty(0, 1);
			assertTrue(maze.getDimensions().equals(new Rectangle(0, 0, 1, 2)));
		}
		
		[Test]
		public function tilesAreWallsByDefault() : void
		{
			assertFalse(maze.isEmptyAt(0, 0));
			assertFalse(maze.isEmptyAt(99, 99));
		}
		
		[Test]
		public function tilesSetAsEmptyAreEmpty() : void
		{
			maze.setEmpty(5, 5);
			assertTrue(maze.isEmptyAt(5, 5));
		}
	}
}