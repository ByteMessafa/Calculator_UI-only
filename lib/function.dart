String fixDisplay(String nbr) {
  print("suuuuuuuuuuuuuuuuuuuuuuuuuu");
  print(nbr[nbr.length-2]);
  print(nbr[nbr.length - 1]);
  if (nbr[nbr.length-2] == "." && nbr[nbr.length-1] == "0") {
    nbr = nbr.substring(0, nbr.length - 2);
  }
  print("nbr = $nbr");
  return nbr;
}
