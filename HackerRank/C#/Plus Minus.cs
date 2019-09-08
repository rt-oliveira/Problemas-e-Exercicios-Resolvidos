using System.CodeDom.Compiler;
using System.Collections.Generic;
using System.Collections;
using System.ComponentModel;
using System.Diagnostics.CodeAnalysis;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Runtime.Serialization;
using System.Text.RegularExpressions;
using System.Text;
using System;

class Solution {

    // Complete the plusMinus function below.
    static void plusMinus(int[] arr) {
        float total=0,menos=0,mais=0,zero=0;
        foreach (int i in arr){
            total++;
            if(i>0)
                mais++;
            else if(i<0)
                menos++;
            else
                zero++;
        }
        Console.WriteLine("{0:f6}",mais/total);
        Console.WriteLine("{0:f6}",menos/total);
        Console.WriteLine("{0:f6}",zero/total);
    }

    static void Main(string[] args) {
        int n = Convert.ToInt32(Console.ReadLine());

        int[] arr = Array.ConvertAll(Console.ReadLine().Split(' '), arrTemp => Convert.ToInt32(arrTemp))
        ;
        plusMinus(arr);
    }
}

