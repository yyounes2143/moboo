package okhttp3.internal.platform.android;

import com.unity3d.services.core.network.core.OkHttp3Client;
import java.util.logging.Level;
import java.util.logging.LogRecord;
import kotlin.Metadata;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\"\u0018\u0010\u0004\u001a\u00020\u0001*\u00020\u00008BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Ljava/util/logging/LogRecord;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/logging/LogRecord;)I", "androidLevel", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 2, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class AndroidLogKt {
    public static final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LogRecord logRecord) {
        int intValue = logRecord.getLevel().intValue();
        Level level = Level.INFO;
        if (intValue > level.intValue()) {
            return 5;
        }
        if (logRecord.getLevel().intValue() == level.intValue()) {
            return 4;
        }
        return 3;
    }
}
