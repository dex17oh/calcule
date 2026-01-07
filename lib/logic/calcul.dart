import '../models/module.dart';
import '../models/notes.dart';

bool noteValide(double v) => v >= 0 && v <= 20;

double calculerNoteModule(Module m, Notes n) {
  if (m.examOnly) return n.exam;

  double continu = 0;

  if (m.hasTD && m.hasTP) {
    continu = (n.td! + n.tp!) / 2;
  } else if (m.hasTD) {
    continu = n.td!;
  } else if (m.hasTP) {
    continu = n.tp!;
  }

  return continu * 0.4 + n.exam * 0.6;
}
