/**
 * maxin : is a methods to write a reusable code that can use in all platform
 * by allowed user use the reusable code without inheritance concepts
 */
/**
 * rule of maxin : 
 * 1. can not be instantiated directly
 * 2. A class can apply multiple maxin
 * 3. maxin are declare with keywords "maxin"
 */
mixin Singer {
  void sing() {
    print("Singing a songs....");
  }
}
mixin Dancer {
  void dance() {
    print("Dancing....");
  }
}

class Artist with Singer, Dancer {
  void perform() {
    sing();
    dance();
    print("perform start");
  }
}

void main() {
  Artist artist = Artist();
  artist.perform();
}
