package kotlin.ranges;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.exoplayer.rtsp.SessionDescription;
import io.flutter.embedding.android.KeyboardMap;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.UByte;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UShort;
import kotlin.internal.InlineOnly;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
import kotlin.random.URandomKt;
import kotlin.ranges.UIntProgression;
import kotlin.ranges.ULongProgression;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000X\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\b\n\u0002\u0010\t\n\u0002\b#\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a\u0011\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0007¢\u0006\u0002\u0010\u0003\u001a\u0011\u0010\u0000\u001a\u00020\u0004*\u00020\u0005H\u0007¢\u0006\u0002\u0010\u0006\u001a\u000e\u0010\u0007\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u0007\u001a\u000e\u0010\u0007\u001a\u0004\u0018\u00010\u0004*\u00020\u0005H\u0007\u001a\u0011\u0010\b\u001a\u00020\u0001*\u00020\u0002H\u0007¢\u0006\u0002\u0010\u0003\u001a\u0011\u0010\b\u001a\u00020\u0004*\u00020\u0005H\u0007¢\u0006\u0002\u0010\u0006\u001a\u000e\u0010\t\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u0007\u001a\u000e\u0010\t\u001a\u0004\u0018\u00010\u0004*\u00020\u0005H\u0007\u001a\u0012\u0010\n\u001a\u00020\u0001*\u00020\u000bH\u0087\b¢\u0006\u0002\u0010\f\u001a\u0012\u0010\n\u001a\u00020\u0004*\u00020\rH\u0087\b¢\u0006\u0002\u0010\u000e\u001a\u0019\u0010\n\u001a\u00020\u0001*\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000fH\u0007¢\u0006\u0002\u0010\u0010\u001a\u0019\u0010\n\u001a\u00020\u0004*\u00020\r2\u0006\u0010\n\u001a\u00020\u000fH\u0007¢\u0006\u0002\u0010\u0011\u001a\u000f\u0010\u0012\u001a\u0004\u0018\u00010\u0001*\u00020\u000bH\u0087\b\u001a\u000f\u0010\u0012\u001a\u0004\u0018\u00010\u0004*\u00020\rH\u0087\b\u001a\u0016\u0010\u0012\u001a\u0004\u0018\u00010\u0001*\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000fH\u0007\u001a\u0016\u0010\u0012\u001a\u0004\u0018\u00010\u0004*\u00020\r2\u0006\u0010\n\u001a\u00020\u000fH\u0007\u001a\u001c\u0010\u0013\u001a\u00020\u0014*\u00020\u000b2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u0087\n¢\u0006\u0002\b\u0016\u001a\u001c\u0010\u0013\u001a\u00020\u0014*\u00020\r2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0004H\u0087\n¢\u0006\u0002\b\u0017\u001a\u001c\u0010\u0013\u001a\u00020\u0014*\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u0019H\u0087\u0002¢\u0006\u0004\b\u001a\u0010\u001b\u001a\u001c\u0010\u0013\u001a\u00020\u0014*\u00020\r2\u0006\u0010\u0018\u001a\u00020\u0019H\u0087\u0002¢\u0006\u0004\b\u001c\u0010\u001d\u001a\u001c\u0010\u0013\u001a\u00020\u0014*\u00020\r2\u0006\u0010\u0018\u001a\u00020\u0001H\u0087\u0002¢\u0006\u0004\b\u001e\u0010\u001f\u001a\u001c\u0010\u0013\u001a\u00020\u0014*\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u0004H\u0087\u0002¢\u0006\u0004\b \u0010!\u001a\u001c\u0010\u0013\u001a\u00020\u0014*\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\"H\u0087\u0002¢\u0006\u0004\b#\u0010$\u001a\u001c\u0010\u0013\u001a\u00020\u0014*\u00020\r2\u0006\u0010\u0018\u001a\u00020\"H\u0087\u0002¢\u0006\u0004\b%\u0010&\u001a\u001c\u0010'\u001a\u00020\u0002*\u00020\u00192\u0006\u0010(\u001a\u00020\u0019H\u0087\u0004¢\u0006\u0004\b)\u0010*\u001a\u001c\u0010'\u001a\u00020\u0002*\u00020\u00012\u0006\u0010(\u001a\u00020\u0001H\u0087\u0004¢\u0006\u0004\b+\u0010,\u001a\u001c\u0010'\u001a\u00020\u0005*\u00020\u00042\u0006\u0010(\u001a\u00020\u0004H\u0087\u0004¢\u0006\u0004\b-\u0010.\u001a\u001c\u0010'\u001a\u00020\u0002*\u00020\"2\u0006\u0010(\u001a\u00020\"H\u0087\u0004¢\u0006\u0004\b/\u00100\u001a\f\u00101\u001a\u00020\u0002*\u00020\u0002H\u0007\u001a\f\u00101\u001a\u00020\u0005*\u00020\u0005H\u0007\u001a\u0015\u00102\u001a\u00020\u0002*\u00020\u00022\u0006\u00102\u001a\u000203H\u0087\u0004\u001a\u0015\u00102\u001a\u00020\u0005*\u00020\u00052\u0006\u00102\u001a\u000204H\u0087\u0004\u001a\u001c\u00105\u001a\u00020\u000b*\u00020\u00192\u0006\u0010(\u001a\u00020\u0019H\u0087\u0004¢\u0006\u0004\b6\u00107\u001a\u001c\u00105\u001a\u00020\u000b*\u00020\u00012\u0006\u0010(\u001a\u00020\u0001H\u0087\u0004¢\u0006\u0004\b8\u00109\u001a\u001c\u00105\u001a\u00020\r*\u00020\u00042\u0006\u0010(\u001a\u00020\u0004H\u0087\u0004¢\u0006\u0004\b:\u0010;\u001a\u001c\u00105\u001a\u00020\u000b*\u00020\"2\u0006\u0010(\u001a\u00020\"H\u0087\u0004¢\u0006\u0004\b<\u0010=\u001a\u001b\u0010>\u001a\u00020\u0001*\u00020\u00012\u0006\u0010?\u001a\u00020\u0001H\u0007¢\u0006\u0004\b@\u0010A\u001a\u001b\u0010>\u001a\u00020\u0004*\u00020\u00042\u0006\u0010?\u001a\u00020\u0004H\u0007¢\u0006\u0004\bB\u0010C\u001a\u001b\u0010>\u001a\u00020\u0019*\u00020\u00192\u0006\u0010?\u001a\u00020\u0019H\u0007¢\u0006\u0004\bD\u0010E\u001a\u001b\u0010>\u001a\u00020\"*\u00020\"2\u0006\u0010?\u001a\u00020\"H\u0007¢\u0006\u0004\bF\u0010G\u001a\u001b\u0010H\u001a\u00020\u0001*\u00020\u00012\u0006\u0010I\u001a\u00020\u0001H\u0007¢\u0006\u0004\bJ\u0010A\u001a\u001b\u0010H\u001a\u00020\u0004*\u00020\u00042\u0006\u0010I\u001a\u00020\u0004H\u0007¢\u0006\u0004\bK\u0010C\u001a\u001b\u0010H\u001a\u00020\u0019*\u00020\u00192\u0006\u0010I\u001a\u00020\u0019H\u0007¢\u0006\u0004\bL\u0010E\u001a\u001b\u0010H\u001a\u00020\"*\u00020\"2\u0006\u0010I\u001a\u00020\"H\u0007¢\u0006\u0004\bM\u0010G\u001a#\u0010N\u001a\u00020\u0001*\u00020\u00012\u0006\u0010?\u001a\u00020\u00012\u0006\u0010I\u001a\u00020\u0001H\u0007¢\u0006\u0004\bO\u0010P\u001a#\u0010N\u001a\u00020\u0004*\u00020\u00042\u0006\u0010?\u001a\u00020\u00042\u0006\u0010I\u001a\u00020\u0004H\u0007¢\u0006\u0004\bQ\u0010R\u001a#\u0010N\u001a\u00020\u0019*\u00020\u00192\u0006\u0010?\u001a\u00020\u00192\u0006\u0010I\u001a\u00020\u0019H\u0007¢\u0006\u0004\bS\u0010T\u001a#\u0010N\u001a\u00020\"*\u00020\"2\u0006\u0010?\u001a\u00020\"2\u0006\u0010I\u001a\u00020\"H\u0007¢\u0006\u0004\bU\u0010V\u001a!\u0010N\u001a\u00020\u0001*\u00020\u00012\f\u0010W\u001a\b\u0012\u0004\u0012\u00020\u00010XH\u0007¢\u0006\u0004\bY\u0010Z\u001a!\u0010N\u001a\u00020\u0004*\u00020\u00042\f\u0010W\u001a\b\u0012\u0004\u0012\u00020\u00040XH\u0007¢\u0006\u0004\b[\u0010\\¨\u0006]"}, d2 = {"first", "Lkotlin/UInt;", "Lkotlin/ranges/UIntProgression;", "(Lkotlin/ranges/UIntProgression;)I", "Lkotlin/ULong;", "Lkotlin/ranges/ULongProgression;", "(Lkotlin/ranges/ULongProgression;)J", "firstOrNull", "last", "lastOrNull", "random", "Lkotlin/ranges/UIntRange;", "(Lkotlin/ranges/UIntRange;)I", "Lkotlin/ranges/ULongRange;", "(Lkotlin/ranges/ULongRange;)J", "Lkotlin/random/Random;", "(Lkotlin/ranges/UIntRange;Lkotlin/random/Random;)I", "(Lkotlin/ranges/ULongRange;Lkotlin/random/Random;)J", "randomOrNull", "contains", "", "element", "contains-biwQdVI", "contains-GYNo2lE", "value", "Lkotlin/UByte;", "contains-68kG9v0", "(Lkotlin/ranges/UIntRange;B)Z", "contains-ULb-yJY", "(Lkotlin/ranges/ULongRange;B)Z", "contains-Gab390E", "(Lkotlin/ranges/ULongRange;I)Z", "contains-fz5IDCE", "(Lkotlin/ranges/UIntRange;J)Z", "Lkotlin/UShort;", "contains-ZsK3CEQ", "(Lkotlin/ranges/UIntRange;S)Z", "contains-uhHAxoY", "(Lkotlin/ranges/ULongRange;S)Z", "downTo", TypedValues.TransitionType.S_TO, "downTo-Kr8caGY", "(BB)Lkotlin/ranges/UIntProgression;", "downTo-J1ME1BU", "(II)Lkotlin/ranges/UIntProgression;", "downTo-eb3DHEI", "(JJ)Lkotlin/ranges/ULongProgression;", "downTo-5PvTz6A", "(SS)Lkotlin/ranges/UIntProgression;", "reversed", "step", "", "", "until", "until-Kr8caGY", "(BB)Lkotlin/ranges/UIntRange;", "until-J1ME1BU", "(II)Lkotlin/ranges/UIntRange;", "until-eb3DHEI", "(JJ)Lkotlin/ranges/ULongRange;", "until-5PvTz6A", "(SS)Lkotlin/ranges/UIntRange;", "coerceAtLeast", "minimumValue", "coerceAtLeast-J1ME1BU", "(II)I", "coerceAtLeast-eb3DHEI", "(JJ)J", "coerceAtLeast-Kr8caGY", "(BB)B", "coerceAtLeast-5PvTz6A", "(SS)S", "coerceAtMost", "maximumValue", "coerceAtMost-J1ME1BU", "coerceAtMost-eb3DHEI", "coerceAtMost-Kr8caGY", "coerceAtMost-5PvTz6A", "coerceIn", "coerceIn-WZ9TVnA", "(III)I", "coerceIn-sambcqE", "(JJJ)J", "coerceIn-b33U2AM", "(BBB)B", "coerceIn-VKSA0NQ", "(SSS)S", SessionDescription.ATTR_RANGE, "Lkotlin/ranges/ClosedRange;", "coerceIn-wuiCnnA", "(ILkotlin/ranges/ClosedRange;)I", "coerceIn-JPwROB0", "(JLkotlin/ranges/ClosedRange;)J", "kotlin-stdlib"}, k = 5, mv = {2, 2, 0}, xi = 49, xs = "kotlin/ranges/URangesKt")
/* loaded from: classes4.dex */
public class URangesKt___URangesKt {
    @SinceKotlin(version = "1.5")
    /* renamed from: coerceAtLeast-5PvTz6A  reason: not valid java name */
    public static final short m1678coerceAtLeast5PvTz6A(short s, short s2) {
        if (Intrinsics.compare(s & UShort.MAX_VALUE, 65535 & s2) < 0) {
            return s2;
        }
        return s;
    }

