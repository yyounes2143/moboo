package org.joda.time.convert;

import java.util.Date;
import org.joda.time.Chronology;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
final class DateConverter extends AbstractConverter implements InstantConverter, PartialConverter {
    static final DateConverter INSTANCE = new DateConverter();

    @Override // org.joda.time.convert.Converter
    public Class<?> Wwwwwwwwwwwwwwwwwwwwwwwww() {
        return Date.class;
    }

    @Override // org.joda.time.convert.AbstractConverter, org.joda.time.convert.InstantConverter
    public long Wwwwwwwwwwwwwwwwwwwwwwwwwww(Object obj, Chronology chronology) {
        return ((Date) obj).getTime();
    }
}
