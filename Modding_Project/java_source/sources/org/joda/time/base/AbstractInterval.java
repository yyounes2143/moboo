package org.joda.time.base;

import org.joda.time.DateTime;
import org.joda.time.DateTimeUtils;
import org.joda.time.Duration;
import org.joda.time.Interval;
import org.joda.time.MutableInterval;
import org.joda.time.Period;
import org.joda.time.PeriodType;
import org.joda.time.ReadableInstant;
import org.joda.time.ReadableInterval;
import org.joda.time.field.FieldUtils;
import org.joda.time.format.DateTimeFormatter;
import org.joda.time.format.ISODateTimeFormat;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public abstract class AbstractInterval implements ReadableInterval {
    public void checkInterval(long j, long j2) {
        if (j2 >= j) {
            return;
        }
        throw new IllegalArgumentException("The end instant must be greater than the start instant");
    }

    public boolean contains(long j) {
        return j >= getStartMillis() && j < getEndMillis();
    }

    public boolean containsNow() {
        return contains(DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ReadableInterval)) {
            return false;
        }
        ReadableInterval readableInterval = (ReadableInterval) obj;
        if (getStartMillis() == readableInterval.getStartMillis() && getEndMillis() == readableInterval.getEndMillis() && FieldUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(getChronology(), readableInterval.getChronology())) {
            return true;
        }
        return false;
    }

    @Override // org.joda.time.ReadableInterval
    public DateTime getEnd() {
        return new DateTime(getEndMillis(), getChronology());
    }

    @Override // org.joda.time.ReadableInterval
    public DateTime getStart() {
        return new DateTime(getStartMillis(), getChronology());
    }

    public int hashCode() {
        long startMillis = getStartMillis();
        long endMillis = getEndMillis();
        return ((((3007 + ((int) (startMillis ^ (startMillis >>> 32)))) * 31) + ((int) (endMillis ^ (endMillis >>> 32)))) * 31) + getChronology().hashCode();
    }

    public boolean isAfter(long j) {
        return getStartMillis() > j;
    }

    public boolean isAfterNow() {
        return isAfter(DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
    }

    public boolean isBefore(long j) {
        return getEndMillis() <= j;
    }

    public boolean isBeforeNow() {
        return isBefore(DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
    }

    public boolean isEqual(ReadableInterval readableInterval) {
        if (getStartMillis() == readableInterval.getStartMillis() && getEndMillis() == readableInterval.getEndMillis()) {
            return true;
        }
        return false;
    }

    public boolean overlaps(ReadableInterval readableInterval) {
        long startMillis = getStartMillis();
        long endMillis = getEndMillis();
        if (readableInterval == null) {
            long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (startMillis >= Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 || Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 >= endMillis) {
                return false;
            }
            return true;
        }
        long startMillis2 = readableInterval.getStartMillis();
        if (startMillis >= readableInterval.getEndMillis() || startMillis2 >= endMillis) {
            return false;
        }
        return true;
    }

    public Duration toDuration() {
        long durationMillis = toDurationMillis();
        if (durationMillis == 0) {
            return Duration.ZERO;
        }
        return new Duration(durationMillis);
    }

    @Override // org.joda.time.ReadableInterval
    public long toDurationMillis() {
        return FieldUtils.Wwwwwwwwwwwwwwwwwwwwwww(getEndMillis(), getStartMillis());
    }

    public Interval toInterval() {
        return new Interval(getStartMillis(), getEndMillis(), getChronology());
    }

    public MutableInterval toMutableInterval() {
        return new MutableInterval(getStartMillis(), getEndMillis(), getChronology());
    }

    public Period toPeriod() {
        return new Period(getStartMillis(), getEndMillis(), getChronology());
    }

    public String toString() {
        DateTimeFormatter Wwwwwwwwwwwwww2 = ISODateTimeFormat.Wwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwww(getChronology());
        StringBuffer stringBuffer = new StringBuffer(48);
        Wwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwww(stringBuffer, getStartMillis());
        stringBuffer.append('/');
        Wwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwww(stringBuffer, getEndMillis());
        return stringBuffer.toString();
    }

    public boolean isAfter(ReadableInstant readableInstant) {
        if (readableInstant == null) {
            return isAfterNow();
        }
        return isAfter(readableInstant.getMillis());
    }

    public boolean isBefore(ReadableInstant readableInstant) {
        if (readableInstant == null) {
            return isBeforeNow();
        }
        return isBefore(readableInstant.getMillis());
    }

    @Override // org.joda.time.ReadableInterval
    public Period toPeriod(PeriodType periodType) {
        return new Period(getStartMillis(), getEndMillis(), periodType, getChronology());
    }

    public boolean contains(ReadableInstant readableInstant) {
        if (readableInstant == null) {
            return containsNow();
        }
        return contains(readableInstant.getMillis());
    }

    public boolean isAfter(ReadableInterval readableInterval) {
        long endMillis;
        if (readableInterval == null) {
            endMillis = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        } else {
            endMillis = readableInterval.getEndMillis();
        }
        return getStartMillis() >= endMillis;
    }

    public boolean isBefore(ReadableInterval readableInterval) {
        if (readableInterval == null) {
            return isBeforeNow();
        }
        return isBefore(readableInterval.getStartMillis());
    }

    public boolean contains(ReadableInterval readableInterval) {
        if (readableInterval == null) {
            return containsNow();
        }
        long startMillis = readableInterval.getStartMillis();
        long endMillis = readableInterval.getEndMillis();
        long startMillis2 = getStartMillis();
        long endMillis2 = getEndMillis();
        return startMillis2 <= startMillis && startMillis < endMillis2 && endMillis <= endMillis2;
    }
}
