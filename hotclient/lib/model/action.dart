import 'model.dart';
import '../interactor/interactor.dart';

abstract class Action{
  void doAction(Interactor interactor);
}