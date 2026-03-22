package okio;

import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001R\u001a\u0010\u0007\u001a\u00020\u00028\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001a\u0010\f\u001a\u00020\b8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0003\u0010\u000bR\"\u0010\u0013\u001a\u00020\r8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\t\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\"\u0010\u0017\u001a\u00020\r8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u000f\u001a\u0004\b\u0015\u0010\u0010\"\u0004\b\u0016\u0010\u0012R\"\u0010\u001b\u001a\u00020\r8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u000f\u001a\u0004\b\u0019\u0010\u0010\"\u0004\b\u001a\u0010\u0012R$\u0010!\u001a\u0004\u0018\u00010\u001c8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u001d\u001a\u0004\b\u0014\u0010\u001e\"\u0004\b\u001f\u0010 R\u0017\u0010%\u001a\u00020\"8\u0006¢\u0006\f\n\u0004\b\u0015\u0010#\u001a\u0004\b\u0018\u0010$R\u0017\u0010)\u001a\u00020&8\u0006¢\u0006\f\n\u0004\b\u0019\u0010'\u001a\u0004\b\u000e\u0010(R\u0017\u0010+\u001a\u00020\u001c8G¢\u0006\f\n\u0004\b\u0016\u0010\u001d\u001a\u0004\b*\u0010\u001e¨\u0006,"}, d2 = {"Lokio/Pipe;", "", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "J", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()J", "maxBufferSize", "Lokio/Buffer;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lokio/Buffer;", "()Lokio/Buffer;", "buffer", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Z", "()Z", "setCanceled$okio", "(Z)V", "canceled", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "sinkClosed", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwww", "sourceClosed", "Lokio/Sink;", "Lokio/Sink;", "()Lokio/Sink;", "setFoldedSink$okio", "(Lokio/Sink;)V", "foldedSink", "Ljava/util/concurrent/locks/ReentrantLock;", "Ljava/util/concurrent/locks/ReentrantLock;", "()Ljava/util/concurrent/locks/ReentrantLock;", "lock", "Ljava/util/concurrent/locks/Condition;", "Ljava/util/concurrent/locks/Condition;", "()Ljava/util/concurrent/locks/Condition;", "condition", "Wwwwwwwwwwwwwwwwwwwwwwww", "sink", "okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nPipe.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Pipe.kt\nokio/Pipe\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Timeout.kt\nokio/Timeout\n*L\n1#1,257:1\n1#2:258\n268#3,26:259\n*S KotlinDebug\n*F\n+ 1 Pipe.kt\nokio/Pipe\n*L\n217#1:259,26\n*E\n"})
/* loaded from: classes7.dex */
public final class Pipe {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Sink f13208Wwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Condition f13209Wwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ReentrantLock f13210Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Sink f13211Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f13212Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f13213Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f13214Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Buffer f13215Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f13216Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    @JvmName(name = "sink")
    @NotNull
    public final Sink Wwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f13208Wwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
        this.f13212Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
        this.f13213Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f13212Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f13213Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final long Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f13216Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final ReentrantLock Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f13210Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final Sink Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f13211Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final Condition Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f13209Wwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f13214Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final Buffer Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f13215Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
