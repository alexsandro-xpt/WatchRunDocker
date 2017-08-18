using System;
using System.Threading;

namespace WatchRunDocker
{
    class Program
    {
        static void Main(string[] args)
        {
            var signal = new AutoResetEvent(false);

            Console.WriteLine("Hello World!");

            signal.WaitOne();

        }
    }
}
