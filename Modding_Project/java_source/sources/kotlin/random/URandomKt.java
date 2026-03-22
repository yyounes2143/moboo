package kotlin.random;

import androidx.media3.exoplayer.rtsp.SessionDescription;
import io.flutter.embedding.android.KeyboardMap;
import kotlin.ExperimentalUnsignedTypes;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.UByteArray;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.UIntRange;
import kotlin.ranges.ULongRange;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000>\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0006\u001a\u0011\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0007¢\u0006\u0002\u0010\u0003\u001a\u001b\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0005\u0010\u0006\u001a#\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\b\u0010\t\u001a\u0019\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\n\u001a\u00020\u000bH\u0007¢\u0006\u0002\u0010\f\u001a\u0011\u0010\r\u001a\u00020\u000e*\u00020\u0002H\u0007¢\u0006\u0002\u0010\u000f\u001a\u001b\u0010\r\u001a\u00020\u000e*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u000eH\u0007¢\u0006\u0004\b\u0010\u0010\u0011\u001a#\u0010\r\u001a\u00020\u000e*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u000e2\u0006\u0010\u0004\u001a\u00020\u000eH\u0007¢\u0006\u0004\b\u0012\u0010\u0013\u001a\u0019\u0010\r\u001a\u00020\u000e*\u00020\u00022\u0006\u0010\n\u001a\u00020\u0014H\u0007¢\u0006\u0002\u0010\u0015\u001a\u001b\u0010\u0016\u001a\u00020\u0017*\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0017H\u0007¢\u0006\u0004\b\u0019\u0010\u001a\u001a\u0019\u0010\u0016\u001a\u00020\u0017*\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u001cH\u0007¢\u0006\u0002\u0010\u001d\u001a/\u0010\u0016\u001a\u00020\u0017*\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u00172\b\b\u0002\u0010\u001e\u001a\u00020\u001c2\b\b\u0002\u0010\u001f\u001a\u00020\u001cH\u0007¢\u0006\u0004\b \u0010!\u001a\u001f\u0010\"\u001a\u00020#2\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0001H\u0000¢\u0006\u0004\b$\u0010%\u001a\u001f\u0010&\u001a\u00020#2\u0006\u0010\u0007\u001a\u00020\u000e2\u0006\u0010\u0004\u001a\u00020\u000eH\u0000¢\u0006\u0004\b'\u0010(¨\u0006)"}, d2 = {"nextUInt", "Lkotlin/UInt;", "Lkotlin/random/Random;", "(Lkotlin/random/Random;)I", "until", "nextUInt-qCasIEU", "(Lkotlin/random/Random;I)I", "from", "nextUInt-a8DCA5k", "(Lkotlin/random/Random;II)I", SessionDescription.ATTR_RANGE, "Lkotlin/ranges/UIntRange;", "(Lkotlin/random/Random;Lkotlin/ranges/UIntRange;)I", "nextULong", "Lkotlin/ULong;", "(Lkotlin/random/Random;)J", "nextULong-V1Xi4fY", "(Lkotlin/random/Random;J)J", "nextULong-jmpaW-c", "(Lkotlin/random/Random;JJ)J", "Lkotlin/ranges/ULongRange;", "(Lkotlin/random/Random;Lkotlin/ranges/ULongRange;)J", "nextUBytes", "Lkotlin/UByteArray;", "array", "nextUBytes-EVgfTAA", "(Lkotlin/random/Random;[B)[B", "size", "", "(Lkotlin/random/Random;I)[B", "fromIndex", "toIndex", "nextUBytes-Wvrt4B4", "(Lkotlin/random/Random;[BII)[B", "checkUIntRangeBounds", "", "checkUIntRangeBounds-J1ME1BU", "(II)V", "checkULongRangeBounds", "checkULongRangeBounds-eb3DHEI", "(JJ)V", "kotlin-stdlib"}, k = 2, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nURandom.kt\nKotlin\n*S Kotlin\n*F\n+ 1 URandom.kt\nkotlin/random/URandomKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,147:1\n1#2:148\n*E\n"})
/* loaded from: classes3.dex */
public final class URandomKt {
    /* renamed from: checkUIntRangeBounds-J1ME1BU  reason: not valid java name */
    public static final void m1651checkUIntRangeBoundsJ1ME1BU(int i, int i2) {
        int compare;
        compare = Integer.compare(i2 ^ Integer.MIN_VALUE, i ^ Integer.MIN_VALUE);
        if (compare > 0) {
            return;
        }
        throw new IllegalArgumentException(RandomKt.boundsErrorMessage(UInt.m527boximpl(i), UInt.m527boximpl(i2)).toString());
    }

