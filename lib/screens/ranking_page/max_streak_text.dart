
import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/effects.dart';
import 'package:flutter/material.dart';

//TODO:implement
// class HintText extends Component{

//   HintText({required double x,required double y})
//   :gridPosition=Vector2(x, y);

//   final Vector2 gridPosition;

//   late String message;
//   @override
//   FutureOr<void> onLoad() {
//     final TextPaint textPaint = TextPaint(
//     style: const TextStyle(
//       color: Color.fromRGBO(207,198,184, 1),fontSize: 14,
//     //fontFamily:'Jersey 15'
//     )
//    );
//     final sentence =  
//     // Sentence(gridPosition.x, gridPosition.y, str: 'Hit your head on correct block!'.toUpperCase(), direction: SentenceDirection.horizontal);
//     TextComponent(
//       anchor: Anchor.center,
//       position: Vector2(gridPosition.x*16, gridPosition.y*16),
//       text: 'Hit your head on correct block!',
//       textRenderer:textPaint
//       );

  
//     add(
//        sentence
//     );
//     sentence.add(
//       SequenceEffect([
//         ScaleEffect.by(Vector2.all(0.9), 
//         EffectController(duration: 1.0,
//         alternate: true,
//         repeatCount: 3)),
//         ScaleEffect.by(Vector2.all(0), 
//         EffectController(duration: 1.0,
//         ),onComplete: ()=>remove(sentence))
//       ])
//     );
//     return super.onLoad();
//   }

  
// }