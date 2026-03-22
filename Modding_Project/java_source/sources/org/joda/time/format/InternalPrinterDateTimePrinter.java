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
public class InternalPrinterDateTimePrinter implements DateTimePrinter, InternalPrinter {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final InternalPrinter f13949Wwwwwwwwwwwwwwwwwwwwwwwww;

    @Override // org.joda.time.format.DateTimePrinter
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(StringBuffer stringBuffer, ReadablePartial readablePartial, Locale locale) {
        try {
            this.f13949Wwwwwwwwwwwwwwwwwwwwwwwww.printTo(stringBuffer, readablePartial, locale);
        } catch (IOException unused) {
        }
    }

    @Override // org.joda.time.format.DateTimePrinter
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Writer writer, ReadablePartial readablePartial, Locale locale) throws IOException {
        this.f13949Wwwwwwwwwwwwwwwwwwwwwwwww.printTo(writer, readablePartial, locale);
    }

    @Override // org.joda.time.format.DateTimePrinter
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(StringBuffer stringBuffer, long j, Chronology chronology, int i, DateTimeZone dateTimeZone, Locale locale) {
        try {
            this.f13949Wwwwwwwwwwwwwwwwwwwwwwwww.printTo(stringBuffer, j, chronology, i, dateTimeZone, locale);
        } catch (IOException unused) {
        }
    }

    @Override // org.joda.time.format.DateTimePrinter
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Writer writer, long j, Chronology chronology, int i, DateTimeZone dateTimeZone, Locale locale) throws IOException {
        this.f13949Wwwwwwwwwwwwwwwwwwwwwwwww.printTo(writer, j, chronology, i, dateTimeZone, locale);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof InternalPrinterDateTimePrinter) {
            return this.f13949Wwwwwwwwwwwwwwwwwwwwwwwww.equals(((InternalPrinterDateTimePrinter) obj).f13949Wwwwwwwwwwwwwwwwwwwwwwwww);
        }
        return false;
    }

    @Override // org.joda.time.format.DateTimePrinter, org.joda.time.format.InternalPrinter
    public int estimatePrintedLength() {
        return this.f13949Wwwwwwwwwwwwwwwwwwwwwwwww.estimatePrintedLength();
    }

    @Override // org.joda.time.format.InternalPrinter
    public void printTo(Appendable appendable, long j, Chronology chronology, int i, DateTimeZone dateTimeZone, Locale locale) throws IOException {
        this.f13949Wwwwwwwwwwwwwwwwwwwwwwwww.printTo(appendable, j, chronology, i, dateTimeZone, locale);
    }

    @Override // org.joda.time.format.InternalPrinter
    public void printTo(Appendable appendable, ReadablePartial readablePartial, Locale locale) throws IOException {
        this.f13949Wwwwwwwwwwwwwwwwwwwwwwwww.printTo(appendable, readablePartial, locale);
    }
}
