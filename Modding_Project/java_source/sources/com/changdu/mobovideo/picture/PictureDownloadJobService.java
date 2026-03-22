package com.changdu.mobovideo.picture;

import android.app.job.JobInfo;
import android.app.job.JobParameters;
import android.app.job.JobScheduler;
import android.app.job.JobService;
import android.content.ComponentName;
import android.content.Context;
import androidx.datastore.preferences.protobuf.DescriptorProtos;
import androidx.work.multiprocess.RemoteWorkManager;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u0012\u0010\b\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016¨\u0006\n"}, d2 = {"Lcom/changdu/mobovideo/picture/PictureDownloadJobService;", "Landroid/app/job/JobService;", "<init>", "()V", "onStartJob", "", "params", "Landroid/app/job/JobParameters;", "onStopJob", "Companion", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class PictureDownloadJobService extends JobService {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bR\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\r\u001a\u00020\f8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0014\u0010\u0010\u001a\u00020\u000f8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcom/changdu/mobovideo/picture/PictureDownloadJobService$Companion;", "", "<init>", "()V", "Landroid/content/Context;", "context", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)V", "", "TAG", "Ljava/lang/String;", "", "JOB_ID", "I", "", "HEARTBEAT_DELAY_MS", "J", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context) {
            JobScheduler jobScheduler;
            try {
                Object systemService = context.getSystemService("jobscheduler");
                if (systemService instanceof JobScheduler) {
                    jobScheduler = (JobScheduler) systemService;
                } else {
                    jobScheduler = null;
                }
                if (jobScheduler != null) {
                    jobScheduler.schedule(new JobInfo.Builder(DescriptorProtos.Edition.EDITION_99999_TEST_ONLY_VALUE, new ComponentName(context, PictureDownloadJobService.class)).setMinimumLatency(RemoteWorkManager.DEFAULT_SESSION_TIMEOUT_MILLIS).build());
                }
            } catch (Exception unused) {
            }
        }

        public Companion() {
        }
    }

    @Override // android.app.job.JobService
    public boolean onStartJob(@Nullable JobParameters jobParameters) {
        CDJobScheduler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(getApplicationContext(), "job_heartbeat", false, true);
        Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
        return false;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(@Nullable JobParameters jobParameters) {
        Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(getApplicationContext());
        return true;
    }
}
