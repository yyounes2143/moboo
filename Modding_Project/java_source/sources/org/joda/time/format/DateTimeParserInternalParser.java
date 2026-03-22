package org.joda.time.format;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class DateTimeParserInternalParser implements InternalParser {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final DateTimeParser f13893Wwwwwwwwwwwwwwwwwwwwwwwww;

    public DateTimeParserInternalParser(DateTimeParser dateTimeParser) {
        this.f13893Wwwwwwwwwwwwwwwwwwwwwwwww = dateTimeParser;
    }

    public static InternalParser Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DateTimeParser dateTimeParser) {
        if (dateTimeParser instanceof InternalParserDateTimeParser) {
            return (InternalParser) dateTimeParser;
        }
        if (dateTimeParser == null) {
            return null;
        }
        return new DateTimeParserInternalParser(dateTimeParser);
    }

    public DateTimeParser Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f13893Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // org.joda.time.format.InternalParser
    public int estimateParsedLength() {
        return this.f13893Wwwwwwwwwwwwwwwwwwwwwwwww.estimateParsedLength();
    }

    @Override // org.joda.time.format.InternalParser
    public int parseInto(DateTimeParserBucket dateTimeParserBucket, CharSequence charSequence, int i) {
        return this.f13893Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(dateTimeParserBucket, charSequence.toString(), i);
    }
}
