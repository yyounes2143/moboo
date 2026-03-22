package org.joda.time.base;

import java.io.Serializable;
import org.joda.time.Chronology;
import org.joda.time.DateTimeUtils;
import org.joda.time.DateTimeZone;
import org.joda.time.ReadableDateTime;
import org.joda.time.chrono.ISOChronology;
import org.joda.time.convert.ConverterManager;
import org.joda.time.convert.InstantConverter;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public abstract class BaseDateTime extends AbstractDateTime implements ReadableDateTime, Serializable {
    private static final long serialVersionUID = -6728882245981L;
    private volatile Chronology iChronology;
    private volatile long iMillis;

    public BaseDateTime() {
        this(DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), ISOChronology.getInstance());
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (this.iMillis != Long.MIN_VALUE && this.iMillis != Long.MAX_VALUE) {
            return;
        }
        this.iChronology = this.iChronology.withUTC();
    }

    public Chronology checkChronology(Chronology chronology) {
        return DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(chronology);
    }

    @Override // org.joda.time.ReadableInstant
    public Chronology getChronology() {
        return this.iChronology;
    }

    @Override // org.joda.time.ReadableInstant
    public long getMillis() {
        return this.iMillis;
    }

    public void setChronology(Chronology chronology) {
        this.iChronology = checkChronology(chronology);
    }

    public void setMillis(long j) {
        this.iMillis = checkInstant(j, this.iChronology);
    }

    public BaseDateTime(DateTimeZone dateTimeZone) {
        this(DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), ISOChronology.getInstance(dateTimeZone));
    }

    public BaseDateTime(Chronology chronology) {
        this(DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), chronology);
    }

    public BaseDateTime(long j) {
        this(j, ISOChronology.getInstance());
    }

    public BaseDateTime(long j, DateTimeZone dateTimeZone) {
        this(j, ISOChronology.getInstance(dateTimeZone));
    }

    public BaseDateTime(long j, Chronology chronology) {
        this.iChronology = checkChronology(chronology);
        this.iMillis = checkInstant(j, this.iChronology);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public BaseDateTime(Object obj, DateTimeZone dateTimeZone) {
        InstantConverter Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = ConverterManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obj);
        Chronology checkChronology = checkChronology(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obj, dateTimeZone));
        this.iChronology = checkChronology;
        this.iMillis = checkInstant(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwww(obj, checkChronology), checkChronology);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public BaseDateTime(Object obj, Chronology chronology) {
        InstantConverter Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = ConverterManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obj);
        this.iChronology = checkChronology(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obj, chronology));
        this.iMillis = checkInstant(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwww(obj, chronology), this.iChronology);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public BaseDateTime(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        this(i, i2, i3, i4, i5, i6, i7, ISOChronology.getInstance());
    }

    public BaseDateTime(int i, int i2, int i3, int i4, int i5, int i6, int i7, DateTimeZone dateTimeZone) {
        this(i, i2, i3, i4, i5, i6, i7, ISOChronology.getInstance(dateTimeZone));
    }

    public BaseDateTime(int i, int i2, int i3, int i4, int i5, int i6, int i7, Chronology chronology) {
        this.iChronology = checkChronology(chronology);
        this.iMillis = checkInstant(this.iChronology.getDateTimeMillis(i, i2, i3, i4, i5, i6, i7), this.iChronology);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public long checkInstant(long j, Chronology chronology) {
        return j;
    }
}
