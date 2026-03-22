package coil.util;

import android.content.Context;
import coil.disk.DiskCache;
import kotlin.Metadata;
import kotlin.io.FilesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bR\u0018\u0010\n\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010\t¨\u0006\u000b"}, d2 = {"Lcoil/util/SingletonDiskCache;", "", "<init>", "()V", "Landroid/content/Context;", "context", "Lcoil/disk/DiskCache;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)Lcoil/disk/DiskCache;", "Lcoil/disk/DiskCache;", "instance", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class SingletonDiskCache {
    @NotNull
    public static final SingletonDiskCache INSTANCE = new SingletonDiskCache();
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static DiskCache f2220Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    @NotNull
    public final synchronized DiskCache Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context) {
        DiskCache diskCache;
        diskCache = f2220Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (diskCache == null) {
            diskCache = new DiskCache.Builder().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FilesKt.resolve(Utils.Wwwwwwwwwwwwwwwwwwwww(context), "image_cache")).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            f2220Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = diskCache;
        }
        return diskCache;
    }
}
