package kotlin.time;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import io.flutter.plugin.editing.SpellCheckPlugin;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.internal.InlineOnly;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import kotlin.time.Duration;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000:\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0006\n\u0002\b\t\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\f\n\u0002\b\u0015\u001a\u0019\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0002\u0010\u0005\u001a\u0019\u0010\u0000\u001a\u00020\u0001*\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0002\u0010\u0007\u001a\u0019\u0010\u0000\u001a\u00020\u0001*\u00020\b2\u0006\u0010\u0003\u001a\u00020\u0004H\u0007¢\u0006\u0002\u0010\t\u001a\u001c\u0010\n\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0001H\u0087\n¢\u0006\u0004\b\f\u0010\r\u001a\u001c\u0010\n\u001a\u00020\u0001*\u00020\b2\u0006\u0010\u000b\u001a\u00020\u0001H\u0087\n¢\u0006\u0004\b\u000e\u0010\u000f\u001a\u001d\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0002¢\u0006\u0002\u0010\u0015\u001a\u0010\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0012H\u0002\u001a)\u0010\u0017\u001a\u00020\u0012*\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00022\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u00140\u001aH\u0082\b\u001a)\u0010\u001c\u001a\u00020\u0002*\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00022\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u00140\u001aH\u0082\b\u001a\u0010\u0010!\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020\u0006H\u0002\u001a\u0010\u0010#\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u0006H\u0002\u001a\u0015\u0010%\u001a\u00020\u00012\u0006\u0010&\u001a\u00020\u0006H\u0002¢\u0006\u0002\u0010'\u001a\u0015\u0010(\u001a\u00020\u00012\u0006\u0010)\u001a\u00020\u0006H\u0002¢\u0006\u0002\u0010'\u001a\u001d\u0010*\u001a\u00020\u00012\u0006\u0010+\u001a\u00020\u00062\u0006\u0010,\u001a\u00020\u0002H\u0002¢\u0006\u0002\u0010-\u001a\u0015\u0010.\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020\u0006H\u0002¢\u0006\u0002\u0010'\u001a\u0015\u0010/\u001a\u00020\u00012\u0006\u0010$\u001a\u00020\u0006H\u0002¢\u0006\u0002\u0010'\"\u000e\u0010\u001d\u001a\u00020\u0002X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u001e\u001a\u00020\u0006X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u001f\u001a\u00020\u0006X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010 \u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000¨\u00060"}, d2 = {"toDuration", "Lkotlin/time/Duration;", "", "unit", "Lkotlin/time/DurationUnit;", "(ILkotlin/time/DurationUnit;)J", "", "(JLkotlin/time/DurationUnit;)J", "", "(DLkotlin/time/DurationUnit;)J", "times", TypedValues.TransitionType.S_DURATION, "times-mvk6XK0", "(IJ)J", "times-kIfJnKk", "(DJ)J", "parseDuration", "value", "", "strictIso", "", "(Ljava/lang/String;Z)J", "parseOverLongIsoComponent", "substringWhile", SpellCheckPlugin.START_INDEX_KEY, "predicate", "Lkotlin/Function1;", "", "skipWhile", "NANOS_IN_MILLIS", "MAX_NANOS", "MAX_MILLIS", "MAX_NANOS_IN_MILLIS", "nanosToMillis", "nanos", "millisToNanos", "millis", "durationOfNanos", "normalNanos", "(J)J", "durationOfMillis", "normalMillis", "durationOf", "normalValue", "unitDiscriminator", "(JI)J", "durationOfNanosNormalized", "durationOfMillisNormalized", "kotlin-stdlib"}, k = 2, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDuration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Duration.kt\nkotlin/time/DurationKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1062:1\n1015#1,6:1064\n1018#1,3:1070\n1015#1,6:1073\n1015#1,6:1079\n1018#1,3:1085\n1#2:1063\n*S KotlinDebug\n*F\n+ 1 Duration.kt\nkotlin/time/DurationKt\n*L\n930#1:1064,6\n964#1:1070,3\n967#1:1073,6\n970#1:1079,6\n1015#1:1085,3\n*E\n"})
/* loaded from: classes7.dex */
public final class DurationKt {
    public static final long MAX_MILLIS = 4611686018427387903L;
    public static final long MAX_NANOS = 4611686018426999999L;
    private static final long MAX_NANOS_IN_MILLIS = 4611686018426L;
    public static final int NANOS_IN_MILLIS = 1000000;

