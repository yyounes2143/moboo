package org.joda.time.format;

import java.io.IOException;
import java.io.Writer;
import java.util.Locale;
import org.joda.time.Chronology;
import org.joda.time.DateTimeZone;
import org.joda.time.ReadablePartial;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class DateTimePrinterInternalPrinter implements InternalPrinter {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final DateTimePrinter f13894Wwwwwwwwwwwwwwwwwwwwwwwww;

    public DateTimePrinterInternalPrinter(DateTimePrinter dateTimePrinter) {
        this.f13894Wwwwwwwwwwwwwwwwwwwwwwwww = dateTimePrinter;
    }

    public static InternalPrinter Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DateTimePrinter dateTimePrinter) {
        if (dateTimePrinter instanceof InternalPrinterDateTimePrinter) {
            return (InternalPrinter) dateTimePrinter;
        }
        if (dateTimePrinter == null) {
            return null;
        }
        return new DateTimePrinterInternalPrinter(dateTimePrinter);
    }

    @Override // org.joda.time.format.InternalPrinter
    public int estimatePrintedLength() {
        return this.f13894Wwwwwwwwwwwwwwwwwwwwwwwww.estimatePrintedLength();
    }

    @Override // org.joda.time.format.InternalPrinter
    public void printTo(Appendable appendable, long j, Chronology chronology, int i, DateTimeZone dateTimeZone, Locale locale) throws IOException {
        if (appendable instanceof StringBuffer) {
            this.f13894Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((StringBuffer) appendable, j, chronology, i, dateTimeZone, locale);
        } else if (appendable instanceof Writer) {
            this.f13894Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((Writer) appendable, j, chronology, i, dateTimeZone, locale);
        } else {
            StringBuffer stringBuffer = new StringBuffer(estimatePrintedLength());
            this.f13894Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(stringBuffer, j, chronology, i, dateTimeZone, locale);
            appendable.append(stringBuffer);
        }
    }

    @Override // org.joda.time.format.InternalPrinter
    public void printTo(Appendable appendable, ReadablePartial readablePartial, Locale locale) throws IOException {
        if (appendable instanceof StringBuffer) {
            this.f13894Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((StringBuffer) appendable, readablePartial, locale);
        } else if (appendable instanceof Writer) {
            this.f13894Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((Writer) appendable, readablePartial, locale);
        } else {
            StringBuffer stringBuffer = new StringBuffer(estimatePrintedLength());
            this.f13894Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(stringBuffer, readablePartial, locale);
            appendable.append(stringBuffer);
        }
    }
}
