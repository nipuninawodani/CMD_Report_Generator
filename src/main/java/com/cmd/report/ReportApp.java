import com.cmd.report.inputs.arguments.Inputs;

public class ReportApp {
    private final Inputs inputs;

    public ReportApp(Inputs inputs){
        this.inputs = inputs;
    }

    public void execute{
        String[] arguments= inputs.validateArgumentArray();
    }
}
