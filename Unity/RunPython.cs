using Python.Runtime;

public class RunPython : MonoBehaviour
{
    void Start()
    {
        RunScript("main.py");
    }

    static void RunScript(string scriptName)
    {
        using (Py.GIL())
        {
            PythonEngine.Initialize();
            dynamic pythonScript = Py.Import(scriptName);
            pythonScript.say_hello();
        }
    }
}
