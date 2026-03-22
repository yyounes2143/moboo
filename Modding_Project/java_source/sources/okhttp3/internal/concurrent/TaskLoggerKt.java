package okhttp3.internal.concurrent;

import com.unity3d.services.core.network.core.OkHttp3Client;
import java.util.Arrays;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.time.InstantKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\u001a'\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\b\u001a\u0015\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lokhttp3/internal/concurrent/Task;", "task", "Lokhttp3/internal/concurrent/TaskQueue;", "queue", "", "message", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokhttp3/internal/concurrent/Task;Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;)V", "", "ns", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(J)Ljava/lang/String;", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 2, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class TaskLoggerKt {
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Task task, TaskQueue taskQueue, String str) {
        Logger Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = TaskRunner.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        StringBuilder sb = new StringBuilder();
        sb.append(taskQueue.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        sb.append(' ');
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        sb.append(String.format("%-22s", Arrays.copyOf(new Object[]{str}, 1)));
        sb.append(": ");
        sb.append(task.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.fine(sb.toString());
    }

    @NotNull
    public static final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j) {
        String str;
        if (j <= -999500000) {
            str = ((j - 500000000) / ((long) InstantKt.NANOS_PER_SECOND)) + " s ";
        } else if (j <= -999500) {
            str = ((j - 500000) / 1000000) + " ms";
        } else if (j <= 0) {
            str = ((j - 500) / 1000) + " µs";
        } else if (j < 999500) {
            str = ((j + 500) / 1000) + " µs";
        } else if (j < 999500000) {
            str = ((j + 500000) / 1000000) + " ms";
        } else {
            str = ((j + 500000000) / ((long) InstantKt.NANOS_PER_SECOND)) + " s ";
        }
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        return String.format("%6s", Arrays.copyOf(new Object[]{str}, 1));
    }

    public static final /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Task task, TaskQueue taskQueue, String str) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(task, taskQueue, str);
    }
}
