package okio;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000e\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u001f\u0010\r\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u00012\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u00012\u0006\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0018\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J'\u0010\u0018\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u000b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u0018\u0010\u001cJ\u0017\u0010\u0018\u001a\u00020\u001a2\u0006\u0010\t\u001a\u00020\u001dH\u0016¢\u0006\u0004\b\u0018\u0010\u001eJ\u0017\u0010 \u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u001fH\u0016¢\u0006\u0004\b \u0010!J\u0017\u0010#\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020\u001aH\u0016¢\u0006\u0004\b#\u0010$J\u0017\u0010&\u001a\u00020\u00012\u0006\u0010%\u001a\u00020\u001aH\u0016¢\u0006\u0004\b&\u0010$J\u0017\u0010(\u001a\u00020\u00012\u0006\u0010'\u001a\u00020\u001aH\u0016¢\u0006\u0004\b(\u0010$J\u0017\u0010)\u001a\u00020\u00012\u0006\u0010'\u001a\u00020\u001aH\u0016¢\u0006\u0004\b)\u0010$J\u0017\u0010+\u001a\u00020\u00012\u0006\u0010*\u001a\u00020\nH\u0016¢\u0006\u0004\b+\u0010,J\u0017\u0010-\u001a\u00020\u00012\u0006\u0010*\u001a\u00020\nH\u0016¢\u0006\u0004\b-\u0010,J\u000f\u0010.\u001a\u00020\u0001H\u0016¢\u0006\u0004\b.\u0010/J\u000f\u00100\u001a\u00020\u0001H\u0016¢\u0006\u0004\b0\u0010/J\u000f\u00102\u001a\u000201H\u0016¢\u0006\u0004\b2\u00103J\u000f\u00104\u001a\u00020\fH\u0016¢\u0006\u0004\b4\u00105J\u000f\u00107\u001a\u000206H\u0016¢\u0006\u0004\b7\u00108J\u000f\u00109\u001a\u00020\fH\u0016¢\u0006\u0004\b9\u00105J\u000f\u0010;\u001a\u00020:H\u0016¢\u0006\u0004\b;\u0010<J\u000f\u0010=\u001a\u00020\u0013H\u0016¢\u0006\u0004\b=\u0010>R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\r\u0010?R\u0014\u0010A\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b \u0010@R\u0016\u0010D\u001a\u0002068\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\bB\u0010CR\u001b\u0010G\u001a\u00020\u00068Ö\u0002X\u0096\u0004¢\u0006\f\u0012\u0004\bF\u00105\u001a\u0004\bE\u0010\b¨\u0006H"}, d2 = {"Lokio/RealBufferedSink;", "Lokio/BufferedSink;", "Lokio/Sink;", "sink", "<init>", "(Lokio/Sink;)V", "Lokio/Buffer;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokio/Buffer;", "source", "", "byteCount", "", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Buffer;J)V", "Lokio/ByteString;", "byteString", "Wwwww", "(Lokio/ByteString;)Lokio/BufferedSink;", "", TypedValues.Custom.S_STRING, "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Lokio/BufferedSink;", "", "write", "([B)Lokio/BufferedSink;", "", TypedValues.CycleType.S_WAVE_OFFSET, "([BII)Lokio/BufferedSink;", "Ljava/nio/ByteBuffer;", "(Ljava/nio/ByteBuffer;)I", "Lokio/Source;", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Source;)J", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "writeByte", "(I)Lokio/BufferedSink;", CmcdData.Factory.STREAMING_FORMAT_SS, "writeShort", CmcdData.Factory.OBJECT_TYPE_INIT_SEGMENT, "writeInt", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "v", "Wwwwwwwwwwwwwwwww", "(J)Lokio/BufferedSink;", "Wwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokio/BufferedSink;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/io/OutputStream;", "Www", "()Ljava/io/OutputStream;", "flush", "()V", "", "isOpen", "()Z", "close", "Lokio/Timeout;", "timeout", "()Lokio/Timeout;", "toString", "()Ljava/lang/String;", "Lokio/Sink;", "Lokio/Buffer;", "bufferField", "Wwwwwwwwwwwwwwwwwwwwwww", "Z", "closed", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "getBuffer$annotations", "buffer", "okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nRealBufferedSink.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealBufferedSink.kt\nokio/RealBufferedSink\n+ 2 RealBufferedSink.kt\nokio/internal/-RealBufferedSink\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,142:1\n51#1:146\n51#1:152\n51#1:157\n51#1:162\n51#1:167\n51#1:172\n51#1:175\n51#1:176\n51#1:180\n51#1:185\n51#1:188\n51#1:192\n51#1:201\n51#1:210\n51#1:215\n51#1:220\n51#1:225\n51#1:230\n51#1:235\n51#1:240\n51#1:245\n51#1:250\n51#1:255\n51#1:261\n51#1:267\n51#1:279\n34#2:143\n35#2:145\n36#2,2:147\n40#2:149\n41#2:151\n42#2:153\n50#2:154\n51#2:156\n52#2:158\n56#2:159\n57#2:161\n58#2:163\n66#2:164\n67#2:166\n68#2:168\n72#2:169\n73#2:171\n74#2:173\n78#2:177\n79#2:179\n80#2:181\n88#2:182\n89#2:184\n90#2:186\n94#2,3:189\n97#2,5:193\n105#2,3:198\n108#2,5:202\n116#2:207\n117#2:209\n118#2:211\n122#2:212\n123#2:214\n124#2:216\n128#2:217\n129#2:219\n130#2:221\n134#2:222\n135#2:224\n136#2:226\n140#2:227\n141#2:229\n142#2:231\n146#2:232\n147#2:234\n148#2:236\n152#2:237\n153#2:239\n154#2:241\n158#2:242\n159#2:244\n160#2:246\n164#2:247\n165#2:249\n166#2:251\n170#2:252\n171#2:254\n172#2,2:256\n177#2:258\n178#2:260\n179#2,2:262\n184#2:264\n185#2:266\n186#2,4:268\n192#2,7:272\n199#2,16:280\n216#2:296\n218#2:297\n1#3:144\n1#3:150\n1#3:155\n1#3:160\n1#3:165\n1#3:170\n1#3:174\n1#3:178\n1#3:183\n1#3:187\n1#3:208\n1#3:213\n1#3:218\n1#3:223\n1#3:228\n1#3:233\n1#3:238\n1#3:243\n1#3:248\n1#3:253\n1#3:259\n1#3:265\n*S KotlinDebug\n*F\n+ 1 RealBufferedSink.kt\nokio/RealBufferedSink\n*L\n55#1:146\n56#1:152\n58#1:157\n59#1:162\n61#1:167\n63#1:172\n67#1:175\n78#1:176\n82#1:180\n84#1:185\n88#1:188\n93#1:192\n94#1:201\n95#1:210\n96#1:215\n97#1:220\n98#1:225\n99#1:230\n100#1:235\n101#1:240\n102#1:245\n103#1:250\n104#1:255\n105#1:261\n134#1:267\n138#1:279\n55#1:143\n55#1:145\n55#1:147,2\n56#1:149\n56#1:151\n56#1:153\n58#1:154\n58#1:156\n58#1:158\n59#1:159\n59#1:161\n59#1:163\n61#1:164\n61#1:166\n61#1:168\n63#1:169\n63#1:171\n63#1:173\n82#1:177\n82#1:179\n82#1:181\n84#1:182\n84#1:184\n84#1:186\n93#1:189,3\n93#1:193,5\n94#1:198,3\n94#1:202,5\n95#1:207\n95#1:209\n95#1:211\n96#1:212\n96#1:214\n96#1:216\n97#1:217\n97#1:219\n97#1:221\n98#1:222\n98#1:224\n98#1:226\n99#1:227\n99#1:229\n99#1:231\n100#1:232\n100#1:234\n100#1:236\n101#1:237\n101#1:239\n101#1:241\n102#1:242\n102#1:244\n102#1:246\n103#1:247\n103#1:249\n103#1:251\n104#1:252\n104#1:254\n104#1:256,2\n105#1:258\n105#1:260\n105#1:262,2\n134#1:264\n134#1:266\n134#1:268,4\n138#1:272,7\n138#1:280,16\n139#1:296\n140#1:297\n55#1:144\n56#1:150\n58#1:155\n59#1:160\n61#1:165\n63#1:170\n82#1:178\n84#1:183\n95#1:208\n96#1:213\n97#1:218\n98#1:223\n99#1:228\n100#1:233\n101#1:238\n102#1:243\n103#1:248\n104#1:253\n105#1:259\n134#1:265\n*E\n"})
/* loaded from: classes7.dex */
public final class RealBufferedSink implements BufferedSink, AutoCloseable {
    @JvmField

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f13221Wwwwwwwwwwwwwwwwwwwwwww;
    @JvmField
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Buffer f13222Wwwwwwwwwwwwwwwwwwwwwwww = new Buffer();
    @JvmField
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Sink f13223Wwwwwwwwwwwwwwwwwwwwwwwww;

