package okio;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.mbridge.msdk.MBridgeConstans;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.nio.channels.FileChannel;
import java.nio.file.CopyOption;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.NoSuchFileException;
import java.nio.file.OpenOption;
import java.nio.file.StandardCopyOption;
import java.nio.file.StandardOpenOption;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.io.path.PathsKt;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u001d\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\b2\u0006\u0010\u0007\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000b\u0010\nJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ'\u0010\u0013\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0016\u001a\u00020\u00152\u0006\u0010\f\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u001f\u0010\u0019\u001a\u00020\u00182\u0006\u0010\f\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u001f\u0010\u001b\u001a\u00020\u00182\u0006\u0010\f\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u001b\u0010\u001aJ\u001f\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u001f\u0010!\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u00022\u0006\u0010 \u001a\u00020\u0002H\u0016¢\u0006\u0004\b!\u0010\"J\u001f\u0010#\u001a\u00020\u001c2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0010H\u0016¢\u0006\u0004\b#\u0010\u001eJ\u000f\u0010%\u001a\u00020$H\u0016¢\u0006\u0004\b%\u0010&J\u0013\u0010(\u001a\u00020'*\u00020\u0002H\u0002¢\u0006\u0004\b(\u0010)J'\u0010+\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\b2\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010*\u001a\u00020\u0010H\u0002¢\u0006\u0004\b+\u0010,R\u0014\u00100\u001a\u00020-8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010/¨\u00061"}, d2 = {"Lokio/NioFileSystemWrappingFileSystem;", "Lokio/NioSystemFileSystem;", "Lokio/Path;", MBridgeConstans.DYNAMIC_VIEW_WX_PATH, "Lokio/FileMetadata;", "Wwwwwwwwwwwwwwwwwwwww", "(Lokio/Path;)Lokio/FileMetadata;", "dir", "", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Path;)Ljava/util/List;", "Wwwwwwwwwwwwwwwwwwwwwww", "file", "Lokio/FileHandle;", "Wwwwwwwwwwwwwwwwwwww", "(Lokio/Path;)Lokio/FileHandle;", "", "mustCreate", "mustExist", "Wwwwwwwwwwwwwwwwww", "(Lokio/Path;ZZ)Lokio/FileHandle;", "Lokio/Source;", "Wwwwwwwwwwwwwww", "(Lokio/Path;)Lokio/Source;", "Lokio/Sink;", "Wwwwwwwwwwwwwwww", "(Lokio/Path;Z)Lokio/Sink;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Path;Z)V", "source", TypedValues.AttributesType.S_TARGET, "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Path;Lokio/Path;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "", "toString", "()Ljava/lang/String;", "Ljava/nio/file/Path;", "Wwwwwwwww", "(Lokio/Path;)Ljava/nio/file/Path;", "throwOnFailure", "Wwwwwwwwwwwwww", "(Lokio/Path;Z)Ljava/util/List;", "Ljava/nio/file/FileSystem;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/nio/file/FileSystem;", "nioFileSystem", "okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nNioFileSystemWrappingFileSystem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NioFileSystemWrappingFileSystem.kt\nokio/NioFileSystemWrappingFileSystem\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,192:1\n1620#2,3:193\n1#3:196\n37#4,2:197\n37#4,2:199\n37#4,2:201\n*S KotlinDebug\n*F\n+ 1 NioFileSystemWrappingFileSystem.kt\nokio/NioFileSystemWrappingFileSystem\n*L\n77#1:193,3\n104#1:197,2\n125#1:199,2\n138#1:201,2\n*E\n"})
/* loaded from: classes7.dex */
public final class NioFileSystemWrappingFileSystem extends NioSystemFileSystem {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final java.nio.file.FileSystem f13194Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public final java.nio.file.Path Wwwwwwwww(Path path) {
        java.nio.file.Path path2;
        path2 = this.f13194Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getPath(path.toString(), new String[0]);
        return path2;
    }

