package org.joda.time;

import java.io.Serializable;
import org.joda.time.base.BaseInterval;
import org.joda.time.chrono.ISOChronology;
import org.joda.time.format.DateTimeFormatter;
import org.joda.time.format.ISODateTimeFormat;
import org.joda.time.format.ISOPeriodFormat;
import org.joda.time.format.PeriodFormatter;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public final class Interval extends BaseInterval implements ReadableInterval, Serializable {
    private static final long serialVersionUID = 4922451897541386752L;

    public Interval(long j, long j2) {
        super(j, j2, null);
    }

    public static Interval parse(String str) {
        return new Interval(str);
    }

    public static Interval parseWithOffset(String str) {
        DateTime dateTime;
        int indexOf = str.indexOf(47);
        if (indexOf >= 0) {
            String substring = str.substring(0, indexOf);
            if (substring.length() > 0) {
                String substring2 = str.substring(indexOf + 1);
                if (substring2.length() > 0) {
                    DateTimeFormatter Wwwwwwwwwwww2 = ISODateTimeFormat.Wwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwww();
                    PeriodFormatter Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = ISOPeriodFormat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    char charAt = substring.charAt(0);
                    Period period = null;
                    if (charAt != 'P' && charAt != 'p') {
                        dateTime = Wwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(substring);
                    } else {
                        period = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwww(PeriodType.standard()).Wwwwwwwwwwwwwwwwwwwwwwwwww(substring);
                        dateTime = null;
                    }
                    char charAt2 = substring2.charAt(0);
                    if (charAt2 != 'P' && charAt2 != 'p') {
                        DateTime Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(substring2);
                        if (period != null) {
                            return new Interval(period, Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                        }
                        return new Interval(dateTime, Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                    } else if (period == null) {
                        return new Interval(dateTime, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwww(PeriodType.standard()).Wwwwwwwwwwwwwwwwwwwwwwwwww(substring2));
                    } else {
                        throw new IllegalArgumentException("Interval composed of two durations: " + str);
                    }
                }
                throw new IllegalArgumentException("Format invalid: " + str);
            }
            throw new IllegalArgumentException("Format invalid: " + str);
        }
        throw new IllegalArgumentException("Format requires a '/' separator: " + str);
    }

    public boolean abuts(ReadableInterval readableInterval) {
        if (readableInterval == null) {
            long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (getStartMillis() == Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 || getEndMillis() == Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
                return true;
            }
            return false;
        } else if (readableInterval.getEndMillis() == getStartMillis() || getEndMillis() == readableInterval.getStartMillis()) {
            return true;
        } else {
            return false;
        }
    }

    public Interval gap(ReadableInterval readableInterval) {
        ReadableInterval Wwwwwwwwwwwwwwwwwwwwwww2 = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwww(readableInterval);
        long startMillis = Wwwwwwwwwwwwwwwwwwwwwww2.getStartMillis();
        long endMillis = Wwwwwwwwwwwwwwwwwwwwwww2.getEndMillis();
        long startMillis2 = getStartMillis();
        long endMillis2 = getEndMillis();
        if (startMillis2 > endMillis) {
            return new Interval(endMillis, startMillis2, getChronology());
        }
        if (startMillis > endMillis2) {
            return new Interval(endMillis2, startMillis, getChronology());
        }
        return null;
    }

    public Interval overlap(ReadableInterval readableInterval) {
        ReadableInterval Wwwwwwwwwwwwwwwwwwwwwww2 = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwww(readableInterval);
        if (!overlaps(Wwwwwwwwwwwwwwwwwwwwwww2)) {
            return null;
        }
        return new Interval(Math.max(getStartMillis(), Wwwwwwwwwwwwwwwwwwwwwww2.getStartMillis()), Math.min(getEndMillis(), Wwwwwwwwwwwwwwwwwwwwwww2.getEndMillis()), getChronology());
    }

    public Interval withChronology(Chronology chronology) {
        if (getChronology() == chronology) {
            return this;
        }
        return new Interval(getStartMillis(), getEndMillis(), chronology);
    }

    public Interval withDurationAfterStart(ReadableDuration readableDuration) {
        long Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(readableDuration);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == toDurationMillis()) {
            return this;
        }
        Chronology chronology = getChronology();
        long startMillis = getStartMillis();
        return new Interval(startMillis, chronology.add(startMillis, Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2, 1), chronology);
    }

    public Interval withDurationBeforeEnd(ReadableDuration readableDuration) {
        long Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(readableDuration);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == toDurationMillis()) {
            return this;
        }
        Chronology chronology = getChronology();
        long endMillis = getEndMillis();
        return new Interval(chronology.add(endMillis, Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2, -1), endMillis, chronology);
    }

    public Interval withEnd(ReadableInstant readableInstant) {
        return withEndMillis(DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwww(readableInstant));
    }

    public Interval withEndMillis(long j) {
        if (j == getEndMillis()) {
            return this;
        }
        return new Interval(getStartMillis(), j, getChronology());
    }

    public Interval withPeriodAfterStart(ReadablePeriod readablePeriod) {
        if (readablePeriod == null) {
            return withDurationAfterStart(null);
        }
        Chronology chronology = getChronology();
        long startMillis = getStartMillis();
        return new Interval(startMillis, chronology.add(readablePeriod, startMillis, 1), chronology);
    }

    public Interval withPeriodBeforeEnd(ReadablePeriod readablePeriod) {
        if (readablePeriod == null) {
            return withDurationBeforeEnd(null);
        }
        Chronology chronology = getChronology();
        long endMillis = getEndMillis();
        return new Interval(chronology.add(readablePeriod, endMillis, -1), endMillis, chronology);
    }

    public Interval withStart(ReadableInstant readableInstant) {
        return withStartMillis(DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwww(readableInstant));
    }

    public Interval withStartMillis(long j) {
        if (j == getStartMillis()) {
            return this;
        }
        return new Interval(j, getEndMillis(), getChronology());
    }

    public Interval(long j, long j2, DateTimeZone dateTimeZone) {
        super(j, j2, ISOChronology.getInstance(dateTimeZone));
    }

    public Interval(long j, long j2, Chronology chronology) {
        super(j, j2, chronology);
    }

    public Interval(ReadableInstant readableInstant, ReadableInstant readableInstant2) {
        super(readableInstant, readableInstant2);
    }

    public Interval(ReadableInstant readableInstant, ReadableDuration readableDuration) {
        super(readableInstant, readableDuration);
    }

    public Interval(ReadableDuration readableDuration, ReadableInstant readableInstant) {
        super(readableDuration, readableInstant);
    }

    public Interval(ReadableInstant readableInstant, ReadablePeriod readablePeriod) {
        super(readableInstant, readablePeriod);
    }

    public Interval(ReadablePeriod readablePeriod, ReadableInstant readableInstant) {
        super(readablePeriod, readableInstant);
    }

    public Interval(Object obj) {
        super(obj, (Chronology) null);
    }

    public Interval(Object obj, Chronology chronology) {
        super(obj, chronology);
    }

    @Override // org.joda.time.base.AbstractInterval
    public Interval toInterval() {
        return this;
    }
}
