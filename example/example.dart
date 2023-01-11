// A simple example for the semola package
import 'package:semola/semola.dart';

void main() {
  print(Semola.hyphenate(r"suonò"));
  print(Semola.hyphenate(r"pompiere"));
  print(Semola.hyphenate(r"lunghissimo"));
  print(Semola.hyphenate(r"per"));
  print(Semola.hyphenate(r"perché,"));
  print(Semola.hyphenate("perché\""));
  print(Semola.hyphenate("CACTUS"));
  print(Semola.hyphenate("Cactus"));
  print(Semola.hyphenate("cactus"));
  print(Semola.hyphenate("appioppare"));
  print(Semola.hyphenate("viola"));
  print(Semola.hyphenate(r"suonò..."));
  print(Semola.hyphenate(r"pompiere..."));
  print(Semola.hyphenate(r"lunghissimo..."));
  print(Semola.hyphenate(r"per..."));
  print(Semola.hyphenate("piovra"));
  print(Semola.hyphenate("pioli"));
  print(Semola.hyphenate("piovra..."));
  print(Semola.hyphenate("pioli..."));
  Semola.addException("p-i-o-v-r-a");
  print(Semola.hyphenate("piovra"));
  Semola.clearExceptions();
  print(Semola.hyphenate("piovra"));
}
