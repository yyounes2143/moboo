package okhttp3.logging;

import java.io.EOFException;
import kotlin.Metadata;
import kotlin.ranges.RangesKt;
import okio.Buffer;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\u001a\u0013\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0000¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lokio/Buffer;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Buffer;)Z", "okhttp-logging-interceptor"}, k = 2, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class Utf8Kt {
    public static final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Buffer buffer) {
        try {
            Buffer buffer2 = new Buffer();
            buffer.Kkkkkkkkkkkkkkkkkkk(buffer2, 0L, RangesKt.coerceAtMost(buffer.Kk(), 64L));
            int i = 0;
            while (i < 16) {
                i++;
                if (!buffer2.Wwwwwwwwwwww()) {
                    int Kkkk = buffer2.Kkkk();
                    if (Character.isISOControl(Kkkk) && !Character.isWhitespace(Kkkk)) {
                        return false;
                    }
                } else {
                    return true;
                }
            }
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }
}
