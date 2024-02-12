class NeighborItem  {
  final String time;
  final String userNm;
  final String agree;
  final String content;
  final bool isNear;

  NeighborItem({this.isNear = true, required this.time, required this.userNm, required this.agree, required this.content});
}