package okio;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.mbridge.msdk.MBridgeConstans;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0010\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J'\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\u000b\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u001d\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00040\b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u001f\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0011\u0010\u0010J\u0017\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J'\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0012\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u001f\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u001f\u0010 \u001a\u00020\u001d2\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0006H\u0016¢\u0006\u0004\b \u0010\u001fJ\u001f\u0010\"\u001a\u00020!2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\"\u0010#J\u001f\u0010&\u001a\u00020!2\u0006\u0010$\u001a\u00020\u00042\u0006\u0010%\u001a\u00020\u0004H\u0016¢\u0006\u0004\b&\u0010'J\u001f\u0010(\u001a\u00020!2\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0006H\u0016¢\u0006\u0004\b(\u0010#J\u000f\u0010*\u001a\u00020)H\u0016¢\u0006\u0004\b*\u0010+J\u0013\u0010,\u001a\u00020!*\u00020\u0004H\u0002¢\u0006\u0004\b,\u0010-J\u0013\u0010.\u001a\u00020!*\u00020\u0004H\u0002¢\u0006\u0004\b.\u0010-¨\u0006/"}, d2 = {"Lokio/JvmSystemFileSystem;", "Lokio/FileSystem;", "<init>", "()V", "Lokio/Path;", "dir", "", "throwOnFailure", "", "Wwwwwwwwwwwwww", "(Lokio/Path;Z)Ljava/util/List;", MBridgeConstans.DYNAMIC_VIEW_WX_PATH, "Lokio/FileMetadata;", "Wwwwwwwwwwwwwwwwwwwww", "(Lokio/Path;)Lokio/FileMetadata;", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Path;)Ljava/util/List;", "Wwwwwwwwwwwwwwwwwwwwwww", "file", "Lokio/FileHandle;", "Wwwwwwwwwwwwwwwwwwww", "(Lokio/Path;)Lokio/FileHandle;", "mustCreate", "mustExist", "Wwwwwwwwwwwwwwwwww", "(Lokio/Path;ZZ)Lokio/FileHandle;", "Lokio/Source;", "Wwwwwwwwwwwwwww", "(Lokio/Path;)Lokio/Source;", "Lokio/Sink;", "Wwwwwwwwwwwwwwww", "(Lokio/Path;Z)Lokio/Sink;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Path;Z)V", "source", TypedValues.AttributesType.S_TARGET, "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Path;Lokio/Path;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "", "toString", "()Ljava/lang/String;", "Wwwwwwwwwwww", "(Lokio/Path;)V", "Wwwwwwwwwwwww", "okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nJvmSystemFileSystem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JvmSystemFileSystem.kt\nokio/JvmSystemFileSystem\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,158:1\n11670#2,3:159\n*S KotlinDebug\n*F\n+ 1 JvmSystemFileSystem.kt\nokio/JvmSystemFileSystem\n*L\n77#1:159,3\n*E\n"})
/* loaded from: classes7.dex */
public class JvmSystemFileSystem extends FileSystem {
    private final List<Path> Wwwwwwwwwwwwww(Path path, boolean z) {
        File Wwwwwwwwwwwwwwwwwwwww2 = path.Wwwwwwwwwwwwwwwwwwwww();
        String[] list = Wwwwwwwwwwwwwwwwwwwww2.list();
        if (list == null) {
            if (z) {
                if (!Wwwwwwwwwwwwwwwwwwwww2.exists()) {
                    throw new FileNotFoundException("no such file: " + path);
                }
                throw new IOException("failed to list " + path);
            }
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            arrayList.add(path.Wwwwwwwwwwwwwwwwwwwwwwww(str));
        }
        CollectionsKt.sort(arrayList);
        return arrayList;
    }

    public final void Wwwwwwwwwwww(Path path) {
        if (Wwwwwwwwwwwwwwwwwwwwwwwww(path)) {
            return;
        }
        throw new IOException(path + " doesn't exist.");
    }

    public final void Wwwwwwwwwwwww(Path path) {
        if (!Wwwwwwwwwwwwwwwwwwwwwwwww(path)) {
            return;
        }
        throw new IOException(path + " already exists.");
    }

    @Override // okio.FileSystem
    @NotNull
    public Source Wwwwwwwwwwwwwww(@NotNull Path path) {
        return Okio.Wwwwwwwwwwwwwwwwwwwwwwwww(path.Wwwwwwwwwwwwwwwwwwwww());
    }

