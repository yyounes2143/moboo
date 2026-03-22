package okio;

import java.io.Closeable;
import java.io.IOException;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\b\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b&\u0018\u00002\u00060\u0001j\u0002`\u0002:\u000289B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J'\u0010\f\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\f\u0010\rJ'\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\r\u0010\u0012\u001a\u00020\u0007¢\u0006\u0004\b\u0012\u0010\u0013J\r\u0010\u0014\u001a\u00020\u000f¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0017\u001a\u00020\u00162\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u001a\u001a\u00020\u00192\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u001a\u0010\u001bJ\r\u0010\u001c\u001a\u00020\u000f¢\u0006\u0004\b\u001c\u0010\u0015J/\u0010!\u001a\u00020\u001f2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010\u000b\u001a\u00020\u001fH$¢\u0006\u0004\b!\u0010\"J/\u0010#\u001a\u00020\u000f2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010\u000b\u001a\u00020\u001fH$¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\u000fH$¢\u0006\u0004\b%\u0010\u0015J\u000f\u0010&\u001a\u00020\u0007H$¢\u0006\u0004\b&\u0010\u0013J\u000f\u0010'\u001a\u00020\u000fH$¢\u0006\u0004\b'\u0010\u0015R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+R\u0016\u0010-\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010)R\u0016\u00100\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010/R\u001b\u00107\u001a\u000601j\u0002`28\u0006¢\u0006\f\n\u0004\b3\u00104\u001a\u0004\b5\u00106¨\u0006:"}, d2 = {"Lokio/FileHandle;", "Ljava/io/Closeable;", "Lokio/Closeable;", "", "readWrite", "<init>", "(Z)V", "", "fileOffset", "Lokio/Buffer;", "sink", "byteCount", "Kkkkkkkkkkkkkkk", "(JLokio/Buffer;J)J", "source", "", "Kkkkkkkkkk", "(JLokio/Buffer;J)V", "Kkkkkkkkkkkk", "()J", "flush", "()V", "Lokio/Source;", "Kkkkkkkkkkk", "(J)Lokio/Source;", "Lokio/Sink;", "Kkkkkkkkkkkkkk", "(J)Lokio/Sink;", "close", "", "array", "", "arrayOffset", "Kkkkkkkkkkkkkkkkkk", "(J[BII)I", "Kkkkkkkkkkkkkkkk", "(J[BII)V", "Kkkkkkkkkkkkkkkkkkk", "Kkkkkkkkkkkkkkkkk", "Kkkkkkkkkkkkkkkkkkkk", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Z", "getReadWrite", "()Z", "Wwwwwwwwwwwwwwwwwwwwwwww", "closed", "Wwwwwwwwwwwwwwwwwwwwwww", "I", "openStreamCount", "Ljava/util/concurrent/locks/ReentrantLock;", "Lokio/Lock;", "Wwwwwwwwwwwwwwwwwwwwww", "Ljava/util/concurrent/locks/ReentrantLock;", "Kkkkkkkkkkkkkkkkkkkkk", "()Ljava/util/concurrent/locks/ReentrantLock;", "lock", "FileHandleSink", "FileHandleSource", "okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nFileHandle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileHandle.kt\nokio/FileHandle\n+ 2 -JvmPlatform.kt\nokio/_JvmPlatformKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 RealBufferedSource.kt\nokio/RealBufferedSource\n+ 5 RealBufferedSink.kt\nokio/RealBufferedSink\n+ 6 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,444:1\n33#2:445\n33#2:447\n33#2:448\n33#2:449\n33#2:450\n33#2:451\n33#2:452\n33#2:453\n33#2:457\n33#2:459\n1#3:446\n62#4:454\n62#4:455\n62#4:456\n51#5:458\n86#6:460\n86#6:461\n*S KotlinDebug\n*F\n+ 1 FileHandle.kt\nokio/FileHandle\n*L\n69#1:445\n81#1:447\n92#1:448\n105#1:449\n119#1:450\n129#1:451\n139#1:452\n151#1:453\n221#1:457\n287#1:459\n169#1:454\n195#1:455\n202#1:456\n248#1:458\n345#1:460\n374#1:461\n*E\n"})
/* loaded from: classes7.dex */
public abstract class FileHandle implements Closeable, AutoCloseable {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ReentrantLock f13148Wwwwwwwwwwwwwwwwwwwwww = _JvmPlatformKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f13149Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f13150Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f13151Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\b\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\f\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0013\u0010\u000fR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\f\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\"\u0010$\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#¨\u0006%"}, d2 = {"Lokio/FileHandle$FileHandleSink;", "Lokio/Sink;", "Lokio/FileHandle;", "fileHandle", "", "position", "<init>", "(Lokio/FileHandle;J)V", "Lokio/Buffer;", "source", "byteCount", "", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Buffer;J)V", "flush", "()V", "Lokio/Timeout;", "timeout", "()Lokio/Timeout;", "close", "Lokio/FileHandle;", "getFileHandle", "()Lokio/FileHandle;", "Wwwwwwwwwwwwwwwwwwwwwwww", "J", "getPosition", "()J", "setPosition", "(J)V", "", "Wwwwwwwwwwwwwwwwwwwwwww", "Z", "getClosed", "()Z", "setClosed", "(Z)V", "closed", "okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nFileHandle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileHandle.kt\nokio/FileHandle$FileHandleSink\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 -JvmPlatform.kt\nokio/_JvmPlatformKt\n*L\n1#1,444:1\n1#2:445\n33#3:446\n*S KotlinDebug\n*F\n+ 1 FileHandle.kt\nokio/FileHandle$FileHandleSink\n*L\n410#1:446\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class FileHandleSink implements Sink, AutoCloseable {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f13152Wwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public long f13153Wwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final FileHandle f13154Wwwwwwwwwwwwwwwwwwwwwwwww;

        public FileHandleSink(@NotNull FileHandle fileHandle, long j) {
            this.f13154Wwwwwwwwwwwwwwwwwwwwwwwww = fileHandle;
            this.f13153Wwwwwwwwwwwwwwwwwwwwwwww = j;
        }

        @Override // okio.Sink
        public void Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Buffer buffer, long j) {
            if (!this.f13152Wwwwwwwwwwwwwwwwwwwwwww) {
                this.f13154Wwwwwwwwwwwwwwwwwwwwwwwww.Kkkkkkkkkk(this.f13153Wwwwwwwwwwwwwwwwwwwwwwww, buffer, j);
                this.f13153Wwwwwwwwwwwwwwwwwwwwwwww += j;
                return;
            }
            throw new IllegalStateException("closed");
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.f13152Wwwwwwwwwwwwwwwwwwwwwww) {
                return;
            }
            this.f13152Wwwwwwwwwwwwwwwwwwwwwww = true;
            ReentrantLock Kkkkkkkkkkkkkkkkkkkkk2 = this.f13154Wwwwwwwwwwwwwwwwwwwwwwwww.Kkkkkkkkkkkkkkkkkkkkk();
            Kkkkkkkkkkkkkkkkkkkkk2.lock();
            try {
                FileHandle fileHandle = this.f13154Wwwwwwwwwwwwwwwwwwwwwwwww;
                fileHandle.f13149Wwwwwwwwwwwwwwwwwwwwwww--;
                if (this.f13154Wwwwwwwwwwwwwwwwwwwwwwwww.f13149Wwwwwwwwwwwwwwwwwwwwwww == 0 && this.f13154Wwwwwwwwwwwwwwwwwwwwwwwww.f13150Wwwwwwwwwwwwwwwwwwwwwwww) {
                    Unit unit = Unit.INSTANCE;
                    Kkkkkkkkkkkkkkkkkkkkk2.unlock();
                    this.f13154Wwwwwwwwwwwwwwwwwwwwwwwww.Kkkkkkkkkkkkkkkkkkkk();
                }
            } finally {
                Kkkkkkkkkkkkkkkkkkkkk2.unlock();
            }
        }

        @Override // okio.Sink, java.io.Flushable
        public void flush() {
            if (!this.f13152Wwwwwwwwwwwwwwwwwwwwwww) {
                this.f13154Wwwwwwwwwwwwwwwwwwwwwwwww.Kkkkkkkkkkkkkkkkkkk();
                return;
            }
            throw new IllegalStateException("closed");
        }

        @Override // okio.Sink
        @NotNull
        public Timeout timeout() {
            return Timeout.f13251Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\b\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\u000b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\"\u0010$\u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#¨\u0006%"}, d2 = {"Lokio/FileHandle$FileHandleSource;", "Lokio/Source;", "Lokio/FileHandle;", "fileHandle", "", "position", "<init>", "(Lokio/FileHandle;J)V", "Lokio/Buffer;", "sink", "byteCount", "read", "(Lokio/Buffer;J)J", "Lokio/Timeout;", "timeout", "()Lokio/Timeout;", "", "close", "()V", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Lokio/FileHandle;", "getFileHandle", "()Lokio/FileHandle;", "Wwwwwwwwwwwwwwwwwwwwwwww", "J", "getPosition", "()J", "setPosition", "(J)V", "", "Wwwwwwwwwwwwwwwwwwwwwww", "Z", "getClosed", "()Z", "setClosed", "(Z)V", "closed", "okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nFileHandle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileHandle.kt\nokio/FileHandle$FileHandleSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 -JvmPlatform.kt\nokio/_JvmPlatformKt\n*L\n1#1,444:1\n1#2:445\n33#3:446\n*S KotlinDebug\n*F\n+ 1 FileHandle.kt\nokio/FileHandle$FileHandleSource\n*L\n436#1:446\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class FileHandleSource implements Source, AutoCloseable {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f13155Wwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public long f13156Wwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final FileHandle f13157Wwwwwwwwwwwwwwwwwwwwwwwww;

        public FileHandleSource(@NotNull FileHandle fileHandle, long j) {
            this.f13157Wwwwwwwwwwwwwwwwwwwwwwwww = fileHandle;
            this.f13156Wwwwwwwwwwwwwwwwwwwwwwww = j;
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.f13155Wwwwwwwwwwwwwwwwwwwwwww) {
                return;
            }
            this.f13155Wwwwwwwwwwwwwwwwwwwwwww = true;
            ReentrantLock Kkkkkkkkkkkkkkkkkkkkk2 = this.f13157Wwwwwwwwwwwwwwwwwwwwwwwww.Kkkkkkkkkkkkkkkkkkkkk();
            Kkkkkkkkkkkkkkkkkkkkk2.lock();
            try {
                FileHandle fileHandle = this.f13157Wwwwwwwwwwwwwwwwwwwwwwwww;
                fileHandle.f13149Wwwwwwwwwwwwwwwwwwwwwww--;
                if (this.f13157Wwwwwwwwwwwwwwwwwwwwwwwww.f13149Wwwwwwwwwwwwwwwwwwwwwww == 0 && this.f13157Wwwwwwwwwwwwwwwwwwwwwwwww.f13150Wwwwwwwwwwwwwwwwwwwwwwww) {
                    Unit unit = Unit.INSTANCE;
                    Kkkkkkkkkkkkkkkkkkkkk2.unlock();
                    this.f13157Wwwwwwwwwwwwwwwwwwwwwwwww.Kkkkkkkkkkkkkkkkkkkk();
                }
            } finally {
                Kkkkkkkkkkkkkkkkkkkkk2.unlock();
            }
        }

        @Override // okio.Source
        public long read(@NotNull Buffer buffer, long j) {
            if (!this.f13155Wwwwwwwwwwwwwwwwwwwwwww) {
                long Kkkkkkkkkkkkkkk2 = this.f13157Wwwwwwwwwwwwwwwwwwwwwwwww.Kkkkkkkkkkkkkkk(this.f13156Wwwwwwwwwwwwwwwwwwwwwwww, buffer, j);
                if (Kkkkkkkkkkkkkkk2 != -1) {
                    this.f13156Wwwwwwwwwwwwwwwwwwwwwwww += Kkkkkkkkkkkkkkk2;
                }
                return Kkkkkkkkkkkkkkk2;
            }
            throw new IllegalStateException("closed");
        }

        @Override // okio.Source
        @NotNull
        public Timeout timeout() {
            return Timeout.f13251Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    public FileHandle(boolean z) {
        this.f13151Wwwwwwwwwwwwwwwwwwwwwwwww = z;
    }

    public static /* synthetic */ Sink Kkkkkkkkkkkkk(FileHandle fileHandle, long j, int i, Object obj) throws IOException {
        if (obj == null) {
            if ((i & 1) != 0) {
                j = 0;
            }
            return fileHandle.Kkkkkkkkkkkkkk(j);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: sink");
    }

    public final void Kkkkkkkkkk(long j, Buffer buffer, long j2) {
        SegmentedByteString.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(buffer.Kk(), 0L, j2);
        long j3 = j + j2;
        long j4 = j;
        while (j4 < j3) {
            Segment segment = buffer.f13123Wwwwwwwwwwwwwwwwwwwwwwwww;
            int min = (int) Math.min(j3 - j4, segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww - segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            Kkkkkkkkkkkkkkkk(j4, segment.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, min);
            segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww += min;
            long j5 = min;
            j4 += j5;
            buffer.Kkk(buffer.Kk() - j5);
            if (segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                buffer.f13123Wwwwwwwwwwwwwwwwwwwwwwwww = segment.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                SegmentPool.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(segment);
            }
        }
    }

    @NotNull
    public final Source Kkkkkkkkkkk(long j) throws IOException {
        ReentrantLock reentrantLock = this.f13148Wwwwwwwwwwwwwwwwwwwwww;
        reentrantLock.lock();
        try {
            if (!this.f13150Wwwwwwwwwwwwwwwwwwwwwwww) {
                this.f13149Wwwwwwwwwwwwwwwwwwwwwww++;
                reentrantLock.unlock();
                return new FileHandleSource(this, j);
            }
            throw new IllegalStateException("closed");
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public final long Kkkkkkkkkkkk() throws IOException {
        ReentrantLock reentrantLock = this.f13148Wwwwwwwwwwwwwwwwwwwwww;
        reentrantLock.lock();
        try {
            if (!this.f13150Wwwwwwwwwwwwwwwwwwwwwwww) {
                Unit unit = Unit.INSTANCE;
                reentrantLock.unlock();
                return Kkkkkkkkkkkkkkkkk();
            }
            throw new IllegalStateException("closed");
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @NotNull
    public final Sink Kkkkkkkkkkkkkk(long j) throws IOException {
        if (this.f13151Wwwwwwwwwwwwwwwwwwwwwwwww) {
            ReentrantLock reentrantLock = this.f13148Wwwwwwwwwwwwwwwwwwwwww;
            reentrantLock.lock();
            try {
                if (!this.f13150Wwwwwwwwwwwwwwwwwwwwwwww) {
                    this.f13149Wwwwwwwwwwwwwwwwwwwwwww++;
                    reentrantLock.unlock();
                    return new FileHandleSink(this, j);
                }
                throw new IllegalStateException("closed");
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        throw new IllegalStateException("file handle is read-only");
    }

    public final long Kkkkkkkkkkkkkkk(long j, Buffer buffer, long j2) {
        int i;
        if (j2 >= 0) {
            long j3 = j2 + j;
            long j4 = j;
            while (true) {
                if (j4 >= j3) {
                    break;
                }
                Segment Illllllllllllllllllllllllll = buffer.Illllllllllllllllllllllllll(1);
                int Kkkkkkkkkkkkkkkkkk2 = Kkkkkkkkkkkkkkkkkk(j4, Illllllllllllllllllllllllll.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, Illllllllllllllllllllllllll.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, (int) Math.min(j3 - j4, 8192 - i));
                if (Kkkkkkkkkkkkkkkkkk2 == -1) {
                    if (Illllllllllllllllllllllllll.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == Illllllllllllllllllllllllll.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                        buffer.f13123Wwwwwwwwwwwwwwwwwwwwwwwww = Illllllllllllllllllllllllll.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        SegmentPool.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Illllllllllllllllllllllllll);
                    }
                    if (j == j4) {
                        return -1L;
                    }
                } else {
                    Illllllllllllllllllllllllll.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww += Kkkkkkkkkkkkkkkkkk2;
                    long j5 = Kkkkkkkkkkkkkkkkkk2;
                    j4 += j5;
                    buffer.Kkk(buffer.Kk() + j5);
                }
            }
            return j4 - j;
        }
        throw new IllegalArgumentException(("byteCount < 0: " + j2).toString());
    }

    public abstract void Kkkkkkkkkkkkkkkk(long j, @NotNull byte[] bArr, int i, int i2) throws IOException;

    public abstract long Kkkkkkkkkkkkkkkkk() throws IOException;

    public abstract int Kkkkkkkkkkkkkkkkkk(long j, @NotNull byte[] bArr, int i, int i2) throws IOException;

    public abstract void Kkkkkkkkkkkkkkkkkkk() throws IOException;

    public abstract void Kkkkkkkkkkkkkkkkkkkk() throws IOException;

    @NotNull
    public final ReentrantLock Kkkkkkkkkkkkkkkkkkkkk() {
        return this.f13148Wwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        ReentrantLock reentrantLock = this.f13148Wwwwwwwwwwwwwwwwwwwwww;
        reentrantLock.lock();
        try {
            if (this.f13150Wwwwwwwwwwwwwwwwwwwwwwww) {
                return;
            }
            this.f13150Wwwwwwwwwwwwwwwwwwwwwwww = true;
            if (this.f13149Wwwwwwwwwwwwwwwwwwwwwww != 0) {
                return;
            }
            Unit unit = Unit.INSTANCE;
            reentrantLock.unlock();
            Kkkkkkkkkkkkkkkkkkkk();
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void flush() throws IOException {
        if (this.f13151Wwwwwwwwwwwwwwwwwwwwwwwww) {
            ReentrantLock reentrantLock = this.f13148Wwwwwwwwwwwwwwwwwwwwww;
            reentrantLock.lock();
            try {
                if (!this.f13150Wwwwwwwwwwwwwwwwwwwwwwww) {
                    Unit unit = Unit.INSTANCE;
                    reentrantLock.unlock();
                    Kkkkkkkkkkkkkkkkkkk();
                    return;
                }
                throw new IllegalStateException("closed");
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
        throw new IllegalStateException("file handle is read-only");
    }
}
