package okio.internal;

import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.SourceDebugExtension;
import okio.Buffer;
import okio.Options;
import okio.Segment;
import okio.SegmentedByteString;
import okio._JvmPlatformKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\u001a7\u0010\t\u001a\u00020\b2\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0000¢\u0006\u0004\b\t\u0010\n\u001a\u001b\u0010\u000f\u001a\u00020\u000e*\u00020\u000b2\u0006\u0010\r\u001a\u00020\fH\u0000¢\u0006\u0004\b\u000f\u0010\u0010\u001a%\u0010\u0014\u001a\u00020\u0002*\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u00112\b\b\u0002\u0010\u0013\u001a\u00020\bH\u0000¢\u0006\u0004\b\u0014\u0010\u0015\u001a\u001b\u0010\u0018\u001a\u00020\u0016*\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u0016H\u0000¢\u0006\u0004\b\u0018\u0010\u0019\" \u0010\u001f\u001a\u00020\u00048\u0000X\u0081\u0004¢\u0006\u0012\n\u0004\b\u0018\u0010\u001a\u0012\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001b\u0010\u001c¨\u0006 "}, d2 = {"Lokio/Segment;", "segment", "", "segmentPos", "", "bytes", "bytesOffset", "bytesLimit", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Segment;I[BII)Z", "Lokio/Buffer;", "", "newline", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Buffer;J)Ljava/lang/String;", "Lokio/Options;", "options", "selectTruncated", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Buffer;Lokio/Options;Z)I", "Lokio/Buffer$UnsafeCursor;", "unsafeCursor", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/Buffer;Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;", "[B", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()[B", "getHEX_DIGIT_BYTES$annotations", "()V", "HEX_DIGIT_BYTES", "okio"}, k = 2, mv = {1, 8, 0}, xi = 48)
@JvmName(name = "-Buffer")
@SourceDebugExtension({"SMAP\nBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Buffer.kt\nokio/internal/-Buffer\n+ 2 Util.kt\nokio/-SegmentedByteString\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1730:1\n112#1,20:1753\n112#1,20:1786\n112#1:1806\n114#1,18:1808\n112#1,20:1826\n74#2:1731\n74#2:1732\n74#2:1733\n74#2:1734\n74#2:1735\n74#2:1736\n74#2:1737\n74#2:1738\n74#2:1739\n74#2:1740\n74#2:1741\n74#2:1742\n83#2:1743\n83#2:1744\n77#2:1745\n77#2:1746\n77#2:1747\n77#2:1748\n77#2:1749\n77#2:1750\n77#2:1751\n77#2:1752\n86#2:1773\n89#2:1775\n74#2:1776\n74#2:1777\n74#2:1778\n74#2:1779\n74#2:1780\n74#2:1781\n74#2:1782\n74#2:1783\n74#2:1784\n74#2:1785\n89#2:1807\n86#2:1846\n1#3:1774\n*S KotlinDebug\n*F\n+ 1 Buffer.kt\nokio/internal/-Buffer\n*L\n415#1:1753,20\n1292#1:1786,20\n1323#1:1806\n1323#1:1808,18\n1357#1:1826,20\n178#1:1731\n202#1:1732\n321#1:1733\n326#1:1734\n349#1:1735\n350#1:1736\n351#1:1737\n352#1:1738\n358#1:1739\n359#1:1740\n360#1:1741\n361#1:1742\n385#1:1743\n386#1:1744\n392#1:1745\n393#1:1746\n394#1:1747\n395#1:1748\n396#1:1749\n397#1:1750\n398#1:1751\n399#1:1752\n427#1:1773\n888#1:1775\n906#1:1776\n908#1:1777\n912#1:1778\n914#1:1779\n918#1:1780\n920#1:1781\n924#1:1782\n926#1:1783\n946#1:1784\n949#1:1785\n1336#1:1807\n1676#1:1846\n*E\n"})
/* renamed from: okio.internal.-Buffer */
/* loaded from: classes7.dex */
public final class Buffer {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public static final byte[] f13261Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = _JvmPlatformKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("0123456789abcdef");

    public static /* synthetic */ int Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(okio.Buffer buffer, Options options, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(buffer, options, z);
    }

    /* JADX WARN: Code restructure failed: missing block: B:82:0x0052, code lost:
        if (r19 == false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0054, code lost:
        return -2;
     */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0090 A[LOOP:0: B:63:0x001a->B:101:0x0090, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:103:0x008f A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@org.jetbrains.annotations.NotNull okio.Buffer r17, @org.jetbrains.annotations.NotNull okio.Options r18, boolean r19) {
        /*
            r0 = r17
            okio.Segment r0 = r0.f13123Wwwwwwwwwwwwwwwwwwwwwwwww
            r1 = -2
            r2 = -1
            if (r0 != 0) goto Lc
            if (r19 == 0) goto Lb
            return r1
        Lb:
            return r2
        Lc:
            byte[] r3 = r0.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            int r4 = r0.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            int r5 = r0.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            int[] r6 = r18.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()
            r7 = 0
            r9 = r0
            r10 = r2
            r8 = r7
        L1a:
            int r11 = r8 + 1
            r12 = r6[r8]
            int r8 = r8 + 2
            r11 = r6[r11]
            if (r11 == r2) goto L25
            r10 = r11
        L25:
            if (r9 != 0) goto L28
            goto L52
        L28:
            r11 = 0
            if (r12 >= 0) goto L6b
            int r12 = r12 * (-1)
            int r13 = r8 + r12
        L2f:
            int r12 = r4 + 1
            r4 = r3[r4]
            r4 = r4 & 255(0xff, float:3.57E-43)
            int r14 = r8 + 1
            r8 = r6[r8]
            if (r4 == r8) goto L3c
            goto L75
        L3c:
            if (r14 != r13) goto L40
            r4 = 1
            goto L41
        L40:
            r4 = r7
        L41:
            if (r12 != r5) goto L5b
            okio.Segment r3 = r9.f13230Wwwwwwwwwwwwwwwwwwwwwwwwwwwww
            int r5 = r3.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            byte[] r8 = r3.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            int r9 = r3.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            if (r3 != r0) goto L55
            if (r4 == 0) goto L52
            r3 = r8
            r8 = r11
            goto L5e
        L52:
            if (r19 == 0) goto L75
            return r1
        L55:
            r16 = r8
            r8 = r3
            r3 = r16
            goto L5e
        L5b:
            r8 = r9
            r9 = r5
            r5 = r12
        L5e:
            if (r4 == 0) goto L66
            r4 = r6[r14]
            r13 = r5
            r5 = r9
            r9 = r8
            goto L8d
        L66:
            r4 = r5
            r5 = r9
            r9 = r8
            r8 = r14
            goto L2f
        L6b:
            int r13 = r4 + 1
            r4 = r3[r4]
            r4 = r4 & 255(0xff, float:3.57E-43)
            int r14 = r8 + r12
        L73:
            if (r8 != r14) goto L76
        L75:
            return r10
        L76:
            r15 = r6[r8]
            if (r4 != r15) goto L93
            int r8 = r8 + r12
            r4 = r6[r8]
            if (r13 != r5) goto L8d
            okio.Segment r9 = r9.f13230Wwwwwwwwwwwwwwwwwwwwwwwwwwwww
            int r3 = r9.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            byte[] r5 = r9.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            int r8 = r9.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            r13 = r3
            r3 = r5
            r5 = r8
            if (r9 != r0) goto L8d
            r9 = r11
        L8d:
            if (r4 < 0) goto L90
            return r4
        L90:
            int r8 = -r4
            r4 = r13
            goto L1a
        L93:
            int r8 = r8 + 1
            goto L73
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.internal.Buffer.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(okio.Buffer, okio.Options, boolean):int");
    }

    @NotNull
    public static final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull okio.Buffer buffer, long j) {
        if (j > 0) {
            long j2 = j - 1;
            if (buffer.Kkkkkkkkkkkkkkkk(j2) == 13) {
                String Wwwwwwwwwwwwwwww2 = buffer.Wwwwwwwwwwwwwwww(j2);
                buffer.skip(2L);
                return Wwwwwwwwwwwwwwww2;
            }
        }
        String Wwwwwwwwwwwwwwww3 = buffer.Wwwwwwwwwwwwwwww(j);
        buffer.skip(1L);
        return Wwwwwwwwwwwwwwww3;
    }

    public static final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Segment segment, int i, @NotNull byte[] bArr, int i2, int i3) {
        int i4 = segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        byte[] bArr2 = segment.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        while (i2 < i3) {
            if (i == i4) {
                segment = segment.f13230Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                byte[] bArr3 = segment.f13235Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                bArr2 = bArr3;
                i = segment.f13234Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                i4 = segment.f13233Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            }
            if (bArr2[i] != bArr[i2]) {
                return false;
            }
            i++;
            i2++;
        }
        return true;
    }

    @NotNull
    public static final byte[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return f13261Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @NotNull
    public static final Buffer.UnsafeCursor Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull okio.Buffer buffer, @NotNull Buffer.UnsafeCursor unsafeCursor) {
        Buffer.UnsafeCursor Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = SegmentedByteString.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(unsafeCursor);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.f13130Wwwwwwwwwwwwwwwwwwwwwwwww == null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.f13130Wwwwwwwwwwwwwwwwwwwwwwwww = buffer;
            Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.f13129Wwwwwwwwwwwwwwwwwwwwwwww = true;
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }
        throw new IllegalStateException("already attached to a buffer");
    }
}
