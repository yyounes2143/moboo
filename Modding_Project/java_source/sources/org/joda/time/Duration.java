package org.joda.time;

import com.vungle.ads.internal.signals.SignalManager;
import java.io.Serializable;
import java.math.RoundingMode;
import org.joda.convert.FromString;
import org.joda.time.base.BaseDuration;
import org.joda.time.field.FieldUtils;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public final class Duration extends BaseDuration implements ReadableDuration, Serializable {
    public static final Duration ZERO = new Duration(0);
    private static final long serialVersionUID = 2471658376918L;

    public Duration(long j) {
        super(j);
    }

    public static Duration millis(long j) {
        if (j == 0) {
            return ZERO;
        }
        return new Duration(j);
    }

    @FromString
    public static Duration parse(String str) {
        return new Duration(str);
    }

    public static Duration standardDays(long j) {
        if (j == 0) {
            return ZERO;
        }
        return new Duration(FieldUtils.Wwwwwwwwwwwwwwwwwwwwwwwwww(j, 86400000));
    }

    public static Duration standardHours(long j) {
        if (j == 0) {
            return ZERO;
        }
        return new Duration(FieldUtils.Wwwwwwwwwwwwwwwwwwwwwwwwww(j, 3600000));
    }

    public static Duration standardMinutes(long j) {
        if (j == 0) {
            return ZERO;
        }
        return new Duration(FieldUtils.Wwwwwwwwwwwwwwwwwwwwwwwwww(j, 60000));
    }

    public static Duration standardSeconds(long j) {
        if (j == 0) {
            return ZERO;
        }
        return new Duration(FieldUtils.Wwwwwwwwwwwwwwwwwwwwwwwwww(j, 1000));
    }

    public Duration abs() {
        if (getMillis() < 0) {
            return negated();
        }
        return this;
    }

    public Duration dividedBy(long j) {
        return j == 1 ? this : new Duration(FieldUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(getMillis(), j));
    }

    public long getStandardDays() {
        return getMillis() / SignalManager.TWENTY_FOUR_HOURS_MILLIS;
    }

    public long getStandardHours() {
        return getMillis() / 3600000;
    }

    public long getStandardMinutes() {
        return getMillis() / 60000;
    }

    public long getStandardSeconds() {
        return getMillis() / 1000;
    }

    public Duration minus(long j) {
        return withDurationAdded(j, -1);
    }

    public Duration multipliedBy(long j) {
        if (j == 1) {
            return this;
        }
        return new Duration(FieldUtils.Wwwwwwwwwwwwwwwwwwwwwwwww(getMillis(), j));
    }

    public Duration negated() {
        if (getMillis() != Long.MIN_VALUE) {
            return new Duration(-getMillis());
        }
        throw new ArithmeticException("Negation of this duration would overflow");
    }

    public Duration plus(long j) {
        return withDurationAdded(j, 1);
    }

    public Days toStandardDays() {
        return Days.days(FieldUtils.Wwwwwwwwwwwwwwwwwwwwww(getStandardDays()));
    }

    public Hours toStandardHours() {
        return Hours.hours(FieldUtils.Wwwwwwwwwwwwwwwwwwwwww(getStandardHours()));
    }

    public Minutes toStandardMinutes() {
        return Minutes.minutes(FieldUtils.Wwwwwwwwwwwwwwwwwwwwww(getStandardMinutes()));
    }

    public Seconds toStandardSeconds() {
        return Seconds.seconds(FieldUtils.Wwwwwwwwwwwwwwwwwwwwww(getStandardSeconds()));
    }

    public Duration withDurationAdded(long j, int i) {
        if (j == 0 || i == 0) {
            return this;
        }
        return new Duration(FieldUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(getMillis(), FieldUtils.Wwwwwwwwwwwwwwwwwwwwwwwwww(j, i)));
    }

    public Duration withMillis(long j) {
        if (j == getMillis()) {
            return this;
        }
        return new Duration(j);
    }

    public Duration(long j, long j2) {
        super(j, j2);
    }

    public Duration dividedBy(long j, RoundingMode roundingMode) {
        return j == 1 ? this : new Duration(FieldUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(getMillis(), j, roundingMode));
    }

    public Duration minus(ReadableDuration readableDuration) {
        return readableDuration == null ? this : withDurationAdded(readableDuration.getMillis(), -1);
    }

    public Duration plus(ReadableDuration readableDuration) {
        return readableDuration == null ? this : withDurationAdded(readableDuration.getMillis(), 1);
    }

    public Duration(ReadableInstant readableInstant, ReadableInstant readableInstant2) {
        super(readableInstant, readableInstant2);
    }

    public Duration(Object obj) {
        super(obj);
    }

    public Duration withDurationAdded(ReadableDuration readableDuration, int i) {
        return (readableDuration == null || i == 0) ? this : withDurationAdded(readableDuration.getMillis(), i);
    }

    @Override // org.joda.time.base.AbstractDuration
    public Duration toDuration() {
        return this;
    }
}
