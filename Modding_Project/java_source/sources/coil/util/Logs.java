package coil.util;

import kotlin.Metadata;
import kotlin.jvm.JvmName;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\u001a#\u0010\u0006\u001a\u00020\u0005*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0003H\u0000¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcoil/util/Logger;", "", "tag", "", "throwable", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/util/Logger;Ljava/lang/String;Ljava/lang/Throwable;)V", "coil-base_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
@JvmName(name = "-Logs")
/* renamed from: coil.util.-Logs  reason: invalid class name */
/* loaded from: classes3.dex */
public final class Logs {
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Logger logger, @NotNull String str, @NotNull Throwable th) {
        if (logger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() <= 6) {
            logger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, 6, null, th);
        }
    }
}
