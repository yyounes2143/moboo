package org.joda.time.convert;

import org.joda.time.Chronology;
import org.joda.time.DateTimeUtils;
import org.joda.time.DateTimeZone;
import org.joda.time.ReadablePartial;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
class ReadablePartialConverter extends AbstractConverter implements PartialConverter {
    static final ReadablePartialConverter INSTANCE = new ReadablePartialConverter();

    @Override // org.joda.time.convert.Converter
    public Class<?> Wwwwwwwwwwwwwwwwwwwwwwwww() {
        return ReadablePartial.class;
    }

    @Override // org.joda.time.convert.AbstractConverter, org.joda.time.convert.PartialConverter
    public int[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ReadablePartial readablePartial, Object obj, Chronology chronology) {
        ReadablePartial readablePartial2 = (ReadablePartial) obj;
        int size = readablePartial.size();
        int[] iArr = new int[size];
        for (int i = 0; i < size; i++) {
            iArr[i] = readablePartial2.get(readablePartial.getFieldType(i));
        }
        chronology.validate(readablePartial, iArr);
        return iArr;
    }

    @Override // org.joda.time.convert.AbstractConverter, org.joda.time.convert.InstantConverter, org.joda.time.convert.PartialConverter
    public Chronology Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Object obj, DateTimeZone dateTimeZone) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obj, null).withZone(dateTimeZone);
    }

    @Override // org.joda.time.convert.AbstractConverter, org.joda.time.convert.InstantConverter, org.joda.time.convert.PartialConverter
    public Chronology Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Object obj, Chronology chronology) {
        if (chronology == null) {
            return DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(((ReadablePartial) obj).getChronology());
        }
        return chronology;
    }
}