    public final List<Path> Wwwwwwwwwwwwww(Path path, boolean z) {
        boolean exists;
        java.nio.file.Path Wwwwwwwww2 = Wwwwwwwww(path);
        try {
            List<Object> listDirectoryEntries$default = PathsKt.listDirectoryEntries$default(Wwwwwwwww2, null, 1, null);
            ArrayList arrayList = new ArrayList();
            for (Object obj : listDirectoryEntries$default) {
                arrayList.add(path.Wwwwwwwwwwwwwwwwwwwwwwww(kotlin.io.path.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obj).toString()));
            }
            CollectionsKt.sort(arrayList);
            return arrayList;
        } catch (Exception unused) {
            if (z) {
                exists = Files.exists(Wwwwwwwww2, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0));
                if (!exists) {
                    throw new FileNotFoundException("no such file: " + path);
                }
                throw new IOException("failed to list " + path);
            }
            return null;
        }
    }

    @Override // okio.JvmSystemFileSystem, okio.FileSystem
    @NotNull
    public Source Wwwwwwwwwwwwwww(@NotNull Path path) {
        InputStream newInputStream;
        try {
            newInputStream = Files.newInputStream(Wwwwwwwww(path), (OpenOption[]) Arrays.copyOf(new OpenOption[0], 0));
            return Okio.Wwwwwwwwwwwwwwwwwwwwwwww(newInputStream);
        } catch (NoSuchFileException unused) {
            throw new FileNotFoundException("no such file: " + path);
        }
    }

    @Override // okio.JvmSystemFileSystem, okio.FileSystem
    @NotNull
    public Sink Wwwwwwwwwwwwwwww(@NotNull Path path, boolean z) {
        OutputStream newOutputStream;
        StandardOpenOption standardOpenOption;
        List createListBuilder = CollectionsKt.createListBuilder();
        if (z) {
            standardOpenOption = StandardOpenOption.CREATE_NEW;
            createListBuilder.add(standardOpenOption);
        }
        List build = CollectionsKt.build(createListBuilder);
        try {
            java.nio.file.Path Wwwwwwwww2 = Wwwwwwwww(path);
            StandardOpenOption[] standardOpenOptionArr = (StandardOpenOption[]) build.toArray(new StandardOpenOption[0]);
            OpenOption[] openOptionArr = (OpenOption[]) Arrays.copyOf(standardOpenOptionArr, standardOpenOptionArr.length);
            newOutputStream = Files.newOutputStream(Wwwwwwwww2, (OpenOption[]) Arrays.copyOf(openOptionArr, openOptionArr.length));
            return Okio.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(newOutputStream);
        } catch (NoSuchFileException unused) {
            throw new FileNotFoundException("no such file: " + path);
        }
    }

    @Override // okio.JvmSystemFileSystem, okio.FileSystem
    @NotNull
    public FileHandle Wwwwwwwwwwwwwwwwww(@NotNull Path path, boolean z, boolean z2) {
        StandardOpenOption standardOpenOption;
        StandardOpenOption standardOpenOption2;
        StandardOpenOption standardOpenOption3;
        FileChannel open;
        StandardOpenOption standardOpenOption4;
        if (z && z2) {
            throw new IllegalArgumentException("Cannot require mustCreate and mustExist at the same time.");
        }
        List createListBuilder = CollectionsKt.createListBuilder();
        standardOpenOption = StandardOpenOption.READ;
        createListBuilder.add(standardOpenOption);
        standardOpenOption2 = StandardOpenOption.WRITE;
        createListBuilder.add(standardOpenOption2);
        if (z) {
            standardOpenOption4 = StandardOpenOption.CREATE_NEW;
            createListBuilder.add(standardOpenOption4);
        } else if (!z2) {
            standardOpenOption3 = StandardOpenOption.CREATE;
            createListBuilder.add(standardOpenOption3);
        }
        List build = CollectionsKt.build(createListBuilder);
        try {
            java.nio.file.Path Wwwwwwwww2 = Wwwwwwwww(path);
            StandardOpenOption[] standardOpenOptionArr = (StandardOpenOption[]) build.toArray(new StandardOpenOption[0]);
            open = FileChannel.open(Wwwwwwwww2, (OpenOption[]) Arrays.copyOf(standardOpenOptionArr, standardOpenOptionArr.length));
            return new NioFileSystemFileHandle(true, open);
        } catch (NoSuchFileException unused) {
            throw new FileNotFoundException("no such file: " + path);
        }
    }

    @Override // okio.JvmSystemFileSystem, okio.FileSystem
    @NotNull
    public FileHandle Wwwwwwwwwwwwwwwwwwww(@NotNull Path path) {
        StandardOpenOption standardOpenOption;
        FileChannel open;
        try {
            java.nio.file.Path Wwwwwwwww2 = Wwwwwwwww(path);
            standardOpenOption = StandardOpenOption.READ;
            open = FileChannel.open(Wwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(standardOpenOption));
            return new NioFileSystemFileHandle(false, open);
        } catch (NoSuchFileException unused) {
            throw new FileNotFoundException("no such file: " + path);
        }
    }

    @Override // okio.NioSystemFileSystem, okio.JvmSystemFileSystem, okio.FileSystem
    @Nullable
    public FileMetadata Wwwwwwwwwwwwwwwwwwwww(@NotNull Path path) {
        return Wwwwwwwwwww(Wwwwwwwww(path));
    }

    @Override // okio.JvmSystemFileSystem, okio.FileSystem
    @Nullable
    public List<Path> Wwwwwwwwwwwwwwwwwwwwwww(@NotNull Path path) {
        return Wwwwwwwwwwwwww(path, false);
    }

    @Override // okio.JvmSystemFileSystem, okio.FileSystem
    @NotNull
    public List<Path> Wwwwwwwwwwwwwwwwwwwwwwww(@NotNull Path path) {
        return Wwwwwwwwwwwwww(path, true);
    }

    @Override // okio.JvmSystemFileSystem, okio.FileSystem
    public void Wwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Path path, boolean z) {
        boolean exists;
        if (!Thread.interrupted()) {
            java.nio.file.Path Wwwwwwwww2 = Wwwwwwwww(path);
            try {
                Files.delete(Wwwwwwwww2);
                return;
            } catch (NoSuchFileException unused) {
                if (!z) {
                    return;
                }
                throw new FileNotFoundException("no such file: " + path);
            } catch (IOException unused2) {
                exists = Files.exists(Wwwwwwwww2, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0));
                if (exists) {
                    throw new IOException("failed to delete " + path);
                }
                return;
            }
        }
        throw new InterruptedIOException("interrupted");
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000c, code lost:
        if (r0.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() == true) goto L5;
     */
    @Override // okio.JvmSystemFileSystem, okio.FileSystem
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@org.jetbrains.annotations.NotNull okio.Path r4, boolean r5) {
        /*
            r3 = this;
            okio.FileMetadata r0 = r3.Wwwwwwwwwwwwwwwwwwwww(r4)
            r1 = 0
            if (r0 == 0) goto Lf
            boolean r0 = r0.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()
            r2 = 1
            if (r0 != r2) goto Lf
            goto L10
        Lf:
            r2 = r1
        L10:
            if (r2 == 0) goto L2c
            if (r5 != 0) goto L15
            goto L2c
        L15:
            java.io.IOException r5 = new java.io.IOException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r0.append(r4)
            java.lang.String r4 = " already exist."
            r0.append(r4)
            java.lang.String r4 = r0.toString()
            r5.<init>(r4)
            throw r5
        L2c:
            java.nio.file.Path r5 = r3.Wwwwwwwww(r4)     // Catch: java.io.IOException -> L3c
            java.nio.file.attribute.FileAttribute[] r0 = new java.nio.file.attribute.FileAttribute[r1]     // Catch: java.io.IOException -> L3c
            java.lang.Object[] r0 = java.util.Arrays.copyOf(r0, r1)     // Catch: java.io.IOException -> L3c
            java.nio.file.attribute.FileAttribute[] r0 = (java.nio.file.attribute.FileAttribute[]) r0     // Catch: java.io.IOException -> L3c
            kotlin.io.path.Ill.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r5, r0)     // Catch: java.io.IOException -> L3c
            return
        L3c:
            r5 = move-exception
            if (r2 == 0) goto L40
            return
        L40:
            java.io.IOException r0 = new java.io.IOException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "failed to create directory: "
            r1.append(r2)
            r1.append(r4)
            java.lang.String r4 = r1.toString()
            r0.<init>(r4, r5)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.NioFileSystemWrappingFileSystem.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(okio.Path, boolean):void");
    }

    @Override // okio.NioSystemFileSystem, okio.JvmSystemFileSystem, okio.FileSystem
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Path path, @NotNull Path path2) {
        String message;
        StandardCopyOption standardCopyOption;
        StandardCopyOption standardCopyOption2;
        try {
            java.nio.file.Path Wwwwwwwww2 = Wwwwwwwww(path);
            java.nio.file.Path Wwwwwwwww3 = Wwwwwwwww(path2);
            standardCopyOption = StandardCopyOption.ATOMIC_MOVE;
            standardCopyOption2 = StandardCopyOption.REPLACE_EXISTING;
            Files.move(Wwwwwwwww2, Wwwwwwwww3, (CopyOption[]) Arrays.copyOf(new CopyOption[]{Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(standardCopyOption), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(standardCopyOption2)}, 2));
        } catch (UnsupportedOperationException unused) {
            throw new IOException("atomic move not supported");
        } catch (NoSuchFileException e) {
            message = e.getMessage();
            throw new FileNotFoundException(message);
        }
    }

    @Override // okio.JvmSystemFileSystem, okio.FileSystem
    @NotNull
    public Sink Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Path path, boolean z) {
        StandardOpenOption standardOpenOption;
        OutputStream newOutputStream;
        StandardOpenOption standardOpenOption2;
        List createListBuilder = CollectionsKt.createListBuilder();
        standardOpenOption = StandardOpenOption.APPEND;
        createListBuilder.add(standardOpenOption);
        if (!z) {
            standardOpenOption2 = StandardOpenOption.CREATE;
            createListBuilder.add(standardOpenOption2);
        }
        List build = CollectionsKt.build(createListBuilder);
        java.nio.file.Path Wwwwwwwww2 = Wwwwwwwww(path);
        StandardOpenOption[] standardOpenOptionArr = (StandardOpenOption[]) build.toArray(new StandardOpenOption[0]);
        OpenOption[] openOptionArr = (OpenOption[]) Arrays.copyOf(standardOpenOptionArr, standardOpenOptionArr.length);
        newOutputStream = Files.newOutputStream(Wwwwwwwww2, (OpenOption[]) Arrays.copyOf(openOptionArr, openOptionArr.length));
        return Okio.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(newOutputStream);
    }

    @Override // okio.NioSystemFileSystem, okio.JvmSystemFileSystem
    @NotNull
    public String toString() {
        return Reflection.getOrCreateKotlinClass(this.f13194Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getClass()).getSimpleName();
    }
}
