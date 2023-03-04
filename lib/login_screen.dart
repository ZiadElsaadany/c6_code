import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:textfield_validation_c6/home_screen.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({Key? key}) : super(key: key);
GlobalKey<FormState>  formKey =  GlobalKey();

String ?  email ;
String ?  pass ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text("Login Screen"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 30.0),
        child: Form(
          key:formKey ,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
    TextFormField(
      validator: (value){

        //
        // email == not value
        if(value == null || value.isEmpty) {
          return  "email is required"  ; // display
        }else{
          //  email =cbljvowv

          return null;

        }

      },

      decoration: InputDecoration(

          hintText: "please enter your email",
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              color: Colors.black,
              width: 1,
            )
          ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                  color: Colors.green,
                  width:1 ,
                )
            ),
          prefixIcon: const Icon(Icons.person),
          suffixIcon: const Icon(Icons.email)
          //  prefix: Icon(Icons.person)
           // focusedBorder: ,
      ),
      // onFieldSubmitted: (value){
      //   email = value;  // ziad@gmail.com
      //   print (email);
      // },

      onChanged: ( value) {
        email =value;
        print (email) ;
      },
    ),

      SizedBox(
          height: 15,
      ),

      TextFormField(
        // onFieldSubmitted: (value) {
        //   pass = value;
        //   print (pass);
        //
        // },

        onChanged: ( value)  {
          pass = value ;
          print (pass) ;
          //pass =   m

          // pass = mo

          // pass =mo " "
          // pass = mo s
          // pass  = mo sa
        },
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "password is required";
          } else if (value.length < 9) {
            return "  password must be >=9 ";
          }else{
            return  null;
          }
        }
           ,
                decoration: InputDecoration(
                    hintText: "please enter your password",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 1 ,
                        )
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                          color: Colors.green,
                          width: 1 ,
                        )
                    ),
                    prefixIcon: const Icon(Icons.person),
                    suffixIcon: const Icon(Icons.remove_red_eye)
                  //  prefix: Icon(Icons.person)
                  // focusedBorder: ,
                ),
              ),
              SizedBox(
                height: 15,
              ),

    MaterialButton(
      onPressed: ( ) {

        if( formKey.currentState!.validate()  ==true  ){
          Navigator.push(context, MaterialPageRoute(
              builder: (context ) {
                return   HomeScreen(
                  email:email! ,
                  password:pass! ,
                )   ;
              }

          ));
        }

    }  ,
    child:  Text("Login",

      style: TextStyle (
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18
      ),

    ),
      color: Colors.blue,
    )

            ],
          ),
        ),
      ),
    );
  }
}

// email  =  jabacobcd
// password = s;jvpsnvs
// button -->  if(email , pass)

// validation    --> check --> values textFormField

//    InkWell =  GestureDetector