    public static final long durationOf(long j, int i) {
        return Duration.m1762constructorimpl((j << 1) + i);
    }

    public static final long durationOfMillis(long j) {
        return Duration.m1762constructorimpl((j << 1) + 1);
    }

    public static final long durationOfMillisNormalized(long j) {
        if (-4611686018426L <= j && j < 4611686018427L) {
            return durationOfNanos(millisToNanos(j));
        }
        return durationOfMillis(RangesKt.coerceIn(j, -4611686018427387903L, (long) MAX_MILLIS));
    }

    public static final long durationOfNanos(long j) {
        return Duration.m1762constructorimpl(j << 1);
    }

    public static final long durationOfNanosNormalized(long j) {
        if (-4611686018426999999L <= j && j < 4611686018427000000L) {
            return durationOfNanos(j);
        }
        return durationOfMillis(nanosToMillis(j));
    }

    public static final long millisToNanos(long j) {
        return j * 1000000;
    }

    public static final long nanosToMillis(long j) {
        return j / 1000000;
    }

    public static final long parseDuration(String str, boolean z) {
        int i;
        boolean z2;
        boolean z3;
        char charAt;
        char charAt2;
        boolean z4;
        char charAt3;
        int length = str.length();
        if (length != 0) {
            Duration.Companion companion = Duration.Companion;
            long m1853getZEROUwyO8pc = companion.m1853getZEROUwyO8pc();
            char charAt4 = str.charAt(0);
            if (charAt4 != '+' && charAt4 != '-') {
                i = 0;
            } else {
                i = 1;
            }
            if (i > 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z2 && StringsKt.startsWith$default((CharSequence) str, '-', false, 2, (Object) null)) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (length > i) {
                char charAt5 = str.charAt(i);
                char c = AbstractJsonLexerKt.COLON;
                char c2 = '0';
                if (charAt5 == 'P') {
                    int i2 = i + 1;
                    if (i2 != length) {
                        boolean z5 = false;
                        DurationUnit durationUnit = null;
                        while (i2 < length) {
                            if (str.charAt(i2) == 'T') {
                                if (!z5 && (i2 = i2 + 1) != length) {
                                    z5 = true;
                                } else {
                                    throw new IllegalArgumentException();
                                }
                            } else {
                                int i3 = i2;
                                while (i3 < str.length() && ((c2 <= (charAt3 = str.charAt(i3)) && charAt3 < ':') || StringsKt.contains$default((CharSequence) "+-.", charAt3, false, 2, (Object) null))) {
                                    i3++;
                                    c2 = '0';
                                }
                                String substring = str.substring(i2, i3);
                                if (substring.length() != 0) {
                                    int length2 = i2 + substring.length();
                                    if (length2 >= 0 && length2 < str.length()) {
                                        char charAt6 = str.charAt(length2);
                                        i2 = length2 + 1;
                                        DurationUnit durationUnitByIsoChar = DurationUnitKt__DurationUnitKt.durationUnitByIsoChar(charAt6, z5);
                                        if (durationUnit != null && durationUnit.compareTo(durationUnitByIsoChar) <= 0) {
                                            throw new IllegalArgumentException("Unexpected order of duration components");
                                        }
                                        int indexOf$default = StringsKt.indexOf$default((CharSequence) substring, '.', 0, false, 6, (Object) null);
                                        if (durationUnitByIsoChar == DurationUnit.SECONDS && indexOf$default > 0) {
                                            z4 = z5;
                                            m1853getZEROUwyO8pc = Duration.m1791plusLRDsOJo(Duration.m1791plusLRDsOJo(m1853getZEROUwyO8pc, toDuration(parseOverLongIsoComponent(substring.substring(0, indexOf$default)), durationUnitByIsoChar)), toDuration(Double.parseDouble(substring.substring(indexOf$default)), durationUnitByIsoChar));
                                        } else {
                                            z4 = z5;
                                            m1853getZEROUwyO8pc = Duration.m1791plusLRDsOJo(m1853getZEROUwyO8pc, toDuration(parseOverLongIsoComponent(substring), durationUnitByIsoChar));
                                        }
                                        z5 = z4;
                                        durationUnit = durationUnitByIsoChar;
                                        c2 = '0';
                                    } else {
                                        throw new IllegalArgumentException("Missing unit for value " + substring);
                                    }
                                } else {
                                    throw new IllegalArgumentException();
                                }
                            }
                        }
                    } else {
                        throw new IllegalArgumentException();
                    }
                } else if (!z) {
                    char c3 = '0';
                    if (StringsKt.regionMatches(str, i, "Infinity", 0, Math.max(length - i, 8), true)) {
                        m1853getZEROUwyO8pc = companion.m1851getINFINITEUwyO8pc();
                    } else {
                        boolean z6 = !z2;
                        if (z2 && str.charAt(i) == '(' && StringsKt.last(str) == ')') {
                            i++;
                            length--;
                            if (i != length) {
                                z6 = true;
                            } else {
                                throw new IllegalArgumentException("No components");
                            }
                        }
                        DurationUnit durationUnit2 = null;
                        boolean z7 = false;
                        while (i < length) {
                            if (z7 && z6) {
                                while (i < str.length() && str.charAt(i) == ' ') {
                                    i++;
                                }
                            }
                            int i4 = i;
                            while (i4 < str.length() && ((c3 <= (charAt2 = str.charAt(i4)) && charAt2 < c) || charAt2 == '.')) {
                                i4++;
                            }
                            String substring2 = str.substring(i, i4);
                            if (substring2.length() != 0) {
                                int length3 = i + substring2.length();
                                int i5 = length3;
                                while (i5 < str.length() && 'a' <= (charAt = str.charAt(i5)) && charAt < '{') {
                                    i5++;
                                }
                                String substring3 = str.substring(length3, i5);
                                i = length3 + substring3.length();
                                DurationUnit durationUnitByShortName = DurationUnitKt__DurationUnitKt.durationUnitByShortName(substring3);
                                if (durationUnit2 != null && durationUnit2.compareTo(durationUnitByShortName) <= 0) {
                                    throw new IllegalArgumentException("Unexpected order of duration components");
                                }
                                int indexOf$default2 = StringsKt.indexOf$default((CharSequence) substring2, '.', 0, false, 6, (Object) null);
                                if (indexOf$default2 > 0) {
                                    m1853getZEROUwyO8pc = Duration.m1791plusLRDsOJo(Duration.m1791plusLRDsOJo(m1853getZEROUwyO8pc, toDuration(Long.parseLong(substring2.substring(0, indexOf$default2)), durationUnitByShortName)), toDuration(Double.parseDouble(substring2.substring(indexOf$default2)), durationUnitByShortName));
                                    if (i < length) {
                                        throw new IllegalArgumentException("Fractional component must be last");
                                    }
                                } else {
                                    m1853getZEROUwyO8pc = Duration.m1791plusLRDsOJo(m1853getZEROUwyO8pc, toDuration(Long.parseLong(substring2), durationUnitByShortName));
                                }
                                durationUnit2 = durationUnitByShortName;
                                z7 = true;
                                c3 = '0';
                                c = AbstractJsonLexerKt.COLON;
                            } else {
                                throw new IllegalArgumentException();
                            }
                        }
                    }
                } else {
                    throw new IllegalArgumentException();
                }
                if (z3) {
                    return Duration.m1806unaryMinusUwyO8pc(m1853getZEROUwyO8pc);
                }
                return m1853getZEROUwyO8pc;
            }
            throw new IllegalArgumentException("No components");
        }
        throw new IllegalArgumentException("The string is empty");
    }

