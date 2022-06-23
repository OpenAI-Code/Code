# write me code in C# that will give me the first 20 terms of the Fibonacci sequence

using System;

namespace FibonacciSequence
{
    class Program
    {
        static void Main(string[] args)
        {
            int a = 0, b = 1, c = 0;

            Console.WriteLine("The first 20 terms of the Fibonacci sequence are: ");

            for (int i = 1; i <= 20; i++)
            {
                Console.Write(a + " ");
                c = a + b;
                a = b;
                b = c;
            }

            Console.ReadLine();
        }
    }
}
