package okhttp3.internal.io;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.unity3d.services.core.network.core.OkHttp3Client;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import okio.Okio;
import okio.Okio__JvmOkioKt;
import okio.Sink;
import okio.Source;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\n\bf\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\n\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\n\u0010\tJ\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0012\u0010\u0013J\u001f\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0002H&¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u0002H&¢\u0006\u0004\b\u0019\u0010\r¨\u0006\u001b"}, d2 = {"Lokhttp3/internal/io/FileSystem;", "", "Ljava/io/File;", "file", "Lokio/Source;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/io/File;)Lokio/Source;", "Lokio/Sink;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/io/File;)Lokio/Sink;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/io/File;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/io/File;)Z", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/io/File;)J", "from", TypedValues.TransitionType.S_TO, "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/io/File;Ljava/io/File;)V", "directory", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Companion", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public interface FileSystem {
    @NotNull
    public static final Companion Companion = Companion.f12957Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @JvmField
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final FileSystem f12956Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Companion.SystemFileSystem();

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001:\u0001\u0005B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0013\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0001¨\u0006\u0006"}, d2 = {"Lokhttp3/internal/io/FileSystem$Companion;", "", "()V", "SYSTEM", "Lokhttp3/internal/io/FileSystem;", "SystemFileSystem", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static final /* synthetic */ Companion f12957Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Companion();

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\f\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\f\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u001f\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001b\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u001b\u0010\u000fJ\u000f\u0010\u001d\u001a\u00020\u001cH\u0016¢\u0006\u0004\b\u001d\u0010\u001e¨\u0006\u001f"}, d2 = {"Lokhttp3/internal/io/FileSystem$Companion$SystemFileSystem;", "Lokhttp3/internal/io/FileSystem;", "<init>", "()V", "Ljava/io/File;", "file", "Lokio/Source;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/io/File;)Lokio/Source;", "Lokio/Sink;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/io/File;)Lokio/Sink;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/io/File;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/io/File;)Z", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/io/File;)J", "from", TypedValues.TransitionType.S_TO, "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/io/File;Ljava/io/File;)V", "directory", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "toString", "()Ljava/lang/String;", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
        /* loaded from: classes7.dex */
        public static final class SystemFileSystem implements FileSystem {
            @Override // okhttp3.internal.io.FileSystem
            public void Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull File file) throws IOException {
                if (!file.delete() && file.exists()) {
                    throw new IOException(Intrinsics.stringPlus("failed to delete ", file));
                }
            }

            @Override // okhttp3.internal.io.FileSystem
            public void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull File file, @NotNull File file2) throws IOException {
                Wwwwwwwwwwwwwwwwwwwwwwwwwww(file2);
                if (file.renameTo(file2)) {
                    return;
                }
                throw new IOException("failed to rename " + file + " to " + file2);
            }

            @Override // okhttp3.internal.io.FileSystem
            @NotNull
            public Sink Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull File file) throws FileNotFoundException {
                Sink Wwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                Sink Wwwwwwwwwwwwwwwwwwwwwwwwwwww3;
                try {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwww3 = Okio__JvmOkioKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(file, false, 1, null);
                    return Wwwwwwwwwwwwwwwwwwwwwwwwwwww3;
                } catch (FileNotFoundException unused) {
                    file.getParentFile().mkdirs();
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Okio__JvmOkioKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(file, false, 1, null);
                    return Wwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                }
            }

            @Override // okhttp3.internal.io.FileSystem
            @NotNull
            public Source Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull File file) throws FileNotFoundException {
                return Okio.Wwwwwwwwwwwwwwwwwwwwwwwww(file);
            }

            @Override // okhttp3.internal.io.FileSystem
            public long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull File file) {
                return file.length();
            }

            @Override // okhttp3.internal.io.FileSystem
            @NotNull
            public Sink Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull File file) throws FileNotFoundException {
                try {
                    return Okio.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(file);
                } catch (FileNotFoundException unused) {
                    file.getParentFile().mkdirs();
                    return Okio.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(file);
                }
            }

            @Override // okhttp3.internal.io.FileSystem
            public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull File file) {
                return file.exists();
            }

            @Override // okhttp3.internal.io.FileSystem
            public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull File file) throws IOException {
                File[] listFiles = file.listFiles();
                if (listFiles != null) {
                    int length = listFiles.length;
                    int i = 0;
                    while (i < length) {
                        File file2 = listFiles[i];
                        i++;
                        if (file2.isDirectory()) {
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(file2);
                        }
                        if (!file2.delete()) {
                            throw new IOException(Intrinsics.stringPlus("failed to delete ", file2));
                        }
                    }
                    return;
                }
                throw new IOException(Intrinsics.stringPlus("not a readable directory: ", file));
            }

            @NotNull
            public String toString() {
                return "FileSystem.SYSTEM";
            }
        }
    }

    void Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull File file) throws IOException;

    void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull File file, @NotNull File file2) throws IOException;

    @NotNull
    Sink Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull File file) throws FileNotFoundException;

    @NotNull
    Source Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull File file) throws FileNotFoundException;

    long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull File file);

    @NotNull
    Sink Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull File file) throws FileNotFoundException;

    boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull File file);

    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull File file) throws IOException;
}
