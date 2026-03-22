package coil.util;

import android.os.SystemClock;
import androidx.annotation.WorkerThread;
import java.io.File;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0007\bÂ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\nR\u0014\u0010\r\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\fR\u0016\u0010\u0010\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0017\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u0018"}, d2 = {"Lcoil/util/FileDescriptorCounter;", "", "<init>", "()V", "Lcoil/util/Logger;", "logger", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcoil/util/Logger;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "Ljava/io/File;", "Ljava/io/File;", "fileDescriptorList", "", "I", "decodesSinceLastFileDescriptorCheck", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "J", "lastFileDescriptorCheckTimestamp", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Z", "hasAvailableFileDescriptors", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
final class FileDescriptorCounter {
    @NotNull
    public static final FileDescriptorCounter INSTANCE = new FileDescriptorCounter();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final File f2212Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new File("/proc/self/fd");

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static int f2211Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 30;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static long f2210Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = SystemClock.uptimeMillis();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static boolean f2209Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;

    @WorkerThread
    public final synchronized boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Logger logger) {
        try {
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                boolean z = false;
                f2211Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 0;
                f2210Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = SystemClock.uptimeMillis();
                String[] list = f2212Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.list();
                if (list == null) {
                    list = new String[0];
                }
                int length = list.length;
                if (length < 800) {
                    z = true;
                }
                f2209Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
                if (!z && logger != null && logger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() <= 5) {
                    logger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("FileDescriptorCounter", 5, "Unable to allocate more hardware bitmaps. Number of used file descriptors: " + length, null);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return f2209Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        int i = f2211Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        f2211Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i + 1;
        if (i < 30 && SystemClock.uptimeMillis() <= f2210Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + 30000) {
            return false;
        }
        return true;
    }
}
