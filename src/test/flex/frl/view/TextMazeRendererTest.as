package frl.view
{
	import flash.geom.Point;
	import flash.geom.Rectangle;
	
	import frl.maze.Maze;
	import frl.maze.MazeWalls;
	
	import org.flexunit.asserts.assertEquals;

	public class TextMazeRendererTest
	{		
		private var textMazeRenderer:TextMazeRenderer;
		private var mazeWalls:MazeWalls;
		private var mazeText:String;

		[Before]
		public function setUp():void
		{
			textMazeRenderer = new TextMazeRenderer();
			textMazeRenderer.renderWallsOnly = true;
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
			mazeText = textMazeRenderer.renderMaze(new Maze(mazeWalls));
		}


		private function createMaze():void
		{
			mazeWalls = new MazeWalls();
		}

		[Test]
		public function renderSingleCellMazeAs1x1RoomWithPlayer() : void
		{
			createMaze();
			mazeWalls.setEmpty(new Point(0,0));
			textMazeRenderer.renderWallsOnly = false;
			
			checkResultIs("###\n#@#\n###\n");
		}

		[Test]
		public function renderSingleCellMazeOffCornerAs1x1Room() : void
		{
			createMaze();
			mazeWalls.setEmpty(new Point(10,10));
			
			checkResultIs("###\n#.#\n###\n");
		}

		[Test]
		public function renderARoom() : void
		{
			createMaze();
			mazeWalls.setEmptyArea(new Rectangle(0, 1, 3, 2));
			
			checkResultIs("#####\n#...#\n#...#\n#####\n");
		}

		[Test]
		public function renderTwoRooms() : void
		{
			createMaze();
			mazeWalls.setEmptyArea(new Rectangle(0, 1, 3, 2));
			mazeWalls.setEmptyArea(new Rectangle(6, 0, 2, 2));
			
			checkResultIs("##########\n#######..#\n#...###..#\n#...######\n##########\n");
		}
	}
}