package org.joda.time.convert;

import org.joda.time.Chronology;
import org.joda.time.DateTimeUtils;
import org.joda.time.ReadWritablePeriod;
import org.joda.time.ReadableDuration;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
class ReadableDurationConverter extends AbstractConverter implements DurationConverter, PeriodConverter {
    static final ReadableDurationConverter INSTANCE = new ReadableDurationConverter();

    @Override // org.joda.time.convert.Converter
    public Class<?> Wwwwwwwwwwwwwwwwwwwwwwwww() {
        return ReadableDuration.class;
    }

    @Override // org.joda.time.convert.PeriodConverter
    public void Wwwwwwwwwwwwwwwwwwwwwwwwww(ReadWritablePeriod readWritablePeriod, Object obj, Chronology chronology) {
        int[] iArr = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(chronology).get(readWritablePeriod, ((ReadableDuration) obj).getMillis());
        for (int i = 0; i < iArr.length; i++) {
            readWritablePeriod.setValue(i, iArr[i]);
        }
    }

    @Override // org.joda.time.convert.DurationConverter
    public long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Object obj) {
        return ((ReadableDuration) obj).getMillis();
    }
}
