public class DnaStrand 
    {
        public static string MakeComplement(string dna)
        {
          string complementar="";
          foreach(char e in dna){
            if(e=='A')
              complementar+='T';
            if(e=='T')
              complementar+='A';
            if(e=='G')
              complementar+='C';
            if(e=='C')
              complementar+='G';
          }
          return complementar;
        }
    }