    @Override // okio.FileSystem
    @NotNull
    public Sink Wwwwwwwwwwwwwwww(@NotNull Path path, boolean z) {
        Sink Wwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        if (z) {
            Wwwwwwwwwwwww(path);
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Okio__JvmOkioKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(path.Wwwwwwwwwwwwwwwwwwwww(), false, 1, null);
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    @Override // okio.FileSystem
    @NotNull
    public FileHandle Wwwwwwwwwwwwwwwwww(@NotNull Path path, boolean z, boolean z2) {
        if (z && z2) {
            throw new IllegalArgumentException("Cannot require mustCreate and mustExist at the same time.");
        }
        if (z) {
            Wwwwwwwwwwwww(path);
        }
        if (z2) {
            Wwwwwwwwwwww(path);
        }
        return new JvmFileHandle(true, new RandomAccessFile(path.Wwwwwwwwwwwwwwwwwwwww(), "rw"));
    }

    @Override // okio.FileSystem
    @NotNull
    public FileHandle Wwwwwwwwwwwwwwwwwwww(@NotNull Path path) {
        return new JvmFileHandle(false, new RandomAccessFile(path.Wwwwwwwwwwwwwwwwwwwww(), "r"));
    }

    @Override // okio.FileSystem
    @Nullable
    public FileMetadata Wwwwwwwwwwwwwwwwwwwww(@NotNull Path path) {
        File Wwwwwwwwwwwwwwwwwwwww2 = path.Wwwwwwwwwwwwwwwwwwwww();
        boolean isFile = Wwwwwwwwwwwwwwwwwwwww2.isFile();
        boolean isDirectory = Wwwwwwwwwwwwwwwwwwwww2.isDirectory();
        long lastModified = Wwwwwwwwwwwwwwwwwwwww2.lastModified();
        long length = Wwwwwwwwwwwwwwwwwwwww2.length();
        if (!isFile && !isDirectory && lastModified == 0 && length == 0 && !Wwwwwwwwwwwwwwwwwwwww2.exists()) {
            return null;
        }
        return new FileMetadata(isFile, isDirectory, null, Long.valueOf(length), null, Long.valueOf(lastModified), null, null, 128, null);
    }

    @Override // okio.FileSystem
    @Nullable
    public List<Path> Wwwwwwwwwwwwwwwwwwwwwww(@NotNull Path path) {
        return Wwwwwwwwwwwwww(path, false);
    }

    @Override // okio.FileSystem
    @NotNull
    public List<Path> Wwwwwwwwwwwwwwwwwwwwwwww(@NotNull Path path) {
        return Wwwwwwwwwwwwww(path, true);
    }

    @Override // okio.FileSystem
    public void Wwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Path path, boolean z) {
        if (!Thread.interrupted()) {
            File Wwwwwwwwwwwwwwwwwwwww2 = path.Wwwwwwwwwwwwwwwwwwwww();
            if (!Wwwwwwwwwwwwwwwwwwwww2.delete()) {
                if (!Wwwwwwwwwwwwwwwwwwwww2.exists()) {
                    if (z) {
                        throw new FileNotFoundException("no such file: " + path);
                    }
                    return;
                }
                throw new IOException("failed to delete " + path);
            }
            return;
        }
        throw new InterruptedIOException("interrupted");
    }

    @Override // okio.FileSystem
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Path path, boolean z) {
        if (!path.Wwwwwwwwwwwwwwwwwwwww().mkdir()) {
            FileMetadata Wwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwww(path);
            if (Wwwwwwwwwwwwwwwwwwwww2 != null && Wwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                if (z) {
                    throw new IOException(path + " already exist.");
                }
                return;
            }
            throw new IOException("failed to create directory: " + path);
        }
    }

    @Override // okio.FileSystem
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Path path, @NotNull Path path2) {
        if (path.Wwwwwwwwwwwwwwwwwwwww().renameTo(path2.Wwwwwwwwwwwwwwwwwwwww())) {
            return;
        }
        throw new IOException("failed to move " + path + " to " + path2);
    }

    @Override // okio.FileSystem
    @NotNull
    public Sink Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Path path, boolean z) {
        if (z) {
            Wwwwwwwwwwww(path);
        }
        return Okio.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(path.Wwwwwwwwwwwwwwwwwwwww(), true);
    }

    @NotNull
    public String toString() {
        return "JvmSystemFileSystem";
    }
}
