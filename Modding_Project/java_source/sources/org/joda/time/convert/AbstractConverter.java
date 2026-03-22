package org.joda.time.convert;

import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.joda.time.Chronology;
import org.joda.time.DateTimeUtils;
import org.joda.time.DateTimeZone;
import org.joda.time.PeriodType;
import org.joda.time.ReadablePartial;
import org.joda.time.chrono.ISOChronology;
import org.joda.time.format.DateTimeFormatter;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public abstract class AbstractConverter implements Converter {
    public int[] Wwwwwwwwwwwwwwwwwwwwwwww(ReadablePartial readablePartial, Object obj, Chronology chronology, DateTimeFormatter dateTimeFormatter) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(readablePartial, obj, chronology);
    }

    public long Wwwwwwwwwwwwwwwwwwwwwwwwwww(Object obj, Chronology chronology) {
        return DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Object obj, Chronology chronology) {
        return false;
    }

    public int[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ReadablePartial readablePartial, Object obj, Chronology chronology) {
        return chronology.get(readablePartial, Wwwwwwwwwwwwwwwwwwwwwwwwwww(obj, chronology));
    }

    public PeriodType Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Object obj) {
        return PeriodType.standard();
    }

    public Chronology Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Object obj, DateTimeZone dateTimeZone) {
        return ISOChronology.getInstance(dateTimeZone);
    }

    public Chronology Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Object obj, Chronology chronology) {
        return DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(chronology);
    }

    public String toString() {
        String name;
        StringBuilder sb = new StringBuilder();
        sb.append("Converter[");
        if (Wwwwwwwwwwwwwwwwwwwwwwwww() == null) {
            name = AbstractJsonLexerKt.NULL;
        } else {
            name = Wwwwwwwwwwwwwwwwwwwwwwwww().getName();
        }
        sb.append(name);
        sb.append("]");
        return sb.toString();
    }
}
