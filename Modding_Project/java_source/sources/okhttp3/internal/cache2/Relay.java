package okhttp3.internal.cache2;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.unity3d.services.core.network.core.OkHttp3Client;
import java.io.IOException;
import java.io.RandomAccessFile;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.internal.Util;
import okio.Buffer;
import okio.ByteString;
import okio.Source;
import okio.Timeout;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\b\u0018\u0000 @2\u00020\u0001:\u0002@AJ\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J'\u0010\n\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\f\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\f\u0010\u0006R$\u0010\u0013\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R$\u0010\u001b\u001a\u0004\u0018\u00010\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\"\u0010!\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010\u0006R\u0014\u0010$\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u0017\u0010%\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u001d\u001a\u0004\b\u001c\u0010\u001fR$\u0010-\u001a\u0004\u0018\u00010&8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R\u0017\u00102\u001a\u00020.8\u0006¢\u0006\f\n\u0004\b\u0017\u0010/\u001a\u0004\b0\u00101R\"\u00108\u001a\u0002038\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b0\u00104\u001a\u0004\b\"\u00105\"\u0004\b6\u00107R\u0017\u00109\u001a\u00020.8\u0006¢\u0006\f\n\u0004\b\u001e\u0010/\u001a\u0004\b\u0015\u00101R\"\u0010?\u001a\u00020:8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b)\u0010;\u001a\u0004\b'\u0010<\"\u0004\b=\u0010>¨\u0006B"}, d2 = {"Lokhttp3/internal/cache2/Relay;", "", "", "upstreamSize", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(J)V", "Lokio/ByteString;", "prefix", "metadataSize", "Wwwwwwwwwwwwwwwwwww", "(Lokio/ByteString;JJ)V", "Wwwwwwwwwwwwwwwwww", "Ljava/io/RandomAccessFile;", "Ljava/io/RandomAccessFile;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/io/RandomAccessFile;", "Wwwwwwwwwwwwwwwwwwwwwww", "(Ljava/io/RandomAccessFile;)V", "file", "Lokio/Source;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lokio/Source;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokio/Source;", "setUpstream", "(Lokio/Source;)V", "upstream", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "J", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "()J", "Wwwwwwwwwwwwwwwwwwwww", "upstreamPos", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lokio/ByteString;", "metadata", "bufferMaxSize", "Ljava/lang/Thread;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/Thread;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/Thread;", "Wwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Thread;)V", "upstreamReader", "Lokio/Buffer;", "Lokio/Buffer;", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokio/Buffer;", "upstreamBuffer", "", "Z", "()Z", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Z)V", CampaignEx.JSON_NATIVE_VIDEO_COMPLETE, "buffer", "", "I", "()I", "Wwwwwwwwwwwwwwwwwwwwww", "(I)V", "sourceCount", "Companion", "RelaySource", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes7.dex */
public final class Relay {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @JvmField
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final ByteString f12579Wwwwwwwwwwwwwwwwwwwwwww;
    @JvmField
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final ByteString f12580Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f12581Wwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Buffer f12582Wwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f12583Wwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Buffer f12584Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Thread f12585Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final long f12586Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ByteString f12587Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f12588Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Source f12589Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public RandomAccessFile f12590Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0014\u0010\b\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\n\u0010\tR\u0014\u0010\f\u001a\u00020\u000b8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000e\u0010\r¨\u0006\u000f"}, d2 = {"Lokhttp3/internal/cache2/Relay$Companion;", "", "<init>", "()V", "", "FILE_HEADER_SIZE", "J", "Lokio/ByteString;", "PREFIX_CLEAN", "Lokio/ByteString;", "PREFIX_DIRTY", "", "SOURCE_FILE", "I", "SOURCE_UPSTREAM", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0080\u0004\u0018\u00002\u00020\u0001J\u001f\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rR\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0016\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0017"}, d2 = {"Lokhttp3/internal/cache2/Relay$RelaySource;", "Lokio/Source;", "Lokio/Buffer;", "sink", "", "byteCount", "read", "(Lokio/Buffer;J)J", "Lokio/Timeout;", "timeout", "()Lokio/Timeout;", "", "close", "()V", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Lokio/Timeout;", "Lokhttp3/internal/cache2/FileOperator;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Lokhttp3/internal/cache2/FileOperator;", "fileOperator", "Wwwwwwwwwwwwwwwwwwwwwww", "J", "sourcePos", OkHttp3Client.NETWORK_CLIENT_OKHTTP}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes7.dex */
    public final class RelaySource implements Source, AutoCloseable {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final /* synthetic */ Relay f12591Wwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public long f12592Wwwwwwwwwwwwwwwwwwwwwww;
        @Nullable

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public FileOperator f12593Wwwwwwwwwwwwwwwwwwwwwwww;
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Timeout f12594Wwwwwwwwwwwwwwwwwwwwwwwww;

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.f12593Wwwwwwwwwwwwwwwwwwwwwwww != null) {
                RandomAccessFile randomAccessFile = null;
                this.f12593Wwwwwwwwwwwwwwwwwwwwwwww = null;
                Relay relay = this.f12591Wwwwwwwwwwwwwwwwwwwwww;
                synchronized (relay) {
                    try {
                        relay.Wwwwwwwwwwwwwwwwwwwwww(relay.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() - 1);
                        if (relay.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() == 0) {
                            RandomAccessFile Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = relay.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                            relay.Wwwwwwwwwwwwwwwwwwwwwww(null);
                            randomAccessFile = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                        }
                        Unit unit = Unit.INSTANCE;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (randomAccessFile == null) {
                    return;
                }
                Util.Wwwwwwwwwwwwwwwwwwwwww(randomAccessFile);
            }
        }

        @Override // okio.Source
        public long read(@NotNull Buffer buffer, long j) throws IOException {
            boolean z;
            if (this.f12593Wwwwwwwwwwwwwwwwwwwwwwww != null) {
                Relay relay = this.f12591Wwwwwwwwwwwwwwwwwwwwww;
                synchronized (relay) {
                    while (true) {
                        if (this.f12592Wwwwwwwwwwwwwwwwwwwwwww != relay.Wwwwwwwwwwwwwwwwwwwwwwwwww()) {
                            long Wwwwwwwwwwwwwwwwwwwwwwwwww2 = relay.Wwwwwwwwwwwwwwwwwwwwwwwwww() - relay.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Kk();
                            if (this.f12592Wwwwwwwwwwwwwwwwwwwwwww < Wwwwwwwwwwwwwwwwwwwwwwwwww2) {
                                z = true;
                            } else {
                                long min = Math.min(j, relay.Wwwwwwwwwwwwwwwwwwwwwwwwww() - this.f12592Wwwwwwwwwwwwwwwwwwwwwww);
                                relay.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Kkkkkkkkkkkkkkkkkkk(buffer, this.f12592Wwwwwwwwwwwwwwwwwwwwwww - Wwwwwwwwwwwwwwwwwwwwwwwwww2, min);
                                this.f12592Wwwwwwwwwwwwwwwwwwwwwww += min;
                                return min;
                            }
                        } else if (relay.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                            return -1L;
                        } else {
                            if (relay.Wwwwwwwwwwwwwwwwwwwwwwwww() != null) {
                                this.f12594Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwww(relay);
                            } else {
                                relay.Wwwwwwwwwwwwwwwwwwww(Thread.currentThread());
                                z = true;
                                break;
                            }
                        }
                    }
                    if (z) {
                        long min2 = Math.min(j, this.f12591Wwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww() - this.f12592Wwwwwwwwwwwwwwwwwwwwwww);
                        this.f12593Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12592Wwwwwwwwwwwwwwwwwwwwwww + 32, buffer, min2);
                        this.f12592Wwwwwwwwwwwwwwwwwwwwwww += min2;
                        return min2;
                    }
                    try {
                        long read = this.f12591Wwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwww().read(this.f12591Wwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww(), this.f12591Wwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                        if (read == -1) {
                            Relay relay2 = this.f12591Wwwwwwwwwwwwwwwwwwwwww;
                            relay2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(relay2.Wwwwwwwwwwwwwwwwwwwwwwwwww());
                            Relay relay3 = this.f12591Wwwwwwwwwwwwwwwwwwwwww;
                            synchronized (relay3) {
                                relay3.Wwwwwwwwwwwwwwwwwwww(null);
                                relay3.notifyAll();
                                Unit unit = Unit.INSTANCE;
                            }
                            return -1L;
                        }
                        long min3 = Math.min(read, j);
                        this.f12591Wwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww().Kkkkkkkkkkkkkkkkkkk(buffer, 0L, min3);
                        this.f12592Wwwwwwwwwwwwwwwwwwwwwww += min3;
                        this.f12593Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f12591Wwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww() + 32, this.f12591Wwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww().clone(), read);
                        Relay relay4 = this.f12591Wwwwwwwwwwwwwwwwwwwwww;
                        synchronized (relay4) {
                            relay4.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwww(relay4.Wwwwwwwwwwwwwwwwwwwwwwwwwww(), read);
                            if (relay4.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Kk() > relay4.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                                relay4.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().skip(relay4.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Kk() - relay4.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                            }
                            relay4.Wwwwwwwwwwwwwwwwwwwww(relay4.Wwwwwwwwwwwwwwwwwwwwwwwwww() + read);
                            Unit unit2 = Unit.INSTANCE;
                        }
                        Relay relay5 = this.f12591Wwwwwwwwwwwwwwwwwwwwww;
                        synchronized (relay5) {
                            relay5.Wwwwwwwwwwwwwwwwwwww(null);
                            relay5.notifyAll();
                        }
                        return min3;
                    } catch (Throwable th) {
                        Relay relay6 = this.f12591Wwwwwwwwwwwwwwwwwwwwww;
                        synchronized (relay6) {
                            relay6.Wwwwwwwwwwwwwwwwwwww(null);
                            relay6.notifyAll();
                            Unit unit3 = Unit.INSTANCE;
                            throw th;
                        }
                    }
                }
            }
            throw new IllegalStateException("Check failed.");
        }

        @Override // okio.Source
        @NotNull
        public Timeout timeout() {
            return this.f12594Wwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    static {
        ByteString.Companion companion = ByteString.Companion;
        f12580Wwwwwwwwwwwwwwwwwwwwwwww = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("OkHttp cache v1\n");
        f12579Wwwwwwwwwwwwwwwwwwwwwww = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("OkHttp DIRTY :(\n");
    }

    public final void Wwwwwwwwwwwwwwwwww(long j) throws IOException {
        Buffer buffer = new Buffer();
        buffer.Wwwww(this.f12587Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        new FileOperator(this.f12590Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getChannel()).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(32 + j, buffer, this.f12587Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size());
    }

    public final void Wwwwwwwwwwwwwwwwwww(ByteString byteString, long j, long j2) throws IOException {
        Buffer buffer = new Buffer();
        buffer.Wwwww(byteString);
        buffer.Illlllllllllllllll(j);
        buffer.Illlllllllllllllll(j2);
        if (buffer.Kk() == 32) {
            new FileOperator(this.f12590Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getChannel()).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(0L, buffer, 32L);
            return;
        }
        throw new IllegalArgumentException("Failed requirement.");
    }

    public final void Wwwwwwwwwwwwwwwwwwww(@Nullable Thread thread) {
        this.f12585Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = thread;
    }

    public final void Wwwwwwwwwwwwwwwwwwwww(long j) {
        this.f12588Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = j;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwww(int i) {
        this.f12581Wwwwwwwwwwwwwwwwwwwwwwwww = i;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwww(@Nullable RandomAccessFile randomAccessFile) {
        this.f12590Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = randomAccessFile;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
        this.f12583Wwwwwwwwwwwwwwwwwwwwwwwwwww = z;
    }

    @Nullable
    public final Thread Wwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12585Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final long Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12588Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final Buffer Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12584Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final Source Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12589Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12581Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final RandomAccessFile Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12590Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12583Wwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12586Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final Buffer Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f12582Wwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j) throws IOException {
        Wwwwwwwwwwwwwwwwww(j);
        this.f12590Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getChannel().force(false);
        Wwwwwwwwwwwwwwwwwww(f12580Wwwwwwwwwwwwwwwwwwwwwwww, j, this.f12587Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size());
        this.f12590Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getChannel().force(false);
        synchronized (this) {
            Wwwwwwwwwwwwwwwwwwwwwwww(true);
            Unit unit = Unit.INSTANCE;
        }
        Source source = this.f12589Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (source != null) {
            Util.Wwwwwwwwwwwwwwwwwwwwww(source);
        }
        this.f12589Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
    }
}
