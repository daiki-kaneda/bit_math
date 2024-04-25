import 'dart:math';

import 'package:bit_math/models/prob_data.dart';





// biggest value
// level1:1<=<6
// level2:1<=<7
// level3:1<=<8
// level4:1<=<9
// level5:1<=<10
/*
二項の四則演算についての問題をレベルごとに自動生成するためのアイデアは,
1.レベルに対応する最大の値以下の二つの自然数をランダムに生成する(例:level2であれば,7,4など),
2.それらの和と積を求める。(7+4=11,7*4=28),
3.和と積に基づいて、引き算、割り算の式を作る(11-7=4,28/7=4)
4.ランダムに、それら4つの式のうちから一つを選ぶ(例:11-7=4)
5.選んだ式から=以外の文字をランダムに選ぶ(例:1(1)-7=4)
6.選んだ文字を消した問題を作る。具体的には、選んだ文字が数字であれば、その文字を含む数字の文字の選択肢を持つ問題を作り、
選んだ文字が演算子であれば、その文字を選択しに含む問題を作る

問題:
4-2 = 2の'-'を消して、それを問題にした場合、'÷'を選んでも正解なのに、結果は間違いになってしまう
4*0 = 0の4を消す場合も同様だが、0を式に含めなければ、数字を答える問題では答えは常に一つになる

演算子の答えが複数になる場合の式はすべて自然数の場合、証明は省略するが
2+2=4,2*2=4,4-2=2,4/2=2の場合のみ

今のところは四則演算の数字の入力と演算子の入力の問題しか作っていないが、
*/



class ProbGen {
  static ProbData generate({
    required int level,
  }) {
    final random = Random();
    //1<=level<=5
    //1<=m,n<=9
    int m = 1+random.nextInt(level+4);
    int n = 1+random.nextInt(level+4);

    //2+2=4,2*2=4,4-2=2,4/2=2,n*1=n,n/1=nの場合、演算子の答えが重複するので、回避
    if((m==2&&n==2)){
      m=2;
      n=3;
    }
    List<(String,String)> exprs=[];
    exprs = [
      ("$m+$n","${m+n}"),
      ("$m*$n","${m*n}"),
      ("${m+n}-$m","$n"),
      ("${m*n}/$m","$n"),
    ];
    if(m==1||n==1){
      exprs = [
      ("$m+$n","${m+n}"),
      ("${m+n}-$m","$n"),
    ];
    }
    
    final expr = exprs[random.nextInt(exprs.length)];

    final stringLength = expr.$1.length+expr.$2.length;
    final randomIndex = random.nextInt(stringLength);
    if(randomIndex<expr.$1.length){
      final answer = expr.$1[randomIndex];
      return ProbData(
      level, 
      answer: answer, 
      sentence: "${expr.$1.replaceRange(randomIndex, randomIndex+1, "#")} = ${expr.$2}",
      choices: [
        if(['+','-','*','/'].contains(answer))
        ...['+','-','*','/'],
        if(List.generate(10, (i) => '$i').contains(answer))
        ...[
          answer,
          '${random.nextInt(10)}',
          '${random.nextInt(10)}',
          '${random.nextInt(10)}',
        ]
      ]..shuffle()
      );
    }else{
      final answer = expr.$2[randomIndex-expr.$1.length];
      return ProbData(
      level, 
      answer: answer, 
      sentence: "${expr.$1} = ${expr.$2.replaceRange(randomIndex-expr.$1.length, randomIndex-expr.$1.length+1, '#')}",
      choices: [
        if(['+','-','*','/'].contains(answer))
        ...['+','-','*','/'],
        if(List.generate(10, (i) => '$i').contains(answer))
        ...[
          answer,
          '${random.nextInt(10)}',
          '${random.nextInt(10)}',
          '${random.nextInt(10)}',
        ]
      ]..shuffle()
      );
    }
  }
}
