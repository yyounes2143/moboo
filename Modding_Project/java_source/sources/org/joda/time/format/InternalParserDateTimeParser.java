package org.joda.time.format;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class InternalParserDateTimeParser implements DateTimeParser, InternalParser {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final InternalParser f13948Wwwwwwwwwwwwwwwwwwwwwwwww;

    public InternalParserDateTimeParser(InternalParser internalParser) {
        this.f13948Wwwwwwwwwwwwwwwwwwwwwwwww = internalParser;
    }

    public static DateTimeParser Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InternalParser internalParser) {
        if (internalParser instanceof DateTimeParserInternalParser) {
            return ((DateTimeParserInternalParser) internalParser).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        if (internalParser instanceof DateTimeParser) {
            return (DateTimeParser) internalParser;
        }
        if (internalParser == null) {
            return null;
        }
        return new InternalParserDateTimeParser(internalParser);
    }

    @Override // org.joda.time.format.DateTimeParser
    public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DateTimeParserBucket dateTimeParserBucket, String str, int i) {
        return this.f13948Wwwwwwwwwwwwwwwwwwwwwwwww.parseInto(dateTimeParserBucket, str, i);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof InternalParserDateTimeParser) {
            return this.f13948Wwwwwwwwwwwwwwwwwwwwwwwww.equals(((InternalParserDateTimeParser) obj).f13948Wwwwwwwwwwwwwwwwwwwwwwwww);
        }
        return false;
    }

    @Override // org.joda.time.format.DateTimeParser, org.joda.time.format.InternalParser
    public int estimateParsedLength() {
        return this.f13948Wwwwwwwwwwwwwwwwwwwwwwwww.estimateParsedLength();
    }

    @Override // org.joda.time.format.InternalParser
    public int parseInto(DateTimeParserBucket dateTimeParserBucket, CharSequence charSequence, int i) {
        return this.f13948Wwwwwwwwwwwwwwwwwwwwwwwww.parseInto(dateTimeParserBucket, charSequence, i);
    }
}
