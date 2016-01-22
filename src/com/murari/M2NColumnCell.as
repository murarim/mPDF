package com.murari
{
	import flash.geom.Point;
	import flash.geom.Rectangle;

	public class M2NColumnCell
	{
		private var _lowerLeftX:Number;
		private var _lowerLeftY:Number;
		private var _upperRightX:Number;
		private var _upperRightY:Number;
		

		public function get lowerLeftX():Number
		{
			return _lowerLeftX;
		}
		public function set lowerLeftX(value:Number):void
		{
			_lowerLeftX = value;
		}

		public function get lowerLeftY():Number
		{
			return _lowerLeftY;
		}
		public function set lowerLeftY(value:Number):void
		{
			_lowerLeftY = value;
		}

		public function get upperRightX():Number
		{
			return _upperRightX;
		}
		public function set upperRightX(value:Number):void
		{
			_upperRightX = value;
		}

		public function get upperRightY():Number
		{
			return _upperRightY;
		}
		public function set upperRightY(value:Number):void
		{
			_upperRightY = value;
		}


		public static function getCellBounds(argPageBounds:Point, argItemRectangle:Rectangle):M2NColumnCell
		{
			var __cellBounds:M2NColumnCell = new M2NColumnCell();
			__cellBounds.lowerLeftX = argItemRectangle.x;
			__cellBounds.lowerLeftY = argPageBounds.y - argItemRectangle.y - argItemRectangle.height;
			__cellBounds.upperRightX = argItemRectangle.x + argItemRectangle.width;
			__cellBounds.upperRightY = argPageBounds.y - argItemRectangle.y;
			///trace (__rect);
			return __cellBounds;
		}
	}
}