package org.joda.time.format;

import java.io.IOException;
import java.util.Locale;
import org.joda.time.Chronology;
import org.joda.time.DateTime;
import org.joda.time.DateTimeUtils;
import org.joda.time.DateTimeZone;
import org.joda.time.LocalDate;
import org.joda.time.LocalDateTime;
import org.joda.time.LocalTime;
import org.joda.time.ReadableInstant;
import org.joda.time.ReadablePartial;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class DateTimeFormatter {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f13830Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Integer f13831Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final DateTimeZone f13832Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Chronology f13833Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f13834Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Locale f13835Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final InternalParser f13836Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final InternalPrinter f13837Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public DateTimeFormatter(InternalPrinter internalPrinter, InternalParser internalParser) {
        this.f13837Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = internalPrinter;
        this.f13836Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = internalParser;
        this.f13835Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
        this.f13834Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = false;
        this.f13833Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
        this.f13832Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
        this.f13831Wwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
        this.f13830Wwwwwwwwwwwwwwwwwwwwwwwwwww = 2000;
    }

    public DateTimeFormatter Wwwwwwwwww() {
        return Wwwwwwwwwww(DateTimeZone.UTC);
    }

    public DateTimeFormatter Wwwwwwwwwww(DateTimeZone dateTimeZone) {
        if (this.f13832Wwwwwwwwwwwwwwwwwwwwwwwwwwwww == dateTimeZone) {
            return this;
        }
        return new DateTimeFormatter(this.f13837Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f13836Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f13835Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, false, this.f13833Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww, dateTimeZone, this.f13831Wwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f13830Wwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public DateTimeFormatter Wwwwwwwwwwww() {
        if (this.f13834Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return this;
        }
        return new DateTimeFormatter(this.f13837Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f13836Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f13835Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, true, this.f13833Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww, null, this.f13831Wwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f13830Wwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public DateTimeFormatter Wwwwwwwwwwwww(Locale locale) {
        if (locale != Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() && (locale == null || !locale.equals(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()))) {
            return new DateTimeFormatter(this.f13837Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f13836Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, locale, this.f13834Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f13833Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f13832Wwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f13831Wwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f13830Wwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
        return this;
    }

    public DateTimeFormatter Wwwwwwwwwwwwww(Chronology chronology) {
        if (this.f13833Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww == chronology) {
            return this;
        }
        return new DateTimeFormatter(this.f13837Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f13836Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f13835Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f13834Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, chronology, this.f13832Wwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f13831Wwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f13830Wwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public final Chronology Wwwwwwwwwwwwwww(Chronology chronology) {
        Chronology Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(chronology);
        Chronology chronology2 = this.f13833Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (chronology2 != null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = chronology2;
        }
        DateTimeZone dateTimeZone = this.f13832Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (dateTimeZone != null) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.withZone(dateTimeZone);
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    public final InternalPrinter Wwwwwwwwwwwwwwww() {
        InternalPrinter internalPrinter = this.f13837Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (internalPrinter != null) {
            return internalPrinter;
        }
        throw new UnsupportedOperationException("Printing not supported");
    }

    public final InternalParser Wwwwwwwwwwwwwwwww() {
        InternalParser internalParser = this.f13836Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (internalParser != null) {
            return internalParser;
        }
        throw new UnsupportedOperationException("Parsing not supported");
    }

    public void Wwwwwwwwwwwwwwwwww(StringBuffer stringBuffer, long j) {
        try {
            Wwwwwwwwwwwwwwwwwwwwww(stringBuffer, j);
        } catch (IOException unused) {
        }
    }

    public void Wwwwwwwwwwwwwwwwwww(Appendable appendable, ReadablePartial readablePartial) throws IOException {
        InternalPrinter Wwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwww();
        if (readablePartial != null) {
            Wwwwwwwwwwwwwwww2.printTo(appendable, readablePartial, this.f13835Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            return;
        }
        throw new IllegalArgumentException("The partial must not be null");
    }

    public void Wwwwwwwwwwwwwwwwwwww(Appendable appendable, ReadableInstant readableInstant) throws IOException {
        Wwwwwwwwwwwwwwwwwwwww(appendable, DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwww(readableInstant), DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(readableInstant));
    }

    public final void Wwwwwwwwwwwwwwwwwwwww(Appendable appendable, long j, Chronology chronology) throws IOException {
        long j2 = j;
        InternalPrinter Wwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwww();
        Chronology Wwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwww(chronology);
        DateTimeZone zone = Wwwwwwwwwwwwwww2.getZone();
        int offset = zone.getOffset(j2);
        long j3 = offset;
        long j4 = j2 + j3;
        if ((j2 ^ j4) < 0 && (j3 ^ j2) >= 0) {
            zone = DateTimeZone.UTC;
            offset = 0;
        } else {
            j2 = j4;
        }
        Wwwwwwwwwwwwwwww2.printTo(appendable, j2, Wwwwwwwwwwwwwww2.withUTC(), offset, zone, this.f13835Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public void Wwwwwwwwwwwwwwwwwwwwww(Appendable appendable, long j) throws IOException {
        Wwwwwwwwwwwwwwwwwwwww(appendable, j, null);
    }

    public String Wwwwwwwwwwwwwwwwwwwwwww(ReadablePartial readablePartial) {
        StringBuilder sb = new StringBuilder(Wwwwwwwwwwwwwwww().estimatePrintedLength());
        try {
            Wwwwwwwwwwwwwwwwwww(sb, readablePartial);
        } catch (IOException unused) {
        }
        return sb.toString();
    }

    public String Wwwwwwwwwwwwwwwwwwwwwwww(ReadableInstant readableInstant) {
        StringBuilder sb = new StringBuilder(Wwwwwwwwwwwwwwww().estimatePrintedLength());
        try {
            Wwwwwwwwwwwwwwwwwwww(sb, readableInstant);
        } catch (IOException unused) {
        }
        return sb.toString();
    }

    public long Wwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        return new DateTimeParserBucket(0L, Wwwwwwwwwwwwwww(this.f13833Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww), this.f13835Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f13831Wwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f13830Wwwwwwwwwwwwwwwwwwwwwwwwwww).Wwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwww(), str);
    }

    public LocalTime Wwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwww(str).toLocalTime();
    }

    public LocalDateTime Wwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        InternalParser Wwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwww();
        Chronology withUTC = Wwwwwwwwwwwwwww(null).withUTC();
        DateTimeParserBucket dateTimeParserBucket = new DateTimeParserBucket(0L, withUTC, this.f13835Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f13831Wwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f13830Wwwwwwwwwwwwwwwwwwwwwwwwwww);
        int parseInto = Wwwwwwwwwwwwwwwww2.parseInto(dateTimeParserBucket, str, 0);
        if (parseInto >= 0) {
            if (parseInto >= str.length()) {
                long Wwwwwwwwwwwwwwwwwwwwwww2 = dateTimeParserBucket.Wwwwwwwwwwwwwwwwwwwwwww(true, str);
                if (dateTimeParserBucket.Wwwwwwwwwwwwwwwwwww() != null) {
                    withUTC = withUTC.withZone(DateTimeZone.forOffsetMillis(dateTimeParserBucket.Wwwwwwwwwwwwwwwwwww().intValue()));
                } else if (dateTimeParserBucket.Wwwwwwwwwwwwwwwww() != null) {
                    withUTC = withUTC.withZone(dateTimeParserBucket.Wwwwwwwwwwwwwwwww());
                }
                return new LocalDateTime(Wwwwwwwwwwwwwwwwwwwwwww2, withUTC);
            }
        } else {
            parseInto = ~parseInto;
        }
        throw new IllegalArgumentException(FormatUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwww(str, parseInto));
    }

    public LocalDate Wwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwww(str).toLocalDate();
    }

    public DateTime Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        InternalParser Wwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwww();
        Chronology Wwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwww(null);
        DateTimeParserBucket dateTimeParserBucket = new DateTimeParserBucket(0L, Wwwwwwwwwwwwwww2, this.f13835Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f13831Wwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f13830Wwwwwwwwwwwwwwwwwwwwwwwwwww);
        int parseInto = Wwwwwwwwwwwwwwwww2.parseInto(dateTimeParserBucket, str, 0);
        if (parseInto >= 0) {
            if (parseInto >= str.length()) {
                long Wwwwwwwwwwwwwwwwwwwwwww2 = dateTimeParserBucket.Wwwwwwwwwwwwwwwwwwwwwww(true, str);
                if (this.f13834Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && dateTimeParserBucket.Wwwwwwwwwwwwwwwwwww() != null) {
                    Wwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwww2.withZone(DateTimeZone.forOffsetMillis(dateTimeParserBucket.Wwwwwwwwwwwwwwwwwww().intValue()));
                } else if (dateTimeParserBucket.Wwwwwwwwwwwwwwwww() != null) {
                    Wwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwww2.withZone(dateTimeParserBucket.Wwwwwwwwwwwwwwwww());
                }
                DateTime dateTime = new DateTime(Wwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwww2);
                DateTimeZone dateTimeZone = this.f13832Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (dateTimeZone != null) {
                    return dateTime.withZone(dateTimeZone);
                }
                return dateTime;
            }
        } else {
            parseInto = ~parseInto;
        }
        throw new IllegalArgumentException(FormatUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwww(str, parseInto));
    }

    public DateTimeZone Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f13832Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public InternalPrinter Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f13837Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public InternalParser Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f13836Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public DateTimeParser Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return InternalParserDateTimeParser.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f13836Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public Locale Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f13835Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public DateTimeFormatter(InternalPrinter internalPrinter, InternalParser internalParser, Locale locale, boolean z, Chronology chronology, DateTimeZone dateTimeZone, Integer num, int i) {
        this.f13837Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = internalPrinter;
        this.f13836Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = internalParser;
        this.f13835Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = locale;
        this.f13834Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        this.f13833Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = chronology;
        this.f13832Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = dateTimeZone;
        this.f13831Wwwwwwwwwwwwwwwwwwwwwwwwwwww = num;
        this.f13830Wwwwwwwwwwwwwwwwwwwwwwwwwww = i;
    }
}
