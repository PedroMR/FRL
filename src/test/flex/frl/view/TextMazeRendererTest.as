package frl.view
{
	import flash.geom.Rectangle;
	
	import frl.maze.Maze;
	
	import org.flexunit.asserts.assertEquals;

	public class TextMazeRendererTest
	{		
		private var textMazeRenderer:TextMazeRenderer;
		private var maze:Maze;
		private var mazeText:String;

		[Before]
		public function setUp():void
		{
			textMazeRenderer = new TextMazeRenderer();
		}
		
		[Test]
		public function renderEmptyMazeAs3x3Walls() : void
		{
			createMaze();			
			
			var expectedResult:String = "###\n###\n###\n";
			checkResultIs(expectedResult);
		}

		private function checkResultIs(expectedResult:String):void
		{
			if (mazeText == null)
			{
				renderMaze();
			}
			assertEquals(expectedResult, mazeText);
		}


		private function renderMaze():void
		{
			mazeText = textMazeRenderer.renderMaze(maze);
		}


		private function createMaze():void
		{
			maze = new Maze();
		}

		[Test]
		public function renderSingleCellMazeAs1x1Room() : void
		{
			createMaze();
			maze.setEmpty(0,0);
			
			checkResultIs("###\n#.#\n###\n");
		}

		[Test]
		public function renderSingleCellMazeOffCornerAs1x1Room() : void
		{
			createMaze();
			maze.setEmpty(10,10);
			
			checkResultIs("###\n#.#\n###\n");
		}

		[Test]
		public function renderARoom() : void
		{
			createMaze();
			maze.setEmptyArea(new Rectangle(0, 1, 3, 2));
			
			checkResultIs("#####\n#...#\n#...#\n#####\n");
		}

		[Test]
		public function renderTwoRooms() : void
		{
			createMaze();
			maze.setEmptyArea(new Rectangle(0, 1, 3, 2));
			maze.setEmptyArea(new Rectangle(6, 0, 2, 2));
			
			checkResultIs("##########\n#######..#\n#...###..#\n#...######\n##########\n");
		}
	}
}