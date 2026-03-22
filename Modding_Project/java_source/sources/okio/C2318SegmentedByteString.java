package okio;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import io.flutter.plugin.editing.SpellCheckPlugin;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0005\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010\u0000\n\u0002\b\u000e\b\u0000\u0018\u00002\u00020\u0001B\u001f\b\u0000\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0013\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0001H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0001H\u0016¢\u0006\u0004\b\u0016\u0010\u0015J\u0017\u0010\u001a\u001a\u00020\u00012\u0006\u0010\u0017\u001a\u00020\u000eH\u0010¢\u0006\u0004\b\u0018\u0010\u0019J\u001f\u0010\u001e\u001a\u00020\u00012\u0006\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u001b\u001a\u00020\u0001H\u0010¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u001f\u0010\u0012J\u001f\u0010#\u001a\u00020\u00012\u0006\u0010!\u001a\u00020 2\u0006\u0010\"\u001a\u00020 H\u0016¢\u0006\u0004\b#\u0010$J\u0017\u0010)\u001a\u00020&2\u0006\u0010%\u001a\u00020 H\u0010¢\u0006\u0004\b'\u0010(J\u000f\u0010,\u001a\u00020 H\u0010¢\u0006\u0004\b*\u0010+J\u000f\u0010-\u001a\u00020\u0003H\u0016¢\u0006\u0004\b-\u0010.J\u000f\u00100\u001a\u00020/H\u0016¢\u0006\u0004\b0\u00101J\u0017\u00105\u001a\u0002042\u0006\u00103\u001a\u000202H\u0016¢\u0006\u0004\b5\u00106J'\u00105\u001a\u0002042\u0006\u00108\u001a\u0002072\u0006\u00109\u001a\u00020 2\u0006\u0010:\u001a\u00020 H\u0010¢\u0006\u0004\b;\u0010<J/\u0010@\u001a\u00020?2\u0006\u00109\u001a\u00020 2\u0006\u0010=\u001a\u00020\u00012\u0006\u0010>\u001a\u00020 2\u0006\u0010:\u001a\u00020 H\u0016¢\u0006\u0004\b@\u0010AJ/\u0010@\u001a\u00020?2\u0006\u00109\u001a\u00020 2\u0006\u0010=\u001a\u00020\u00032\u0006\u0010>\u001a\u00020 2\u0006\u0010:\u001a\u00020 H\u0016¢\u0006\u0004\b@\u0010BJ/\u0010E\u001a\u0002042\u0006\u00109\u001a\u00020 2\u0006\u0010C\u001a\u00020\u00032\u0006\u0010D\u001a\u00020 2\u0006\u0010:\u001a\u00020 H\u0016¢\u0006\u0004\bE\u0010FJ\u001f\u0010H\u001a\u00020 2\u0006\u0010=\u001a\u00020\u00032\u0006\u0010G\u001a\u00020 H\u0016¢\u0006\u0004\bH\u0010IJ\u001f\u0010J\u001a\u00020 2\u0006\u0010=\u001a\u00020\u00032\u0006\u0010G\u001a\u00020 H\u0016¢\u0006\u0004\bJ\u0010IJ\u000f\u0010L\u001a\u00020\u0003H\u0010¢\u0006\u0004\bK\u0010.J\u001a\u0010N\u001a\u00020?2\b\u0010=\u001a\u0004\u0018\u00010MH\u0096\u0002¢\u0006\u0004\bN\u0010OJ\u000f\u0010P\u001a\u00020 H\u0016¢\u0006\u0004\bP\u0010+J\u000f\u0010Q\u001a\u00020\u000eH\u0016¢\u0006\u0004\bQ\u0010\u0012J\u000f\u0010R\u001a\u00020\u0001H\u0002¢\u0006\u0004\bR\u0010\u0015R \u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0000X\u0080\u0004¢\u0006\f\n\u0004\bS\u0010T\u001a\u0004\bU\u0010VR\u001a\u0010\u0006\u001a\u00020\u00058\u0000X\u0080\u0004¢\u0006\f\n\u0004\bW\u0010X\u001a\u0004\bY\u0010Z¨\u0006["}, d2 = {"Lokio/SegmentedByteString;", "Lokio/ByteString;", "", "", "segments", "", "directory", "<init>", "([[B[I)V", "Ljava/lang/Object;", "writeReplace", "()Ljava/lang/Object;", "Ljava/nio/charset/Charset;", "charset", "", TypedValues.Custom.S_STRING, "(Ljava/nio/charset/Charset;)Ljava/lang/String;", "base64", "()Ljava/lang/String;", "hex", "toAsciiLowercase", "()Lokio/ByteString;", "toAsciiUppercase", "algorithm", "digest$okio", "(Ljava/lang/String;)Lokio/ByteString;", "digest", "key", "hmac$okio", "(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;", "hmac", "base64Url", "", "beginIndex", SpellCheckPlugin.END_INDEX_KEY, "substring", "(II)Lokio/ByteString;", "pos", "", "internalGet$okio", "(I)B", "internalGet", "getSize$okio", "()I", "getSize", "toByteArray", "()[B", "Ljava/nio/ByteBuffer;", "asByteBuffer", "()Ljava/nio/ByteBuffer;", "Ljava/io/OutputStream;", "out", "", "write", "(Ljava/io/OutputStream;)V", "Lokio/Buffer;", "buffer", TypedValues.CycleType.S_WAVE_OFFSET, "byteCount", "write$okio", "(Lokio/Buffer;II)V", "other", "otherOffset", "", "rangeEquals", "(ILokio/ByteString;II)Z", "(I[BII)Z", TypedValues.AttributesType.S_TARGET, "targetOffset", "copyInto", "(I[BII)V", "fromIndex", "indexOf", "([BI)I", "lastIndexOf", "internalArray$okio", "internalArray", "", "equals", "(Ljava/lang/Object;)Z", "hashCode", "toString", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwww", "[[B", "getSegments$okio", "()[[B", "Wwwwwwwwwwwwwwwwwwwwww", "[I", "getDirectory$okio", "()[I", "okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSegmentedByteString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SegmentedByteString.kt\nokio/SegmentedByteString\n+ 2 SegmentedByteString.kt\nokio/internal/-SegmentedByteString\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,140:1\n63#2,12:141\n63#2,12:153\n104#2,2:165\n106#2,26:168\n135#2,5:194\n142#2:199\n145#2,3:200\n63#2,8:203\n148#2,8:211\n71#2,4:219\n156#2:223\n63#2,12:224\n160#2:236\n85#2,10:237\n161#2,9:247\n95#2,4:256\n170#2,2:260\n179#2,4:262\n85#2,10:266\n183#2,3:276\n95#2,4:279\n186#2:283\n195#2,8:284\n85#2,10:292\n203#2,3:302\n95#2,4:305\n206#2:309\n215#2,5:310\n85#2,10:315\n220#2,3:325\n95#2,4:328\n223#2:332\n226#2,4:333\n234#2,6:337\n63#2,8:343\n240#2,7:351\n71#2,4:358\n247#2,2:362\n1#3:167\n*S KotlinDebug\n*F\n+ 1 SegmentedByteString.kt\nokio/SegmentedByteString\n*L\n54#1:141,12\n66#1:153,12\n78#1:165,2\n78#1:168,26\n80#1:194,5\n82#1:199\n84#1:200,3\n84#1:203,8\n84#1:211,8\n84#1:219,4\n84#1:223\n90#1:224,12\n96#1:236\n96#1:237,10\n96#1:247,9\n96#1:256,4\n96#1:260,2\n103#1:262,4\n103#1:266,10\n103#1:276,3\n103#1:279,4\n103#1:283\n110#1:284,8\n110#1:292,10\n110#1:302,3\n110#1:305,4\n110#1:309\n117#1:310,5\n117#1:315,10\n117#1:325,3\n117#1:328,4\n117#1:332\n131#1:333,4\n133#1:337,6\n133#1:343,8\n133#1:351,7\n133#1:358,4\n133#1:362,2\n78#1:167\n*E\n"})
/* renamed from: okio.SegmentedByteString  reason: case insensitive filesystem */
/* loaded from: classes7.dex */
public final class C2318SegmentedByteString extends ByteString {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final transient int[] f13240Wwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final transient byte[][] f13241Wwwwwwwwwwwwwwwwwwwwwww;

