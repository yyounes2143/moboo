package okio;

import kotlin.Metadata;
import kotlin.jvm.JvmName;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a\u0011\u0010\u0002\u001a\u00020\u0001*\u00020\u0000¢\u0006\u0004\b\u0002\u0010\u0003\u001a\u0011\u0010\u0006\u001a\u00020\u0005*\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007\u001a\u000f\u0010\b\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lokio/Source;", "Lokio/BufferedSource;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Source;)Lokio/BufferedSource;", "Lokio/Sink;", "Lokio/BufferedSink;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Sink;)Lokio/BufferedSink;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokio/Sink;", "okio"}, k = 5, mv = {1, 8, 0}, xi = 48, xs = "okio/Okio")
/* loaded from: classes7.dex */
public final /* synthetic */ class Okio__OkioKt {
    @NotNull
    public static final BufferedSource Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Source source) {
        return new RealBufferedSource(source);
    }

    @NotNull
    public static final BufferedSink Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Sink sink) {
        return new RealBufferedSink(sink);
    }

    @JvmName(name = "blackhole")
    @NotNull
    public static final Sink Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return new BlackholeSink();
    }
}
