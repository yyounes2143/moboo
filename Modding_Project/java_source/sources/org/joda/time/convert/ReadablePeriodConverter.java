package org.joda.time.convert;

import org.joda.time.Chronology;
import org.joda.time.PeriodType;
import org.joda.time.ReadWritablePeriod;
import org.joda.time.ReadablePeriod;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
class ReadablePeriodConverter extends AbstractConverter implements PeriodConverter {
    static final ReadablePeriodConverter INSTANCE = new ReadablePeriodConverter();

    @Override // org.joda.time.convert.Converter
    public Class<?> Wwwwwwwwwwwwwwwwwwwwwwwww() {
        return ReadablePeriod.class;
    }

    @Override // org.joda.time.convert.PeriodConverter
    public void Wwwwwwwwwwwwwwwwwwwwwwwwww(ReadWritablePeriod readWritablePeriod, Object obj, Chronology chronology) {
        readWritablePeriod.setPeriod((ReadablePeriod) obj);
    }

    @Override // org.joda.time.convert.AbstractConverter, org.joda.time.convert.PeriodConverter
    public PeriodType Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Object obj) {
        return ((ReadablePeriod) obj).getPeriodType();
    }
}