    /* renamed from: checkULongRangeBounds-eb3DHEI  reason: not valid java name */
    public static final void m1652checkULongRangeBoundseb3DHEI(long j, long j2) {
        int compare;
        compare = Long.compare(j2 ^ Long.MIN_VALUE, j ^ Long.MIN_VALUE);
        if (compare > 0) {
            return;
        }
        throw new IllegalArgumentException(RandomKt.boundsErrorMessage(ULong.m606boximpl(j), ULong.m606boximpl(j2)).toString());
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    public static final byte[] nextUBytes(@NotNull Random random, int i) {
        return UByteArray.m509constructorimpl(random.nextBytes(i));
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: nextUBytes-EVgfTAA  reason: not valid java name */
    public static final byte[] m1653nextUBytesEVgfTAA(@NotNull Random random, @NotNull byte[] bArr) {
        random.nextBytes(bArr);
        return bArr;
    }

    @SinceKotlin(version = "1.3")
    @ExperimentalUnsignedTypes
    @NotNull
    /* renamed from: nextUBytes-Wvrt4B4  reason: not valid java name */
    public static final byte[] m1654nextUBytesWvrt4B4(@NotNull Random random, @NotNull byte[] bArr, int i, int i2) {
        random.nextBytes(bArr, i, i2);
        return bArr;
    }

    /* renamed from: nextUBytes-Wvrt4B4$default  reason: not valid java name */
    public static /* synthetic */ byte[] m1655nextUBytesWvrt4B4$default(Random random, byte[] bArr, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = UByteArray.m515getSizeimpl(bArr);
        }
        return m1654nextUBytesWvrt4B4(random, bArr, i, i2);
    }

    @SinceKotlin(version = "1.5")
    public static final int nextUInt(@NotNull Random random) {
        return UInt.m533constructorimpl(random.nextInt());
    }

    @SinceKotlin(version = "1.5")
    /* renamed from: nextUInt-a8DCA5k  reason: not valid java name */
    public static final int m1656nextUInta8DCA5k(@NotNull Random random, int i, int i2) {
        m1651checkUIntRangeBoundsJ1ME1BU(i, i2);
        return UInt.m533constructorimpl(random.nextInt(i ^ Integer.MIN_VALUE, i2 ^ Integer.MIN_VALUE) ^ Integer.MIN_VALUE);
    }

    @SinceKotlin(version = "1.5")
    /* renamed from: nextUInt-qCasIEU  reason: not valid java name */
    public static final int m1657nextUIntqCasIEU(@NotNull Random random, int i) {
        return m1656nextUInta8DCA5k(random, 0, i);
    }

    @SinceKotlin(version = "1.5")
    public static final long nextULong(@NotNull Random random) {
        return ULong.m612constructorimpl(random.nextLong());
    }

    @SinceKotlin(version = "1.5")
    /* renamed from: nextULong-V1Xi4fY  reason: not valid java name */
    public static final long m1658nextULongV1Xi4fY(@NotNull Random random, long j) {
        return m1659nextULongjmpaWc(random, 0L, j);
    }

    @SinceKotlin(version = "1.5")
    /* renamed from: nextULong-jmpaW-c  reason: not valid java name */
    public static final long m1659nextULongjmpaWc(@NotNull Random random, long j, long j2) {
        m1652checkULongRangeBoundseb3DHEI(j, j2);
        return ULong.m612constructorimpl(random.nextLong(j ^ Long.MIN_VALUE, j2 ^ Long.MIN_VALUE) ^ Long.MIN_VALUE);
    }

    @SinceKotlin(version = "1.5")
    public static final int nextUInt(@NotNull Random random, @NotNull UIntRange uIntRange) {
        int compare;
        int compare2;
        if (!uIntRange.isEmpty()) {
            compare = Integer.compare(uIntRange.m1661getLastpVg5ArA() ^ Integer.MIN_VALUE, (-1) ^ Integer.MIN_VALUE);
            if (compare < 0) {
                return m1656nextUInta8DCA5k(random, uIntRange.m1660getFirstpVg5ArA(), UInt.m533constructorimpl(uIntRange.m1661getLastpVg5ArA() + 1));
            }
            compare2 = Integer.compare(uIntRange.m1660getFirstpVg5ArA() ^ Integer.MIN_VALUE, 0 ^ Integer.MIN_VALUE);
            return compare2 > 0 ? UInt.m533constructorimpl(m1656nextUInta8DCA5k(random, UInt.m533constructorimpl(uIntRange.m1660getFirstpVg5ArA() - 1), uIntRange.m1661getLastpVg5ArA()) + 1) : nextUInt(random);
        }
        throw new IllegalArgumentException("Cannot get random in empty range: " + uIntRange);
    }

    @SinceKotlin(version = "1.5")
    public static final long nextULong(@NotNull Random random, @NotNull ULongRange uLongRange) {
        int compare;
        int compare2;
        if (!uLongRange.isEmpty()) {
            compare = Long.compare(uLongRange.m1670getLastsVKNKU() ^ Long.MIN_VALUE, (-1) ^ Long.MIN_VALUE);
            if (compare < 0) {
                return m1659nextULongjmpaWc(random, uLongRange.m1669getFirstsVKNKU(), ULong.m612constructorimpl(uLongRange.m1670getLastsVKNKU() + ULong.m612constructorimpl(KeyboardMap.kValueMask & 1)));
            }
            compare2 = Long.compare(uLongRange.m1669getFirstsVKNKU() ^ Long.MIN_VALUE, 0 ^ Long.MIN_VALUE);
            if (compare2 > 0) {
                long m1669getFirstsVKNKU = uLongRange.m1669getFirstsVKNKU();
                long j = KeyboardMap.kValueMask & 1;
                return ULong.m612constructorimpl(m1659nextULongjmpaWc(random, ULong.m612constructorimpl(m1669getFirstsVKNKU - ULong.m612constructorimpl(j)), uLongRange.m1670getLastsVKNKU()) + ULong.m612constructorimpl(j));
            }
            return nextULong(random);
        }
        throw new IllegalArgumentException("Cannot get random in empty range: " + uLongRange);
    }
}
