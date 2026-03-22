package org.joda.time.base;

import java.io.Serializable;
import org.joda.time.Chronology;
import org.joda.time.DateTimeUtils;
import org.joda.time.MutableInterval;
import org.joda.time.ReadWritableInterval;
import org.joda.time.ReadableDuration;
import org.joda.time.ReadableInstant;
import org.joda.time.ReadableInterval;
import org.joda.time.ReadablePeriod;
import org.joda.time.chrono.ISOChronology;
import org.joda.time.convert.ConverterManager;
import org.joda.time.convert.IntervalConverter;
import org.joda.time.field.FieldUtils;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public abstract class BaseInterval extends AbstractInterval implements ReadableInterval, Serializable {
    private static final long serialVersionUID = 576586928732749278L;
    private volatile Chronology iChronology;
    private volatile long iEndMillis;
    private volatile long iStartMillis;

    public BaseInterval(long j, long j2, Chronology chronology) {
        this.iChronology = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(chronology);
        checkInterval(j, j2);
        this.iStartMillis = j;
        this.iEndMillis = j2;
    }

    @Override // org.joda.time.ReadableInterval
    public Chronology getChronology() {
        return this.iChronology;
    }

    @Override // org.joda.time.ReadableInterval
    public long getEndMillis() {
        return this.iEndMillis;
    }

    @Override // org.joda.time.ReadableInterval
    public long getStartMillis() {
        return this.iStartMillis;
    }

    public void setInterval(long j, long j2, Chronology chronology) {
        checkInterval(j, j2);
        this.iStartMillis = j;
        this.iEndMillis = j2;
        this.iChronology = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(chronology);
    }

    public BaseInterval(ReadableInstant readableInstant, ReadableInstant readableInstant2) {
        if (readableInstant == null && readableInstant2 == null) {
            long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            this.iEndMillis = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            this.iStartMillis = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            this.iChronology = ISOChronology.getInstance();
            return;
        }
        this.iChronology = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(readableInstant);
        this.iStartMillis = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwww(readableInstant);
        this.iEndMillis = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwww(readableInstant2);
        checkInterval(this.iStartMillis, this.iEndMillis);
    }

    public BaseInterval(ReadableInstant readableInstant, ReadableDuration readableDuration) {
        this.iChronology = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(readableInstant);
        this.iStartMillis = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwww(readableInstant);
        this.iEndMillis = FieldUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.iStartMillis, DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(readableDuration));
        checkInterval(this.iStartMillis, this.iEndMillis);
    }

    public BaseInterval(ReadableDuration readableDuration, ReadableInstant readableInstant) {
        this.iChronology = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(readableInstant);
        this.iEndMillis = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwww(readableInstant);
        this.iStartMillis = FieldUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.iEndMillis, -DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(readableDuration));
        checkInterval(this.iStartMillis, this.iEndMillis);
    }

    public BaseInterval(ReadableInstant readableInstant, ReadablePeriod readablePeriod) {
        Chronology Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(readableInstant);
        this.iChronology = Wwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        this.iStartMillis = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwww(readableInstant);
        if (readablePeriod == null) {
            this.iEndMillis = this.iStartMillis;
        } else {
            this.iEndMillis = Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.add(readablePeriod, this.iStartMillis, 1);
        }
        checkInterval(this.iStartMillis, this.iEndMillis);
    }

    public BaseInterval(ReadablePeriod readablePeriod, ReadableInstant readableInstant) {
        Chronology Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(readableInstant);
        this.iChronology = Wwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        this.iEndMillis = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwww(readableInstant);
        if (readablePeriod == null) {
            this.iStartMillis = this.iEndMillis;
        } else {
            this.iStartMillis = Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.add(readablePeriod, this.iEndMillis, -1);
        }
        checkInterval(this.iStartMillis, this.iEndMillis);
    }

    public BaseInterval(Object obj, Chronology chronology) {
        IntervalConverter Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = ConverterManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obj);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(obj, chronology)) {
            ReadableInterval readableInterval = (ReadableInterval) obj;
            this.iChronology = chronology == null ? readableInterval.getChronology() : chronology;
            this.iStartMillis = readableInterval.getStartMillis();
            this.iEndMillis = readableInterval.getEndMillis();
        } else if (this instanceof ReadWritableInterval) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww((ReadWritableInterval) this, obj, chronology);
        } else {
            MutableInterval mutableInterval = new MutableInterval();
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(mutableInterval, obj, chronology);
            this.iChronology = mutableInterval.getChronology();
            this.iStartMillis = mutableInterval.getStartMillis();
            this.iEndMillis = mutableInterval.getEndMillis();
        }
        checkInterval(this.iStartMillis, this.iEndMillis);
    }
}
