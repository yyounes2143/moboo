package androidx.work.impl.background.systemjob;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.Context;
import android.os.Build;
import androidx.work.Configuration;
import androidx.work.Logger;
import androidx.work.impl.WorkDatabase;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a \u0010\u000e\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\"\u0013\u0010\u0002\u001a\u00070\u0001¢\u0006\u0002\b\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\"\u0018\u0010\u0004\u001a\u00020\u0005*\u00020\u00068@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b\"\u001d\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n*\u00020\u00058F¢\u0006\u0006\u001a\u0004\b\f\u0010\r¨\u0006\u0014"}, d2 = {"WORKMANAGER_NAMESPACE", "", "TAG", "Lorg/jspecify/annotations/NonNull;", "wmJobScheduler", "Landroid/app/job/JobScheduler;", "Landroid/content/Context;", "getWmJobScheduler", "(Landroid/content/Context;)Landroid/app/job/JobScheduler;", "safePendingJobs", "", "Landroid/app/job/JobInfo;", "getSafePendingJobs", "(Landroid/app/job/JobScheduler;)Ljava/util/List;", "createErrorMessage", "context", "workDatabase", "Landroidx/work/impl/WorkDatabase;", "configuration", "Landroidx/work/Configuration;", "work-runtime_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nJobSchedulerExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JobSchedulerExt.kt\nandroidx/work/impl/background/systemjob/JobSchedulerExtKt\n+ 2 LoggerExt.kt\nandroidx/work/LoggerExtKt\n*L\n1#1,123:1\n32#2:124\n*S KotlinDebug\n*F\n+ 1 JobSchedulerExt.kt\nandroidx/work/impl/background/systemjob/JobSchedulerExtKt\n*L\n67#1:124\n*E\n"})
/* loaded from: classes3.dex */
public final class JobSchedulerExtKt {
    @NotNull
    private static final String TAG = Logger.tagWithPrefix("SystemJobScheduler");
    @NotNull
    public static final String WORKMANAGER_NAMESPACE = "androidx.work.systemjobscheduler";

    @NotNull
    public static final String createErrorMessage(@NotNull Context context, @NotNull WorkDatabase workDatabase, @NotNull Configuration configuration) {
        int i;
        List<JobInfo> pendingJobs;
        int i2;
        String str;
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 31) {
            i = 150;
        } else {
            i = 100;
        }
        int size = workDatabase.workSpecDao().getScheduledWork().size();
        String str2 = "<faulty JobScheduler failed to getPendingJobs>";
        if (i3 >= 34) {
            JobScheduler wmJobScheduler = getWmJobScheduler(context);
            List<JobInfo> safePendingJobs = getSafePendingJobs(wmJobScheduler);
            if (safePendingJobs != null) {
                List<JobInfo> pendingJobs2 = SystemJobScheduler.getPendingJobs(context, wmJobScheduler);
                int i4 = 0;
                if (pendingJobs2 != null) {
                    i2 = safePendingJobs.size() - pendingJobs2.size();
                } else {
                    i2 = 0;
                }
                String str3 = null;
                if (i2 == 0) {
                    str = null;
                } else {
                    str = i2 + " of which are not owned by WorkManager";
                }
                List<JobInfo> pendingJobs3 = SystemJobScheduler.getPendingJobs(context, (JobScheduler) context.getSystemService("jobscheduler"));
                if (pendingJobs3 != null) {
                    i4 = pendingJobs3.size();
                }
                if (i4 != 0) {
                    str3 = i4 + " from WorkManager in the default namespace";
                }
                str2 = CollectionsKt.joinToString$default(CollectionsKt.listOfNotNull((Object[]) new String[]{safePendingJobs.size() + " jobs in \"androidx.work.systemjobscheduler\" namespace", str, str3}), ",\n", null, null, 0, null, null, 62, null);
            }
        } else {
            if (SystemJobScheduler.getPendingJobs(context, getWmJobScheduler(context)) != null) {
                str2 = pendingJobs.size() + " jobs from WorkManager";
            }
        }
        return "JobScheduler " + i + " job limit exceeded.\nIn JobScheduler there are " + str2 + ".\nThere are " + size + " jobs tracked by WorkManager's database;\nthe Configuration limit is " + configuration.getMaxSchedulerLimit() + '.';
    }

    @Nullable
    public static final List<JobInfo> getSafePendingJobs(@NotNull JobScheduler jobScheduler) {
        try {
            return JobScheduler21.INSTANCE.getAllPendingJobs(jobScheduler);
        } catch (Throwable th) {
            Logger.get().error(TAG, "getAllPendingJobs() is not reliable on this device.", th);
            return null;
        }
    }

    @NotNull
    public static final JobScheduler getWmJobScheduler(@NotNull Context context) {
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        if (Build.VERSION.SDK_INT >= 34) {
            return JobScheduler34.INSTANCE.forNamespace(jobScheduler);
        }
        return jobScheduler;
    }
}
