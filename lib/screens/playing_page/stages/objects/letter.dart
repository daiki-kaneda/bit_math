import 'dart:async';
import 'dart:math';
import 'dart:ui';

import 'package:bit_math/screens/playing_page/stages/has_path_effect.dart';
import 'package:bit_math/screens/playing_page/stages/stage_block.dart';
import 'package:bit_math/screens/playing_page/stages/stage_object.dart';
import 'package:bit_math/utils/sprite_util.dart';
import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flame/effects.dart';

enum LetterStatus {
  dig0,
  dig1,
  dig2,
  dig3,
  dig4,
  dig5,
  dig6,
  dig7,
  dig8,
  dig9,
  add,
  sub,
  mul,
  div,
  eq,
  vEq,
  period,
  bang,
  question,
  greaterThan,
  lessThan,
  percent,
  letA,
  letB,
  letC,
  letD,
  letE,
  letF,
  letG,
  letH,
  letI,
  letJ,
  letK,
  letL,
  letM,
  letN,
  letO,
  letP,
  letQ,
  letR,
  letS,
  letT,
  letU,
  letV,
  letW,
  letX,
  letY,
  letZ,
  rArrow,
  lArrow,
  tArrow,
  bArrow,
  o,
  x,
  lParen,
  rParen,
  tParren,
  bParren,
  undo,
  colon,
  home,
  crown,
  aligator;

  static List<String> get supportedCher=>[
    '0', '1', '2', '3', '4', '5', '6', '7', '8', '9',
    '+', '-', '*', '/', '=', '~', '.', '!', '?',
    '>', '<', '%', 'X', 'Y', 'Z', '→', '↓', '←', '↑',
    'o', 'x', '(', ')', '{', '}', 'u',
    'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K',
    'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W',
    '@', ':','c','a'
  ];
}

