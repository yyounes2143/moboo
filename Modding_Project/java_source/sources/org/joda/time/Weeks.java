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
public final class Weeks extends BaseSingleFieldPeriod {
    private static final long serialVersionUID = 87525275727380866L;
    public static final Weeks ZERO = new Weeks(0);
    public static final Weeks ONE = new Weeks(1);
    public static final Weeks TWO = new Weeks(2);
    public static final Weeks THREE = new Weeks(3);
    public static final Weeks MAX_VALUE = new Weeks(Integer.MAX_VALUE);
    public static final Weeks MIN_VALUE = new Weeks(Integer.MIN_VALUE);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final PeriodFormatter f13647Wwwwwwwwwwwwwwwwwwwwwwwww = ISOPeriodFormat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwww(PeriodType.weeks());

    public Weeks(int i) {
        super(i);
    }

    @FromString
    public static Weeks parseWeeks(String str) {
        if (str == null) {
            return ZERO;
        }
        return weeks(f13647Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww(str).getWeeks());
    }

    private Object readResolve() {
        return weeks(getValue());
    }

    public static Weeks standardWeeksIn(ReadablePeriod readablePeriod) {
        return weeks(BaseSingleFieldPeriod.standardPeriodIn(readablePeriod, 604800000L));
    }

    public static Weeks weeks(int i) {
        if (i != Integer.MIN_VALUE) {
            if (i != Integer.MAX_VALUE) {
                if (i != 0) {
                    if (i != 1) {
                        if (i != 2) {
                            if (i != 3) {
                                return new Weeks(i);
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

    public static Weeks weeksBetween(ReadableInstant readableInstant, ReadableInstant readableInstant2) {
        return weeks(BaseSingleFieldPeriod.between(readableInstant, readableInstant2, DurationFieldType.weeks()));
    }

    public static Weeks weeksIn(ReadableInterval readableInterval) {
        if (readableInterval == null) {
            return ZERO;
        }
        return weeks(BaseSingleFieldPeriod.between(readableInterval.getStart(), readableInterval.getEnd(), DurationFieldType.weeks()));
    }

    public Weeks dividedBy(int i) {
        if (i == 1) {
            return this;
        }
        return weeks(getValue() / i);
    }

    @Override // org.joda.time.base.BaseSingleFieldPeriod
    public DurationFieldType getFieldType() {
        return DurationFieldType.weeks();
    }

    @Override // org.joda.time.base.BaseSingleFieldPeriod, org.joda.time.ReadablePeriod
    public PeriodType getPeriodType() {
        return PeriodType.weeks();
    }

    public int getWeeks() {
        return getValue();
    }

    public boolean isGreaterThan(Weeks weeks) {
        if (weeks == null) {
            if (getValue() <= 0) {
                return false;
            }
            return true;
        } else if (getValue() <= weeks.getValue()) {
            return false;
        } else {
            return true;
        }
    }

    public boolean isLessThan(Weeks weeks) {
        if (weeks == null) {
            if (getValue() >= 0) {
                return false;
            }
            return true;
        } else if (getValue() >= weeks.getValue()) {
            return false;
        } else {
            return true;
        }
    }

    public Weeks minus(int i) {
        return plus(FieldUtils.Wwwwwwwwwwwwwwwwwwwwwwww(i));
    }

    public Weeks multipliedBy(int i) {
        return weeks(FieldUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwww(getValue(), i));
    }

    public Weeks negated() {
        return weeks(FieldUtils.Wwwwwwwwwwwwwwwwwwwwwwww(getValue()));
    }

    public Weeks plus(int i) {
        return i == 0 ? this : weeks(FieldUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(getValue(), i));
    }

    public Days toStandardDays() {
        return Days.days(FieldUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwww(getValue(), 7));
    }

    public Duration toStandardDuration() {
        return new Duration(getValue() * 604800000);
    }

    public Hours toStandardHours() {
        return Hours.hours(FieldUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwww(getValue(), 168));
    }

    public Minutes toStandardMinutes() {
        return Minutes.minutes(FieldUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwww(getValue(), 10080));
    }

    public Seconds toStandardSeconds() {
        return Seconds.seconds(FieldUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwww(getValue(), 604800));
    }

    @ToString
    public String toString() {
        return "P" + String.valueOf(getValue()) + ExifInterface.LONGITUDE_WEST;
    }

    public Weeks minus(Weeks weeks) {
        return weeks == null ? this : minus(weeks.getValue());
    }

    public Weeks plus(Weeks weeks) {
        return weeks == null ? this : plus(weeks.getValue());
    }

    public static Weeks weeksBetween(ReadablePartial readablePartial, ReadablePartial readablePartial2) {
        if ((readablePartial instanceof LocalDate) && (readablePartial2 instanceof LocalDate)) {
            return weeks(DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(readablePartial.getChronology()).weeks().getDifference(((LocalDate) readablePartial2).getLocalMillis(), ((LocalDate) readablePartial).getLocalMillis()));
        }
        return weeks(BaseSingleFieldPeriod.between(readablePartial, readablePartial2, ZERO));
    }
}
