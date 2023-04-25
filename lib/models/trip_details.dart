

class Trip {
   final String transferCompanyName;
  final String transferCompanyLogo;
  final String tripDate;
  final String attendanceTime;
  final String waitingTime;
  final String startingTime;
  final String formCity;
  final String toCity;
  final String transportType;
  final int price;

  Trip(
    {required this.transferCompanyName,
    required this.transferCompanyLogo,
   required this.tripDate,
   required this.attendanceTime,
   required this.waitingTime,
  required  this.startingTime,
   required this.formCity,
  required  this.toCity,
  required  this.transportType,
   required this.price,}
  );
}
