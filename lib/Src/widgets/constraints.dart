import 'package:flutter/material.dart';

double homeAwaycontainerwidth(BoxConstraints constraints){

          if(constraints.maxWidth>1200){
            print("its a desktop mode container width");
            // tablet is okay
            return 0.21;
          }
          // for pixel 2
          else if( constraints.maxWidth > 425 && constraints.maxWidth<769 ){
            print("mode ==> tablet");
            return 0.18;
          }

          else if( constraints.maxWidth > 350 && constraints.maxWidth<416 ){
            print("mode ==> pixel and iphone 6-10 ");
            return 0.12;
          }
          else if( constraints.maxWidth > 315 && constraints.maxWidth<340 ){
            print("mode ==> pixel and iphone 5s ");
            return 0.12;
          }

          
          return 0.21;
          
        }