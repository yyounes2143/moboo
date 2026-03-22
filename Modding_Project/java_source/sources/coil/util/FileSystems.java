package coil.util;

import java.io.FileNotFoundException;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import okio.FileSystem;
import okio.Path;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\u001a\u001b\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u001a\u001b\u0010\u0007\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0001H\u0000¢\u0006\u0004\b\u0007\u0010\u0005¨\u0006\b"}, d2 = {"Lokio/FileSystem;", "Lokio/Path;", "file", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/FileSystem;Lokio/Path;)V", "directory", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "coil-base_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
@JvmName(name = "-FileSystems")
/* renamed from: coil.util.-FileSystems  reason: invalid class name */
/* loaded from: classes3.dex */
public final class FileSystems {
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull FileSystem fileSystem, @NotNull Path path) {
        try {
            IOException iOException = null;
            for (Path path2 : fileSystem.Wwwwwwwwwwwwwwwwwwwwwwww(path)) {
                try {
                    if (fileSystem.Wwwwwwwwwwwwwwwwwwwwww(path2).Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fileSystem, path2);
                    }
                    fileSystem.Wwwwwwwwwwwwwwwwwwwwwwwwwww(path2);
                } catch (IOException e) {
                    if (iOException == null) {
                        iOException = e;
                    }
                }
            }
            if (iOException != null) {
                throw iOException;
            }
        } catch (FileNotFoundException unused) {
        }
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull FileSystem fileSystem, @NotNull Path path) {
        if (!fileSystem.Wwwwwwwwwwwwwwwwwwwwwwwww(path)) {
            Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fileSystem.Wwwwwwwwwwwwwwwww(path));
        }
    }
}
