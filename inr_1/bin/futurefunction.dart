Future<void> facingData() {
  return Future.delayed(
      Duration(seconds: 3), () => print("berhasil mengambil data"));
}

void main() async {
  await facingData();
  print("Mengakhiri Program");
}
