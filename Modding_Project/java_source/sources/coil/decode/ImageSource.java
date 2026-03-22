package coil.decode;

import coil.annotation.ExperimentalCoilApi;
import java.io.Closeable;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okio.BufferedSource;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@kotlin.Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0001\fB\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H&¢\u0006\u0004\b\u0005\u0010\u0006R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u00078&X§\u0004¢\u0006\f\u0012\u0004\b\n\u0010\u0003\u001a\u0004\b\b\u0010\t\u0082\u0001\u0002\r\u000e¨\u0006\u000f"}, d2 = {"Lcoil/decode/ImageSource;", "Ljava/io/Closeable;", "<init>", "()V", "Lokio/BufferedSource;", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokio/BufferedSource;", "Lcoil/decode/ImageSource$Metadata;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcoil/decode/ImageSource$Metadata;", "getMetadata$annotations", "metadata", "Metadata", "Lcoil/decode/FileImageSource;", "Lcoil/decode/SourceImageSource;", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public abstract class ImageSource implements Closeable {

    /* compiled from: Proguard */
    @kotlin.Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\b'\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcoil/decode/ImageSource$Metadata;", "", "()V", "coil-base_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    @ExperimentalCoilApi
    /* loaded from: classes3.dex */
    public static abstract class Metadata {
    }

    public /* synthetic */ ImageSource(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @NotNull
    public abstract BufferedSource Wwwwwwwwwwwwwwwwwwwwwwwwwww();

    @Nullable
    public abstract Metadata Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

    public ImageSource() {
    }
}
