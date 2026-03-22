package okio;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.common.base.Ascii;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import okio.Buffer;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000L\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\n\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0012\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0005\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0011\u001a'\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0000H\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u0013\u0010\b\u001a\u00020\u0007*\u00020\u0007H\u0000¢\u0006\u0004\b\b\u0010\t\u001a\u0013\u0010\u000b\u001a\u00020\n*\u00020\nH\u0000¢\u0006\u0004\b\u000b\u0010\f\u001a\u0013\u0010\r\u001a\u00020\u0000*\u00020\u0000H\u0000¢\u0006\u0004\b\r\u0010\u000e\u001a7\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\nH\u0000¢\u0006\u0004\b\u0015\u0010\u0016\u001a\u0013\u0010\u0019\u001a\u00020\u0018*\u00020\u0017H\u0000¢\u0006\u0004\b\u0019\u0010\u001a\u001a\u0013\u0010\u001b\u001a\u00020\u0018*\u00020\nH\u0000¢\u0006\u0004\b\u001b\u0010\u001c\u001a\u0017\u0010\u001f\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001dH\u0000¢\u0006\u0004\b\u001f\u0010 \u001a\u001b\u0010#\u001a\u00020\n*\u00020!2\u0006\u0010\"\u001a\u00020\nH\u0000¢\u0006\u0004\b#\u0010$\u001a\u001b\u0010&\u001a\u00020\n*\u00020\u000f2\u0006\u0010%\u001a\u00020\nH\u0000¢\u0006\u0004\b&\u0010'\" \u0010-\u001a\u00020\u001d8\u0000X\u0081\u0004¢\u0006\u0012\n\u0004\b\u0015\u0010(\u0012\u0004\b+\u0010,\u001a\u0004\b)\u0010*\"\u001a\u00101\u001a\u00020\n8\u0000X\u0080D¢\u0006\f\n\u0004\b\u0005\u0010.\u001a\u0004\b/\u00100¨\u00062"}, d2 = {"", "size", TypedValues.CycleType.S_WAVE_OFFSET, "byteCount", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(JJJ)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(S)S", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(I)I", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(J)J", "", "a", "aOffset", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "bOffset", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "([BI[BII)Z", "", "", "Wwwwwwwwwwwwwwwwwwwwwwww", "(B)Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwww", "(I)Ljava/lang/String;", "Lokio/Buffer$UnsafeCursor;", "unsafeCursor", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;", "Lokio/ByteString;", "position", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/ByteString;I)I", "sizeParam", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "([BI)I", "Lokio/Buffer$UnsafeCursor;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lokio/Buffer$UnsafeCursor;", "getDEFAULT__new_UnsafeCursor$annotations", "()V", "DEFAULT__new_UnsafeCursor", "I", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()I", "DEFAULT__ByteString_size", "okio"}, k = 2, mv = {1, 8, 0}, xi = 48)
@JvmName(name = "-SegmentedByteString")
@SourceDebugExtension({"SMAP\nUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,187:1\n68#1:188\n74#1:189\n*S KotlinDebug\n*F\n+ 1 Util.kt\nokio/-SegmentedByteString\n*L\n106#1:188\n107#1:189\n*E\n"})
/* renamed from: okio.-SegmentedByteString  reason: invalid class name */
/* loaded from: classes7.dex */
public final class SegmentedByteString {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Buffer.UnsafeCursor f13109Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Buffer.UnsafeCursor();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final int f13108Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = -1234567890;

    @NotNull
    public static final String Wwwwwwwwwwwwwwwwwwwwwww(int i) {
        int i2 = 0;
        if (i == 0) {
            return "0";
        }
        char[] cArr = {okio.internal.ByteString.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()[(i >> 28) & 15], okio.internal.ByteString.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()[(i >> 24) & 15], okio.internal.ByteString.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()[(i >> 20) & 15], okio.internal.ByteString.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()[(i >> 16) & 15], okio.internal.ByteString.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()[(i >> 12) & 15], okio.internal.ByteString.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()[(i >> 8) & 15], okio.internal.ByteString.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()[(i >> 4) & 15], okio.internal.ByteString.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()[i & 15]};
        while (i2 < 8 && cArr[i2] == '0') {
            i2++;
        }
        return StringsKt.concatToString(cArr, i2, 8);
    }

    @NotNull
    public static final String Wwwwwwwwwwwwwwwwwwwwwwww(byte b) {
        return StringsKt.concatToString(new char[]{okio.internal.ByteString.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()[(b >> 4) & 15], okio.internal.ByteString.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()[b & Ascii.SI]});
    }

    public static final short Wwwwwwwwwwwwwwwwwwwwwwwww(short s) {
        return (short) (((s & 255) << 8) | ((65280 & s) >>> 8));
    }

    public static final long Wwwwwwwwwwwwwwwwwwwwwwwwww(long j) {
        return ((j & 255) << 56) | (((-72057594037927936L) & j) >>> 56) | ((71776119061217280L & j) >>> 40) | ((280375465082880L & j) >>> 24) | ((1095216660480L & j) >>> 8) | ((4278190080L & j) << 8) | ((16711680 & j) << 24) | ((65280 & j) << 40);
    }

    public static final int Wwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        return ((i & 255) << 24) | (((-16777216) & i) >>> 24) | ((16711680 & i) >>> 8) | ((65280 & i) << 8);
    }

    @NotNull
    public static final Buffer.UnsafeCursor Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Buffer.UnsafeCursor unsafeCursor) {
        if (unsafeCursor == f13109Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return new Buffer.UnsafeCursor();
        }
        return unsafeCursor;
    }

    public static final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull byte[] bArr, int i) {
        if (i == f13108Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return bArr.length;
        }
        return i;
    }

    public static final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ByteString byteString, int i) {
        if (i == f13108Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return byteString.size();
        }
        return i;
    }

    @NotNull
    public static final Buffer.UnsafeCursor Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return f13109Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public static final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return f13108Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j, long j2, long j3) {
        if ((j2 | j3) >= 0 && j2 <= j && j - j2 >= j3) {
            return;
        }
        throw new ArrayIndexOutOfBoundsException("size=" + j + " offset=" + j2 + " byteCount=" + j3);
    }

    public static final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull byte[] bArr, int i, @NotNull byte[] bArr2, int i2, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            if (bArr[i4 + i] != bArr2[i4 + i2]) {
                return false;
            }
        }
        return true;
    }
}
