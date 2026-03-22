package okio;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Typography;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u0005\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\n\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000e\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u001f\u0010\f\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010!\u001a\u00020 2\u0006\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b!\u0010\"J\u000f\u0010$\u001a\u00020#H\u0016¢\u0006\u0004\b$\u0010%J\u0017\u0010&\u001a\u00020#2\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b&\u0010'J\u0017\u0010(\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020#H\u0016¢\u0006\u0004\b(\u0010)J\u0017\u0010\f\u001a\u00020 2\u0006\u0010\t\u001a\u00020*H\u0016¢\u0006\u0004\b\f\u0010+J\u001f\u0010,\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b,\u0010-J\u0017\u0010/\u001a\u00020\n2\u0006\u0010\t\u001a\u00020.H\u0016¢\u0006\u0004\b/\u00100J\u0017\u00102\u001a\u0002012\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b2\u00103J\u0017\u00106\u001a\u0002012\u0006\u00105\u001a\u000204H\u0016¢\u0006\u0004\b6\u00107J\u000f\u00108\u001a\u000201H\u0016¢\u0006\u0004\b8\u00109J\u0017\u0010;\u001a\u0002012\u0006\u0010:\u001a\u00020\nH\u0016¢\u0006\u0004\b;\u00103J\u000f\u0010=\u001a\u00020<H\u0016¢\u0006\u0004\b=\u0010>J\u000f\u0010?\u001a\u00020<H\u0016¢\u0006\u0004\b?\u0010>J\u000f\u0010@\u001a\u00020 H\u0016¢\u0006\u0004\b@\u0010AJ\u000f\u0010B\u001a\u00020 H\u0016¢\u0006\u0004\bB\u0010AJ\u000f\u0010C\u001a\u00020\nH\u0016¢\u0006\u0004\bC\u0010DJ\u000f\u0010E\u001a\u00020\nH\u0016¢\u0006\u0004\bE\u0010DJ\u000f\u0010F\u001a\u00020\nH\u0016¢\u0006\u0004\bF\u0010DJ\u000f\u0010G\u001a\u00020\nH\u0016¢\u0006\u0004\bG\u0010DJ\u0017\u0010H\u001a\u00020\u00112\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\bH\u0010\u0013J\u0017\u0010J\u001a\u00020\n2\u0006\u0010I\u001a\u00020\u0016H\u0016¢\u0006\u0004\bJ\u0010KJ'\u0010N\u001a\u00020\n2\u0006\u0010I\u001a\u00020\u00162\u0006\u0010L\u001a\u00020\n2\u0006\u0010M\u001a\u00020\nH\u0016¢\u0006\u0004\bN\u0010OJ\u000f\u0010P\u001a\u00020\u0001H\u0016¢\u0006\u0004\bP\u0010QJ\u000f\u0010S\u001a\u00020RH\u0016¢\u0006\u0004\bS\u0010TJ\u000f\u0010U\u001a\u00020\u000eH\u0016¢\u0006\u0004\bU\u0010\u0010J\u000f\u0010V\u001a\u00020\u0011H\u0016¢\u0006\u0004\bV\u0010WJ\u000f\u0010Y\u001a\u00020XH\u0016¢\u0006\u0004\bY\u0010ZJ\u000f\u0010[\u001a\u000201H\u0016¢\u0006\u0004\b[\u00109R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\\\u0010]R\u0014\u0010`\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b^\u0010_R\u0016\u0010b\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010aR\u001b\u0010e\u001a\u00020\u00068Ö\u0002X\u0096\u0004¢\u0006\f\u0012\u0004\bd\u0010W\u001a\u0004\bc\u0010\b¨\u0006f"}, d2 = {"Lokio/RealBufferedSource;", "Lokio/BufferedSource;", "Lokio/Source;", "source", "<init>", "(Lokio/Source;)V", "Lokio/Buffer;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokio/Buffer;", "sink", "", "byteCount", "read", "(Lokio/Buffer;J)J", "", "Wwwwwwwwwwww", "()Z", "", "Wwwwwwwwwwwwwwwwww", "(J)V", "Wwwwwwwwwwwwwwwwwwwwwww", "(J)Z", "", "readByte", "()B", "Lokio/ByteString;", "Wwwwwww", "()Lokio/ByteString;", "Wwwwwwwwwwwwwww", "(J)Lokio/ByteString;", "Lokio/Options;", "options", "", "Kkkkkkkkkkkkkkkkkkkkkkkk", "(Lokio/Options;)I", "", "Wwwwwwwwwwwww", "()[B", "Wwwwwwwwwwwwwwwwwwwww", "(J)[B", "readFully", "([B)V", "Ljava/nio/ByteBuffer;", "(Ljava/nio/ByteBuffer;)I", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Buffer;J)V", "Lokio/Sink;", "Wwww", "(Lokio/Sink;)J", "", "Wwwwwwwwwwwwwwww", "(J)Ljava/lang/String;", "Ljava/nio/charset/Charset;", "charset", "Wwwwwwwwww", "(Ljava/nio/charset/Charset;)Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "limit", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "readShort", "()S", "Wwwwwwwwwwwwwwwwwwww", "readInt", "()I", "Wwwwww", "readLong", "()J", "Wwwwwwwwwwwwwwwwwww", "Wwwwwwwwwww", "Kkkkkkkkkkkkkkkkkkkkkkkkkk", "skip", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(B)J", "fromIndex", "toIndex", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(BJJ)J", "peek", "()Lokio/BufferedSource;", "Ljava/io/InputStream;", "Kkkkkkkkkkkkkkkkkkkkkkkkk", "()Ljava/io/InputStream;", "isOpen", "close", "()V", "Lokio/Timeout;", "timeout", "()Lokio/Timeout;", "toString", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Lokio/Source;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Lokio/Buffer;", "bufferField", "Z", "closed", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "getBuffer$annotations", "buffer", "okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nRealBufferedSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealBufferedSource.kt\nokio/RealBufferedSource\n+ 2 RealBufferedSource.kt\nokio/internal/-RealBufferedSource\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,185:1\n62#1:191\n62#1:201\n62#1:208\n62#1:214\n62#1:216\n62#1:220\n62#1:225\n62#1:240\n62#1:244\n62#1:251\n62#1:264\n62#1:272\n62#1:273\n62#1:274\n62#1:280\n62#1:288\n62#1:301\n62#1:305\n62#1:306\n62#1:307\n62#1:308\n62#1:313\n62#1:325\n62#1:341\n62#1:351\n62#1:354\n62#1:357\n62#1:360\n62#1:363\n62#1:366\n62#1:372\n62#1:389\n62#1:409\n62#1:424\n62#1:441\n62#1:454\n62#1:475\n62#1:482\n38#2:186\n39#2,3:188\n42#2,6:192\n51#2:198\n52#2:200\n56#2,2:202\n60#2:204\n61#2,2:206\n63#2,3:209\n69#2,2:212\n74#2:215\n75#2:217\n79#2,2:218\n84#2:221\n86#2,2:223\n88#2,13:226\n107#2:239\n108#2:241\n112#2,2:242\n117#2,6:245\n123#2,9:252\n134#2,3:261\n137#2,5:265\n142#2:271\n146#2,5:275\n151#2,5:281\n158#2,2:286\n160#2,11:289\n174#2:300\n175#2:302\n179#2,2:303\n184#2,4:309\n188#2,6:314\n198#2:320\n199#2,3:322\n202#2,8:326\n210#2,3:335\n217#2,3:338\n220#2,7:342\n230#2,2:349\n235#2,2:352\n240#2,2:355\n245#2,2:358\n250#2,2:361\n255#2,2:364\n260#2,5:367\n265#2,11:373\n279#2,5:384\n284#2,14:390\n301#2,2:404\n303#2,2:407\n305#2,7:410\n314#2,2:417\n316#2,4:420\n320#2,11:425\n334#2,2:436\n337#2,2:439\n339#2,7:442\n350#2,2:449\n353#2,2:452\n355#2,7:455\n371#2:462\n373#2,11:464\n385#2:476\n389#2:477\n393#2,4:478\n397#2:483\n399#2:484\n401#2:485\n1#3:187\n1#3:199\n1#3:205\n1#3:222\n1#3:321\n1#3:406\n1#3:419\n1#3:438\n1#3:451\n1#3:463\n89#4:270\n89#4:334\n*S KotlinDebug\n*F\n+ 1 RealBufferedSource.kt\nokio/RealBufferedSource\n*L\n66#1:191\n67#1:201\n69#1:208\n70#1:214\n71#1:216\n72#1:220\n73#1:225\n74#1:240\n75#1:244\n77#1:251\n79#1:264\n82#1:272\n83#1:273\n87#1:274\n90#1:280\n91#1:288\n92#1:301\n93#1:305\n96#1:306\n97#1:307\n102#1:308\n105#1:313\n107#1:325\n108#1:341\n109#1:351\n110#1:354\n111#1:357\n112#1:360\n113#1:363\n114#1:366\n115#1:372\n116#1:389\n117#1:409\n121#1:424\n124#1:441\n127#1:454\n141#1:475\n181#1:482\n66#1:186\n66#1:188,3\n66#1:192,6\n67#1:198\n67#1:200\n68#1:202,2\n69#1:204\n69#1:206,2\n69#1:209,3\n70#1:212,2\n71#1:215\n71#1:217\n72#1:218,2\n73#1:221\n73#1:223,2\n73#1:226,13\n74#1:239\n74#1:241\n75#1:242,2\n77#1:245,6\n77#1:252,9\n79#1:261,3\n79#1:265,5\n79#1:271\n90#1:275,5\n90#1:281,5\n91#1:286,2\n91#1:289,11\n92#1:300\n92#1:302\n93#1:303,2\n105#1:309,4\n105#1:314,6\n107#1:320\n107#1:322,3\n107#1:326,8\n107#1:335,3\n108#1:338,3\n108#1:342,7\n109#1:349,2\n110#1:352,2\n111#1:355,2\n112#1:358,2\n113#1:361,2\n114#1:364,2\n115#1:367,5\n115#1:373,11\n116#1:384,5\n116#1:390,14\n117#1:404,2\n117#1:407,2\n117#1:410,7\n121#1:417,2\n121#1:420,4\n121#1:425,11\n124#1:436,2\n124#1:439,2\n124#1:442,7\n127#1:449,2\n127#1:452,2\n127#1:455,7\n141#1:462\n141#1:464,11\n141#1:476\n143#1:477\n181#1:478,4\n181#1:483\n182#1:484\n183#1:485\n66#1:187\n67#1:199\n69#1:205\n73#1:222\n107#1:321\n117#1:406\n121#1:419\n124#1:438\n127#1:451\n141#1:463\n79#1:270\n107#1:334\n*E\n"})
/* loaded from: classes7.dex */
public final class RealBufferedSource implements BufferedSource, AutoCloseable {
    @JvmField

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f13225Wwwwwwwwwwwwwwwwwwwwwww;
    @JvmField
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Buffer f13226Wwwwwwwwwwwwwwwwwwwwwwww = new Buffer();
    @JvmField
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Source f13227Wwwwwwwwwwwwwwwwwwwwwwwww;

