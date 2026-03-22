package kotlinx.serialization.json.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.OutputStream;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0019\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\f\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0012\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0010\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0018\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u0015H\u0002J\u0018\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u000bH\u0002J\b\u0010\u001d\u001a\u00020\rH\u0016J\b\u0010\u001e\u001a\u00020\rH\u0002J\u0011\u0010\u001f\u001a\u00020\r2\u0006\u0010 \u001a\u00020\u000bH\u0082\bJ\u0011\u0010\u0013\u001a\u00020\r2\u0006\u0010!\u001a\u00020\u000bH\u0082\bJ\t\u0010\"\u001a\u00020\u000bH\u0082\bJ\u0018\u0010#\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\t2\u0006\u0010$\u001a\u00020\u000bH\u0002J\u0010\u0010%\u001a\u00020\r2\u0006\u0010&\u001a\u00020\u000bH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006'"}, d2 = {"Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;", "Lkotlinx/serialization/json/internal/InternalJsonWriter;", "stream", "Ljava/io/OutputStream;", "<init>", "(Ljava/io/OutputStream;)V", "buffer", "", "charArray", "", "indexInBuffer", "", "writeLong", "", "value", "", "writeChar", "char", "", "write", "text", "", "writeQuoted", "appendStringSlowPath", "currentSize", TypedValues.Custom.S_STRING, "ensureTotalCapacity", "oldSize", "additional", "release", "flush", "ensure", "bytesCount", "byte", "rest", "writeUtf8", "count", "writeUtf8CodePoint", "codePoint", "kotlinx-serialization-json"}, k = 1, mv = {2, 0, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nJvmJsonStreams.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JvmJsonStreams.kt\nkotlinx/serialization/json/internal/JsonToJavaStreamWriter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,268:1\n130#1:269\n117#1:271\n130#1:272\n118#1,3:273\n125#1,2:276\n130#1:278\n125#1,2:279\n117#1:281\n130#1:282\n118#1,3:283\n125#1,2:286\n125#1,2:288\n117#1:290\n130#1:291\n118#1,3:292\n125#1,2:295\n125#1,2:297\n125#1,2:299\n117#1:301\n130#1:302\n118#1,3:303\n125#1,2:306\n117#1:308\n130#1:309\n118#1,3:310\n125#1,2:313\n125#1,2:315\n125#1,2:317\n125#1,2:319\n117#1:321\n130#1:322\n118#1,3:323\n125#1,2:326\n117#1:328\n130#1:329\n118#1,3:330\n125#1,2:333\n125#1,2:335\n117#1:337\n130#1:338\n118#1,3:339\n125#1,2:342\n117#1:344\n130#1:345\n118#1,3:346\n125#1,2:349\n125#1,2:351\n125#1,2:353\n117#1:355\n130#1:356\n118#1,3:357\n125#1,2:360\n125#1,2:362\n125#1,2:364\n125#1,2:366\n1#2:270\n*S KotlinDebug\n*F\n+ 1 JvmJsonStreams.kt\nkotlinx/serialization/json/internal/JsonToJavaStreamWriter\n*L\n117#1:269\n148#1:271\n148#1:272\n148#1:273,3\n149#1:276,2\n151#1:278\n158#1:279,2\n165#1:281\n165#1:282\n165#1:283,3\n166#1:286,2\n167#1:288,2\n173#1:290\n173#1:291\n173#1:292,3\n174#1:295,2\n175#1:297,2\n176#1:299,2\n186#1:301\n186#1:302\n186#1:303,3\n187#1:306,2\n196#1:308\n196#1:309\n196#1:310,3\n197#1:313,2\n198#1:315,2\n199#1:317,2\n200#1:319,2\n215#1:321\n215#1:322\n215#1:323,3\n216#1:326,2\n221#1:328\n221#1:329\n221#1:330,3\n222#1:333,2\n223#1:335,2\n228#1:337\n228#1:338\n228#1:339,3\n229#1:342,2\n234#1:344\n234#1:345\n234#1:346,3\n235#1:349,2\n236#1:351,2\n237#1:353,2\n242#1:355\n242#1:356\n242#1:357,3\n243#1:360,2\n244#1:362,2\n245#1:364,2\n246#1:366,2\n*E\n"})
/* loaded from: classes7.dex */
public final class JsonToJavaStreamWriter implements InternalJsonWriter {
    @NotNull
    private final byte[] buffer = ByteArrayPool.INSTANCE.take();
    @NotNull
    private char[] charArray = CharArrayPool.INSTANCE.take();
    private int indexInBuffer;
    @NotNull
    private final OutputStream stream;

    public JsonToJavaStreamWriter(@NotNull OutputStream outputStream) {
        this.stream = outputStream;
    }

    private final void appendStringSlowPath(int i, String str) {
        int i2;
        int length = str.length();
        for (int i3 = i - 1; i3 < length; i3++) {
            int ensureTotalCapacity = ensureTotalCapacity(i, 2);
            char charAt = str.charAt(i3);
            if (charAt < StringOpsKt.getESCAPE_MARKERS().length) {
                byte b = StringOpsKt.getESCAPE_MARKERS()[charAt];
                if (b == 0) {
                    i2 = ensureTotalCapacity + 1;
                    this.charArray[ensureTotalCapacity] = charAt;
                } else {
                    if (b == 1) {
                        String str2 = StringOpsKt.getESCAPE_STRINGS()[charAt];
                        int ensureTotalCapacity2 = ensureTotalCapacity(ensureTotalCapacity, str2.length());
                        str2.getChars(0, str2.length(), this.charArray, ensureTotalCapacity2);
                        i = ensureTotalCapacity2 + str2.length();
                    } else {
                        char[] cArr = this.charArray;
                        cArr[ensureTotalCapacity] = AbstractJsonLexerKt.STRING_ESC;
                        cArr[ensureTotalCapacity + 1] = (char) b;
                        i = ensureTotalCapacity + 2;
                    }
                }
            } else {
                i2 = ensureTotalCapacity + 1;
                this.charArray[ensureTotalCapacity] = charAt;
            }
            i = i2;
        }
        ensureTotalCapacity(i, 1);
        char[] cArr2 = this.charArray;
        cArr2[i] = '\"';
        writeUtf8(cArr2, i + 1);
        flush();
    }

    private final void ensure(int i) {
        if (this.buffer.length - this.indexInBuffer < i) {
            flush();
        }
    }

    private final int ensureTotalCapacity(int i, int i2) {
        int i3 = i2 + i;
        char[] cArr = this.charArray;
        if (cArr.length <= i3) {
            this.charArray = Arrays.copyOf(cArr, RangesKt.coerceAtLeast(i3, i * 2));
        }
        return i;
    }

    private final void flush() {
        this.stream.write(this.buffer, 0, this.indexInBuffer);
        this.indexInBuffer = 0;
    }

    private final int rest() {
        return this.buffer.length - this.indexInBuffer;
    }

    private final void writeUtf8(char[] cArr, int i) {
        char c;
        if (i >= 0) {
            if (i <= cArr.length) {
                int i2 = 0;
                while (i2 < i) {
                    char c2 = cArr[i2];
                    if (c2 < 128) {
                        if (this.buffer.length - this.indexInBuffer < 1) {
                            flush();
                        }
                        byte[] bArr = this.buffer;
                        int i3 = this.indexInBuffer;
                        int i4 = i3 + 1;
                        this.indexInBuffer = i4;
                        bArr[i3] = (byte) c2;
                        i2++;
                        int min = Math.min(i, (bArr.length - i4) + i2);
                        while (i2 < min) {
                            char c3 = cArr[i2];
                            if (c3 < 128) {
                                byte[] bArr2 = this.buffer;
                                int i5 = this.indexInBuffer;
                                this.indexInBuffer = i5 + 1;
                                bArr2[i5] = (byte) c3;
                                i2++;
                            }
                        }
                    } else {
                        if (c2 < 2048) {
                            if (this.buffer.length - this.indexInBuffer < 2) {
                                flush();
                            }
                            byte[] bArr3 = this.buffer;
                            int i6 = this.indexInBuffer;
                            int i7 = i6 + 1;
                            this.indexInBuffer = i7;
                            bArr3[i6] = (byte) ((c2 >> 6) | 192);
                            this.indexInBuffer = i6 + 2;
                            bArr3[i7] = (byte) ((c2 & '?') | 128);
                        } else if (c2 >= 55296 && c2 <= 57343) {
                            int i8 = i2 + 1;
                            if (i8 < i) {
                                c = cArr[i8];
                            } else {
                                c = 0;
                            }
                            if (c2 <= 56319 && 56320 <= c && c < 57344) {
                                int i9 = (((c2 & 1023) << 10) | (c & 1023)) + 65536;
                                if (this.buffer.length - this.indexInBuffer < 4) {
                                    flush();
                                }
                                byte[] bArr4 = this.buffer;
                                int i10 = this.indexInBuffer;
                                int i11 = i10 + 1;
                                this.indexInBuffer = i11;
                                bArr4[i10] = (byte) ((i9 >> 18) | 240);
                                int i12 = i10 + 2;
                                this.indexInBuffer = i12;
                                bArr4[i11] = (byte) (((i9 >> 12) & 63) | 128);
                                int i13 = i10 + 3;
                                this.indexInBuffer = i13;
                                bArr4[i12] = (byte) (((i9 >> 6) & 63) | 128);
                                this.indexInBuffer = i10 + 4;
                                bArr4[i13] = (byte) ((i9 & 63) | 128);
                                i2 += 2;
                            } else {
                                if (this.buffer.length - this.indexInBuffer < 1) {
                                    flush();
                                }
                                byte[] bArr5 = this.buffer;
                                int i14 = this.indexInBuffer;
                                this.indexInBuffer = i14 + 1;
                                bArr5[i14] = (byte) 63;
                                i2 = i8;
                            }
                        } else {
                            if (this.buffer.length - this.indexInBuffer < 3) {
                                flush();
                            }
                            byte[] bArr6 = this.buffer;
                            int i15 = this.indexInBuffer;
                            int i16 = i15 + 1;
                            this.indexInBuffer = i16;
                            bArr6[i15] = (byte) ((c2 >> '\f') | 224);
                            int i17 = i15 + 2;
                            this.indexInBuffer = i17;
                            bArr6[i16] = (byte) (((c2 >> 6) & 63) | 128);
                            this.indexInBuffer = i15 + 3;
                            bArr6[i17] = (byte) ((c2 & '?') | 128);
                        }
                        i2++;
                    }
                }
                return;
            }
            throw new IllegalArgumentException(("count > string.length: " + i + " > " + cArr.length).toString());
        }
        throw new IllegalArgumentException("count < 0");
    }

    private final void writeUtf8CodePoint(int i) {
        if (i < 128) {
            if (this.buffer.length - this.indexInBuffer < 1) {
                flush();
            }
            byte[] bArr = this.buffer;
            int i2 = this.indexInBuffer;
            this.indexInBuffer = i2 + 1;
            bArr[i2] = (byte) i;
        } else if (i < 2048) {
            if (this.buffer.length - this.indexInBuffer < 2) {
                flush();
            }
            byte[] bArr2 = this.buffer;
            int i3 = this.indexInBuffer;
            int i4 = i3 + 1;
            this.indexInBuffer = i4;
            bArr2[i3] = (byte) ((i >> 6) | 192);
            this.indexInBuffer = i3 + 2;
            bArr2[i4] = (byte) ((i & 63) | 128);
        } else if (55296 <= i && i < 57344) {
            if (this.buffer.length - this.indexInBuffer < 1) {
                flush();
            }
            byte[] bArr3 = this.buffer;
            int i5 = this.indexInBuffer;
            this.indexInBuffer = i5 + 1;
            bArr3[i5] = (byte) 63;
        } else if (i < 65536) {
            if (this.buffer.length - this.indexInBuffer < 3) {
                flush();
            }
            byte[] bArr4 = this.buffer;
            int i6 = this.indexInBuffer;
            int i7 = i6 + 1;
            this.indexInBuffer = i7;
            bArr4[i6] = (byte) ((i >> 12) | 224);
            int i8 = i6 + 2;
            this.indexInBuffer = i8;
            bArr4[i7] = (byte) (((i >> 6) & 63) | 128);
            this.indexInBuffer = i6 + 3;
            bArr4[i8] = (byte) ((i & 63) | 128);
        } else if (i <= 1114111) {
            if (this.buffer.length - this.indexInBuffer < 4) {
                flush();
            }
            byte[] bArr5 = this.buffer;
            int i9 = this.indexInBuffer;
            int i10 = i9 + 1;
            this.indexInBuffer = i10;
            bArr5[i9] = (byte) ((i >> 18) | 240);
            int i11 = i9 + 2;
            this.indexInBuffer = i11;
            bArr5[i10] = (byte) (((i >> 12) & 63) | 128);
            int i12 = i9 + 3;
            this.indexInBuffer = i12;
            bArr5[i11] = (byte) (((i >> 6) & 63) | 128);
            this.indexInBuffer = i9 + 4;
            bArr5[i12] = (byte) ((i & 63) | 128);
        } else {
            throw new JsonEncodingException("Unexpected code point: " + i);
        }
    }

    @Override // kotlinx.serialization.json.internal.InternalJsonWriter
    public void release() {
        flush();
        CharArrayPool.INSTANCE.release(this.charArray);
        ByteArrayPool.INSTANCE.release(this.buffer);
    }

    @Override // kotlinx.serialization.json.internal.InternalJsonWriter
    public void write(@NotNull String str) {
        int length = str.length();
        ensureTotalCapacity(0, length);
        str.getChars(0, length, this.charArray, 0);
        writeUtf8(this.charArray, length);
    }

    @Override // kotlinx.serialization.json.internal.InternalJsonWriter
    public void writeChar(char c) {
        writeUtf8CodePoint(c);
    }

    @Override // kotlinx.serialization.json.internal.InternalJsonWriter
    public void writeLong(long j) {
        write(String.valueOf(j));
    }

    @Override // kotlinx.serialization.json.internal.InternalJsonWriter
    public void writeQuoted(@NotNull String str) {
        ensureTotalCapacity(0, str.length() + 2);
        char[] cArr = this.charArray;
        cArr[0] = '\"';
        int length = str.length();
        str.getChars(0, length, cArr, 1);
        int i = length + 1;
        for (int i2 = 1; i2 < i; i2++) {
            char c = cArr[i2];
            if (c < StringOpsKt.getESCAPE_MARKERS().length && StringOpsKt.getESCAPE_MARKERS()[c] != 0) {
                appendStringSlowPath(i2, str);
                return;
            }
        }
        cArr[i] = '\"';
        writeUtf8(cArr, length + 2);
        flush();
    }

    private final void write(int i) {
        byte[] bArr = this.buffer;
        int i2 = this.indexInBuffer;
        this.indexInBuffer = i2 + 1;
        bArr[i2] = (byte) i;
    }
}
