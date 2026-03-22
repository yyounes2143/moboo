package coil.disk;

import android.os.StatFs;
import coil.annotation.ExperimentalCoilApi;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.io.Closeable;
import java.io.File;
import kotlin.Metadata;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.Dispatchers;
import okio.FileSystem;
import okio.Path;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\bf\u0018\u00002\u00020\u0001:\u0003\u0010\u0011\u0012J\u001a\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002H§\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0003\u001a\u00020\u0002H'¢\u0006\u0004\b\b\u0010\tR\u001a\u0010\u000f\u001a\u00020\n8&X§\u0004¢\u0006\f\u0012\u0004\b\r\u0010\u000e\u001a\u0004\b\u000b\u0010\f¨\u0006\u0013"}, d2 = {"Lcoil/disk/DiskCache;", "", "", "key", "Lcoil/disk/DiskCache$Snapshot;", "get", "(Ljava/lang/String;)Lcoil/disk/DiskCache$Snapshot;", "Lcoil/disk/DiskCache$Editor;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Lcoil/disk/DiskCache$Editor;", "Lokio/FileSystem;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokio/FileSystem;", "getFileSystem$annotations", "()V", "fileSystem", "Builder", "Editor", "Snapshot", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public interface DiskCache {

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\t\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\r\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\f\u0010\rR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\u000eR\u0016\u0010\u0011\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010\u0010R\u0016\u0010\u0014\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\u0013R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0016\u0010\u001a\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u0017R\u0016\u0010\u001c\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u0017R\u0016\u0010 \u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001f¨\u0006!"}, d2 = {"Lcoil/disk/DiskCache$Builder;", "", "<init>", "()V", "Ljava/io/File;", "directory", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/io/File;)Lcoil/disk/DiskCache$Builder;", "Lokio/Path;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Path;)Lcoil/disk/DiskCache$Builder;", "Lcoil/disk/DiskCache;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcoil/disk/DiskCache;", "Lokio/Path;", "Lokio/FileSystem;", "Lokio/FileSystem;", "fileSystem", "", "D", "maxSizePercent", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "J", "minimumMaxSizeBytes", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "maximumMaxSizeBytes", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "maxSizeBytes", "Lkotlinx/coroutines/CoroutineDispatcher;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lkotlinx/coroutines/CoroutineDispatcher;", "cleanupDispatcher", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public long f1845Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Path f1850Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public FileSystem f1849Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = FileSystem.f13168Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public double f1848Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 0.02d;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public long f1847Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 10485760;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public long f1846Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 262144000;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public CoroutineDispatcher f1844Wwwwwwwwwwwwwwwwwwwwwwwwwwww = Dispatchers.getIO();

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Path path) {
            this.f1850Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = path;
            return this;
        }

        @NotNull
        public final Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull File file) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Path.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Path.Companion, file, false, 1, null));
        }

        @NotNull
        public final DiskCache Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            long j;
            Path path = this.f1850Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (path != null) {
                if (this.f1848Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww > FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
                    try {
                        StatFs statFs = new StatFs(path.Wwwwwwwwwwwwwwwwwwwww().getAbsolutePath());
                        j = RangesKt.coerceIn((long) (this.f1848Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww * statFs.getBlockCountLong() * statFs.getBlockSizeLong()), this.f1847Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f1846Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                    } catch (Exception unused) {
                        j = this.f1847Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    }
                } else {
                    j = this.f1845Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                }
                return new RealDiskCache(j, path, this.f1849Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f1844Wwwwwwwwwwwwwwwwwwwwwwwwwwww);
            }
            throw new IllegalStateException("directory == null");
        }
    }

    /* compiled from: Proguard */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class DefaultImpls {
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\bg\u0018\u00002\u00020\u0001J\u0011\u0010\u0003\u001a\u0004\u0018\u00010\u0002H&¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H&¢\u0006\u0004\b\u0006\u0010\u0007R\u0014\u0010\u000b\u001a\u00020\b8&X¦\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0014\u0010\r\u001a\u00020\b8&X¦\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\n¨\u0006\u000e"}, d2 = {"Lcoil/disk/DiskCache$Editor;", "", "Lcoil/disk/DiskCache$Snapshot;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcoil/disk/DiskCache$Snapshot;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "Lokio/Path;", "getMetadata", "()Lokio/Path;", "metadata", "getData", "data", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    @ExperimentalCoilApi
    /* loaded from: classes3.dex */
    public interface Editor {
        @Nullable
        Snapshot Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

        @NotNull
        Path getData();

        @NotNull
        Path getMetadata();
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\bg\u0018\u00002\u00060\u0001j\u0002`\u0002J\u0011\u0010\u0004\u001a\u0004\u0018\u00010\u0003H&¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\t\u001a\u00020\u00068&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\u000b\u001a\u00020\u00068&X¦\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\b¨\u0006\f"}, d2 = {"Lcoil/disk/DiskCache$Snapshot;", "Ljava/io/Closeable;", "Lokio/Closeable;", "Lcoil/disk/DiskCache$Editor;", "Wwwwwwwww", "()Lcoil/disk/DiskCache$Editor;", "Lokio/Path;", "getMetadata", "()Lokio/Path;", "metadata", "getData", "data", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    @ExperimentalCoilApi
    /* loaded from: classes3.dex */
    public interface Snapshot extends Closeable {
        @Nullable
        Editor Wwwwwwwww();

        @NotNull
        Path getData();

        @NotNull
        Path getMetadata();
    }

    @ExperimentalCoilApi
    @Nullable
    Editor Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str);

    @NotNull
    FileSystem Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

    @ExperimentalCoilApi
    @Nullable
    Snapshot get(@NotNull String str);
}
