import 'package:flutter/material.dart';

class karateMenuList extends StatelessWidget {
  karateMenuList(this.ktext,this.ksubtitle);
  var ktext,ksubtitle;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            Center(
              child: Image.asset('Assets/images/logo.png'),
            ),
            ButtonTheme(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              minWidth: 280.0,
              height: 70.0,
              child: RaisedButton(
                color: Colors.red,
                onPressed: () {},
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        ktext,
                        style: TextStyle(color: Colors.white, fontSize: 21.0),
                      ),
                      Text(
                        ksubtitle,
                        style: TextStyle(color: Colors.white, fontSize: 12.0),
                      ),
                    ]),
              ),
            ),
            Container(
              height: 510,
              margin: EdgeInsets.all(16),
              width: double.infinity,
              child: GridView.count(

                padding: EdgeInsets.all(10),
                physics: ScrollPhysics(),

                crossAxisCount: 2,
                childAspectRatio: 160 / 144,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                children: <Widget>[
                  kGridItembox(),
                  kGridItembox(),
                  kGridItembox(),
                  kGridItembox(),
                  kGridItembox(),
                  kGridItembox(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class kGridItembox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.teal[200],
          borderRadius: BorderRadius.all(Radius.circular(40)),
          image: DecorationImage(
              image: AssetImage('Assets/images/child.jpg'),
              fit: BoxFit.cover

          )
      ),
      height: 100,
      width: 100,
      child: Image.asset('Assets/images/clapper.png'),

    );
  }
}