    public RealBufferedSink(@NotNull Sink sink) {
        this.f13223Wwwwwwwwwwwwwwwwwwwwwwwww = sink;
    }

    @Override // okio.BufferedSink
    @NotNull
    public OutputStream Www() {
        return new OutputStream() { // from class: okio.RealBufferedSink$outputStream$1
            @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                RealBufferedSink.this.close();
            }

            @Override // java.io.OutputStream, java.io.Flushable
            public void flush() {
                RealBufferedSink realBufferedSink = RealBufferedSink.this;
                if (!realBufferedSink.f13221Wwwwwwwwwwwwwwwwwwwwwww) {
                    realBufferedSink.flush();
                }
            }

            @NotNull
            public String toString() {
                return RealBufferedSink.this + ".outputStream()";
            }

            @Override // java.io.OutputStream
            public void write(int i) {
                RealBufferedSink realBufferedSink = RealBufferedSink.this;
                if (!realBufferedSink.f13221Wwwwwwwwwwwwwwwwwwwwwww) {
                    realBufferedSink.f13222Wwwwwwwwwwwwwwwwwwwwwwww.writeByte((byte) i);
                    RealBufferedSink.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    return;
                }
                throw new IOException("closed");
            }

            @Override // java.io.OutputStream
            public void write(@NotNull byte[] bArr, int i, int i2) {
                RealBufferedSink realBufferedSink = RealBufferedSink.this;
                if (!realBufferedSink.f13221Wwwwwwwwwwwwwwwwwwwwwww) {
                    realBufferedSink.f13222Wwwwwwwwwwwwwwwwwwwwwwww.write(bArr, i, i2);
                    RealBufferedSink.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    return;
                }
                throw new IOException("closed");
            }
        };
    }

    @Override // okio.BufferedSink
    @NotNull
    public BufferedSink Wwwww(@NotNull ByteString byteString) {
        if (!this.f13221Wwwwwwwwwwwwwwwwwwwwwww) {
            this.f13222Wwwwwwwwwwwwwwwwwwwwwwww.Wwwww(byteString);
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        throw new IllegalStateException("closed");
    }

    @Override // okio.BufferedSink
    @NotNull
    public BufferedSink Wwwwwwww(long j) {
        if (!this.f13221Wwwwwwwwwwwwwwwwwwwwwww) {
            this.f13222Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwww(j);
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        throw new IllegalStateException("closed");
    }

    @Override // okio.BufferedSink
    @NotNull
    public BufferedSink Wwwwwwwwwwwwwwwww(long j) {
        if (!this.f13221Wwwwwwwwwwwwwwwwwwwwwww) {
            this.f13222Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwww(j);
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        throw new IllegalStateException("closed");
    }

    @Override // okio.BufferedSink
    public long Wwwwwwwwwwwwwwwwwwwwwwww(@NotNull Source source) {
        long j = 0;
        while (true) {
            long read = source.read(this.f13222Wwwwwwwwwwwwwwwwwwwwwwww, 8192L);
            if (read != -1) {
                j += read;
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            } else {
                return j;
            }
        }
    }

    @Override // okio.Sink
    public void Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Buffer buffer, long j) {
        if (!this.f13221Wwwwwwwwwwwwwwwwwwwwwww) {
            this.f13222Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwww(buffer, j);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            return;
        }
        throw new IllegalStateException("closed");
    }

    @Override // okio.BufferedSink
    @NotNull
    public BufferedSink Wwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
        if (!this.f13221Wwwwwwwwwwwwwwwwwwwwwww) {
            this.f13222Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww(str);
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        throw new IllegalStateException("closed");
    }

    @Override // okio.BufferedSink
    @NotNull
    public BufferedSink Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (!this.f13221Wwwwwwwwwwwwwwwwwwwwwww) {
            long Kkkkkkkkkkkkkkkkkkkkk2 = this.f13222Wwwwwwwwwwwwwwwwwwwwwwww.Kkkkkkkkkkkkkkkkkkkkk();
            if (Kkkkkkkkkkkkkkkkkkkkk2 > 0) {
                this.f13223Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwww(this.f13222Wwwwwwwwwwwwwwwwwwwwwwww, Kkkkkkkkkkkkkkkkkkkkk2);
            }
            return this;
        }
        throw new IllegalStateException("closed");
    }

    @Override // okio.BufferedSink
    @NotNull
    public BufferedSink Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (!this.f13221Wwwwwwwwwwwwwwwwwwwwwww) {
            long Kk = this.f13222Wwwwwwwwwwwwwwwwwwwwwwww.Kk();
            if (Kk > 0) {
                this.f13223Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwww(this.f13222Wwwwwwwwwwwwwwwwwwwwwwww, Kk);
            }
            return this;
        }
        throw new IllegalStateException("closed");
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f13222Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f13222Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public BufferedSink Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        if (!this.f13221Wwwwwwwwwwwwwwwwwwwwwww) {
            this.f13222Wwwwwwwwwwwwwwwwwwwwwwww.Illllllllllllllllll(i);
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        throw new IllegalStateException("closed");
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (!this.f13221Wwwwwwwwwwwwwwwwwwwwwww) {
            try {
                if (this.f13222Wwwwwwwwwwwwwwwwwwwwwwww.Kk() > 0) {
                    Sink sink = this.f13223Wwwwwwwwwwwwwwwwwwwwwwwww;
                    Buffer buffer = this.f13222Wwwwwwwwwwwwwwwwwwwwwwww;
                    sink.Wwwwwwwwwwwwwwwwwwwwwwwww(buffer, buffer.Kk());
                }
                th = null;
            } catch (Throwable th) {
                th = th;
            }
            try {
                this.f13223Wwwwwwwwwwwwwwwwwwwwwwwww.close();
            } catch (Throwable th2) {
                if (th == null) {
                    th = th2;
                }
            }
            this.f13221Wwwwwwwwwwwwwwwwwwwwwww = true;
            if (th != null) {
                throw th;
            }
        }
    }

    @Override // okio.BufferedSink, okio.Sink, java.io.Flushable
    public void flush() {
        if (!this.f13221Wwwwwwwwwwwwwwwwwwwwwww) {
            if (this.f13222Wwwwwwwwwwwwwwwwwwwwwwww.Kk() > 0) {
                Sink sink = this.f13223Wwwwwwwwwwwwwwwwwwwwwwwww;
                Buffer buffer = this.f13222Wwwwwwwwwwwwwwwwwwwwwwww;
                sink.Wwwwwwwwwwwwwwwwwwwwwwwww(buffer, buffer.Kk());
            }
            this.f13223Wwwwwwwwwwwwwwwwwwwwwwwww.flush();
            return;
        }
        throw new IllegalStateException("closed");
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.f13221Wwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // okio.Sink
    @NotNull
    public Timeout timeout() {
        return this.f13223Wwwwwwwwwwwwwwwwwwwwwwwww.timeout();
    }

    @NotNull
    public String toString() {
        return "buffer(" + this.f13223Wwwwwwwwwwwwwwwwwwwwwwwww + ')';
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(@NotNull ByteBuffer byteBuffer) {
        if (!this.f13221Wwwwwwwwwwwwwwwwwwwwwww) {
            int write = this.f13222Wwwwwwwwwwwwwwwwwwwwwwww.write(byteBuffer);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            return write;
        }
        throw new IllegalStateException("closed");
    }

    @Override // okio.BufferedSink
    @NotNull
    public BufferedSink writeByte(int i) {
        if (!this.f13221Wwwwwwwwwwwwwwwwwwwwwww) {
            this.f13222Wwwwwwwwwwwwwwwwwwwwwwww.writeByte(i);
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        throw new IllegalStateException("closed");
    }

    @Override // okio.BufferedSink
    @NotNull
    public BufferedSink writeInt(int i) {
        if (!this.f13221Wwwwwwwwwwwwwwwwwwwwwww) {
            this.f13222Wwwwwwwwwwwwwwwwwwwwwwww.writeInt(i);
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        throw new IllegalStateException("closed");
    }

    @Override // okio.BufferedSink
    @NotNull
    public BufferedSink writeShort(int i) {
        if (!this.f13221Wwwwwwwwwwwwwwwwwwwwwww) {
            this.f13222Wwwwwwwwwwwwwwwwwwwwwwww.writeShort(i);
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        throw new IllegalStateException("closed");
    }

    @Override // okio.BufferedSink
    @NotNull
    public BufferedSink write(@NotNull byte[] bArr) {
        if (!this.f13221Wwwwwwwwwwwwwwwwwwwwwww) {
            this.f13222Wwwwwwwwwwwwwwwwwwwwwwww.write(bArr);
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        throw new IllegalStateException("closed");
    }

    @Override // okio.BufferedSink
    @NotNull
    public BufferedSink write(@NotNull byte[] bArr, int i, int i2) {
        if (!this.f13221Wwwwwwwwwwwwwwwwwwwwwww) {
            this.f13222Wwwwwwwwwwwwwwwwwwwwwwww.write(bArr, i, i2);
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        throw new IllegalStateException("closed");
    }
}