    @SinceKotlin(version = "1.5")
    /* renamed from: coerceAtLeast-J1ME1BU  reason: not valid java name */
    public static final int m1679coerceAtLeastJ1ME1BU(int i, int i2) {
        int compare;
        compare = Integer.compare(i ^ Integer.MIN_VALUE, i2 ^ Integer.MIN_VALUE);
        if (compare < 0) {
            return i2;
        }
        return i;
    }

    @SinceKotlin(version = "1.5")
    /* renamed from: coerceAtLeast-Kr8caGY  reason: not valid java name */
    public static final byte m1680coerceAtLeastKr8caGY(byte b, byte b2) {
        if (Intrinsics.compare(b & 255, b2 & 255) < 0) {
            return b2;
        }
        return b;
    }

    @SinceKotlin(version = "1.5")
    /* renamed from: coerceAtLeast-eb3DHEI  reason: not valid java name */
    public static final long m1681coerceAtLeasteb3DHEI(long j, long j2) {
        int compare;
        compare = Long.compare(j ^ Long.MIN_VALUE, j2 ^ Long.MIN_VALUE);
        if (compare < 0) {
            return j2;
        }
        return j;
    }

    @SinceKotlin(version = "1.5")
    /* renamed from: coerceAtMost-5PvTz6A  reason: not valid java name */
    public static final short m1682coerceAtMost5PvTz6A(short s, short s2) {
        if (Intrinsics.compare(s & UShort.MAX_VALUE, 65535 & s2) > 0) {
            return s2;
        }
        return s;
    }

