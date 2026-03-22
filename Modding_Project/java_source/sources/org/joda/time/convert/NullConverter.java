package org.joda.time.convert;

import org.joda.time.Chronology;
import org.joda.time.DateTimeUtils;
import org.joda.time.ReadWritableInterval;
import org.joda.time.ReadWritablePeriod;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
class NullConverter extends AbstractConverter implements InstantConverter, PartialConverter, DurationConverter, PeriodConverter, IntervalConverter {
    static final NullConverter INSTANCE = new NullConverter();

    @Override // org.joda.time.convert.Converter
    public Class<?> Wwwwwwwwwwwwwwwwwwwwwwwww() {
        return null;
    }

    @Override // org.joda.time.convert.PeriodConverter
    public void Wwwwwwwwwwwwwwwwwwwwwwwwww(ReadWritablePeriod readWritablePeriod, Object obj, Chronology chronology) {
        readWritablePeriod.setPeriod(null);
    }

    @Override // org.joda.time.convert.IntervalConverter
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(ReadWritableInterval readWritableInterval, Object obj, Chronology chronology) {
        readWritableInterval.setChronology(chronology);
        long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        readWritableInterval.setInterval(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
    }

    @Override // org.joda.time.convert.DurationConverter
    public long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Object obj) {
        return 0L;
    }
}