    private static final long parseOverLongIsoComponent(String str) {
        int i;
        char charAt;
        int length = str.length();
        if (length > 0 && StringsKt.contains$default((CharSequence) "+-", str.charAt(0), false, 2, (Object) null)) {
            i = 1;
        } else {
            i = 0;
        }
        if (length - i > 16) {
            int i2 = i;
            while (true) {
                if (i < length) {
                    char charAt2 = str.charAt(i);
                    if (charAt2 == '0') {
                        if (i2 == i) {
                            i2++;
                        }
                    } else if ('1' > charAt2 || charAt2 >= ':') {
                        break;
                    }
                    i++;
                } else if (length - i2 > 16) {
                    if (str.charAt(0) == '-') {
                        return Long.MIN_VALUE;
                    }
                    return Long.MAX_VALUE;
                }
            }
        }
        if (StringsKt.startsWith$default(str, "+", false, 2, (Object) null) && length > 1 && '0' <= (charAt = str.charAt(1)) && charAt < ':') {
            return Long.parseLong(StringsKt.drop(str, 1));
        }
        return Long.parseLong(str);
    }

    private static final int skipWhile(String str, int i, Function1<? super Character, Boolean> function1) {
        while (i < str.length() && function1.invoke(Character.valueOf(str.charAt(i))).booleanValue()) {
            i++;
        }
        return i;
    }