    public C2318SegmentedByteString(@NotNull byte[][] bArr, @NotNull int[] iArr) {
        super(ByteString.EMPTY.getData$okio());
        this.f13241Wwwwwwwwwwwwwwwwwwwwwww = bArr;
        this.f13240Wwwwwwwwwwwwwwwwwwwwww = iArr;
    }

    private final Object writeReplace() {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final ByteString Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return new ByteString(toByteArray());
    }

    @Override // okio.ByteString
    @NotNull
    public ByteBuffer asByteBuffer() {
        return ByteBuffer.wrap(toByteArray()).asReadOnlyBuffer();
    }

    @Override // okio.ByteString
    @NotNull
    public String base64() {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().base64();
    }

    @Override // okio.ByteString
    @NotNull
    public String base64Url() {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().base64Url();
    }

    @Override // okio.ByteString
    public void copyInto(int i, @NotNull byte[] bArr, int i2, int i3) {
        int i4;
        long j = i3;
        SegmentedByteString.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(size(), i, j);
        SegmentedByteString.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bArr.length, i2, j);
        int i5 = i3 + i;
        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = okio.internal.SegmentedByteString.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, i);
        while (i < i5) {
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == 0) {
                i4 = 0;
            } else {
                i4 = getDirectory$okio()[Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 - 1];
            }
            int i6 = getDirectory$okio()[getSegments$okio().length + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2];
            int min = Math.min(i5, (getDirectory$okio()[Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2] - i4) + i4) - i;
            int i7 = i6 + (i - i4);
            ArraysKt.copyInto(getSegments$okio()[Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2], bArr, i2, i7, i7 + min);
            i2 += min;
            i += min;
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2++;
        }
    }

    @Override // okio.ByteString
    @NotNull
    public ByteString digest$okio(@NotNull String str) {
        MessageDigest messageDigest = MessageDigest.getInstance(str);
        int length = getSegments$okio().length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int i3 = getDirectory$okio()[length + i];
            int i4 = getDirectory$okio()[i];
            messageDigest.update(getSegments$okio()[i], i3, i4 - i2);
            i++;
            i2 = i4;
        }
        return new ByteString(messageDigest.digest());
    }

    @Override // okio.ByteString
    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            if (byteString.size() == size() && rangeEquals(0, byteString, 0, size())) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    public final int[] getDirectory$okio() {
        return this.f13240Wwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public final byte[][] getSegments$okio() {
        return this.f13241Wwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // okio.ByteString
    public int getSize$okio() {
        return getDirectory$okio()[getSegments$okio().length - 1];
    }

    @Override // okio.ByteString
    public int hashCode() {
        int hashCode$okio = getHashCode$okio();
        if (hashCode$okio != 0) {
            return hashCode$okio;
        }
        int length = getSegments$okio().length;
        int i = 0;
        int i2 = 1;
        int i3 = 0;
        while (i < length) {
            int i4 = getDirectory$okio()[length + i];
            int i5 = getDirectory$okio()[i];
            byte[] bArr = getSegments$okio()[i];
            int i6 = (i5 - i3) + i4;
            while (i4 < i6) {
                i2 = (i2 * 31) + bArr[i4];
                i4++;
            }
            i++;
            i3 = i5;
        }
        setHashCode$okio(i2);
        return i2;
    }

    @Override // okio.ByteString
    @NotNull
    public String hex() {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().hex();
    }

    @Override // okio.ByteString
    @NotNull
    public ByteString hmac$okio(@NotNull String str, @NotNull ByteString byteString) {
        try {
            Mac mac = Mac.getInstance(str);
            mac.init(new SecretKeySpec(byteString.toByteArray(), str));
            int length = getSegments$okio().length;
            int i = 0;
            int i2 = 0;
            while (i < length) {
                int i3 = getDirectory$okio()[length + i];
                int i4 = getDirectory$okio()[i];
                mac.update(getSegments$okio()[i], i3, i4 - i2);
                i++;
                i2 = i4;
            }
            return new ByteString(mac.doFinal());
        } catch (InvalidKeyException e) {
            throw new IllegalArgumentException(e);
        }
    }

    @Override // okio.ByteString
    public int indexOf(@NotNull byte[] bArr, int i) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().indexOf(bArr, i);
    }

    @Override // okio.ByteString
    @NotNull
    public byte[] internalArray$okio() {
        return toByteArray();
    }

    @Override // okio.ByteString
    public byte internalGet$okio(int i) {
        int i2;
        SegmentedByteString.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(getDirectory$okio()[getSegments$okio().length - 1], i, 1L);
        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = okio.internal.SegmentedByteString.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, i);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == 0) {
            i2 = 0;
        } else {
            i2 = getDirectory$okio()[Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 - 1];
        }
        return getSegments$okio()[Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2][(i - i2) + getDirectory$okio()[getSegments$okio().length + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2]];
    }

    @Override // okio.ByteString
    public int lastIndexOf(@NotNull byte[] bArr, int i) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().lastIndexOf(bArr, i);
    }

    @Override // okio.ByteString
    public boolean rangeEquals(int i, @NotNull ByteString byteString, int i2, int i3) {
        if (i < 0 || i > size() - i3) {
            return false;
        }
        int i4 = i3 + i;
        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = okio.internal.SegmentedByteString.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, i);
        while (i < i4) {
            int i5 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == 0 ? 0 : getDirectory$okio()[Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 - 1];
            int i6 = getDirectory$okio()[getSegments$okio().length + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2];
            int min = Math.min(i4, (getDirectory$okio()[Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2] - i5) + i5) - i;
            if (!byteString.rangeEquals(i2, getSegments$okio()[Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2], i6 + (i - i5), min)) {
                return false;
            }
            i2 += min;
            i += min;
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2++;
        }
        return true;
    }

    @Override // okio.ByteString
    @NotNull
    public String string(@NotNull Charset charset) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().string(charset);
    }

    @Override // okio.ByteString
    @NotNull
    public ByteString substring(int i, int i2) {
        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = SegmentedByteString.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, i2);
        if (i >= 0) {
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 <= size()) {
                int i3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 - i;
                if (i3 >= 0) {
                    if (i == 0 && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == size()) {
                        return this;
                    }
                    if (i == Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
                        return ByteString.EMPTY;
                    }
                    int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = okio.internal.SegmentedByteString.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, i);
                    int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = okio.internal.SegmentedByteString.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 - 1);
                    byte[][] bArr = (byte[][]) ArraysKt.copyOfRange(getSegments$okio(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 + 1);
                    int[] iArr = new int[bArr.length * 2];
                    int i4 = 0;
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 <= Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3) {
                        int i5 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                        int i6 = 0;
                        while (true) {
                            iArr[i6] = Math.min(getDirectory$okio()[i5] - i, i3);
                            int i7 = i6 + 1;
                            iArr[i6 + bArr.length] = getDirectory$okio()[getSegments$okio().length + i5];
                            if (i5 == Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3) {
                                break;
                            }
                            i5++;
                            i6 = i7;
                        }
                    }
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != 0) {
                        i4 = getDirectory$okio()[Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 - 1];
                    }
                    int length = bArr.length;
                    iArr[length] = iArr[length] + (i - i4);
                    return new C2318SegmentedByteString(bArr, iArr);
                }
                throw new IllegalArgumentException(("endIndex=" + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 + " < beginIndex=" + i).toString());
            }
            throw new IllegalArgumentException(("endIndex=" + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 + " > length(" + size() + ')').toString());
        }
        throw new IllegalArgumentException(("beginIndex=" + i + " < 0").toString());
    }

    @Override // okio.ByteString
    @NotNull
    public ByteString toAsciiLowercase() {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().toAsciiLowercase();
    }

    @Override // okio.ByteString
    @NotNull
    public ByteString toAsciiUppercase() {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().toAsciiUppercase();
    }

    @Override // okio.ByteString
    @NotNull
    public byte[] toByteArray() {
        byte[] bArr = new byte[size()];
        int length = getSegments$okio().length;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i < length) {
            int i4 = getDirectory$okio()[length + i];
            int i5 = getDirectory$okio()[i];
            int i6 = i5 - i2;
            ArraysKt.copyInto(getSegments$okio()[i], bArr, i3, i4, i4 + i6);
            i3 += i6;
            i++;
            i2 = i5;
        }
        return bArr;
    }

    @Override // okio.ByteString
    @NotNull
    public String toString() {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().toString();
    }

    @Override // okio.ByteString
    public void write(@NotNull OutputStream outputStream) throws IOException {
        int length = getSegments$okio().length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int i3 = getDirectory$okio()[length + i];
            int i4 = getDirectory$okio()[i];
            outputStream.write(getSegments$okio()[i], i3, i4 - i2);
            i++;
            i2 = i4;
        }
    }

    @Override // okio.ByteString
    public void write$okio(@NotNull Buffer buffer, int i, int i2) {
        int i3;
        int i4 = i + i2;
        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = okio.internal.SegmentedByteString.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, i);
        while (i < i4) {
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == 0) {
                i3 = 0;
            } else {
                i3 = getDirectory$okio()[Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 - 1];
            }
            int i5 = getDirectory$okio()[getSegments$okio().length + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2];
            int min = Math.min(i4, (getDirectory$okio()[Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2] - i3) + i3) - i;
            int i6 = i5 + (i - i3);
            Segment segment = new Segment(getSegments$okio()[Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2], i6, i6 + min, true, false);
            Segment segment2 = buffer.f13123Wwwwwwwwwwwwwwwwwwwwwwwww;
            if (segment2 == null) {
                segment.f13229Wwwwwwwwwwwwwwwwwwwwwwwwwwww = segment;
                segment.f13230Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = segment;
                buffer.f13123Wwwwwwwwwwwwwwwwwwwwwwwww = segment;
            } else {
                segment2.f13229Wwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(segment);
            }
            i += min;
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2++;
        }
        buffer.Kkk(buffer.Kk() + i2);
    }

    @Override // okio.ByteString
    public boolean rangeEquals(int i, @NotNull byte[] bArr, int i2, int i3) {
        if (i < 0 || i > size() - i3 || i2 < 0 || i2 > bArr.length - i3) {
            return false;
        }
        int i4 = i3 + i;
        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = okio.internal.SegmentedByteString.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, i);
        while (i < i4) {
            int i5 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == 0 ? 0 : getDirectory$okio()[Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 - 1];
            int i6 = getDirectory$okio()[getSegments$okio().length + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2];
            int min = Math.min(i4, (getDirectory$okio()[Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2] - i5) + i5) - i;
            if (!SegmentedByteString.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(getSegments$okio()[Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2], i6 + (i - i5), bArr, i2, min)) {
                return false;
            }
            i2 += min;
            i += min;
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2++;
        }
        return true;
    }
}
