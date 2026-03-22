package org.joda.time.format;

import java.io.IOException;
import java.io.Writer;
import java.util.Locale;
import org.joda.time.Chronology;
import org.joda.time.DateTimeZone;
import org.joda.time.ReadablePartial;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public interface DateTimePrinter {
    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(StringBuffer stringBuffer, ReadablePartial readablePartial, Locale locale);

    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Writer writer, ReadablePartial readablePartial, Locale locale) throws IOException;

    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(StringBuffer stringBuffer, long j, Chronology chronology, int i, DateTimeZone dateTimeZone, Locale locale);

    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Writer writer, long j, Chronology chronology, int i, DateTimeZone dateTimeZone, Locale locale) throws IOException;

    int estimatePrintedLength();
}
