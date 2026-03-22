package okio;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.mbridge.msdk.MBridgeConstans;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.file.FileSystemException;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.NoSuchFileException;
import java.nio.file.StandardCopyOption;
import java.nio.file.attribute.BasicFileAttributes;
import java.nio.file.attribute.FileTime;
import kotlin.Metadata;
import kotlin.io.path.Wwwwwwww;
import kotlin.jvm.internal.SourceDebugExtension;
import okio.Path;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0003\b\u0010\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\u000b\u001a\u0004\u0018\u00010\u00062\u0006\u0010\n\u001a\u00020\tH\u0004¢\u0006\u0004\b\u000b\u0010\fJ\u001f\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u0015\u0010\u0017\u001a\u0004\u0018\u00010\u0016*\u00020\u0015H\u0002¢\u0006\u0004\b\u0017\u0010\u0018¨\u0006\u0019"}, d2 = {"Lokio/NioSystemFileSystem;", "Lokio/JvmSystemFileSystem;", "<init>", "()V", "Lokio/Path;", MBridgeConstans.DYNAMIC_VIEW_WX_PATH, "Lokio/FileMetadata;", "Wwwwwwwwwwwwwwwwwwwww", "(Lokio/Path;)Lokio/FileMetadata;", "Ljava/nio/file/Path;", "nioPath", "Wwwwwwwwwww", "(Ljava/nio/file/Path;)Lokio/FileMetadata;", "source", TypedValues.AttributesType.S_TARGET, "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Path;Lokio/Path;)V", "", "toString", "()Ljava/lang/String;", "Ljava/nio/file/attribute/FileTime;", "", "Wwwwwwwwww", "(Ljava/nio/file/attribute/FileTime;)Ljava/lang/Long;", "okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nNioSystemFileSystem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NioSystemFileSystem.kt\nokio/NioSystemFileSystem\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,92:1\n1#2:93\n*E\n"})
/* loaded from: classes7.dex */
public class NioSystemFileSystem extends JvmSystemFileSystem {
    public final Long Wwwwwwwwww(FileTime fileTime) {
        long millis;
        millis = fileTime.toMillis();
        Long valueOf = Long.valueOf(millis);
        if (valueOf.longValue() != 0) {
            return valueOf;
        }
        return null;
    }

    @Nullable
    public final FileMetadata Wwwwwwwwwww(@NotNull java.nio.file.Path path) {
        LinkOption linkOption;
        BasicFileAttributes readAttributes;
        boolean isSymbolicLink;
        java.nio.file.Path path2;
        boolean isRegularFile;
        boolean isDirectory;
        Path path3;
        long size;
        FileTime creationTime;
        Long l;
        FileTime lastModifiedTime;
        Long l2;
        FileTime lastAccessTime;
        Long l3 = null;
        try {
            Class Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            linkOption = LinkOption.NOFOLLOW_LINKS;
            readAttributes = Files.readAttributes(path, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, linkOption);
            isSymbolicLink = readAttributes.isSymbolicLink();
            if (isSymbolicLink) {
                path2 = Files.readSymbolicLink(path);
            } else {
                path2 = null;
            }
            isRegularFile = readAttributes.isRegularFile();
            isDirectory = readAttributes.isDirectory();
            if (path2 != null) {
                path3 = Path.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Path.Companion, path2, false, 1, null);
            } else {
                path3 = null;
            }
            size = readAttributes.size();
            Long valueOf = Long.valueOf(size);
            creationTime = readAttributes.creationTime();
            if (creationTime != null) {
                l = Wwwwwwwwww(creationTime);
            } else {
                l = null;
            }
            lastModifiedTime = readAttributes.lastModifiedTime();
            if (lastModifiedTime != null) {
                l2 = Wwwwwwwwww(lastModifiedTime);
            } else {
                l2 = null;
            }
            lastAccessTime = readAttributes.lastAccessTime();
            if (lastAccessTime != null) {
                l3 = Wwwwwwwwww(lastAccessTime);
            }
            return new FileMetadata(isRegularFile, isDirectory, path3, valueOf, l, l2, l3, null, 128, null);
        } catch (NoSuchFileException | FileSystemException unused) {
            return null;
        }
    }

    @Override // okio.JvmSystemFileSystem, okio.FileSystem
    @Nullable
    public FileMetadata Wwwwwwwwwwwwwwwwwwwww(@NotNull Path path) {
        return Wwwwwwwwwww(path.Wwwwwwwwwwwwwwwwwwww());
    }

    @Override // okio.JvmSystemFileSystem, okio.FileSystem
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Path path, @NotNull Path path2) {
        String message;
        StandardCopyOption standardCopyOption;
        StandardCopyOption standardCopyOption2;
        try {
            java.nio.file.Path Wwwwwwwwwwwwwwwwwwww2 = path.Wwwwwwwwwwwwwwwwwwww();
            java.nio.file.Path Wwwwwwwwwwwwwwwwwwww3 = path2.Wwwwwwwwwwwwwwwwwwww();
            standardCopyOption = StandardCopyOption.ATOMIC_MOVE;
            standardCopyOption2 = StandardCopyOption.REPLACE_EXISTING;
            Files.move(Wwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwww3, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(standardCopyOption), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(standardCopyOption2));
        } catch (UnsupportedOperationException unused) {
            throw new IOException("atomic move not supported");
        } catch (NoSuchFileException e) {
            message = e.getMessage();
            throw new FileNotFoundException(message);
        }
    }

    @Override // okio.JvmSystemFileSystem
    @NotNull
    public String toString() {
        return "NioSystemFileSystem";
    }
}
