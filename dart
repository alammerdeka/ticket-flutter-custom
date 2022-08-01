part of 'screens.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(child:
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height/2,
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical:20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text('Trx : 9201122'),
                      Text('01'),
                      Text('11/11/2022')
                    ],),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.airplane_ticket),

                        Icon(Icons.airplane_ticket_outlined),
                      ],),
                  ],
                ),
              ),
              Positioned(
                bottom: 1,
                left: 1,
                right: 1,
                child:  Container(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical:20),
                child: Center(
                  child: Column(
                    children: [
                      Image.network(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/QR_code_for_mobile_English_Wikipedia.svg/1200px-QR_code_for_mobile_English_Wikipedia.svg.png',width: 100,),
                      Text('Rp.24.000')
                    ],
                  ),),
              ),),
              Center(
                child: Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Container(width: 10,height: 30,decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20),)),),
                        DottedLine(
                          direction: Axis.horizontal,
                          lineLength:MediaQuery.of(context).size.width-100,
                          lineThickness: 1.0,
                          dashLength: 4.0,
                          dashColor: Colors.black38,

                          dashRadius: 0.0,
                          dashGapLength: 4.0,
                          dashGapColor: Colors.white,
                          dashGapRadius: 0.0,
                        ),
                      Container(width: 10,height: 30,decoration:BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20),)))
                    ],)
                  ],
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white),
        )
      ),
    );
  }
}
