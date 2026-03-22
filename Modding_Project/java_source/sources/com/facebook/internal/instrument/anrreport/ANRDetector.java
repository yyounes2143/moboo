package com.facebook.internal.instrument.anrreport;

import android.app.ActivityManager;
import android.os.Looper;
import android.os.Process;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import com.facebook.FacebookSdk;
import com.facebook.internal.instrument.InstrumentData;
import com.facebook.internal.instrument.InstrumentUtility;
import com.facebook.internal.instrument.anrreport.ANRDetector;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\t\u0010\u0003R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u001c\u0010\u0012\u001a\n \u000f*\u0004\u0018\u00010\u000e0\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010\u0014R\u0014\u0010\u0018\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u0017¨\u0006\u0019"}, d2 = {"Lcom/facebook/internal/instrument/anrreport/ANRDetector;", "", "<init>", "()V", "Landroid/app/ActivityManager;", "am", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/app/ActivityManager;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "I", "myUid", "Ljava/util/concurrent/ScheduledExecutorService;", "kotlin.jvm.PlatformType", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/concurrent/ScheduledExecutorService;", "scheduledExecutorService", "", "Ljava/lang/String;", "previousStackTrace", "Ljava/lang/Runnable;", "Ljava/lang/Runnable;", "anrDetectorRunnable", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes4.dex */
public final class ANRDetector {
    @NotNull
    public static final ANRDetector INSTANCE = new ANRDetector();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final int f6897Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Process.myUid();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final ScheduledExecutorService f6896Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Executors.newSingleThreadScheduledExecutor();
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static String f6895Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = "";
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Runnable f6894Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Runnable() { // from class: Wwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
        @Override // java.lang.Runnable
        public final void run() {
            ANRDetector.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    };

    @JvmStatic
    @VisibleForTesting
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ANRDetector.class)) {
            return;
        }
        try {
            f6896Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.scheduleWithFixedDelay(f6894Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, 0L, 500, TimeUnit.MILLISECONDS);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, ANRDetector.class);
        }
    }

    @JvmStatic
    @VisibleForTesting
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable ActivityManager activityManager) {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ANRDetector.class) && activityManager != null) {
            try {
                List<ActivityManager.ProcessErrorStateInfo> processesInErrorState = activityManager.getProcessesInErrorState();
                if (processesInErrorState != null) {
                    for (ActivityManager.ProcessErrorStateInfo processErrorStateInfo : processesInErrorState) {
                        if (processErrorStateInfo.condition == 2 && processErrorStateInfo.uid == f6897Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                            Thread thread = Looper.getMainLooper().getThread();
                            String Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = InstrumentUtility.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(thread);
                            if (!Intrinsics.areEqual(Wwwwwwwwwwwwwwwwwwwwwwwwwwww2, f6895Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && InstrumentUtility.Wwwwwwwwwwwwwwwwwwwwwwww(thread)) {
                                f6895Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                                InstrumentData.Builder builder = InstrumentData.Builder.INSTANCE;
                                InstrumentData.Builder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(processErrorStateInfo.shortMsg, Wwwwwwwwwwwwwwwwwwwwwwwwwwww2).Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, ANRDetector.class);
            }
        }
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ANRDetector.class)) {
            try {
                Object systemService = FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww().getSystemService("activity");
                if (systemService != null) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((ActivityManager) systemService);
                    return;
                }
                throw new NullPointerException("null cannot be cast to non-null type android.app.ActivityManager");
            } catch (Exception unused) {
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, ANRDetector.class);
            }
        }
    }
}
