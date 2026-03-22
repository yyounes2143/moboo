package org.joda.time.convert;

import org.joda.time.Chronology;
import org.joda.time.DateTimeUtils;
import org.joda.time.DateTimeZone;
import org.joda.time.ReadableInstant;
import org.joda.time.chrono.ISOChronology;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
class ReadableInstantConverter extends AbstractConverter implements InstantConverter, PartialConverter {
    static final ReadableInstantConverter INSTANCE = new ReadableInstantConverter();

    @Override // org.joda.time.convert.Converter
    public Class<?> Wwwwwwwwwwwwwwwwwwwwwwwww() {
        return ReadableInstant.class;
    }

    @Override // org.joda.time.convert.AbstractConverter, org.joda.time.convert.InstantConverter
    public long Wwwwwwwwwwwwwwwwwwwwwwwwwww(Object obj, Chronology chronology) {
        return ((ReadableInstant) obj).getMillis();
    }

    @Override // org.joda.time.convert.AbstractConverter, org.joda.time.convert.InstantConverter, org.joda.time.convert.PartialConverter
    public Chronology Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Object obj, DateTimeZone dateTimeZone) {
        Chronology chronology = ((ReadableInstant) obj).getChronology();
        if (chronology == null) {
            return ISOChronology.getInstance(dateTimeZone);
        }
        if (chronology.getZone() != dateTimeZone) {
            Chronology withZone = chronology.withZone(dateTimeZone);
            if (withZone == null) {
                return ISOChronology.getInstance(dateTimeZone);
            }
            return withZone;
        }
        return chronology;
    }

    @Override // org.joda.time.convert.AbstractConverter, org.joda.time.convert.InstantConverter, org.joda.time.convert.PartialConverter
    public Chronology Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Object obj, Chronology chronology) {
        if (chronology == null) {
            return DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(((ReadableInstant) obj).getChronology());
        }
        return chronology;
    }
}
