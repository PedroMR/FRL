package frl.maze
{
	import org.flexunit.asserts.assertNotNull;

	public class FixedMazeGeneratorTest
	{		
		private var mazeGen:FixedMazeWallGenerator;
		
		[Before]
		public function setUp():void
		{
			mazeGen = new FixedMazeWallGenerator();
		}

		[Test]
		public function createMaze_returnsNonNullMaze():void
		{
			assertNotNull(mazeGen.createMazeWalls());
		}
		
	}
}