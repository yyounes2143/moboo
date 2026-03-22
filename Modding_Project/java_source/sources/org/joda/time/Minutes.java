package org.joda.time;

import org.joda.convert.FromString;
import org.joda.convert.ToString;
import org.joda.time.base.BaseSingleFieldPeriod;
import org.joda.time.field.FieldUtils;
import org.joda.time.format.ISOPeriodFormat;
import org.joda.time.format.PeriodFormatter;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public final class Minutes extends BaseSingleFieldPeriod {
    private static final long serialVersionUID = 87525275727380863L;
    public static final Minutes ZERO = new Minutes(0);
    public static final Minutes ONE = new Minutes(1);
    public static final Minutes TWO = new Minutes(2);
    public static final Minutes THREE = new Minutes(3);
    public static final Minutes MAX_VALUE = new Minutes(Integer.MAX_VALUE);
    public static final Minutes MIN_VALUE = new Minutes(Integer.MIN_VALUE);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final PeriodFormatter f13622Wwwwwwwwwwwwwwwwwwwwwwwww = ISOPeriodFormat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwww(PeriodType.minutes());

    public Minutes(int i) {
        super(i);
    }

    public static Minutes minutes(int i) {
        if (i != Integer.MIN_VALUE) {
            if (i != Integer.MAX_VALUE) {
                if (i != 0) {
                    if (i != 1) {
                        if (i != 2) {
                            if (i != 3) {
                                return new Minutes(i);
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

    public static Minutes minutesBetween(ReadableInstant readableInstant, ReadableInstant readableInstant2) {
        return minutes(BaseSingleFieldPeriod.between(readableInstant, readableInstant2, DurationFieldType.minutes()));
    }

    public static Minutes minutesIn(ReadableInterval readableInterval) {
        if (readableInterval == null) {
            return ZERO;
        }
        return minutes(BaseSingleFieldPeriod.between(readableInterval.getStart(), readableInterval.getEnd(), DurationFieldType.minutes()));
    }

    @FromString
    public static Minutes parseMinutes(String str) {
        if (str == null) {
            return ZERO;
        }
        return minutes(f13622Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwww(str).getMinutes());
    }

    private Object readResolve() {
        return minutes(getValue());
    }

    public static Minutes standardMinutesIn(ReadablePeriod readablePeriod) {
        return minutes(BaseSingleFieldPeriod.standardPeriodIn(readablePeriod, 60000L));
    }

    public Minutes dividedBy(int i) {
        if (i == 1) {
            return this;
        }
        return minutes(getValue() / i);
    }

    @Override // org.joda.time.base.BaseSingleFieldPeriod
    public DurationFieldType getFieldType() {
        return DurationFieldType.minutes();
    }

    public int getMinutes() {
        return getValue();
    }

    @Override // org.joda.time.base.BaseSingleFieldPeriod, org.joda.time.ReadablePeriod
    public PeriodType getPeriodType() {
        return PeriodType.minutes();
    }

    public boolean isGreaterThan(Minutes minutes) {
        if (minutes == null) {
            if (getValue() <= 0) {
                return false;
            }
            return true;
        } else if (getValue() <= minutes.getValue()) {
            return false;
        } else {
            return true;
        }
    }

    public boolean isLessThan(Minutes minutes) {
        if (minutes == null) {
            if (getValue() >= 0) {
                return false;
            }
            return true;
        } else if (getValue() >= minutes.getValue()) {
            return false;
        } else {
            return true;
        }
    }

    public Minutes minus(int i) {
        return plus(FieldUtils.Wwwwwwwwwwwwwwwwwwwwwwww(i));
    }

    public Minutes multipliedBy(int i) {
        return minutes(FieldUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwww(getValue(), i));
    }

    public Minutes negated() {
        return minutes(FieldUtils.Wwwwwwwwwwwwwwwwwwwwwwww(getValue()));
    }

    public Minutes plus(int i) {
        return i == 0 ? this : minutes(FieldUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(getValue(), i));
    }

    public Days toStandardDays() {
        return Days.days(getValue() / 1440);
    }

    public Duration toStandardDuration() {
        return new Duration(getValue() * 60000);
    }

    public Hours toStandardHours() {
        return Hours.hours(getValue() / 60);
    }

    public Seconds toStandardSeconds() {
        return Seconds.seconds(FieldUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwww(getValue(), 60));
    }

    public Weeks toStandardWeeks() {
        return Weeks.weeks(getValue() / 10080);
    }

    @ToString
    public String toString() {
        return "PT" + String.valueOf(getValue()) + "M";
    }

    public Minutes minus(Minutes minutes) {
        return minutes == null ? this : minus(minutes.getValue());
    }

    public Minutes plus(Minutes minutes) {
        return minutes == null ? this : plus(minutes.getValue());
    }

    public static Minutes minutesBetween(ReadablePartial readablePartial, ReadablePartial readablePartial2) {
        if ((readablePartial instanceof LocalTime) && (readablePartial2 instanceof LocalTime)) {
            return minutes(DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(readablePartial.getChronology()).minutes().getDifference(((LocalTime) readablePartial2).getLocalMillis(), ((LocalTime) readablePartial).getLocalMillis()));
        }
        return minutes(BaseSingleFieldPeriod.between(readablePartial, readablePartial2, ZERO));
    }
}
