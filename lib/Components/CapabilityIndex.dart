import 'package:flutter/material.dart';

class CapabilityIndex extends StatelessWidget {
  final String heading;
  final String participants;
  final Color color;
  final Icon icon;
  const CapabilityIndex({
    Key key, this.heading, this.participants, this.color, this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color:color,
                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: [BoxShadow(color: color,blurRadius: 5)] 
              ),
              child: Center(
                child: icon,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 120,
                    child: Text(heading,style:TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 16),)),
                  //Spacer(),                  
                  Text("$participants ",style:TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 16),),
                  Text("participants",style:TextStyle(color: Colors.grey,fontWeight: FontWeight.w700,fontSize: 16),),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

