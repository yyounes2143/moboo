package androidx.work.impl.utils;

import androidx.annotation.RestrictTo;
import androidx.work.Logger;
import androidx.work.WorkInfo;
import androidx.work.impl.Processor;
import androidx.work.impl.StartStopToken;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bB!\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\n\u0010\fJ\b\u0010\r\u001a\u00020\u000eH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Landroidx/work/impl/utils/StopWorkRunnable;", "Ljava/lang/Runnable;", "processor", "Landroidx/work/impl/Processor;", BidResponsed.KEY_TOKEN, "Landroidx/work/impl/StartStopToken;", "stopInForeground", "", "reason", "", "<init>", "(Landroidx/work/impl/Processor;Landroidx/work/impl/StartStopToken;ZI)V", "(Landroidx/work/impl/Processor;Landroidx/work/impl/StartStopToken;Z)V", "run", "", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public final class StopWorkRunnable implements Runnable {
    @NotNull
    private final Processor processor;
    private final int reason;
    private final boolean stopInForeground;
    @NotNull
    private final StartStopToken token;

    public StopWorkRunnable(@NotNull Processor processor, @NotNull StartStopToken startStopToken, boolean z, int i) {
        this.processor = processor;
        this.token = startStopToken;
        this.stopInForeground = z;
        this.reason = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean stopWork;
        if (this.stopInForeground) {
            stopWork = this.processor.stopForegroundWork(this.token, this.reason);
        } else {
            stopWork = this.processor.stopWork(this.token, this.reason);
        }
        Logger logger = Logger.get();
        String tagWithPrefix = Logger.tagWithPrefix("StopWorkRunnable");
        logger.debug(tagWithPrefix, "StopWorkRunnable for " + this.token.getId().getWorkSpecId() + "; Processor.stopWork = " + stopWork);
    }

    public StopWorkRunnable(@NotNull Processor processor, @NotNull StartStopToken startStopToken, boolean z) {
        this(processor, startStopToken, z, WorkInfo.STOP_REASON_UNKNOWN);
    }
}
