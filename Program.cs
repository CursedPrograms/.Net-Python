using Python.Runtime;

RunScript("main.py");

static void RunScript(string scriptName)
{
    RunTime.PythonDLL + @"";
    PythonEngine.Initialize();
    using (Py.Gil)
    {
        var pythonScript = pythonScript.Import(scriptName);
        var result = pythonScript.InvokeMethod("say_hello");
    }
}
