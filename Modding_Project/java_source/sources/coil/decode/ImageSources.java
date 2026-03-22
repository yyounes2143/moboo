package coil.decode;

import android.content.Context;
import coil.annotation.ExperimentalCoilApi;
import coil.decode.ImageSource;
import coil.util.Utils;
import java.io.Closeable;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import okio.BufferedSource;
import okio.FileSystem;
import okio.Path;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a9\u0010\t\u001a\u00020\b2\u0006\u0010\u0001\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0007¢\u0006\u0004\b\t\u0010\n\u001a\u001f\u0010\u000f\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0007¢\u0006\u0004\b\u000f\u0010\u0010\u001a+\u0010\u0013\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0007¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Lokio/Path;", "file", "Lokio/FileSystem;", "fileSystem", "", "diskCacheKey", "Ljava/io/Closeable;", "closeable", "Lcoil/decode/ImageSource;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Path;Lokio/FileSystem;Ljava/lang/String;Ljava/io/Closeable;)Lcoil/decode/ImageSource;", "Lokio/BufferedSource;", "source", "Landroid/content/Context;", "context", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/BufferedSource;Landroid/content/Context;)Lcoil/decode/ImageSource;", "Lcoil/decode/ImageSource$Metadata;", "metadata", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/BufferedSource;Landroid/content/Context;Lcoil/decode/ImageSource$Metadata;)Lcoil/decode/ImageSource;", "coil-base_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
@JvmName(name = "ImageSources")
/* loaded from: classes3.dex */
public final class ImageSources {
    public static /* synthetic */ ImageSource Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Path path, FileSystem fileSystem, String str, Closeable closeable, int i, Object obj) {
        if ((i & 2) != 0) {
            fileSystem = FileSystem.f13168Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
        if ((i & 4) != 0) {
            str = null;
        }
        if ((i & 8) != 0) {
            closeable = null;
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(path, fileSystem, str, closeable);
    }

    @JvmName(name = "create")
    @NotNull
    public static final ImageSource Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Path path, @NotNull FileSystem fileSystem, @Nullable String str, @Nullable Closeable closeable) {
        return new FileImageSource(path, fileSystem, str, closeable, null);
    }

    @ExperimentalCoilApi
    @JvmName(name = "create")
    @NotNull
    public static final ImageSource Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull BufferedSource bufferedSource, @NotNull Context context, @Nullable ImageSource.Metadata metadata) {
        return new SourceImageSource(bufferedSource, Utils.Wwwwwwwwwwwwwwwwwwwww(context), metadata);
    }

    @JvmName(name = "create")
    @NotNull
    public static final ImageSource Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull BufferedSource bufferedSource, @NotNull Context context) {
        return new SourceImageSource(bufferedSource, Utils.Wwwwwwwwwwwwwwwwwwwww(context), null);
    }
}
