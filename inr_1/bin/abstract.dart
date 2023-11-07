abstract class vehicle {
  //Body of abstract class

  void Start(){

  }
  void stop(){
    print("stop");
  }
}

class car extends vehicle{

  @override
  void Start() {
    // TODO: implement Start
    super.Start();
  }
@override
  void stop() {
    // TODO: implement stop
    super.stop();
  }
}