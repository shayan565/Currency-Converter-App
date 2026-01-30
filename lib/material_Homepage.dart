import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CorrConverter extends StatefulWidget{
  const CorrConverter({super.key});
  @override
  State<CorrConverter> createState() {
    return _CorrConverterState();
    }
  }

  class _CorrConverterState extends State<CorrConverter>{
    double result=0;
    final TextEditingController  textEditingController  = TextEditingController();
      @override
  Widget build(BuildContext context){
    
    final border = OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.white,
                        style: BorderStyle.solid,
                        width: 2.5
                      ),
                      borderRadius: BorderRadius.circular(60),
                      );
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color.fromARGB(255, 27, 38, 59),
        title: Text("Currency Converter",
        
        style: TextStyle(color: const Color.fromARGB(255, 229, 229, 229),
        fontSize: 40,),
        ),
        centerTitle: true,
        
      ),
      backgroundColor:Color.fromARGB(255, 27, 38, 59),
      
      body: Center(
        child: Padding(
          
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical:10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
             
            children: [
              
                 Text(result!=0 ? "${result.toStringAsFixed(2)} USD" : "${result.toStringAsFixed(0)} USD", 
                 style: TextStyle(color: Color.fromARGB(255, 229, 229, 229), 
                  
                 fontSize: 35, fontStyle: 
                 FontStyle.italic,
                 fontWeight: FontWeight.bold),
                 ),
               
               
                 TextField(
                  controller: textEditingController, 
                    style: TextStyle(color: Colors.black
                    ),
                    
                    decoration: InputDecoration(
                       
                      hintText: "Enter rupees",
                      hintStyle: TextStyle(
                        
                        color: Colors.black,
                        fontSize: 20
                        ),
                      prefixIcon : Icon(
                        Icons.money),
                        prefixIconColor: Colors.black,
                        filled: true,
                        fillColor: Color.fromARGB(255, 46, 196, 182),
                        focusedBorder: border,
                        enabledBorder: border,
                        ),
                        keyboardType: const TextInputType.numberWithOptions(
                          decimal: true
                        ),
                      
                    ),
              SizedBox(height: 10,),
              ElevatedButton(
                
                onPressed: (){
                  if(kDebugMode){
                    result = double.parse(textEditingController.text)/285.65;
                    print("converted amount is : $result");
              
                  }
                  setState(() {
                    result = double.parse(textEditingController.text)/285.65;
                  });
                  
                },
                
                style: ElevatedButton.styleFrom(
                  
                  elevation:2550,
                  backgroundColor:Color.fromARGB(255, 46, 196, 182),
                  foregroundColor: Colors.black,
                   minimumSize: Size(1175, 60),
                    side: border.borderSide,
                //   shape: RoundedRectangleBorder(
                //     borderRadius: BorderRadius.circular(60)
                // ),
                ),
                  // child: Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 0, vertical:10),
                    child: const Text("Convert",
                    style: TextStyle(
                      fontSize: 20
                    ),
                    ),
                  // ),
                
              
               )
            ],
          ),
        ),
        ),
      );
  }
} 