    @SinceKotlin(version = "1.5")
    /* renamed from: coerceAtMost-J1ME1BU  reason: not valid java name */
    public static final int m1683coerceAtMostJ1ME1BU(int i, int i2) {
        int compare;
        compare = Integer.compare(i ^ Integer.MIN_VALUE, i2 ^ Integer.MIN_VALUE);
        if (compare > 0) {
            return i2;
        }
        return i;
    }

    @SinceKotlin(version = "1.5")
    /* renamed from: coerceAtMost-Kr8caGY  reason: not valid java name */
    public static final byte m1684coerceAtMostKr8caGY(byte b, byte b2) {
        if (Intrinsics.compare(b & 255, b2 & 255) > 0) {
            return b2;
        }
        return b;
    }

    @SinceKotlin(version = "1.5")
    /* renamed from: coerceAtMost-eb3DHEI  reason: not valid java name */
    public static final long m1685coerceAtMosteb3DHEI(long j, long j2) {
        int compare;
        compare = Long.compare(j ^ Long.MIN_VALUE, j2 ^ Long.MIN_VALUE);
        if (compare > 0) {
            return j2;
        }
        return j;
    }

    @SinceKotlin(version = "1.5")
    /* renamed from: coerceIn-JPwROB0  reason: not valid java name */
    public static final long m1686coerceInJPwROB0(long j, @NotNull ClosedRange<ULong> closedRange) {
        int compare;
        int compare2;
        if (closedRange instanceof ClosedFloatingPointRange) {
            return ((ULong) RangesKt___RangesKt.coerceIn(ULong.m606boximpl(j), (ClosedFloatingPointRange<ULong>) closedRange)).m664unboximpl();
        }
        if (!closedRange.isEmpty()) {
            compare = Long.compare(j ^ Long.MIN_VALUE, closedRange.getStart().m664unboximpl() ^ Long.MIN_VALUE);
            if (compare >= 0) {
                compare2 = Long.compare(j ^ Long.MIN_VALUE, closedRange.getEndInclusive().m664unboximpl() ^ Long.MIN_VALUE);
                if (compare2 > 0) {
                    return closedRange.getEndInclusive().m664unboximpl();
                }
                return j;
            }
            return closedRange.getStart().m664unboximpl();
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: " + closedRange + '.');
    }

    @SinceKotlin(version = "1.5")
    /* renamed from: coerceIn-VKSA0NQ  reason: not valid java name */
    public static final short m1687coerceInVKSA0NQ(short s, short s2, short s3) {
        int i = s2 & UShort.MAX_VALUE;
        int i2 = s3 & UShort.MAX_VALUE;
        if (Intrinsics.compare(i, i2) <= 0) {
            int i3 = 65535 & s;
            if (Intrinsics.compare(i3, i) < 0) {
                return s2;
            }
            if (Intrinsics.compare(i3, i2) > 0) {
                return s3;
            }
            return s;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + ((Object) UShort.m763toStringimpl(s3)) + " is less than minimum " + ((Object) UShort.m763toStringimpl(s2)) + '.');
    }

    @SinceKotlin(version = "1.5")
    /* renamed from: coerceIn-WZ9TVnA  reason: not valid java name */
    public static final int m1688coerceInWZ9TVnA(int i, int i2, int i3) {
        int compare;
        int compare2;
        int compare3;
        compare = Integer.compare(i2 ^ Integer.MIN_VALUE, i3 ^ Integer.MIN_VALUE);
        if (compare <= 0) {
            compare2 = Integer.compare(i ^ Integer.MIN_VALUE, i2 ^ Integer.MIN_VALUE);
            if (compare2 >= 0) {
                compare3 = Integer.compare(i ^ Integer.MIN_VALUE, i3 ^ Integer.MIN_VALUE);
                if (compare3 > 0) {
                    return i3;
                }
                return i;
            }
            return i2;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + ((Object) UInt.m579toStringimpl(i3)) + " is less than minimum " + ((Object) UInt.m579toStringimpl(i2)) + '.');
    }

    @SinceKotlin(version = "1.5")
    /* renamed from: coerceIn-b33U2AM  reason: not valid java name */
    public static final byte m1689coerceInb33U2AM(byte b, byte b2, byte b3) {
        int i = b2 & 255;
        int i2 = b3 & 255;
        if (Intrinsics.compare(i, i2) <= 0) {
            int i3 = b & 255;
            if (Intrinsics.compare(i3, i) < 0) {
                return b2;
            }
            if (Intrinsics.compare(i3, i2) > 0) {
                return b3;
            }
            return b;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + ((Object) UByte.m500toStringimpl(b3)) + " is less than minimum " + ((Object) UByte.m500toStringimpl(b2)) + '.');
    }

    @SinceKotlin(version = "1.5")
    /* renamed from: coerceIn-sambcqE  reason: not valid java name */
    public static final long m1690coerceInsambcqE(long j, long j2, long j3) {
        int compare;
        int compare2;
        int compare3;
        compare = Long.compare(j2 ^ Long.MIN_VALUE, j3 ^ Long.MIN_VALUE);
        if (compare <= 0) {
            compare2 = Long.compare(j ^ Long.MIN_VALUE, j2 ^ Long.MIN_VALUE);
            if (compare2 >= 0) {
                compare3 = Long.compare(j ^ Long.MIN_VALUE, j3 ^ Long.MIN_VALUE);
                if (compare3 > 0) {
                    return j3;
                }
                return j;
            }
            return j2;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + ((Object) ULong.m658toStringimpl(j3)) + " is less than minimum " + ((Object) ULong.m658toStringimpl(j2)) + '.');
    }

    @SinceKotlin(version = "1.5")
    /* renamed from: coerceIn-wuiCnnA  reason: not valid java name */
    public static final int m1691coerceInwuiCnnA(int i, @NotNull ClosedRange<UInt> closedRange) {
        int compare;
        int compare2;
        if (closedRange instanceof ClosedFloatingPointRange) {
            return ((UInt) RangesKt___RangesKt.coerceIn(UInt.m527boximpl(i), (ClosedFloatingPointRange<UInt>) closedRange)).m585unboximpl();
        }
        if (!closedRange.isEmpty()) {
            compare = Integer.compare(i ^ Integer.MIN_VALUE, closedRange.getStart().m585unboximpl() ^ Integer.MIN_VALUE);
            if (compare >= 0) {
                compare2 = Integer.compare(i ^ Integer.MIN_VALUE, closedRange.getEndInclusive().m585unboximpl() ^ Integer.MIN_VALUE);
                if (compare2 > 0) {
                    return closedRange.getEndInclusive().m585unboximpl();
                }
                return i;
            }
            return closedRange.getStart().m585unboximpl();
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: " + closedRange + '.');
    }

    @SinceKotlin(version = "1.5")
    /* renamed from: contains-68kG9v0  reason: not valid java name */
    public static final boolean m1692contains68kG9v0(@NotNull UIntRange uIntRange, byte b) {
        return uIntRange.m1665containsWZ4Q5Ns(UInt.m533constructorimpl(b & 255));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    /* renamed from: contains-GYNo2lE  reason: not valid java name */
    private static final boolean m1693containsGYNo2lE(ULongRange uLongRange, ULong uLong) {
        if (uLong != null && uLongRange.m1674containsVKZWuLQ(uLong.m664unboximpl())) {
            return true;
        }
        return false;
    }

    @SinceKotlin(version = "1.5")
    /* renamed from: contains-Gab390E  reason: not valid java name */
    public static final boolean m1694containsGab390E(@NotNull ULongRange uLongRange, int i) {
        return uLongRange.m1674containsVKZWuLQ(ULong.m612constructorimpl(i & KeyboardMap.kValueMask));
    }

    @SinceKotlin(version = "1.5")
    /* renamed from: contains-ULb-yJY  reason: not valid java name */
    public static final boolean m1695containsULbyJY(@NotNull ULongRange uLongRange, byte b) {
        return uLongRange.m1674containsVKZWuLQ(ULong.m612constructorimpl(b & 255));
    }

    @SinceKotlin(version = "1.5")
    /* renamed from: contains-ZsK3CEQ  reason: not valid java name */
    public static final boolean m1696containsZsK3CEQ(@NotNull UIntRange uIntRange, short s) {
        return uIntRange.m1665containsWZ4Q5Ns(UInt.m533constructorimpl(s & UShort.MAX_VALUE));
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    /* renamed from: contains-biwQdVI  reason: not valid java name */
    private static final boolean m1697containsbiwQdVI(UIntRange uIntRange, UInt uInt) {
        if (uInt != null && uIntRange.m1665containsWZ4Q5Ns(uInt.m585unboximpl())) {
            return true;
        }
        return false;
    }

    @SinceKotlin(version = "1.5")
    /* renamed from: contains-fz5IDCE  reason: not valid java name */
    public static final boolean m1698containsfz5IDCE(@NotNull UIntRange uIntRange, long j) {
        if (ULong.m612constructorimpl(j >>> 32) == 0 && uIntRange.m1665containsWZ4Q5Ns(UInt.m533constructorimpl((int) j))) {
            return true;
        }
        return false;
    }

    @SinceKotlin(version = "1.5")
    /* renamed from: contains-uhHAxoY  reason: not valid java name */
    public static final boolean m1699containsuhHAxoY(@NotNull ULongRange uLongRange, short s) {
        return uLongRange.m1674containsVKZWuLQ(ULong.m612constructorimpl(s & 65535));
    }

    @SinceKotlin(version = "1.5")
    @NotNull
    /* renamed from: downTo-5PvTz6A  reason: not valid java name */
    public static final UIntProgression m1700downTo5PvTz6A(short s, short s2) {
        return UIntProgression.Companion.m1662fromClosedRangeNkh28Cs(UInt.m533constructorimpl(s & UShort.MAX_VALUE), UInt.m533constructorimpl(s2 & UShort.MAX_VALUE), -1);
    }

    @SinceKotlin(version = "1.5")
    @NotNull
    /* renamed from: downTo-J1ME1BU  reason: not valid java name */
    public static final UIntProgression m1701downToJ1ME1BU(int i, int i2) {
        return UIntProgression.Companion.m1662fromClosedRangeNkh28Cs(i, i2, -1);
    }

    @SinceKotlin(version = "1.5")
    @NotNull
    /* renamed from: downTo-Kr8caGY  reason: not valid java name */
    public static final UIntProgression m1702downToKr8caGY(byte b, byte b2) {
        return UIntProgression.Companion.m1662fromClosedRangeNkh28Cs(UInt.m533constructorimpl(b & 255), UInt.m533constructorimpl(b2 & 255), -1);
    }

    @SinceKotlin(version = "1.5")
    @NotNull
    /* renamed from: downTo-eb3DHEI  reason: not valid java name */
    public static final ULongProgression m1703downToeb3DHEI(long j, long j2) {
        return ULongProgression.Companion.m1671fromClosedRange7ftBX0g(j, j2, -1L);
    }

    @SinceKotlin(version = "1.7")
    public static final int first(@NotNull UIntProgression uIntProgression) {
        if (!uIntProgression.isEmpty()) {
            return uIntProgression.m1660getFirstpVg5ArA();
        }
        throw new NoSuchElementException("Progression " + uIntProgression + " is empty.");
    }

    @SinceKotlin(version = "1.7")
    @Nullable
    public static final UInt firstOrNull(@NotNull UIntProgression uIntProgression) {
        if (uIntProgression.isEmpty()) {
            return null;
        }
        return UInt.m527boximpl(uIntProgression.m1660getFirstpVg5ArA());
    }

    @SinceKotlin(version = "1.7")
    public static final int last(@NotNull UIntProgression uIntProgression) {
        if (!uIntProgression.isEmpty()) {
            return uIntProgression.m1661getLastpVg5ArA();
        }
        throw new NoSuchElementException("Progression " + uIntProgression + " is empty.");
    }

    @SinceKotlin(version = "1.7")
    @Nullable
    public static final UInt lastOrNull(@NotNull UIntProgression uIntProgression) {
        if (uIntProgression.isEmpty()) {
            return null;
        }
        return UInt.m527boximpl(uIntProgression.m1661getLastpVg5ArA());
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final int random(UIntRange uIntRange) {
        return random(uIntRange, Random.Default);
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final UInt randomOrNull(UIntRange uIntRange) {
        return randomOrNull(uIntRange, Random.Default);
    }

    @SinceKotlin(version = "1.5")
    @NotNull
    public static final UIntProgression reversed(@NotNull UIntProgression uIntProgression) {
        return UIntProgression.Companion.m1662fromClosedRangeNkh28Cs(uIntProgression.m1661getLastpVg5ArA(), uIntProgression.m1660getFirstpVg5ArA(), -uIntProgression.getStep());
    }

    @SinceKotlin(version = "1.5")
    @NotNull
    public static final UIntProgression step(@NotNull UIntProgression uIntProgression, int i) {
        RangesKt__RangesKt.checkStepIsPositive(i > 0, Integer.valueOf(i));
        UIntProgression.Companion companion = UIntProgression.Companion;
        int m1660getFirstpVg5ArA = uIntProgression.m1660getFirstpVg5ArA();
        int m1661getLastpVg5ArA = uIntProgression.m1661getLastpVg5ArA();
        if (uIntProgression.getStep() <= 0) {
            i = -i;
        }
        return companion.m1662fromClosedRangeNkh28Cs(m1660getFirstpVg5ArA, m1661getLastpVg5ArA, i);
    }

    @SinceKotlin(version = "1.5")
    @NotNull
    /* renamed from: until-5PvTz6A  reason: not valid java name */
    public static final UIntRange m1704until5PvTz6A(short s, short s2) {
        int i = s2 & UShort.MAX_VALUE;
        if (Intrinsics.compare(i, 0) <= 0) {
            return UIntRange.Companion.getEMPTY();
        }
        return new UIntRange(UInt.m533constructorimpl(s & UShort.MAX_VALUE), UInt.m533constructorimpl(UInt.m533constructorimpl(i) - 1), null);
    }

    @SinceKotlin(version = "1.5")
    @NotNull
    /* renamed from: until-J1ME1BU  reason: not valid java name */
    public static UIntRange m1705untilJ1ME1BU(int i, int i2) {
        int compare;
        compare = Integer.compare(i2 ^ Integer.MIN_VALUE, 0 ^ Integer.MIN_VALUE);
        if (compare <= 0) {
            return UIntRange.Companion.getEMPTY();
        }
        return new UIntRange(i, UInt.m533constructorimpl(i2 - 1), null);
    }

    @SinceKotlin(version = "1.5")
    @NotNull
    /* renamed from: until-Kr8caGY  reason: not valid java name */
    public static final UIntRange m1706untilKr8caGY(byte b, byte b2) {
        int i = b2 & 255;
        if (Intrinsics.compare(i, 0) <= 0) {
            return UIntRange.Companion.getEMPTY();
        }
        return new UIntRange(UInt.m533constructorimpl(b & 255), UInt.m533constructorimpl(UInt.m533constructorimpl(i) - 1), null);
    }

    @SinceKotlin(version = "1.5")
    @NotNull
    /* renamed from: until-eb3DHEI  reason: not valid java name */
    public static ULongRange m1707untileb3DHEI(long j, long j2) {
        int compare;
        compare = Long.compare(j2 ^ Long.MIN_VALUE, 0 ^ Long.MIN_VALUE);
        if (compare <= 0) {
            return ULongRange.Companion.getEMPTY();
        }
        return new ULongRange(j, ULong.m612constructorimpl(j2 - ULong.m612constructorimpl(1 & KeyboardMap.kValueMask)), null);
    }

    @SinceKotlin(version = "1.7")
    @Nullable
    public static final ULong firstOrNull(@NotNull ULongProgression uLongProgression) {
        if (uLongProgression.isEmpty()) {
            return null;
        }
        return ULong.m606boximpl(uLongProgression.m1669getFirstsVKNKU());
    }

    @SinceKotlin(version = "1.7")
    @Nullable
    public static final ULong lastOrNull(@NotNull ULongProgression uLongProgression) {
        if (uLongProgression.isEmpty()) {
            return null;
        }
        return ULong.m606boximpl(uLongProgression.m1670getLastsVKNKU());
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final long random(ULongRange uLongRange) {
        return random(uLongRange, Random.Default);
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final ULong randomOrNull(ULongRange uLongRange) {
        return randomOrNull(uLongRange, Random.Default);
    }

    @SinceKotlin(version = "1.5")
    @NotNull
    public static final ULongProgression reversed(@NotNull ULongProgression uLongProgression) {
        return ULongProgression.Companion.m1671fromClosedRange7ftBX0g(uLongProgression.m1670getLastsVKNKU(), uLongProgression.m1669getFirstsVKNKU(), -uLongProgression.getStep());
    }

    @SinceKotlin(version = "1.5")
    public static final int random(@NotNull UIntRange uIntRange, @NotNull Random random) {
        try {
            return URandomKt.nextUInt(random, uIntRange);
        } catch (IllegalArgumentException e) {
            throw new NoSuchElementException(e.getMessage());
        }
    }

    @SinceKotlin(version = "1.5")
    @Nullable
    public static final UInt randomOrNull(@NotNull UIntRange uIntRange, @NotNull Random random) {
        if (uIntRange.isEmpty()) {
            return null;
        }
        return UInt.m527boximpl(URandomKt.nextUInt(random, uIntRange));
    }

    @SinceKotlin(version = "1.5")
    @NotNull
    public static final ULongProgression step(@NotNull ULongProgression uLongProgression, long j) {
        RangesKt__RangesKt.checkStepIsPositive(j > 0, Long.valueOf(j));
        ULongProgression.Companion companion = ULongProgression.Companion;
        long m1669getFirstsVKNKU = uLongProgression.m1669getFirstsVKNKU();
        long m1670getLastsVKNKU = uLongProgression.m1670getLastsVKNKU();
        if (uLongProgression.getStep() <= 0) {
            j = -j;
        }
        return companion.m1671fromClosedRange7ftBX0g(m1669getFirstsVKNKU, m1670getLastsVKNKU, j);
    }

    @SinceKotlin(version = "1.7")
    public static final long first(@NotNull ULongProgression uLongProgression) {
        if (!uLongProgression.isEmpty()) {
            return uLongProgression.m1669getFirstsVKNKU();
        }
        throw new NoSuchElementException("Progression " + uLongProgression + " is empty.");
    }

    @SinceKotlin(version = "1.7")
    public static final long last(@NotNull ULongProgression uLongProgression) {
        if (!uLongProgression.isEmpty()) {
            return uLongProgression.m1670getLastsVKNKU();
        }
        throw new NoSuchElementException("Progression " + uLongProgression + " is empty.");
    }

    @SinceKotlin(version = "1.5")
    public static final long random(@NotNull ULongRange uLongRange, @NotNull Random random) {
        try {
            return URandomKt.nextULong(random, uLongRange);
        } catch (IllegalArgumentException e) {
            throw new NoSuchElementException(e.getMessage());
        }
    }

    @SinceKotlin(version = "1.5")
    @Nullable
    public static final ULong randomOrNull(@NotNull ULongRange uLongRange, @NotNull Random random) {
        if (uLongRange.isEmpty()) {
            return null;
        }
        return ULong.m606boximpl(URandomKt.nextULong(random, uLongRange));
    }
}