    private static final String substringWhile(String str, int i, Function1<? super Character, Boolean> function1) {
        int i2 = i;
        while (i2 < str.length() && function1.invoke(Character.valueOf(str.charAt(i2))).booleanValue()) {
            i2++;
        }
        return str.substring(i, i2);
    }

    @SinceKotlin(version = "1.6")
    @InlineOnly
    /* renamed from: times-kIfJnKk */
    private static final long m1858timeskIfJnKk(double d, long j) {
        return Duration.m1792timesUwyO8pc(j, d);
    }

    @SinceKotlin(version = "1.6")
    @InlineOnly
    /* renamed from: times-mvk6XK0 */
    private static final long m1859timesmvk6XK0(int i, long j) {
        return Duration.m1793timesUwyO8pc(j, i);
    }

    @SinceKotlin(version = "1.6")
    public static final long toDuration(int i, @NotNull DurationUnit durationUnit) {
        if (durationUnit.compareTo(DurationUnit.SECONDS) <= 0) {
            return durationOfNanos(DurationUnitKt__DurationUnitJvmKt.convertDurationUnitOverflow(i, durationUnit, DurationUnit.NANOSECONDS));
        }
        return toDuration(i, durationUnit);
    }

    @SinceKotlin(version = "1.6")
    public static final long toDuration(long j, @NotNull DurationUnit durationUnit) {
        DurationUnit durationUnit2 = DurationUnit.NANOSECONDS;
        long convertDurationUnitOverflow = DurationUnitKt__DurationUnitJvmKt.convertDurationUnitOverflow(MAX_NANOS, durationUnit2, durationUnit);
        if ((-convertDurationUnitOverflow) <= j && j <= convertDurationUnitOverflow) {
            return durationOfNanos(DurationUnitKt__DurationUnitJvmKt.convertDurationUnitOverflow(j, durationUnit, durationUnit2));
        }
        return durationOfMillis(RangesKt.coerceIn(DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(j, durationUnit, DurationUnit.MILLISECONDS), -4611686018427387903L, (long) MAX_MILLIS));
    }

    @SinceKotlin(version = "1.6")
    public static final long toDuration(double d, @NotNull DurationUnit durationUnit) {
        double convertDurationUnit = DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(d, durationUnit, DurationUnit.NANOSECONDS);
        if (!Double.isNaN(convertDurationUnit)) {
            long roundToLong = MathKt.roundToLong(convertDurationUnit);
            if (-4611686018426999999L <= roundToLong && roundToLong < 4611686018427000000L) {
                return durationOfNanos(roundToLong);
            }
            return durationOfMillisNormalized(MathKt.roundToLong(DurationUnitKt__DurationUnitJvmKt.convertDurationUnit(d, durationUnit, DurationUnit.MILLISECONDS)));
        }
        throw new IllegalArgumentException("Duration value cannot be NaN.");
    }
}
