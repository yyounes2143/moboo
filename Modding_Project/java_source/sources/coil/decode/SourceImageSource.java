package coil.decode;

import coil.decode.ImageSource;
import coil.util.Utils;
import java.io.File;
import kotlin.Metadata;
import okio.BufferedSource;
import okio.FileSystem;
import okio.Okio;
import okio.Path;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000f\u0010\fR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0019\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0014\u0010#\u001a\u00020 8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b!\u0010\"¨\u0006$"}, d2 = {"Lcoil/decode/SourceImageSource;", "Lcoil/decode/ImageSource;", "Lokio/BufferedSource;", "source", "Ljava/io/File;", "cacheDirectory", "Lcoil/decode/ImageSource$Metadata;", "metadata", "<init>", "(Lokio/BufferedSource;Ljava/io/File;Lcoil/decode/ImageSource$Metadata;)V", "", "Wwwwwwwwwwwwww", "()V", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokio/BufferedSource;", "close", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/io/File;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Lcoil/decode/ImageSource$Metadata;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcoil/decode/ImageSource$Metadata;", "", "Wwwwwwwwwwwwwwwwwwwwwww", "Z", "isClosed", "Wwwwwwwwwwwwwwwwwwwwww", "Lokio/BufferedSource;", "Lokio/Path;", "Wwwwwwwwwwwwwwwwwwwww", "Lokio/Path;", "file", "Lokio/FileSystem;", "Kkkkkkkkkkkkkkkkkkkkkkk", "()Lokio/FileSystem;", "fileSystem", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class SourceImageSource extends ImageSource {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Path f1839Wwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public BufferedSource f1840Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f1841Wwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ImageSource.Metadata f1842Wwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final File f1843Wwwwwwwwwwwwwwwwwwwwwwwww;

    public SourceImageSource(@NotNull BufferedSource bufferedSource, @NotNull File file, @Nullable ImageSource.Metadata metadata) {
        super(null);
        this.f1843Wwwwwwwwwwwwwwwwwwwwwwwww = file;
        this.f1842Wwwwwwwwwwwwwwwwwwwwwwww = metadata;
        this.f1840Wwwwwwwwwwwwwwwwwwwwww = bufferedSource;
        if (file.isDirectory()) {
            return;
        }
        throw new IllegalArgumentException("cacheDirectory must be a directory.");
    }

    private final void Wwwwwwwwwwwwww() {
        if (!this.f1841Wwwwwwwwwwwwwwwwwwwwwww) {
            return;
        }
        throw new IllegalStateException("closed");
    }

    @NotNull
    public FileSystem Kkkkkkkkkkkkkkkkkkkkkkk() {
        return FileSystem.f13168Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // coil.decode.ImageSource
    @NotNull
    public synchronized BufferedSource Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Wwwwwwwwwwwwww();
        BufferedSource bufferedSource = this.f1840Wwwwwwwwwwwwwwwwwwwwww;
        if (bufferedSource != null) {
            return bufferedSource;
        }
        BufferedSource Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Okio.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Kkkkkkkkkkkkkkkkkkkkkkk().Wwwwwwwwwwwwwww(this.f1839Wwwwwwwwwwwwwwwwwwwww));
        this.f1840Wwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    @Override // coil.decode.ImageSource
    @Nullable
    public ImageSource.Metadata Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f1842Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        try {
            this.f1841Wwwwwwwwwwwwwwwwwwwwwww = true;
            BufferedSource bufferedSource = this.f1840Wwwwwwwwwwwwwwwwwwwwww;
            if (bufferedSource != null) {
                Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bufferedSource);
            }
            Path path = this.f1839Wwwwwwwwwwwwwwwwwwwww;
            if (path != null) {
                Kkkkkkkkkkkkkkkkkkkkkkk().Wwwwwwwwwwwwwwwwwwwwwwwwwww(path);
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
