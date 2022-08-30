import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var tfControl = TextEditingController();
  var tfResult = TextEditingController();
  bool resultVisibility = false;
  bool isResultShown = false;
  get screenHeight => MediaQuery.of(context).size.height;
  get screenWidth => MediaQuery.of(context).size.width;
  double? calculationFontSize;
  double? resultFontSize;

  Future<void> updateResult() async {
    var numbers = tfControl.text.split("+");
    int result = 0;
    for(var number in numbers){
      if(number != "") result+=int.parse(number);
    }
    resultVisibility = true;
    tfResult.text = "= $result";
  }
  void _updateResultFontSize() async {
    if(isResultShown){
      calculationFontSize = (screenHeight+screenWidth)/60;
      resultFontSize = (screenHeight+screenWidth)/30;
    }else{
      calculationFontSize = (screenHeight+screenWidth)/30;
      resultFontSize = (screenHeight+screenWidth)/60;
    }
  }

  @override
  void initState() {
    super.initState();
    tfControl.text = "0";

  }

  @override
  Widget build(BuildContext context) {

   double numberButtonFontSize = (screenHeight+screenWidth)/40;

   _updateResultFontSize();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Addition Calculator"),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.end,crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(tfControl.text,style: TextStyle(fontSize: calculationFontSize),),
            Visibility(visible: resultVisibility,
              child: Text(tfResult.text,style: TextStyle(fontSize: resultFontSize),),
            ),
            Column(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(width: screenWidth/4,height: screenWidth/4,
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: ElevatedButton(onPressed: (){
                            setState(() {
                              if(isResultShown){
                                tfControl.text = "7";
                                resultVisibility = false;
                                isResultShown = false;
                              }else{
                                tfControl.text == "0" ?
                                tfControl.text = "7" :
                                tfControl.text = "${tfControl.text}7" ;
                                updateResult();
                              }
                            });
                          }, child: Text("7",style: TextStyle(fontSize: numberButtonFontSize),) ),
                        )),
                    SizedBox(width: screenWidth/4,height: screenWidth/4,
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: ElevatedButton(onPressed: (){
                            setState(() {
                              if(isResultShown){
                                tfControl.text = "8";
                                resultVisibility = false;
                                isResultShown = false;
                              }else{
                                tfControl.text == "0" ?
                                tfControl.text = "8" :
                                tfControl.text = "${tfControl.text}8" ;
                                updateResult();
                              }
                            });
                          }, child: Text("8",style: TextStyle(fontSize: numberButtonFontSize),) ),
                        )),
                    SizedBox(width: screenWidth/4,height: screenWidth/4,
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: ElevatedButton(onPressed: (){
                            setState(() {
                              if(isResultShown){
                                tfControl.text = "9";
                                resultVisibility = false;
                                isResultShown = false;
                              }else{
                                tfControl.text == "0" ?
                                tfControl.text = "9" :
                                tfControl.text = "${tfControl.text}9" ;
                                updateResult();
                              }
                            });
                          }, child: Text("9",style: TextStyle(fontSize: numberButtonFontSize),) ),
                        )),
                    SizedBox(width: screenWidth/4,height: screenWidth/4,
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: ElevatedButton(onPressed: (){
                            setState(() {
                              tfControl.text = "0";
                              resultVisibility = false;
                              isResultShown = false;
                            });
                          }, child: Text("C",style: TextStyle(fontSize: numberButtonFontSize),) ),
                        )),
                  ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(width: screenWidth/4,height: screenWidth/4,
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: ElevatedButton(onPressed: (){
                            setState(() {
                              if(isResultShown){
                                tfControl.text = "4";
                                resultVisibility = false;
                                isResultShown = false;
                              }else{
                                tfControl.text == "0" ?
                                tfControl.text = "4" :
                                tfControl.text = "${tfControl.text}4" ;
                                updateResult();
                              }
                            });
                          }, child: Text("4",style: TextStyle(fontSize: numberButtonFontSize),) ),
                        )),
                    SizedBox(width: screenWidth/4,height: screenWidth/4,
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: ElevatedButton(onPressed: (){
                            setState(() {
                              if(isResultShown){
                                tfControl.text = "5";
                                resultVisibility = false;
                                isResultShown = false;
                              }else{
                                tfControl.text == "0" ?
                                tfControl.text = "5" :
                                tfControl.text = "${tfControl.text}5" ;
                                updateResult();
                              }
                            });
                          }, child: Text("5",style: TextStyle(fontSize: numberButtonFontSize),) ),
                        )),
                    SizedBox(width: screenWidth/4,height: screenWidth/4,
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: ElevatedButton(onPressed: (){
                            setState(() {
                              if(isResultShown){
                                tfControl.text = "6";
                                resultVisibility = false;
                                isResultShown = false;
                              }else{
                                tfControl.text == "0" ?
                                tfControl.text = "6" :
                                tfControl.text = "${tfControl.text}6" ;
                                updateResult();
                              }
                            });
                          }, child: Text("6",style: TextStyle(fontSize: numberButtonFontSize),) ),
                        )),
                    SizedBox(width: screenWidth/4,height: screenWidth/4,
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: ElevatedButton(onPressed: (){
                            setState(() {
                              tfControl.text == "0" || tfControl.text.length ==1 || tfControl.text == "0+" ?
                              {tfControl.text = "0", resultVisibility = false} :
                              {tfControl.text = tfControl.text.substring(0,tfControl.text.length-1),updateResult()} ;
                            });
                          }, child: Icon(Icons.backspace_outlined,size:numberButtonFontSize,) ),
                        )),
                  ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(width: screenWidth/4,height: screenWidth/4,
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: ElevatedButton(onPressed: (){
                            setState(() {
                              if(isResultShown){
                                tfControl.text = "1";
                                resultVisibility = false;
                                isResultShown = false;
                              }else{
                                tfControl.text == "0" ?
                                tfControl.text = "1" :
                                tfControl.text = "${tfControl.text}1" ;
                                updateResult();
                              }
                            });
                          }, child: Text("1",style: TextStyle(fontSize: numberButtonFontSize),) ),
                        )),
                    SizedBox(width: screenWidth/4,height: screenWidth/4,
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: ElevatedButton(onPressed: (){
                            setState(() {
                              if(isResultShown){
                                tfControl.text = "2";
                                resultVisibility = false;
                                isResultShown = false;
                              }else{
                                tfControl.text == "0" ?
                                tfControl.text = "2" :
                                tfControl.text = "${tfControl.text}2" ;
                                updateResult();
                              }
                            });
                          }, child: Text("2",style: TextStyle(fontSize: numberButtonFontSize),) ),
                        )),
                    SizedBox(width: screenWidth/4,height: screenWidth/4,
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: ElevatedButton(onPressed: (){
                            setState(() {
                              if(isResultShown){
                                tfControl.text = "3";
                                resultVisibility = false;
                                isResultShown = false;
                              }else{
                                tfControl.text == "0" ?
                                tfControl.text = "3" :
                                tfControl.text = "${tfControl.text}3" ;
                                updateResult();
                              }
                            });
                          }, child: Text("3",style: TextStyle(fontSize: numberButtonFontSize),) ),
                        )),
                    SizedBox(width: screenWidth/4,height: screenWidth/4,
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: ElevatedButton(onPressed: (){
                            setState(() {
                              tfControl.text[tfControl.text.length-1] == "+" ?
                              null :
                              tfControl.text = "${tfControl.text}+" ;
                            });
                          }, child: Text("+",style: TextStyle(fontSize: numberButtonFontSize),) ),
                        )),
                  ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(width: screenWidth*3/4,height: screenWidth/4,
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: ElevatedButton(onPressed: (){
                            setState(() {
                              if(isResultShown){
                                tfControl.text = "0";
                                resultVisibility = false;
                                isResultShown = false;
                              }else{
                                tfControl.text == "0" || tfControl.text[tfControl.text.length-1] =="+"?
                                null :
                                {tfControl.text = "${tfControl.text}0",updateResult()};
                              }
                            });
                          }, child: Text("0",style: TextStyle(fontSize: numberButtonFontSize),) ),
                        )),
                    SizedBox(width: screenWidth/4,height: screenWidth/4,
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: ElevatedButton(onPressed: (){
                            setState(() {
                              updateResult();
                              isResultShown = true;
                            });
                          }, child: Text("=",style: TextStyle(fontSize: numberButtonFontSize),) ),
                        )),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}




