package frl.maze
{
	import org.flexunit.asserts.assertNotNull;

	public class FixedMazeGeneratorTest
	{		
		private var mazeGen:FixedMazeGenerator;
		
		[Before]
		public function setUp():void
		{
			mazeGen = new FixedMazeGenerator();
		}

		[Test]
		public function createMaze_returnsNonNullMaze():void
		{
			assertNotNull(mazeGen.createMaze());
		}
		
	}
}