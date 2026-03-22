package okio;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.mbridge.msdk.MBridgeConstans;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.zip.Inflater;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import okio.Path;
import okio.internal.FixedLengthSource;
import okio.internal.ZipEntry;
import okio.internal.ZipFilesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0013\b\u0000\u0018\u0000 92\u00020\u0001:\u0001:B7\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0001\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000bJ'\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u000f2\u0006\u0010\f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0019\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0012\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J'\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\r2\u0006\u0010\u001b\u001a\u00020\rH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u001d\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00020\u000f2\u0006\u0010\f\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u001f\u0010 \u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u000f2\u0006\u0010\f\u001a\u00020\u0002H\u0016¢\u0006\u0004\b \u0010\u001fJ\u0017\u0010\"\u001a\u00020!2\u0006\u0010\u0016\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\"\u0010#J\u001f\u0010%\u001a\u00020$2\u0006\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\rH\u0016¢\u0006\u0004\b%\u0010&J\u001f\u0010'\u001a\u00020$2\u0006\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\rH\u0016¢\u0006\u0004\b'\u0010&J\u001f\u0010)\u001a\u00020(2\u0006\u0010\f\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\rH\u0016¢\u0006\u0004\b)\u0010*J\u001f\u0010-\u001a\u00020(2\u0006\u0010+\u001a\u00020\u00022\u0006\u0010,\u001a\u00020\u0002H\u0016¢\u0006\u0004\b-\u0010.J\u001f\u0010/\u001a\u00020(2\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\rH\u0016¢\u0006\u0004\b/\u0010*J\u0017\u00100\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0002H\u0002¢\u0006\u0004\b0\u00101R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b2\u00103R\u0014\u0010\u0004\u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b4\u00105R \u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b6\u00107R\u0016\u0010\t\u001a\u0004\u0018\u00010\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u00108¨\u0006;"}, d2 = {"Lokio/ZipFileSystem;", "Lokio/FileSystem;", "Lokio/Path;", "zipPath", "fileSystem", "", "Lokio/internal/ZipEntry;", RemoteConfigConstants.ResponseFieldKey.ENTRIES, "", "comment", "<init>", "(Lokio/Path;Lokio/FileSystem;Ljava/util/Map;Ljava/lang/String;)V", "dir", "", "throwOnFailure", "", "Wwwwwwwwwwwww", "(Lokio/Path;Z)Ljava/util/List;", MBridgeConstans.DYNAMIC_VIEW_WX_PATH, "Lokio/FileMetadata;", "Wwwwwwwwwwwwwwwwwwwww", "(Lokio/Path;)Lokio/FileMetadata;", "file", "Lokio/FileHandle;", "Wwwwwwwwwwwwwwwwwwww", "(Lokio/Path;)Lokio/FileHandle;", "mustCreate", "mustExist", "Wwwwwwwwwwwwwwwwww", "(Lokio/Path;ZZ)Lokio/FileHandle;", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Path;)Ljava/util/List;", "Wwwwwwwwwwwwwwwwwwwwwww", "Lokio/Source;", "Wwwwwwwwwwwwwww", "(Lokio/Path;)Lokio/Source;", "Lokio/Sink;", "Wwwwwwwwwwwwwwww", "(Lokio/Path;Z)Lokio/Sink;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Path;Z)V", "source", TypedValues.AttributesType.S_TARGET, "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Path;Lokio/Path;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwww", "(Lokio/Path;)Lokio/Path;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lokio/Path;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lokio/FileSystem;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/Map;", "Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "Companion", "okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nZipFileSystem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ZipFileSystem.kt\nokio/ZipFileSystem\n+ 2 Okio.kt\nokio/Okio__OkioKt\n*L\n1#1,174:1\n52#2,21:175\n52#2,21:196\n*S KotlinDebug\n*F\n+ 1 ZipFileSystem.kt\nokio/ZipFileSystem\n*L\n102#1:175,21\n131#1:196,21\n*E\n"})
/* loaded from: classes7.dex */
public final class ZipFileSystem extends FileSystem {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f13257Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Map<Path, ZipEntry> f13258Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final FileSystem f13259Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Path f13260Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Companion f13256Wwwwwwwwwwwwwwwwwwwwwwwwwww = new Companion(null);
    @Deprecated
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Path f13255Wwwwwwwwwwwwwwwwwwwwwwwwww = Path.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Path.Companion, "/", false, 1, null);

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lokio/ZipFileSystem$Companion;", "", "<init>", "()V", "okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public ZipFileSystem(@NotNull Path path, @NotNull FileSystem fileSystem, @NotNull Map<Path, ZipEntry> map, @Nullable String str) {
        this.f13260Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = path;
        this.f13259Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = fileSystem;
        this.f13258Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = map;
        this.f13257Wwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
    }

    private final List<Path> Wwwwwwwwwwwww(Path path, boolean z) {
        ZipEntry zipEntry = this.f13258Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(Wwwwwwwwwwwwww(path));
        if (zipEntry == null) {
            if (!z) {
                return null;
            }
            throw new IOException("not a directory: " + path);
        }
        return CollectionsKt.toList(zipEntry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
    }

    public final Path Wwwwwwwwwwwwww(Path path) {
        return f13255Wwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwww(path, true);
    }

    @Override // okio.FileSystem
    @NotNull
    public Source Wwwwwwwwwwwwwww(@NotNull Path path) throws IOException {
        BufferedSource bufferedSource;
        ZipEntry zipEntry = this.f13258Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(Wwwwwwwwwwwwww(path));
        if (zipEntry != null) {
            FileHandle Wwwwwwwwwwwwwwwwwwww2 = this.f13259Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwww(this.f13260Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            Throwable th = null;
            try {
                bufferedSource = Okio.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwww2.Kkkkkkkkkkk(zipEntry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
                if (Wwwwwwwwwwwwwwwwwwww2 != null) {
                    try {
                        Wwwwwwwwwwwwwwwwwwww2.close();
                    } catch (Throwable th2) {
                        th = th2;
                    }
                }
            } catch (Throwable th3) {
                if (Wwwwwwwwwwwwwwwwwwww2 != null) {
                    try {
                        Wwwwwwwwwwwwwwwwwwww2.close();
                    } catch (Throwable th4) {
                        ExceptionsKt.addSuppressed(th3, th4);
                    }
                }
                bufferedSource = null;
                th = th3;
            }
            if (th == null) {
                ZipFilesKt.Wwwwwwwwwwwwwwwwwwwwwwww(bufferedSource);
                if (zipEntry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() == 0) {
                    return new FixedLengthSource(bufferedSource, zipEntry.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(), true);
                }
                return new FixedLengthSource(new InflaterSource(new FixedLengthSource(bufferedSource, zipEntry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), true), new Inflater(true)), zipEntry.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(), false);
            }
            throw th;
        }
        throw new FileNotFoundException("no such file: " + path);
    }

    @Override // okio.FileSystem
    @NotNull
    public Sink Wwwwwwwwwwwwwwww(@NotNull Path path, boolean z) {
        throw new IOException("zip file systems are read-only");
    }

    @Override // okio.FileSystem
    @NotNull
    public FileHandle Wwwwwwwwwwwwwwwwww(@NotNull Path path, boolean z, boolean z2) {
        throw new IOException("zip entries are not writable");
    }

    @Override // okio.FileSystem
    @NotNull
    public FileHandle Wwwwwwwwwwwwwwwwwwww(@NotNull Path path) {
        throw new UnsupportedOperationException("not implemented yet!");
    }

    @Override // okio.FileSystem
    @Nullable
    public FileMetadata Wwwwwwwwwwwwwwwwwwwww(@NotNull Path path) {
        Long valueOf;
        BufferedSource bufferedSource;
        ZipEntry zipEntry = this.f13258Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(Wwwwwwwwwwwwww(path));
        Throwable th = null;
        if (zipEntry == null) {
            return null;
        }
        boolean z = !zipEntry.Wwwwwwwwwwwwwwwwwwwwwwwwwww();
        boolean Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = zipEntry.Wwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (zipEntry.Wwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            valueOf = null;
        } else {
            valueOf = Long.valueOf(zipEntry.Wwwwwwwwwwwwwwwwwwwwwwwwwwww());
        }
        FileMetadata fileMetadata = new FileMetadata(z, Wwwwwwwwwwwwwwwwwwwwwwwwwww2, null, valueOf, null, zipEntry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), null, null, 128, null);
        if (zipEntry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() == -1) {
            return fileMetadata;
        }
        FileHandle Wwwwwwwwwwwwwwwwwwww2 = this.f13259Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwww(this.f13260Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        try {
            bufferedSource = Okio.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwww2.Kkkkkkkkkkk(zipEntry.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
            if (Wwwwwwwwwwwwwwwwwwww2 != null) {
                try {
                    Wwwwwwwwwwwwwwwwwwww2.close();
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        } catch (Throwable th3) {
            if (Wwwwwwwwwwwwwwwwwwww2 != null) {
                try {
                    Wwwwwwwwwwwwwwwwwwww2.close();
                } catch (Throwable th4) {
                    ExceptionsKt.addSuppressed(th3, th4);
                }
            }
            th = th3;
            bufferedSource = null;
        }
        if (th == null) {
            return ZipFilesKt.Wwwwwwwwwwwwwwwwwwwwwwwwwww(bufferedSource, fileMetadata);
        }
        throw th;
    }

    @Override // okio.FileSystem
    @Nullable
    public List<Path> Wwwwwwwwwwwwwwwwwwwwwww(@NotNull Path path) {
        return Wwwwwwwwwwwww(path, false);
    }

    @Override // okio.FileSystem
    @NotNull
    public List<Path> Wwwwwwwwwwwwwwwwwwwwwwww(@NotNull Path path) {
        return Wwwwwwwwwwwww(path, true);
    }

    @Override // okio.FileSystem
    public void Wwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Path path, boolean z) {
        throw new IOException("zip file systems are read-only");
    }

    @Override // okio.FileSystem
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Path path, boolean z) {
        throw new IOException("zip file systems are read-only");
    }

    @Override // okio.FileSystem
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Path path, @NotNull Path path2) {
        throw new IOException("zip file systems are read-only");
    }

    @Override // okio.FileSystem
    @NotNull
    public Sink Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Path path, boolean z) {
        throw new IOException("zip file systems are read-only");
    }
}
