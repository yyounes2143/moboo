package org.joda.time;

import androidx.exifinterface.media.ExifInterface;
import org.joda.convert.FromString;
import org.joda.convert.ToString;
import org.joda.time.base.BaseSingleFieldPeriod;
import org.joda.time.field.FieldUtils;
import org.joda.time.format.ISOPeriodFormat;
import org.joda.time.format.PeriodFormatter;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public final class Seconds extends BaseSingleFieldPeriod {
    private static final long serialVersionUID = 87525275727380862L;
    public static final Seconds ZERO = new Seconds(0);
    public static final Seconds ONE = new Seconds(1);
    public static final Seconds TWO = new Seconds(2);
    public static final Seconds THREE = new Seconds(3);
    public static final Seconds MAX_VALUE = new Seconds(Integer.MAX_VALUE);
    public static final Seconds MIN_VALUE = new Seconds(Integer.MIN_VALUE);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final PeriodFormatter f13645Wwwwwwwwwwwwwwwwwwwwwwwww = ISOPeriodFormat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwww(PeriodType.seconds());

    public Seconds(int i) {
        super(i);
    }

    @FromString
    public static Seconds parseSeconds(String str) {
        if (str == null) {
            return ZERO;
        }
        return seconds(f13645Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww(str).getSeconds());
    }

    private Object readResolve() {
        return seconds(getValue());
    }

    public static Seconds seconds(int i) {
        if (i != Integer.MIN_VALUE) {
            if (i != Integer.MAX_VALUE) {
                if (i != 0) {
                    if (i != 1) {
                        if (i != 2) {
                            if (i != 3) {
                                return new Seconds(i);
                            }
                            return THREE;
                        }
                        return TWO;
                    }
                    return ONE;
                }
                return ZERO;
            }
            return MAX_VALUE;
        }
        return MIN_VALUE;
    }

    public static Seconds secondsBetween(ReadableInstant readableInstant, ReadableInstant readableInstant2) {
        return seconds(BaseSingleFieldPeriod.between(readableInstant, readableInstant2, DurationFieldType.seconds()));
    }

    public static Seconds secondsIn(ReadableInterval readableInterval) {
        if (readableInterval == null) {
            return ZERO;
        }
        return seconds(BaseSingleFieldPeriod.between(readableInterval.getStart(), readableInterval.getEnd(), DurationFieldType.seconds()));
    }

    public static Seconds standardSecondsIn(ReadablePeriod readablePeriod) {
        return seconds(BaseSingleFieldPeriod.standardPeriodIn(readablePeriod, 1000L));
    }

    public Seconds dividedBy(int i) {
        if (i == 1) {
            return this;
        }
        return seconds(getValue() / i);
    }

    @Override // org.joda.time.base.BaseSingleFieldPeriod
    public DurationFieldType getFieldType() {
        return DurationFieldType.seconds();
    }

    @Override // org.joda.time.base.BaseSingleFieldPeriod, org.joda.time.ReadablePeriod
    public PeriodType getPeriodType() {
        return PeriodType.seconds();
    }

    public int getSeconds() {
        return getValue();
    }

    public boolean isGreaterThan(Seconds seconds) {
        if (seconds == null) {
            if (getValue() <= 0) {
                return false;
            }
            return true;
        } else if (getValue() <= seconds.getValue()) {
            return false;
        } else {
            return true;
        }
    }

    public boolean isLessThan(Seconds seconds) {
        if (seconds == null) {
            if (getValue() >= 0) {
                return false;
            }
            return true;
        } else if (getValue() >= seconds.getValue()) {
            return false;
        } else {
            return true;
        }
    }

    public Seconds minus(int i) {
        return plus(FieldUtils.Wwwwwwwwwwwwwwwwwwwwwwww(i));
    }

    public Seconds multipliedBy(int i) {
        return seconds(FieldUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwww(getValue(), i));
    }

    public Seconds negated() {
        return seconds(FieldUtils.Wwwwwwwwwwwwwwwwwwwwwwww(getValue()));
    }

    public Seconds plus(int i) {
        return i == 0 ? this : seconds(FieldUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(getValue(), i));
    }

    public Days toStandardDays() {
        return Days.days(getValue() / 86400);
    }

    public Duration toStandardDuration() {
        return new Duration(getValue() * 1000);
    }

    public Hours toStandardHours() {
        return Hours.hours(getValue() / 3600);
    }

    public Minutes toStandardMinutes() {
        return Minutes.minutes(getValue() / 60);
    }

    public Weeks toStandardWeeks() {
        return Weeks.weeks(getValue() / 604800);
    }

    @ToString
    public String toString() {
        return "PT" + String.valueOf(getValue()) + ExifInterface.LATITUDE_SOUTH;
    }

    public Seconds minus(Seconds seconds) {
        return seconds == null ? this : minus(seconds.getValue());
    }

    public Seconds plus(Seconds seconds) {
        return seconds == null ? this : plus(seconds.getValue());
    }

    public static Seconds secondsBetween(ReadablePartial readablePartial, ReadablePartial readablePartial2) {
        if ((readablePartial instanceof LocalTime) && (readablePartial2 instanceof LocalTime)) {
            return seconds(DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(readablePartial.getChronology()).seconds().getDifference(((LocalTime) readablePartial2).getLocalMillis(), ((LocalTime) readablePartial).getLocalMillis()));
        }
        return seconds(BaseSingleFieldPeriod.between(readablePartial, readablePartial2, ZERO));
    }
}
