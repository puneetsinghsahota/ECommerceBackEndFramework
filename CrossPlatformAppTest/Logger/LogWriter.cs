using System;

namespace Logger
{
    public class LogWriter
    {
        string _logPath;
        string _logFileName;
        System.IO.StreamWriter _logFile;

        void SetLoggerSetting(string path,string filename)
        {
            _logger.LogPath = path;
            _logger.LogFileName = filename;
            _logger._logFile = new System.IO.StreamWriter(path);
        }

        static LogWriter _logger;

        public string LogPath { get => _logPath; set => _logPath = value; }
        public string LogFileName { get => _logFileName; set => _logFileName = value; }

        void Write(string message)
        {
            WriteToDebugScreen(message);
            WriteToFile(message);
        }

        void WriteToDebugScreen(string message)
        {
            System.Diagnostics.Debug.WriteLine(message);
        }

        void WriteToFile(string message)
        {
            _logFile.WriteLine(message);
        }

        public static void WriteLog(string message)
        {
            AddDateTime(message);
            _logger.Write(message);
        }

        private static string AddDateTime(string message)
        {
            string currentTime = System.DateTime.Now.ToString("dd,MM,yyyy,HH:mm:ss.ffffff");
            message = currentTime + "->" + message;
            return message;
        }

        public static void BootUpLogger(string path,string fileName)
        {
            _logger = new LogWriter();
            _logger.SetLoggerSetting(path, fileName);
        }
    }
}