class LetterTile extends SpriteComponent
    with StageBlock
    implements StageObject, HasPathEffect {
  LetterTile(double x, double y,
      {required this.status,
      this.letterSize = 16,
      this.path,
      this.pathAlternate = true,
      this.pathDuration = 2.5})
      : gridPosition = Vector2(x, y),
        super(size: Vector2.all(16));

  @override
  final Vector2 gridPosition;

  @override
  final Vector2 velocity = Vector2.zero();

  @override
  Path? path;

  @override
  final double pathDuration;

  @override
  final bool pathAlternate;

  final LetterStatus status;

  final double letterSize;

  @override
  FutureOr<void> onLoad() {
    position = Vector2(gridPosition.x * 16, gridPosition.y * 16);
    size = Vector2.all(letterSize);
    switch (status) {
      case LetterStatus.dig0:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 35 * 16, 17 * 16, 16, 16);
      case LetterStatus.dig1:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 36 * 16, 17 * 16, 16, 16);
      case LetterStatus.dig2:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 37 * 16, 17 * 16, 16, 16);
      case LetterStatus.dig3:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 38 * 16, 17 * 16, 16, 16);
      case LetterStatus.dig4:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 39 * 16, 17 * 16, 16, 16);
      case LetterStatus.dig5:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 40 * 16, 17 * 16, 16, 16);
      case LetterStatus.dig6:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 41 * 16, 17 * 16, 16, 16);
      case LetterStatus.dig7:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 42 * 16, 17 * 16, 16, 16);
      case LetterStatus.dig8:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 43 * 16, 17 * 16, 16, 16);
      case LetterStatus.dig9:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 44 * 16, 17 * 16, 16, 16);
      case LetterStatus.add:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 36 * 16, 20 * 16, 16, 16);
      case LetterStatus.sub:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 37 * 16, 20 * 16, 16, 16);
      case LetterStatus.mul:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 38 * 16, 20 * 16, 16, 16);
      case LetterStatus.div:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 39 * 16, 20 * 16, 16, 16);
      case LetterStatus.eq:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 40 * 16, 20 * 16, 16, 16);
      case LetterStatus.vEq:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 40 * 16, 20 * 16, 16, 16);
        anchor = Anchor.center;
        angle = pi / 2;
        position = position =
            Vector2(gridPosition.x * 16 + 8, gridPosition.y * 16 + 8);
      case LetterStatus.period:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 46 * 16, 17 * 16, 16, 16);
      case LetterStatus.bang:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 35 * 16, 13 * 16, 16, 16);
      case LetterStatus.question:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 37 * 16, 13 * 16, 16, 16);
      case LetterStatus.greaterThan:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 24 * 16, 20 * 16, 16, 16);
      case LetterStatus.lessThan:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 26 * 16, 20 * 16, 16, 16);
      case LetterStatus.percent:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 47 * 16, 17 * 16, 16, 16);
      case LetterStatus.letA:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 35 * 16, 18 * 16, 16, 16);
      case LetterStatus.letB:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 36 * 16, 18 * 16, 16, 16);
      case LetterStatus.letC:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 37 * 16, 18 * 16, 16, 16);
      case LetterStatus.letD:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 38 * 16, 18 * 16, 16, 16);
      case LetterStatus.letE:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 39 * 16, 18 * 16, 16, 16);
      case LetterStatus.letF:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 40 * 16, 18 * 16, 16, 16);
      case LetterStatus.letG:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 41 * 16, 18 * 16, 16, 16);
      case LetterStatus.letH:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 42 * 16, 18 * 16, 16, 16);
      case LetterStatus.letI:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 43 * 16, 18 * 16, 16, 16);
      case LetterStatus.letJ:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 44 * 16, 18 * 16, 16, 16);
      case LetterStatus.letK:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 45 * 16, 18 * 16, 16, 16);
      case LetterStatus.letL:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 46 * 16, 18 * 16, 16, 16);
      case LetterStatus.letM:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 47 * 16, 18 * 16, 16, 16);
      case LetterStatus.letN:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 35 * 16, 19 * 16, 16, 16);
      case LetterStatus.letO:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 36 * 16, 19 * 16, 16, 16);
      case LetterStatus.letP:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 37 * 16, 19 * 16, 16, 16);
      case LetterStatus.letQ:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 38 * 16, 19 * 16, 16, 16);
      case LetterStatus.letR:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 39 * 16, 19 * 16, 16, 16);
      case LetterStatus.letS:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 40 * 16, 19 * 16, 16, 16);
      case LetterStatus.letT:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 41 * 16, 19 * 16, 16, 16);
      case LetterStatus.letU:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 42 * 16, 19 * 16, 16, 16);
      case LetterStatus.letV:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 43 * 16, 19 * 16, 16, 16);
      case LetterStatus.letW:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 44 * 16, 19 * 16, 16, 16);
      case LetterStatus.letX:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 45 * 16, 19 * 16, 16, 16);
      case LetterStatus.letY:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 46 * 16, 19 * 16, 16, 16);
      case LetterStatus.letZ:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 47 * 16, 19 * 16, 16, 16);
      case LetterStatus.tArrow:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 24 * 16, 12 * 16, 16, 16);
      case LetterStatus.bArrow:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 24 * 16, 12 * 16, 16, 16);
        anchor = Anchor.center;
        scale = Vector2(1, -1);
        position = position =
            Vector2(gridPosition.x * 16 + 8, gridPosition.y * 16 + 8);
      case LetterStatus.rArrow:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 24 * 16, 12 * 16, 16, 16);
        anchor = Anchor.center;
        angle = pi / 2;
        position = position =
            Vector2(gridPosition.x * 16 + 8, gridPosition.y * 16 + 8);
      case LetterStatus.lArrow:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 24 * 16, 12 * 16, 16, 16);
        anchor = Anchor.center;
        angle = -pi / 2;
        position = position =
            Vector2(gridPosition.x * 16 + 8, gridPosition.y * 16 + 8);
      case LetterStatus.o:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 39 * 16, 13 * 16, 16, 16);
      case LetterStatus.x:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 40 * 16, 13 * 16, 16, 16);
      case LetterStatus.rParen:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 39 * 16, 13 * 16, 10, 16);
        size = Vector2(14, 16);
      case LetterStatus.lParen:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 39 * 16, 13 * 16, 10, 16);
        anchor = Anchor.center;
        scale = Vector2(-1, 1);
        size = Vector2(14, 16);
        position = Vector2(gridPosition.x * 16 + 8, gridPosition.y * 16 + 8);
      case LetterStatus.tParren:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 39 * 16, 13 * 16, 8, 16);
        anchor = Anchor.center;
        angle = pi / 2;
        size = Vector2(16, 14);
        position = Vector2(gridPosition.x * 16 + 8, gridPosition.y * 16 + 8);
      case LetterStatus.bParren:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 39 * 16, 13 * 16, 8, 16);
        anchor = Anchor.center;
        angle = -pi / 2;
        size = Vector2(16, 14);
        position = Vector2(gridPosition.x * 16 + 8, gridPosition.y * 16 + 8);
      case LetterStatus.undo:
        sprite =
            getSprite(SpriteSheets.coloredTransparentPacked, 352, 320, 16, 16);
      case LetterStatus.home:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 41 * 16, 16 * 16, 16, 16);
      case LetterStatus.colon:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 45 * 16, 17 * 16, 16, 16);
      case LetterStatus.crown:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 43 * 16, 2 * 16, 16, 16);
      case LetterStatus.aligator:
        sprite = getSprite(
            SpriteSheets.coloredTransparentPacked, 29 * 16, 8 * 16, 16, 16);
    }
    if (path != null) {
      add(MoveAlongPathEffect(
          path!,
          EffectController(
            duration: pathDuration,
            alternate: pathAlternate,
            infinite: true,
          )));
    }
    add(RectangleHitbox(collisionType: CollisionType.passive));
    return super.onLoad();
  }

  @override
  void update(double dt) {
    scrollMove(dt);
    super.update(dt);
  }

  @override
  void onRemove() {
    //resetPosition();
    super.onRemove();
  }

  factory LetterTile.fromChar(double x, double y, {required String char}) {
    LetterStatus status;
    switch (char) {
      case '0':
        status = LetterStatus.dig0;
        break;
      case '1':
        status = LetterStatus.dig1;
        break;
      case '2':
        status = LetterStatus.dig2;
        break;
      case '3':
        status = LetterStatus.dig3;
        break;
      case '4':
        status = LetterStatus.dig4;
        break;
      case '5':
        status = LetterStatus.dig5;
        break;
      case '6':
        status = LetterStatus.dig6;
        break;
      case '7':
        status = LetterStatus.dig7;
        break;
      case '8':
        status = LetterStatus.dig8;
        break;
      case '9':
        status = LetterStatus.dig9;
        break;
      case '+':
        status = LetterStatus.add;
        break;
      case '-':
        status = LetterStatus.sub;
        break;
      case '*':
        status = LetterStatus.mul;
        break;
      case '/':
        status = LetterStatus.div;
        break;
      case '=':
        status = LetterStatus.eq;
        break;
      case '~':
        status = LetterStatus.vEq;
        break;
      case '.':
        status = LetterStatus.period;
        break;
      case '!':
        status = LetterStatus.bang;
        break;
      case '?':
        status = LetterStatus.question;
        break;
      case '>':
        status = LetterStatus.greaterThan;
        break;
      case '<':
        status = LetterStatus.lessThan;
        break;
      case '%':
        status = LetterStatus.percent;
        break;
      case 'X':
        status = LetterStatus.letX;
        break;
      case 'Y':
        status = LetterStatus.letY;
        break;
      case 'Z':
        status = LetterStatus.letZ;
        break;
      case '→':
        status = LetterStatus.rArrow;
        break;
      case '↓':
        status = LetterStatus.bArrow;
        break;
      case '←':
        status = LetterStatus.lArrow;
        break;
      case '↑':
        status = LetterStatus.tArrow;
        break;
      case 'o':
        status = LetterStatus.o;
        break;
      case 'x':
        status = LetterStatus.x;
        break;
      case '(':
        status = LetterStatus.rParen;
        break;
      case ')':
        status = LetterStatus.lParen;
        break;
      case '{':
        status = LetterStatus.tParren;
        break;
      case '}':
        status = LetterStatus.bParren;
        break;
      case 'u':
        status = LetterStatus.undo;
        break;
      case 'A':
        status = LetterStatus.letA;
        break;
      case 'B':
        status = LetterStatus.letB;
        break;
      case 'C':
        status = LetterStatus.letC;
        break;
      case 'D':
        status = LetterStatus.letD;
        break;
      case 'E':
        status = LetterStatus.letE;
        break;
      case 'F':
        status = LetterStatus.letF;
        break;
      case 'G':
        status = LetterStatus.letG;
        break;
      case 'H':
        status = LetterStatus.letH;
        break;
      case 'I':
        status = LetterStatus.letI;
        break;
      case 'J':
        status = LetterStatus.letJ;
        break;
      case 'K':
        status = LetterStatus.letK;
        break;
      case 'L':
        status = LetterStatus.letL;
        break;
      case 'M':
        status = LetterStatus.letM;
        break;
      case 'N':
        status = LetterStatus.letN;
        break;
      case 'O':
        status = LetterStatus.letO;
        break;
      case 'P':
        status = LetterStatus.letP;
        break;
      case 'Q':
        status = LetterStatus.letQ;
        break;
      case 'R':
        status = LetterStatus.letR;
        break;
      case 'S':
        status = LetterStatus.letS;
        break;
      case 'T':
        status = LetterStatus.letT;
        break;
      case 'U':
        status = LetterStatus.letU;
        break;
      case 'V':
        status = LetterStatus.letV;
        break;
      case 'W':
        status = LetterStatus.letW;
        break;
      case '@':
        status = LetterStatus.home;
      case ':':
        status = LetterStatus.colon;
      case 'c':
        status = LetterStatus.crown;
      case 'a':
        status = LetterStatus.aligator;
      default:
        status = LetterStatus.dig0;
    }
    return LetterTile(x, y, status: status);
  }
}
