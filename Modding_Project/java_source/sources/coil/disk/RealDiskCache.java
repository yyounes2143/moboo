package coil.disk;

import coil.disk.DiskCache;
import coil.disk.DiskLruCache;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.CoroutineDispatcher;
import okio.ByteString;
import okio.FileSystem;
import okio.Path;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u0000 \"2\u00020\u0001:\u0003\"#$B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u001a\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\r\u001a\u00020\fH\u0096\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0019\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0013\u0010\u0014\u001a\u00020\f*\u00020\fH\u0002¢\u0006\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0003\u001a\u00020\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u001a\u0010\u0005\u001a\u00020\u00048\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0012\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u001a\u0010\u0007\u001a\u00020\u00068\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001b\u0010\u001d\u001a\u0004\b\u0016\u0010\u001eR\u0014\u0010!\u001a\u00020\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010 ¨\u0006%"}, d2 = {"Lcoil/disk/RealDiskCache;", "Lcoil/disk/DiskCache;", "", "maxSize", "Lokio/Path;", "directory", "Lokio/FileSystem;", "fileSystem", "Lkotlinx/coroutines/CoroutineDispatcher;", "cleanupDispatcher", "<init>", "(JLokio/Path;Lokio/FileSystem;Lkotlinx/coroutines/CoroutineDispatcher;)V", "", "key", "Lcoil/disk/DiskCache$Snapshot;", "get", "(Ljava/lang/String;)Lcoil/disk/DiskCache$Snapshot;", "Lcoil/disk/DiskCache$Editor;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Lcoil/disk/DiskCache$Editor;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "J", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()J", "Lokio/Path;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokio/Path;", "Lokio/FileSystem;", "()Lokio/FileSystem;", "Lcoil/disk/DiskLruCache;", "Lcoil/disk/DiskLruCache;", "cache", "Companion", "RealEditor", "RealSnapshot", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class RealDiskCache implements DiskCache {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final DiskLruCache f1888Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final FileSystem f1889Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Path f1890Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f1891Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcoil/disk/RealDiskCache$Companion;", "", "()V", "ENTRY_DATA", "", "ENTRY_METADATA", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0010\u0004\u001a\u00060\u0002R\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0011\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\fR\u0018\u0010\u0004\u001a\u00060\u0002R\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\rR\u0014\u0010\u0011\u001a\u00020\u000e8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0013\u001a\u00020\u000e8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0010¨\u0006\u0014"}, d2 = {"Lcoil/disk/RealDiskCache$RealEditor;", "Lcoil/disk/DiskCache$Editor;", "Lcoil/disk/DiskLruCache$Editor;", "Lcoil/disk/DiskLruCache;", "editor", "<init>", "(Lcoil/disk/DiskLruCache$Editor;)V", "Lcoil/disk/RealDiskCache$RealSnapshot;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcoil/disk/RealDiskCache$RealSnapshot;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "Lcoil/disk/DiskLruCache$Editor;", "Lokio/Path;", "getMetadata", "()Lokio/Path;", "metadata", "getData", "data", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class RealEditor implements DiskCache.Editor {
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final DiskLruCache.Editor f1892Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public RealEditor(@NotNull DiskLruCache.Editor editor) {
            this.f1892Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = editor;
        }

        @Override // coil.disk.DiskCache.Editor
        @Nullable
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public RealSnapshot Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            DiskLruCache.Snapshot Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f1892Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                return new RealSnapshot(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            }
            return null;
        }

        @Override // coil.disk.DiskCache.Editor
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            this.f1892Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }

        @Override // coil.disk.DiskCache.Editor
        @NotNull
        public Path getData() {
            return this.f1892Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(1);
        }

        @Override // coil.disk.DiskCache.Editor
        @NotNull
        public Path getMetadata() {
            return this.f1892Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(0);
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0010\u0004\u001a\u00060\u0002R\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ\u0011\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\u000b\u0010\fR\u0018\u0010\u0004\u001a\u00060\u0002R\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0014\u0010\u0012\u001a\u00020\u000f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0014\u001a\u00020\u000f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0011¨\u0006\u0015"}, d2 = {"Lcoil/disk/RealDiskCache$RealSnapshot;", "Lcoil/disk/DiskCache$Snapshot;", "Lcoil/disk/DiskLruCache$Snapshot;", "Lcoil/disk/DiskLruCache;", "snapshot", "<init>", "(Lcoil/disk/DiskLruCache$Snapshot;)V", "", "close", "()V", "Lcoil/disk/RealDiskCache$RealEditor;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcoil/disk/RealDiskCache$RealEditor;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Lcoil/disk/DiskLruCache$Snapshot;", "Lokio/Path;", "getMetadata", "()Lokio/Path;", "metadata", "getData", "data", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class RealSnapshot implements DiskCache.Snapshot, AutoCloseable {
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final DiskLruCache.Snapshot f1893Wwwwwwwwwwwwwwwwwwwwwwwww;

        public RealSnapshot(@NotNull DiskLruCache.Snapshot snapshot) {
            this.f1893Wwwwwwwwwwwwwwwwwwwwwwwww = snapshot;
        }

        @Override // coil.disk.DiskCache.Snapshot
        @Nullable
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public RealEditor Wwwwwwwww() {
            DiskLruCache.Editor Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f1893Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                return new RealEditor(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            }
            return null;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.f1893Wwwwwwwwwwwwwwwwwwwwwwwww.close();
        }

        @Override // coil.disk.DiskCache.Snapshot
        @NotNull
        public Path getData() {
            return this.f1893Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww(1);
        }

        @Override // coil.disk.DiskCache.Snapshot
        @NotNull
        public Path getMetadata() {
            return this.f1893Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww(0);
        }
    }

    public RealDiskCache(long j, @NotNull Path path, @NotNull FileSystem fileSystem, @NotNull CoroutineDispatcher coroutineDispatcher) {
        this.f1891Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = j;
        this.f1890Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = path;
        this.f1889Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = fileSystem;
        this.f1888Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new DiskLruCache(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), coroutineDispatcher, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), 1, 2);
    }

    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        return ByteString.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str).sha256().hex();
    }

    public long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f1891Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public Path Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f1890Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // coil.disk.DiskCache
    @Nullable
    public DiskCache.Editor Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
        DiskLruCache.Editor Kkkkkkkkk2 = this.f1888Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Kkkkkkkkk(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str));
        if (Kkkkkkkkk2 != null) {
            return new RealEditor(Kkkkkkkkk2);
        }
        return null;
    }

    @Override // coil.disk.DiskCache
    @NotNull
    public FileSystem Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f1889Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // coil.disk.DiskCache
    @Nullable
    public DiskCache.Snapshot get(@NotNull String str) {
        DiskLruCache.Snapshot Kkkkkkkk2 = this.f1888Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Kkkkkkkk(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str));
        if (Kkkkkkkk2 != null) {
            return new RealSnapshot(Kkkkkkkk2);
        }
        return null;
    }
}
