/*Descrição:
Simple, given a string of words, return the length of the shortest word(s).

String will never be empty and you do not need to account for different data types.
*/
function findShort(s){
  let min=Infinity
  let palavras=s.split(" ");
  palavras.forEach(
    function(element,data,array){
      if(element.length<min)
        min=element.length;
    }
  );
  return min;
}