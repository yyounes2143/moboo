package coil.decode;

import coil.decode.ImageSource;
import coil.util.Utils;
import java.io.Closeable;
import kotlin.Metadata;
import okio.BufferedSource;
import okio.FileSystem;
import okio.Okio;
import okio.Path;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0015\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0014\u0010\u0013R\u001a\u0010\u0003\u001a\u00020\u00028\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u001a\u0010\u0005\u001a\u00020\u00048\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 R\u0016\u0010\t\u001a\u0004\u0018\u00010\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&R\u0016\u0010*\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u0018\u0010-\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,¨\u0006."}, d2 = {"Lcoil/decode/FileImageSource;", "Lcoil/decode/ImageSource;", "Lokio/Path;", "file", "Lokio/FileSystem;", "fileSystem", "", "diskCacheKey", "Ljava/io/Closeable;", "closeable", "Lcoil/decode/ImageSource$Metadata;", "metadata", "<init>", "(Lokio/Path;Lokio/FileSystem;Ljava/lang/String;Ljava/io/Closeable;Lcoil/decode/ImageSource$Metadata;)V", "Lokio/BufferedSource;", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokio/BufferedSource;", "", "close", "()V", "Wwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Lokio/Path;", "getFile$coil_base_release", "()Lokio/Path;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Lokio/FileSystem;", "Kkkkkkkkkkkkkkkkkkkkkk", "()Lokio/FileSystem;", "Wwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "Kkkkkkkkkkkkkkkkkkkkkkk", "()Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwww", "Ljava/io/Closeable;", "Wwwwwwwwwwwwwwwwwwwww", "Lcoil/decode/ImageSource$Metadata;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcoil/decode/ImageSource$Metadata;", "", "Wwwwwwwwwwwwwwwwwwww", "Z", "isClosed", "Wwwwwwwwwwwwwwwwwww", "Lokio/BufferedSource;", "source", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class FileImageSource extends ImageSource {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public BufferedSource f1829Wwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f1830Wwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ImageSource.Metadata f1831Wwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Closeable f1832Wwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f1833Wwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final FileSystem f1834Wwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Path f1835Wwwwwwwwwwwwwwwwwwwwwwwww;

    public FileImageSource(@NotNull Path path, @NotNull FileSystem fileSystem, @Nullable String str, @Nullable Closeable closeable, @Nullable ImageSource.Metadata metadata) {
        super(null);
        this.f1835Wwwwwwwwwwwwwwwwwwwwwwwww = path;
        this.f1834Wwwwwwwwwwwwwwwwwwwwwwww = fileSystem;
        this.f1833Wwwwwwwwwwwwwwwwwwwwwww = str;
        this.f1832Wwwwwwwwwwwwwwwwwwwwww = closeable;
        this.f1831Wwwwwwwwwwwwwwwwwwwww = metadata;
    }

    @NotNull
    public FileSystem Kkkkkkkkkkkkkkkkkkkkkk() {
        return this.f1834Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final String Kkkkkkkkkkkkkkkkkkkkkkk() {
        return this.f1833Wwwwwwwwwwwwwwwwwwwwwww;
    }

    public final void Wwwwwwwwwwwwww() {
        if (!this.f1830Wwwwwwwwwwwwwwwwwwww) {
            return;
        }
        throw new IllegalStateException("closed");
    }

    @Override // coil.decode.ImageSource
    @NotNull
    public synchronized BufferedSource Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Wwwwwwwwwwwwww();
        BufferedSource bufferedSource = this.f1829Wwwwwwwwwwwwwwwwwww;
        if (bufferedSource != null) {
            return bufferedSource;
        }
        BufferedSource Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Okio.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Kkkkkkkkkkkkkkkkkkkkkk().Wwwwwwwwwwwwwww(this.f1835Wwwwwwwwwwwwwwwwwwwwwwwww));
        this.f1829Wwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    @Override // coil.decode.ImageSource
    @Nullable
    public ImageSource.Metadata Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f1831Wwwwwwwwwwwwwwwwwwwww;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        try {
            this.f1830Wwwwwwwwwwwwwwwwwwww = true;
            BufferedSource bufferedSource = this.f1829Wwwwwwwwwwwwwwwwwww;
            if (bufferedSource != null) {
                Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bufferedSource);
            }
            Closeable closeable = this.f1832Wwwwwwwwwwwwwwwwwwwwww;
            if (closeable != null) {
                Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(closeable);
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
