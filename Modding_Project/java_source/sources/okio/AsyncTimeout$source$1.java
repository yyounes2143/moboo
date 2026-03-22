package okio;

import java.io.IOException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000/\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"okio/AsyncTimeout$source$1", "Lokio/Source;", "Lokio/Buffer;", "sink", "", "byteCount", "read", "(Lokio/Buffer;J)J", "", "close", "()V", "Lokio/AsyncTimeout;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokio/AsyncTimeout;", "", "toString", "()Ljava/lang/String;", "okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nAsyncTimeout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AsyncTimeout.kt\nokio/AsyncTimeout$source$1\n+ 2 AsyncTimeout.kt\nokio/AsyncTimeout\n*L\n1#1,331:1\n146#2,11:332\n146#2,11:343\n*S KotlinDebug\n*F\n+ 1 AsyncTimeout.kt\nokio/AsyncTimeout$source$1\n*L\n128#1:332,11\n132#1:343,11\n*E\n"})
/* loaded from: classes7.dex */
public final class AsyncTimeout$source$1 implements Source, AutoCloseable {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final /* synthetic */ Source f13120Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final /* synthetic */ AsyncTimeout f13121Wwwwwwwwwwwwwwwwwwwwwwwww;

    public AsyncTimeout$source$1(AsyncTimeout asyncTimeout, Source source) {
        this.f13121Wwwwwwwwwwwwwwwwwwwwwwwww = asyncTimeout;
        this.f13120Wwwwwwwwwwwwwwwwwwwwwwww = source;
    }

    @Override // okio.Source
    @NotNull
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public AsyncTimeout timeout() {
        return this.f13121Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        AsyncTimeout asyncTimeout = this.f13121Wwwwwwwwwwwwwwwwwwwwwwwww;
        Source source = this.f13120Wwwwwwwwwwwwwwwwwwwwwwww;
        asyncTimeout.Wwwwwwwwwww();
        try {
            source.close();
            Unit unit = Unit.INSTANCE;
            if (!asyncTimeout.Wwwwwwwwww()) {
                return;
            }
            throw asyncTimeout.Wwwwwwwwwwwwwwwww(null);
        } catch (IOException e) {
            if (!asyncTimeout.Wwwwwwwwww()) {
                throw e;
            }
            throw asyncTimeout.Wwwwwwwwwwwwwwwww(e);
        } finally {
            asyncTimeout.Wwwwwwwwww();
        }
    }

    @Override // okio.Source
    public long read(@NotNull Buffer buffer, long j) {
        AsyncTimeout asyncTimeout = this.f13121Wwwwwwwwwwwwwwwwwwwwwwwww;
        Source source = this.f13120Wwwwwwwwwwwwwwwwwwwwwwww;
        asyncTimeout.Wwwwwwwwwww();
        try {
            long read = source.read(buffer, j);
            if (!asyncTimeout.Wwwwwwwwww()) {
                return read;
            }
            throw asyncTimeout.Wwwwwwwwwwwwwwwww(null);
        } catch (IOException e) {
            if (!asyncTimeout.Wwwwwwwwww()) {
                throw e;
            }
            throw asyncTimeout.Wwwwwwwwwwwwwwwww(e);
        } finally {
            asyncTimeout.Wwwwwwwwww();
        }
    }

    @NotNull
    public String toString() {
        return "AsyncTimeout.source(" + this.f13120Wwwwwwwwwwwwwwwwwwwwwwww + ')';
    }
}