    public RealBufferedSource(@NotNull Source source) {
        this.f13227Wwwwwwwwwwwwwwwwwwwwwwwww = source;
    }

    @Override // okio.BufferedSource
    public int Kkkkkkkkkkkkkkkkkkkkkkkk(@NotNull Options options) {
        if (!this.f13225Wwwwwwwwwwwwwwwwwwwwwww) {
            do {
                int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = okio.internal.Buffer.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f13226Wwwwwwwwwwwwwwwwwwwwwwww, options, true);
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != -2) {
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == -1) {
                        return -1;
                    }
                    this.f13226Wwwwwwwwwwwwwwwwwwwwwwww.skip(options.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()[Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2].size());
                    return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                }
            } while (this.f13227Wwwwwwwwwwwwwwwwwwwwwwwww.read(this.f13226Wwwwwwwwwwwwwwwwwwwwwwww, 8192L) != -1);
            return -1;
        }
        throw new IllegalStateException("closed");
    }

    @Override // okio.BufferedSource
    @NotNull
    public InputStream Kkkkkkkkkkkkkkkkkkkkkkkkk() {
        return new InputStream() { // from class: okio.RealBufferedSource$inputStream$1
            @Override // java.io.InputStream
            public int available() {
                RealBufferedSource realBufferedSource = RealBufferedSource.this;
                if (!realBufferedSource.f13225Wwwwwwwwwwwwwwwwwwwwwww) {
                    return (int) Math.min(realBufferedSource.f13226Wwwwwwwwwwwwwwwwwwwwwwww.Kk(), Integer.MAX_VALUE);
                }
                throw new IOException("closed");
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                RealBufferedSource.this.close();
            }

            @Override // java.io.InputStream
            public int read() {
                RealBufferedSource realBufferedSource = RealBufferedSource.this;
                if (!realBufferedSource.f13225Wwwwwwwwwwwwwwwwwwwwwww) {
                    if (realBufferedSource.f13226Wwwwwwwwwwwwwwwwwwwwwwww.Kk() == 0) {
                        RealBufferedSource realBufferedSource2 = RealBufferedSource.this;
                        if (realBufferedSource2.f13227Wwwwwwwwwwwwwwwwwwwwwwwww.read(realBufferedSource2.f13226Wwwwwwwwwwwwwwwwwwwwwwww, 8192L) == -1) {
                            return -1;
                        }
                    }
                    return RealBufferedSource.this.f13226Wwwwwwwwwwwwwwwwwwwwwwww.readByte() & 255;
                }
                throw new IOException("closed");
            }

            @NotNull
            public String toString() {
                return RealBufferedSource.this + ".inputStream()";
            }

            @Override // java.io.InputStream
            public int read(@NotNull byte[] bArr, int i, int i2) {
                if (!RealBufferedSource.this.f13225Wwwwwwwwwwwwwwwwwwwwwww) {
                    SegmentedByteString.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bArr.length, i, i2);
                    if (RealBufferedSource.this.f13226Wwwwwwwwwwwwwwwwwwwwwwww.Kk() == 0) {
                        RealBufferedSource realBufferedSource = RealBufferedSource.this;
                        if (realBufferedSource.f13227Wwwwwwwwwwwwwwwwwwwwwwwww.read(realBufferedSource.f13226Wwwwwwwwwwwwwwwwwwwwwwww, 8192L) == -1) {
                            return -1;
                        }
                    }
                    return RealBufferedSource.this.f13226Wwwwwwwwwwwwwwwwwwwwwwww.read(bArr, i, i2);
                }
                throw new IOException("closed");
            }
        };
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0031, code lost:
        if (r0 == 0) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0058, code lost:
        throw new java.lang.NumberFormatException("Expected leading [0-9a-fA-F] character but was 0x" + java.lang.Integer.toString(r2, kotlin.text.CharsKt.checkRadix(kotlin.text.CharsKt.checkRadix(16))));
     */
    @Override // okio.BufferedSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long Kkkkkkkkkkkkkkkkkkkkkkkkkk() {
        /*
            r5 = this;
            r0 = 1
            r5.Wwwwwwwwwwwwwwwwww(r0)
            r0 = 0
        L6:
            int r1 = r0 + 1
            long r2 = (long) r1
            boolean r2 = r5.Wwwwwwwwwwwwwwwwwwwwwww(r2)
            if (r2 == 0) goto L59
            okio.Buffer r2 = r5.f13226Wwwwwwwwwwwwwwwwwwwwwwww
            long r3 = (long) r0
            byte r2 = r2.Kkkkkkkkkkkkkkkk(r3)
            r3 = 48
            if (r2 < r3) goto L1e
            r3 = 57
            if (r2 <= r3) goto L2f
        L1e:
            r3 = 97
            if (r2 < r3) goto L26
            r3 = 102(0x66, float:1.43E-43)
            if (r2 <= r3) goto L2f
        L26:
            r3 = 65
            if (r2 < r3) goto L31
            r3 = 70
            if (r2 <= r3) goto L2f
            goto L31
        L2f:
            r0 = r1
            goto L6
        L31:
            if (r0 == 0) goto L34
            goto L59
        L34:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r3 = "Expected leading [0-9a-fA-F] character but was 0x"
            r1.append(r3)
            r3 = 16
            int r3 = kotlin.text.CharsKt.checkRadix(r3)
            int r3 = kotlin.text.CharsKt.checkRadix(r3)
            java.lang.String r2 = java.lang.Integer.toString(r2, r3)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L59:
            okio.Buffer r0 = r5.f13226Wwwwwwwwwwwwwwwwwwwwwwww
            long r0 = r0.Kkkkkkkkkkkkkkkkkkkkkkkkkk()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.RealBufferedSource.Kkkkkkkkkkkkkkkkkkkkkkkkkk():long");
    }

    @Override // okio.BufferedSource
    public long Wwww(@NotNull Sink sink) {
        long j = 0;
        while (this.f13227Wwwwwwwwwwwwwwwwwwwwwwwww.read(this.f13226Wwwwwwwwwwwwwwwwwwwwwwww, 8192L) != -1) {
            long Kkkkkkkkkkkkkkkkkkkkk2 = this.f13226Wwwwwwwwwwwwwwwwwwwwwwww.Kkkkkkkkkkkkkkkkkkkkk();
            if (Kkkkkkkkkkkkkkkkkkkkk2 > 0) {
                j += Kkkkkkkkkkkkkkkkkkkkk2;
                sink.Wwwwwwwwwwwwwwwwwwwwwwwww(this.f13226Wwwwwwwwwwwwwwwwwwwwwwww, Kkkkkkkkkkkkkkkkkkkkk2);
            }
        }
        if (this.f13226Wwwwwwwwwwwwwwwwwwwwwwww.Kk() > 0) {
            long Kk = j + this.f13226Wwwwwwwwwwwwwwwwwwwwwwww.Kk();
            Buffer buffer = this.f13226Wwwwwwwwwwwwwwwwwwwwwwww;
            sink.Wwwwwwwwwwwwwwwwwwwwwwwww(buffer, buffer.Kk());
            return Kk;
        }
        return j;
    }

    @Override // okio.BufferedSource
    public int Wwwwww() {
        Wwwwwwwwwwwwwwwwww(4L);
        return this.f13226Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwww();
    }

    @Override // okio.BufferedSource
    @NotNull
    public ByteString Wwwwwww() {
        this.f13226Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww(this.f13227Wwwwwwwwwwwwwwwwwwwwwwwww);
        return this.f13226Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwww();
    }

    @Override // okio.BufferedSource
    @NotNull
    public String Wwwwwwwwww(@NotNull Charset charset) {
        this.f13226Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww(this.f13227Wwwwwwwwwwwwwwwwwwwwwwwww);
        return this.f13226Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwww(charset);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0029, code lost:
        if (r4 == 0) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0050, code lost:
        throw new java.lang.NumberFormatException("Expected a digit or '-' but was 0x" + java.lang.Integer.toString(r8, kotlin.text.CharsKt.checkRadix(kotlin.text.CharsKt.checkRadix(16))));
     */
    @Override // okio.BufferedSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long Wwwwwwwwwww() {
        /*
            r10 = this;
            r0 = 1
            r10.Wwwwwwwwwwwwwwwwww(r0)
            r2 = 0
            r4 = r2
        L8:
            long r6 = r4 + r0
            boolean r8 = r10.Wwwwwwwwwwwwwwwwwwwwwww(r6)
            if (r8 == 0) goto L51
            okio.Buffer r8 = r10.f13226Wwwwwwwwwwwwwwwwwwwwwwww
            byte r8 = r8.Kkkkkkkkkkkkkkkk(r4)
            r9 = 48
            if (r8 < r9) goto L1e
            r9 = 57
            if (r8 <= r9) goto L27
        L1e:
            int r4 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r4 != 0) goto L29
            r5 = 45
            if (r8 == r5) goto L27
            goto L29
        L27:
            r4 = r6
            goto L8
        L29:
            if (r4 == 0) goto L2c
            goto L51
        L2c:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Expected a digit or '-' but was 0x"
            r1.append(r2)
            r2 = 16
            int r2 = kotlin.text.CharsKt.checkRadix(r2)
            int r2 = kotlin.text.CharsKt.checkRadix(r2)
            java.lang.String r2 = java.lang.Integer.toString(r8, r2)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L51:
            okio.Buffer r0 = r10.f13226Wwwwwwwwwwwwwwwwwwwwwwww
            long r0 = r0.Wwwwwwwwwww()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.RealBufferedSource.Wwwwwwwwwww():long");
    }

    @Override // okio.BufferedSource
    public boolean Wwwwwwwwwwww() {
        if (!this.f13225Wwwwwwwwwwwwwwwwwwwwwww) {
            if (this.f13226Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwww() && this.f13227Wwwwwwwwwwwwwwwwwwwwwwwww.read(this.f13226Wwwwwwwwwwwwwwwwwwwwwwww, 8192L) == -1) {
                return true;
            }
            return false;
        }
        throw new IllegalStateException("closed");
    }

    @Override // okio.BufferedSource
    @NotNull
    public byte[] Wwwwwwwwwwwww() {
        this.f13226Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww(this.f13227Wwwwwwwwwwwwwwwwwwwwwwwww);
        return this.f13226Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwww();
    }

    @Override // okio.BufferedSource
    @NotNull
    public ByteString Wwwwwwwwwwwwwww(long j) {
        Wwwwwwwwwwwwwwwwww(j);
        return this.f13226Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwww(j);
    }

    @Override // okio.BufferedSource
    @NotNull
    public String Wwwwwwwwwwwwwwww(long j) {
        Wwwwwwwwwwwwwwwwww(j);
        return this.f13226Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwww(j);
    }

    @Override // okio.BufferedSource
    public void Wwwwwwwwwwwwwwwwww(long j) {
        if (Wwwwwwwwwwwwwwwwwwwwwww(j)) {
            return;
        }
        throw new EOFException();
    }

    @Override // okio.BufferedSource
    public long Wwwwwwwwwwwwwwwwwww() {
        Wwwwwwwwwwwwwwwwww(8L);
        return this.f13226Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwww();
    }

    @Override // okio.BufferedSource
    public short Wwwwwwwwwwwwwwwwwwww() {
        Wwwwwwwwwwwwwwwwww(2L);
        return this.f13226Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwww();
    }

    @Override // okio.BufferedSource
    @NotNull
    public byte[] Wwwwwwwwwwwwwwwwwwwww(long j) {
        Wwwwwwwwwwwwwwwwww(j);
        return this.f13226Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwww(j);
    }

    @Override // okio.BufferedSource
    @NotNull
    public String Wwwwwwwwwwwwwwwwwwwwww() {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Long.MAX_VALUE);
    }

    @Override // okio.BufferedSource
    public boolean Wwwwwwwwwwwwwwwwwwwwwww(long j) {
        if (j >= 0) {
            if (!this.f13225Wwwwwwwwwwwwwwwwwwwwwww) {
                while (this.f13226Wwwwwwwwwwwwwwwwwwwwwwww.Kk() < j) {
                    if (this.f13227Wwwwwwwwwwwwwwwwwwwwwwwww.read(this.f13226Wwwwwwwwwwwwwwwwwwwwwwww, 8192L) == -1) {
                        return false;
                    }
                }
                return true;
            }
            throw new IllegalStateException("closed");
        }
        throw new IllegalArgumentException(("byteCount < 0: " + j).toString());
    }

    public long Wwwwwwwwwwwwwwwwwwwwwwwwwww(byte b, long j, long j2) {
        if (!this.f13225Wwwwwwwwwwwwwwwwwwwwwww) {
            if (0 <= j && j <= j2) {
                long j3 = j;
                while (j3 < j2) {
                    byte b2 = b;
                    long j4 = j2;
                    long Kkkkkkkkkkkkkkk2 = this.f13226Wwwwwwwwwwwwwwwwwwwwwwww.Kkkkkkkkkkkkkkk(b2, j3, j4);
                    if (Kkkkkkkkkkkkkkk2 != -1) {
                        return Kkkkkkkkkkkkkkk2;
                    }
                    long Kk = this.f13226Wwwwwwwwwwwwwwwwwwwwwwww.Kk();
                    if (Kk >= j4 || this.f13227Wwwwwwwwwwwwwwwwwwwwwwwww.read(this.f13226Wwwwwwwwwwwwwwwwwwwwwwww, 8192L) == -1) {
                        break;
                    }
                    j3 = Math.max(j3, Kk);
                    b = b2;
                    j2 = j4;
                }
                return -1L;
            }
            throw new IllegalArgumentException(("fromIndex=" + j + " toIndex=" + j2).toString());
        }
        throw new IllegalStateException("closed");
    }

    @Override // okio.BufferedSource
    @NotNull
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwww(long j) {
        long j2;
        if (j >= 0) {
            if (j == Long.MAX_VALUE) {
                j2 = Long.MAX_VALUE;
            } else {
                j2 = j + 1;
            }
            long Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwww((byte) 10, 0L, j2);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwww2 != -1) {
                return okio.internal.Buffer.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f13226Wwwwwwwwwwwwwwwwwwwwwwww, Wwwwwwwwwwwwwwwwwwwwwwwwwww2);
            }
            if (j2 < Long.MAX_VALUE && Wwwwwwwwwwwwwwwwwwwwwww(j2) && this.f13226Wwwwwwwwwwwwwwwwwwwwwwww.Kkkkkkkkkkkkkkkk(j2 - 1) == 13 && Wwwwwwwwwwwwwwwwwwwwwww(j2 + 1) && this.f13226Wwwwwwwwwwwwwwwwwwwwwwww.Kkkkkkkkkkkkkkkk(j2) == 10) {
                return okio.internal.Buffer.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f13226Wwwwwwwwwwwwwwwwwwwwwwww, j2);
            }
            Buffer buffer = new Buffer();
            Buffer buffer2 = this.f13226Wwwwwwwwwwwwwwwwwwwwwwww;
            buffer2.Kkkkkkkkkkkkkkkkkkk(buffer, 0L, Math.min(32, buffer2.Kk()));
            throw new EOFException("\\n not found: limit=" + Math.min(this.f13226Wwwwwwwwwwwwwwwwwwwwwwww.Kk(), j) + " content=" + buffer.Wwwwwww().hex() + Typography.ellipsis);
        }
        throw new IllegalArgumentException(("limit < 0: " + j).toString());
    }

    @Override // okio.BufferedSource
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Buffer buffer, long j) {
        try {
            Wwwwwwwwwwwwwwwwww(j);
            this.f13226Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(buffer, j);
        } catch (EOFException e) {
            buffer.Wwwwwwwwwwwwwwwwwwwwwwww(this.f13226Wwwwwwwwwwwwwwwwwwwwwwww);
            throw e;
        }
    }

    @Override // okio.BufferedSource, okio.BufferedSink
    @NotNull
    public Buffer Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f13226Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // okio.BufferedSource, okio.BufferedSink
    @NotNull
    public Buffer Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f13226Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    public long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(byte b) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwww(b, 0L, Long.MAX_VALUE);
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (!this.f13225Wwwwwwwwwwwwwwwwwwwwwww) {
            this.f13225Wwwwwwwwwwwwwwwwwwwwwww = true;
            this.f13227Wwwwwwwwwwwwwwwwwwwwwwwww.close();
            this.f13226Wwwwwwwwwwwwwwwwwwwwwwww.Kkkkkkkkkkkkkkkkkkkkkkk();
        }
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.f13225Wwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // okio.BufferedSource
    @NotNull
    public BufferedSource peek() {
        return Okio.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new PeekSource(this));
    }

    @Override // okio.Source
    public long read(@NotNull Buffer buffer, long j) {
        if (j >= 0) {
            if (!this.f13225Wwwwwwwwwwwwwwwwwwwwwww) {
                if (this.f13226Wwwwwwwwwwwwwwwwwwwwwwww.Kk() == 0 && this.f13227Wwwwwwwwwwwwwwwwwwwwwwwww.read(this.f13226Wwwwwwwwwwwwwwwwwwwwwwww, 8192L) == -1) {
                    return -1L;
                }
                return this.f13226Wwwwwwwwwwwwwwwwwwwwwwww.read(buffer, Math.min(j, this.f13226Wwwwwwwwwwwwwwwwwwwwwwww.Kk()));
            }
            throw new IllegalStateException("closed");
        }
        throw new IllegalArgumentException(("byteCount < 0: " + j).toString());
    }

    @Override // okio.BufferedSource
    public byte readByte() {
        Wwwwwwwwwwwwwwwwww(1L);
        return this.f13226Wwwwwwwwwwwwwwwwwwwwwwww.readByte();
    }

    @Override // okio.BufferedSource
    public void readFully(@NotNull byte[] bArr) {
        try {
            Wwwwwwwwwwwwwwwwww(bArr.length);
            this.f13226Wwwwwwwwwwwwwwwwwwwwwwww.readFully(bArr);
        } catch (EOFException e) {
            int i = 0;
            while (this.f13226Wwwwwwwwwwwwwwwwwwwwwwww.Kk() > 0) {
                Buffer buffer = this.f13226Wwwwwwwwwwwwwwwwwwwwwwww;
                int read = buffer.read(bArr, i, (int) buffer.Kk());
                if (read != -1) {
                    i += read;
                } else {
                    throw new AssertionError();
                }
            }
            throw e;
        }
    }

    @Override // okio.BufferedSource
    public int readInt() {
        Wwwwwwwwwwwwwwwwww(4L);
        return this.f13226Wwwwwwwwwwwwwwwwwwwwwwww.readInt();
    }

    @Override // okio.BufferedSource
    public long readLong() {
        Wwwwwwwwwwwwwwwwww(8L);
        return this.f13226Wwwwwwwwwwwwwwwwwwwwwwww.readLong();
    }

    @Override // okio.BufferedSource
    public short readShort() {
        Wwwwwwwwwwwwwwwwww(2L);
        return this.f13226Wwwwwwwwwwwwwwwwwwwwwwww.readShort();
    }

    @Override // okio.BufferedSource
    public void skip(long j) {
        if (!this.f13225Wwwwwwwwwwwwwwwwwwwwwww) {
            while (j > 0) {
                if (this.f13226Wwwwwwwwwwwwwwwwwwwwwwww.Kk() == 0 && this.f13227Wwwwwwwwwwwwwwwwwwwwwwwww.read(this.f13226Wwwwwwwwwwwwwwwwwwwwwwww, 8192L) == -1) {
                    throw new EOFException();
                }
                long min = Math.min(j, this.f13226Wwwwwwwwwwwwwwwwwwwwwwww.Kk());
                this.f13226Wwwwwwwwwwwwwwwwwwwwwwww.skip(min);
                j -= min;
            }
            return;
        }
        throw new IllegalStateException("closed");
    }

    @Override // okio.Source
    @NotNull
    public Timeout timeout() {
        return this.f13227Wwwwwwwwwwwwwwwwwwwwwwwww.timeout();
    }

    @NotNull
    public String toString() {
        return "buffer(" + this.f13227Wwwwwwwwwwwwwwwwwwwwwwwww + ')';
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(@NotNull ByteBuffer byteBuffer) {
        if (this.f13226Wwwwwwwwwwwwwwwwwwwwwwww.Kk() == 0 && this.f13227Wwwwwwwwwwwwwwwwwwwwwwwww.read(this.f13226Wwwwwwwwwwwwwwwwwwwwwwww, 8192L) == -1) {
            return -1;
        }
        return this.f13226Wwwwwwwwwwwwwwwwwwwwwwww.read(byteBuffer);
    }
}
