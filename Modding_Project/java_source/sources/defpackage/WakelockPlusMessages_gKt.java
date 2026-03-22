package defpackage;

import android.util.Log;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\b\u0003\u001a\u001f\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"", "exception", "", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Throwable;)Ljava/util/List;", "wakelock_plus_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
/* renamed from: WakelockPlusMessages_gKt  reason: default package */
/* loaded from: classes3.dex */
public final class WakelockPlusMessages_gKt {
    public static final List<Object> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Throwable th) {
        if (th instanceof WakelockPlusFlutterError) {
            WakelockPlusFlutterError wakelockPlusFlutterError = (WakelockPlusFlutterError) th;
            return CollectionsKt.listOf(wakelockPlusFlutterError.getCode(), wakelockPlusFlutterError.getMessage(), wakelockPlusFlutterError.getDetails());
        }
        String simpleName = th.getClass().getSimpleName();
        String th2 = th.toString();
        Throwable cause = th.getCause();
        String stackTraceString = Log.getStackTraceString(th);
        return CollectionsKt.listOf((Object[]) new String[]{simpleName, th2, "Cause: " + cause + ", Stacktrace: " + stackTraceString});
    }
}
