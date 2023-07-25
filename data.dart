class Resep {
  String title, writer, genre, image, description = '';
  int pages;
  double rating;

  Resep(
      this.title, this.writer, this.genre, this.image, this.rating, this.pages);
}

final List<Resep> reseps = [
  Resep('RENDANG', 'Resep Bunda', 'makanan', 'assets/rendang.jpg', 3.5, 431),
  Resep('NASI UDUK', 'Resep Bunda', 'makanan', 'assets/nasiuduk.jpg', 3.5, 431),
  Resep('GUDEK', 'Resep Bunda', 'makanan', 'assets/gudek.jpg', 3.5, 431),
  Resep('GADO GADO', 'Resep Bunda', 'makanan', 'assets/gadogado.jpg', 3.5, 431),
  Resep('SATE', 'Resep Bunda', 'makanan', 'assets/sate.jpg', 3.5, 431),
];
