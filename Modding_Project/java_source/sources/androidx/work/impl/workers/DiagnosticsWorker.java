package androidx.work.impl.workers;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Logger;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.model.SystemIdInfoDao;
import androidx.work.impl.model.WorkNameDao;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.model.WorkTagDao;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\b\u0010\b\u001a\u00020\tH\u0016¨\u0006\n"}, d2 = {"Landroidx/work/impl/workers/DiagnosticsWorker;", "Landroidx/work/Worker;", "context", "Landroid/content/Context;", "parameters", "Landroidx/work/WorkerParameters;", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "doWork", "Landroidx/work/ListenableWorker$Result;", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class DiagnosticsWorker extends Worker {
    public DiagnosticsWorker(@NotNull Context context, @NotNull WorkerParameters workerParameters) {
        super(context, workerParameters);
    }

    @Override // androidx.work.Worker
    @NotNull
    public ListenableWorker.Result doWork() {
        String str;
        String str2;
        String workSpecRows;
        String str3;
        String str4;
        String workSpecRows2;
        String str5;
        String str6;
        String workSpecRows3;
        WorkManagerImpl workManagerImpl = WorkManagerImpl.getInstance(getApplicationContext());
        WorkDatabase workDatabase = workManagerImpl.getWorkDatabase();
        WorkSpecDao workSpecDao = workDatabase.workSpecDao();
        WorkNameDao workNameDao = workDatabase.workNameDao();
        WorkTagDao workTagDao = workDatabase.workTagDao();
        SystemIdInfoDao systemIdInfoDao = workDatabase.systemIdInfoDao();
        List<WorkSpec> recentlyCompletedWork = workSpecDao.getRecentlyCompletedWork(workManagerImpl.getConfiguration().getClock().currentTimeMillis() - TimeUnit.DAYS.toMillis(1L));
        List<WorkSpec> runningWork = workSpecDao.getRunningWork();
        List<WorkSpec> allEligibleWorkSpecsForScheduling = workSpecDao.getAllEligibleWorkSpecsForScheduling(200);
        if (!recentlyCompletedWork.isEmpty()) {
            Logger logger = Logger.get();
            str5 = DiagnosticsWorkerKt.TAG;
            logger.info(str5, "Recently completed work:\n\n");
            Logger logger2 = Logger.get();
            str6 = DiagnosticsWorkerKt.TAG;
            workSpecRows3 = DiagnosticsWorkerKt.workSpecRows(workNameDao, workTagDao, systemIdInfoDao, recentlyCompletedWork);
            logger2.info(str6, workSpecRows3);
        }
        if (!runningWork.isEmpty()) {
            Logger logger3 = Logger.get();
            str3 = DiagnosticsWorkerKt.TAG;
            logger3.info(str3, "Running work:\n\n");
            Logger logger4 = Logger.get();
            str4 = DiagnosticsWorkerKt.TAG;
            workSpecRows2 = DiagnosticsWorkerKt.workSpecRows(workNameDao, workTagDao, systemIdInfoDao, runningWork);
            logger4.info(str4, workSpecRows2);
        }
        if (!allEligibleWorkSpecsForScheduling.isEmpty()) {
            Logger logger5 = Logger.get();
            str = DiagnosticsWorkerKt.TAG;
            logger5.info(str, "Enqueued work:\n\n");
            Logger logger6 = Logger.get();
            str2 = DiagnosticsWorkerKt.TAG;
            workSpecRows = DiagnosticsWorkerKt.workSpecRows(workNameDao, workTagDao, systemIdInfoDao, allEligibleWorkSpecsForScheduling);
            logger6.info(str2, workSpecRows);
        }
        return ListenableWorker.Result.success();
    }
}
