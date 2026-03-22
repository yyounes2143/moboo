package org.joda.time.convert;

import org.joda.time.Chronology;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
class LongConverter extends AbstractConverter implements InstantConverter, PartialConverter, DurationConverter {
    static final LongConverter INSTANCE = new LongConverter();

    @Override // org.joda.time.convert.Converter
    public Class<?> Wwwwwwwwwwwwwwwwwwwwwwwww() {
        return Long.class;
    }

    @Override // org.joda.time.convert.AbstractConverter, org.joda.time.convert.InstantConverter
    public long Wwwwwwwwwwwwwwwwwwwwwwwwwww(Object obj, Chronology chronology) {
        return ((Long) obj).longValue();
    }

    @Override // org.joda.time.convert.DurationConverter
    public long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Object obj) {
        return ((Long) obj).longValue();
    }
}
