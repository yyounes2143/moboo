package org.joda.time.format;

import j$.util.concurrent.ConcurrentHashMap;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.joda.time.Chronology;
import org.joda.time.DateTimeField;
import org.joda.time.DateTimeFieldType;
import org.joda.time.DateTimeUtils;
import org.joda.time.DateTimeZone;
import org.joda.time.MutableDateTime;
import org.joda.time.ReadablePartial;
import org.joda.time.field.MillisDurationField;
import org.joda.time.field.PreciseDateTimeField;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class DateTimeFormatterBuilder {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Object f13838Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public ArrayList<Object> f13839Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList<>();

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static class CharacterLiteral implements InternalPrinter, InternalParser {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final char f13840Wwwwwwwwwwwwwwwwwwwwwwwww;

        public CharacterLiteral(char c) {
            this.f13840Wwwwwwwwwwwwwwwwwwwwwwwww = c;
        }

        @Override // org.joda.time.format.InternalParser
        public int estimateParsedLength() {
            return 1;
        }

        @Override // org.joda.time.format.InternalPrinter
        public int estimatePrintedLength() {
            return 1;
        }

        @Override // org.joda.time.format.InternalParser
        public int parseInto(DateTimeParserBucket dateTimeParserBucket, CharSequence charSequence, int i) {
            char upperCase;
            char upperCase2;
            if (i >= charSequence.length()) {
                return ~i;
            }
            char charAt = charSequence.charAt(i);
            char c = this.f13840Wwwwwwwwwwwwwwwwwwwwwwwww;
            if (charAt != c && (upperCase = Character.toUpperCase(charAt)) != (upperCase2 = Character.toUpperCase(c)) && Character.toLowerCase(upperCase) != Character.toLowerCase(upperCase2)) {
                return ~i;
            }
            return i + 1;
        }

        @Override // org.joda.time.format.InternalPrinter
        public void printTo(Appendable appendable, long j, Chronology chronology, int i, DateTimeZone dateTimeZone, Locale locale) throws IOException {
            appendable.append(this.f13840Wwwwwwwwwwwwwwwwwwwwwwwww);
        }

        @Override // org.joda.time.format.InternalPrinter
        public void printTo(Appendable appendable, ReadablePartial readablePartial, Locale locale) throws IOException {
            appendable.append(this.f13840Wwwwwwwwwwwwwwwwwwwwwwwww);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static class FixedNumber extends PaddedNumber {
        public FixedNumber(DateTimeFieldType dateTimeFieldType, int i, boolean z) {
            super(dateTimeFieldType, i, z, i);
        }

        @Override // org.joda.time.format.DateTimeFormatterBuilder.NumberFormatter, org.joda.time.format.InternalParser
        public int parseInto(DateTimeParserBucket dateTimeParserBucket, CharSequence charSequence, int i) {
            int i2;
            char charAt;
            int parseInto = super.parseInto(dateTimeParserBucket, charSequence, i);
            if (parseInto >= 0 && parseInto != (i2 = this.f13851Wwwwwwwwwwwwwwwwwwwwwwww + i)) {
                if (this.f13850Wwwwwwwwwwwwwwwwwwwwwww && ((charAt = charSequence.charAt(i)) == '-' || charAt == '+')) {
                    i2++;
                }
                if (parseInto > i2) {
                    return ~(i2 + 1);
                }
                if (parseInto < i2) {
                    return ~parseInto;
                }
                return parseInto;
            }
            return parseInto;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static class Fraction implements InternalPrinter, InternalParser {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f13845Wwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f13846Wwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final DateTimeFieldType f13847Wwwwwwwwwwwwwwwwwwwwwwwww;

        public Fraction(DateTimeFieldType dateTimeFieldType, int i, int i2) {
            this.f13847Wwwwwwwwwwwwwwwwwwwwwwwww = dateTimeFieldType;
            i2 = i2 > 18 ? 18 : i2;
            this.f13846Wwwwwwwwwwwwwwwwwwwwwwww = i;
            this.f13845Wwwwwwwwwwwwwwwwwwwwwww = i2;
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Appendable appendable, long j, Chronology chronology) throws IOException {
            String l;
            DateTimeField field = this.f13847Wwwwwwwwwwwwwwwwwwwwwwwww.getField(chronology);
            int i = this.f13846Wwwwwwwwwwwwwwwwwwwwwwww;
            try {
                long remainder = field.remainder(j);
                if (remainder != 0) {
                    long[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(remainder, field);
                    long j2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2[0];
                    int i2 = (int) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2[1];
                    if ((2147483647L & j2) == j2) {
                        l = Integer.toString((int) j2);
                    } else {
                        l = Long.toString(j2);
                    }
                    int length = l.length();
                    while (length < i2) {
                        appendable.append('0');
                        i--;
                        i2--;
                    }
                    if (i < i2) {
                        while (i < i2 && length > 1 && l.charAt(length - 1) == '0') {
                            i2--;
                            length--;
                        }
                        if (length < l.length()) {
                            for (int i3 = 0; i3 < length; i3++) {
                                appendable.append(l.charAt(i3));
                            }
                            return;
                        }
                    }
                    appendable.append(l);
                    return;
                }
                while (true) {
                    i--;
                    if (i >= 0) {
                        appendable.append('0');
                    } else {
                        return;
                    }
                }
            } catch (RuntimeException unused) {
                DateTimeFormatterBuilder.Kkkkkkkkkkkkkkkk(appendable, i);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:27:0x0079 A[LOOP:0: B:3:0x000a->B:27:0x0079, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:28:0x006c A[SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final long[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long r7, org.joda.time.DateTimeField r9) {
            /*
                r6 = this;
                org.joda.time.DurationField r9 = r9.getDurationField()
                long r0 = r9.getUnitMillis()
                int r9 = r6.f13845Wwwwwwwwwwwwwwwwwwwwwww
            La:
                switch(r9) {
                    case 1: goto L63;
                    case 2: goto L60;
                    case 3: goto L5d;
                    case 4: goto L5a;
                    case 5: goto L56;
                    case 6: goto L52;
                    case 7: goto L4e;
                    case 8: goto L4a;
                    case 9: goto L46;
                    case 10: goto L40;
                    case 11: goto L3a;
                    case 12: goto L34;
                    case 13: goto L2e;
                    case 14: goto L28;
                    case 15: goto L22;
                    case 16: goto L1c;
                    case 17: goto L16;
                    case 18: goto L10;
                    default: goto Ld;
                }
            Ld:
                r2 = 1
                goto L65
            L10:
                r2 = 1000000000000000000(0xde0b6b3a7640000, double:7.832953389245686E-242)
                goto L65
            L16:
                r2 = 100000000000000000(0x16345785d8a0000, double:5.620395787888205E-302)
                goto L65
            L1c:
                r2 = 10000000000000000(0x2386f26fc10000, double:5.431165199810528E-308)
                goto L65
            L22:
                r2 = 1000000000000000(0x38d7ea4c68000, double:4.940656458412465E-309)
                goto L65
            L28:
                r2 = 100000000000000(0x5af3107a4000, double:4.94065645841247E-310)
                goto L65
            L2e:
                r2 = 10000000000000(0x9184e72a000, double:4.9406564584125E-311)
                goto L65
            L34:
                r2 = 1000000000000(0xe8d4a51000, double:4.94065645841E-312)
                goto L65
            L3a:
                r2 = 100000000000(0x174876e800, double:4.9406564584E-313)
                goto L65
            L40:
                r2 = 10000000000(0x2540be400, double:4.9406564584E-314)
                goto L65
            L46:
                r2 = 1000000000(0x3b9aca00, double:4.94065646E-315)
                goto L65
            L4a:
                r2 = 100000000(0x5f5e100, double:4.94065646E-316)
                goto L65
            L4e:
                r2 = 10000000(0x989680, double:4.9406565E-317)
                goto L65
            L52:
                r2 = 1000000(0xf4240, double:4.940656E-318)
                goto L65
            L56:
                r2 = 100000(0x186a0, double:4.94066E-319)
                goto L65
            L5a:
                r2 = 10000(0x2710, double:4.9407E-320)
                goto L65
            L5d:
                r2 = 1000(0x3e8, double:4.94E-321)
                goto L65
            L60:
                r2 = 100
                goto L65
            L63:
                r2 = 10
            L65:
                long r4 = r0 * r2
                long r4 = r4 / r2
                int r4 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
                if (r4 != 0) goto L79
                long r7 = r7 * r2
                long r7 = r7 / r0
                long r0 = (long) r9
                r9 = 2
                long[] r9 = new long[r9]
                r2 = 0
                r9[r2] = r7
                r7 = 1
                r9[r7] = r0
                return r9
            L79:
                int r9 = r9 + (-1)
                goto La
            */
            throw new UnsupportedOperationException("Method not decompiled: org.joda.time.format.DateTimeFormatterBuilder.Fraction.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long, org.joda.time.DateTimeField):long[]");
        }

        @Override // org.joda.time.format.InternalParser
        public int estimateParsedLength() {
            return this.f13845Wwwwwwwwwwwwwwwwwwwwwww;
        }

        @Override // org.joda.time.format.InternalPrinter
        public int estimatePrintedLength() {
            return this.f13845Wwwwwwwwwwwwwwwwwwwwwww;
        }

        @Override // org.joda.time.format.InternalParser
        public int parseInto(DateTimeParserBucket dateTimeParserBucket, CharSequence charSequence, int i) {
            DateTimeField field = this.f13847Wwwwwwwwwwwwwwwwwwwwwwwww.getField(dateTimeParserBucket.Wwwwwwwwwwwwwwwwwwwww());
            int min = Math.min(this.f13845Wwwwwwwwwwwwwwwwwwwwwww, charSequence.length() - i);
            long unitMillis = field.getDurationField().getUnitMillis() * 10;
            long j = 0;
            int i2 = 0;
            while (i2 < min) {
                char charAt = charSequence.charAt(i + i2);
                if (charAt < '0' || charAt > '9') {
                    break;
                }
                i2++;
                unitMillis /= 10;
                j += (charAt - '0') * unitMillis;
            }
            long j2 = j / 10;
            if (i2 == 0) {
                return ~i;
            }
            if (j2 > 2147483647L) {
                return ~i;
            }
            dateTimeParserBucket.Wwwwwwwwwwwwww(new PreciseDateTimeField(DateTimeFieldType.millisOfSecond(), MillisDurationField.INSTANCE, field.getDurationField()), (int) j2);
            return i + i2;
        }

        @Override // org.joda.time.format.InternalPrinter
        public void printTo(Appendable appendable, long j, Chronology chronology, int i, DateTimeZone dateTimeZone, Locale locale) throws IOException {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(appendable, j, chronology);
        }

        @Override // org.joda.time.format.InternalPrinter
        public void printTo(Appendable appendable, ReadablePartial readablePartial, Locale locale) throws IOException {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(appendable, readablePartial.getChronology().set(readablePartial, 0L), readablePartial.getChronology());
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static class MatchingParser implements InternalParser {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f13848Wwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final InternalParser[] f13849Wwwwwwwwwwwwwwwwwwwwwwwww;

        public MatchingParser(InternalParser[] internalParserArr) {
            int estimateParsedLength;
            this.f13849Wwwwwwwwwwwwwwwwwwwwwwwww = internalParserArr;
            int length = internalParserArr.length;
            int i = 0;
            while (true) {
                length--;
                if (length >= 0) {
                    InternalParser internalParser = internalParserArr[length];
                    if (internalParser != null && (estimateParsedLength = internalParser.estimateParsedLength()) > i) {
                        i = estimateParsedLength;
                    }
                } else {
                    this.f13848Wwwwwwwwwwwwwwwwwwwwwwww = i;
                    return;
                }
            }
        }

        @Override // org.joda.time.format.InternalParser
        public int estimateParsedLength() {
            return this.f13848Wwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Override // org.joda.time.format.InternalParser
        public int parseInto(DateTimeParserBucket dateTimeParserBucket, CharSequence charSequence, int i) {
            int i2;
            int i3;
            InternalParser[] internalParserArr = this.f13849Wwwwwwwwwwwwwwwwwwwwwwwww;
            int length = internalParserArr.length;
            Object Wwwwwwwwwww2 = dateTimeParserBucket.Wwwwwwwwwww();
            boolean z = false;
            Object obj = null;
            int i4 = i;
            int i5 = i4;
            int i6 = 0;
            while (true) {
                if (i6 >= length) {
                    break;
                }
                InternalParser internalParser = internalParserArr[i6];
                if (internalParser == null) {
                    if (i4 <= i) {
                        return i;
                    }
                    z = true;
                } else {
                    int parseInto = internalParser.parseInto(dateTimeParserBucket, charSequence, i);
                    if (parseInto >= i) {
                        if (parseInto <= i4) {
                            continue;
                        } else if (parseInto >= charSequence.length() || (i3 = i6 + 1) >= length || internalParserArr[i3] == null) {
                            break;
                        } else {
                            obj = dateTimeParserBucket.Wwwwwwwwwww();
                            i4 = parseInto;
                        }
                    } else if (parseInto < 0 && (i2 = ~parseInto) > i5) {
                        i5 = i2;
                    }
                    dateTimeParserBucket.Wwwwwwwwwwwwwww(Wwwwwwwwwww2);
                    i6++;
                }
            }
            if (i4 <= i && (i4 != i || !z)) {
                return ~i5;
            }
            if (obj != null) {
                dateTimeParserBucket.Wwwwwwwwwwwwwww(obj);
            }
            return i4;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static abstract class NumberFormatter implements InternalPrinter, InternalParser {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final boolean f13850Wwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f13851Wwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final DateTimeFieldType f13852Wwwwwwwwwwwwwwwwwwwwwwwww;

        public NumberFormatter(DateTimeFieldType dateTimeFieldType, int i, boolean z) {
            this.f13852Wwwwwwwwwwwwwwwwwwwwwwwww = dateTimeFieldType;
            this.f13851Wwwwwwwwwwwwwwwwwwwwwwww = i;
            this.f13850Wwwwwwwwwwwwwwwwwwwwwww = z;
        }

        @Override // org.joda.time.format.InternalParser
        public int estimateParsedLength() {
            return this.f13851Wwwwwwwwwwwwwwwwwwwwwwww;
        }

        /* JADX WARN: Code restructure failed: missing block: B:28:0x005e, code lost:
            if (r10 <= '9') goto L12;
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x0061, code lost:
            r5 = r5 + 1;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int parseInto(org.joda.time.format.DateTimeParserBucket r17, java.lang.CharSequence r18, int r19) {
            /*
                Method dump skipped, instructions count: 194
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.joda.time.format.DateTimeFormatterBuilder.NumberFormatter.parseInto(org.joda.time.format.DateTimeParserBucket, java.lang.CharSequence, int):int");
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static class StringLiteral implements InternalPrinter, InternalParser {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f13854Wwwwwwwwwwwwwwwwwwwwwwwww;

        public StringLiteral(String str) {
            this.f13854Wwwwwwwwwwwwwwwwwwwwwwwww = str;
        }

        @Override // org.joda.time.format.InternalParser
        public int estimateParsedLength() {
            return this.f13854Wwwwwwwwwwwwwwwwwwwwwwwww.length();
        }

        @Override // org.joda.time.format.InternalPrinter
        public int estimatePrintedLength() {
            return this.f13854Wwwwwwwwwwwwwwwwwwwwwwwww.length();
        }

        @Override // org.joda.time.format.InternalParser
        public int parseInto(DateTimeParserBucket dateTimeParserBucket, CharSequence charSequence, int i) {
            if (DateTimeFormatterBuilder.Kkkkkkk(charSequence, i, this.f13854Wwwwwwwwwwwwwwwwwwwwwwwww)) {
                return i + this.f13854Wwwwwwwwwwwwwwwwwwwwwwwww.length();
            }
            return ~i;
        }

        @Override // org.joda.time.format.InternalPrinter
        public void printTo(Appendable appendable, long j, Chronology chronology, int i, DateTimeZone dateTimeZone, Locale locale) throws IOException {
            appendable.append(this.f13854Wwwwwwwwwwwwwwwwwwwwwwwww);
        }

        @Override // org.joda.time.format.InternalPrinter
        public void printTo(Appendable appendable, ReadablePartial readablePartial, Locale locale) throws IOException {
            appendable.append(this.f13854Wwwwwwwwwwwwwwwwwwwwwwwww);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public enum TimeZoneId implements InternalPrinter, InternalParser {
        INSTANCE;
        
        static final int MAX_LENGTH;
        static final int MAX_PREFIX_LENGTH;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static final List<String> f13858Wwwwwwwwwwwwwwwwwwwwwww = new ArrayList();

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static final Map<String, List<String>> f13859Wwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static final List<String> f13860Wwwwwwwwwwwwwwwwwwwwwwwww;

        static {
            ArrayList arrayList = new ArrayList(DateTimeZone.getAvailableIDs());
            f13860Wwwwwwwwwwwwwwwwwwwwwwwww = arrayList;
            Collections.sort(arrayList);
            f13859Wwwwwwwwwwwwwwwwwwwwwwww = new HashMap();
            int size = arrayList.size();
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            while (i3 < size) {
                Object obj = arrayList.get(i3);
                i3++;
                String str = (String) obj;
                int indexOf = str.indexOf(47);
                if (indexOf >= 0) {
                    indexOf = indexOf < str.length() ? indexOf + 1 : indexOf;
                    i2 = Math.max(i2, indexOf);
                    String substring = str.substring(0, indexOf + 1);
                    String substring2 = str.substring(indexOf);
                    Map<String, List<String>> map = f13859Wwwwwwwwwwwwwwwwwwwwwwww;
                    if (!map.containsKey(substring)) {
                        map.put(substring, new ArrayList());
                    }
                    map.get(substring).add(substring2);
                } else {
                    f13858Wwwwwwwwwwwwwwwwwwwwwww.add(str);
                }
                i = Math.max(i, str.length());
            }
            MAX_LENGTH = i;
            MAX_PREFIX_LENGTH = i2;
        }

        @Override // org.joda.time.format.InternalParser
        public int estimateParsedLength() {
            return MAX_LENGTH;
        }

        @Override // org.joda.time.format.InternalPrinter
        public int estimatePrintedLength() {
            return MAX_LENGTH;
        }

        @Override // org.joda.time.format.InternalParser
        public int parseInto(DateTimeParserBucket dateTimeParserBucket, CharSequence charSequence, int i) {
            String str;
            int i2;
            int i3;
            String str2;
            List<String> list = f13858Wwwwwwwwwwwwwwwwwwwwwww;
            int length = charSequence.length();
            int min = Math.min(length, MAX_PREFIX_LENGTH + i);
            int i4 = i;
            while (true) {
                if (i4 < min) {
                    if (charSequence.charAt(i4) == '/') {
                        str = charSequence.subSequence(i, i4 + 1).toString();
                        i2 = str.length() + i;
                        if (i4 < length) {
                            str2 = str + charSequence.charAt(i3);
                        } else {
                            str2 = str;
                        }
                        list = f13859Wwwwwwwwwwwwwwwwwwwwwwww.get(str2);
                        if (list == null) {
                            return ~i;
                        }
                    } else {
                        i4++;
                    }
                } else {
                    str = "";
                    i2 = i;
                    break;
                }
            }
            String str3 = null;
            for (int i5 = 0; i5 < list.size(); i5++) {
                String str4 = list.get(i5);
                if (DateTimeFormatterBuilder.Kkkkkkkk(charSequence, i2, str4) && (str3 == null || str4.length() > str3.length())) {
                    str3 = str4;
                }
            }
            if (str3 != null) {
                dateTimeParserBucket.Wwwwwwwww(DateTimeZone.forID(str + str3));
                return i2 + str3.length();
            }
            return ~i;
        }

        @Override // org.joda.time.format.InternalPrinter
        public void printTo(Appendable appendable, ReadablePartial readablePartial, Locale locale) throws IOException {
        }

        @Override // org.joda.time.format.InternalPrinter
        public void printTo(Appendable appendable, long j, Chronology chronology, int i, DateTimeZone dateTimeZone, Locale locale) throws IOException {
            appendable.append(dateTimeZone != null ? dateTimeZone.getID() : "");
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static class TimeZoneName implements InternalPrinter, InternalParser {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f13861Wwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Map<String, DateTimeZone> f13862Wwwwwwwwwwwwwwwwwwwwwwwww;

        public TimeZoneName(int i, Map<String, DateTimeZone> map) {
            this.f13861Wwwwwwwwwwwwwwwwwwwwwwww = i;
            this.f13862Wwwwwwwwwwwwwwwwwwwwwwwww = map;
        }

        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j, DateTimeZone dateTimeZone, Locale locale) {
            if (dateTimeZone == null) {
                return "";
            }
            int i = this.f13861Wwwwwwwwwwwwwwwwwwwwwwww;
            if (i != 0) {
                if (i != 1) {
                    return "";
                }
                return dateTimeZone.getShortName(j, locale);
            }
            return dateTimeZone.getName(j, locale);
        }

        @Override // org.joda.time.format.InternalParser
        public int estimateParsedLength() {
            if (this.f13861Wwwwwwwwwwwwwwwwwwwwwwww == 1) {
                return 4;
            }
            return 20;
        }

        @Override // org.joda.time.format.InternalPrinter
        public int estimatePrintedLength() {
            if (this.f13861Wwwwwwwwwwwwwwwwwwwwwwww == 1) {
                return 4;
            }
            return 20;
        }

        @Override // org.joda.time.format.InternalParser
        public int parseInto(DateTimeParserBucket dateTimeParserBucket, CharSequence charSequence, int i) {
            Map<String, DateTimeZone> map = this.f13862Wwwwwwwwwwwwwwwwwwwwwwwww;
            if (map == null) {
                map = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            String str = null;
            for (String str2 : map.keySet()) {
                if (DateTimeFormatterBuilder.Kkkkkkkk(charSequence, i, str2) && (str == null || str2.length() > str.length())) {
                    str = str2;
                }
            }
            if (str != null) {
                dateTimeParserBucket.Wwwwwwwww(map.get(str));
                return i + str.length();
            }
            return ~i;
        }

        @Override // org.joda.time.format.InternalPrinter
        public void printTo(Appendable appendable, ReadablePartial readablePartial, Locale locale) throws IOException {
        }

        @Override // org.joda.time.format.InternalPrinter
        public void printTo(Appendable appendable, long j, Chronology chronology, int i, DateTimeZone dateTimeZone, Locale locale) throws IOException {
            appendable.append(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j - i, dateTimeZone, locale));
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static class TimeZoneOffset implements InternalPrinter, InternalParser {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f13863Wwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f13864Wwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final boolean f13865Wwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f13866Wwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f13867Wwwwwwwwwwwwwwwwwwwwwwwww;

        public TimeZoneOffset(String str, String str2, boolean z, int i, int i2) {
            this.f13867Wwwwwwwwwwwwwwwwwwwwwwwww = str;
            this.f13866Wwwwwwwwwwwwwwwwwwwwwwww = str2;
            this.f13865Wwwwwwwwwwwwwwwwwwwwwww = z;
            if (i > 0 && i2 >= i) {
                if (i > 4) {
                    i = 4;
                    i2 = 4;
                }
                this.f13864Wwwwwwwwwwwwwwwwwwwwww = i;
                this.f13863Wwwwwwwwwwwwwwwwwwwww = i2;
                return;
            }
            throw new IllegalArgumentException();
        }

        public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(CharSequence charSequence, int i, int i2) {
            int i3 = 0;
            for (int min = Math.min(charSequence.length() - i, i2); min > 0; min--) {
                char charAt = charSequence.charAt(i + i3);
                if (charAt < '0' || charAt > '9') {
                    break;
                }
                i3++;
            }
            return i3;
        }

        @Override // org.joda.time.format.InternalParser
        public int estimateParsedLength() {
            return estimatePrintedLength();
        }

        @Override // org.joda.time.format.InternalPrinter
        public int estimatePrintedLength() {
            int i = this.f13864Wwwwwwwwwwwwwwwwwwwwww;
            int i2 = (i + 1) << 1;
            if (this.f13865Wwwwwwwwwwwwwwwwwwwwwww) {
                i2 += i - 1;
            }
            String str = this.f13867Wwwwwwwwwwwwwwwwwwwwwwwww;
            if (str != null && str.length() > i2) {
                return this.f13867Wwwwwwwwwwwwwwwwwwwwwwwww.length();
            }
            return i2;
        }

        /* JADX WARN: Code restructure failed: missing block: B:42:0x007f, code lost:
            if (r8 <= '9') goto L36;
         */
        @Override // org.joda.time.format.InternalParser
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int parseInto(org.joda.time.format.DateTimeParserBucket r12, java.lang.CharSequence r13, int r14) {
            /*
                Method dump skipped, instructions count: 298
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.joda.time.format.DateTimeFormatterBuilder.TimeZoneOffset.parseInto(org.joda.time.format.DateTimeParserBucket, java.lang.CharSequence, int):int");
        }

        @Override // org.joda.time.format.InternalPrinter
        public void printTo(Appendable appendable, ReadablePartial readablePartial, Locale locale) throws IOException {
        }

        @Override // org.joda.time.format.InternalPrinter
        public void printTo(Appendable appendable, long j, Chronology chronology, int i, DateTimeZone dateTimeZone, Locale locale) throws IOException {
            String str;
            if (dateTimeZone == null) {
                return;
            }
            if (i == 0 && (str = this.f13867Wwwwwwwwwwwwwwwwwwwwwwwww) != null) {
                appendable.append(str);
                return;
            }
            if (i >= 0) {
                appendable.append('+');
            } else {
                appendable.append('-');
                i = -i;
            }
            int i2 = i / 3600000;
            FormatUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(appendable, i2, 2);
            if (this.f13863Wwwwwwwwwwwwwwwwwwwww == 1) {
                return;
            }
            int i3 = i - (i2 * 3600000);
            if (i3 != 0 || this.f13864Wwwwwwwwwwwwwwwwwwwwww > 1) {
                int i4 = i3 / 60000;
                if (this.f13865Wwwwwwwwwwwwwwwwwwwwwww) {
                    appendable.append(AbstractJsonLexerKt.COLON);
                }
                FormatUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(appendable, i4, 2);
                if (this.f13863Wwwwwwwwwwwwwwwwwwwww == 2) {
                    return;
                }
                int i5 = i3 - (i4 * 60000);
                if (i5 != 0 || this.f13864Wwwwwwwwwwwwwwwwwwwwww > 2) {
                    int i6 = i5 / 1000;
                    if (this.f13865Wwwwwwwwwwwwwwwwwwwwwww) {
                        appendable.append(AbstractJsonLexerKt.COLON);
                    }
                    FormatUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(appendable, i6, 2);
                    if (this.f13863Wwwwwwwwwwwwwwwwwwwww == 3) {
                        return;
                    }
                    int i7 = i5 - (i6 * 1000);
                    if (i7 != 0 || this.f13864Wwwwwwwwwwwwwwwwwwwwww > 3) {
                        if (this.f13865Wwwwwwwwwwwwwwwwwwwwwww) {
                            appendable.append('.');
                        }
                        FormatUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(appendable, i7, 3);
                    }
                }
            }
        }
    }

    public static boolean Kkkkkkk(CharSequence charSequence, int i, String str) {
        char upperCase;
        char upperCase2;
        int length = str.length();
        if (charSequence.length() - i < length) {
            return false;
        }
        for (int i2 = 0; i2 < length; i2++) {
            char charAt = charSequence.charAt(i + i2);
            char charAt2 = str.charAt(i2);
            if (charAt != charAt2 && (upperCase = Character.toUpperCase(charAt)) != (upperCase2 = Character.toUpperCase(charAt2)) && Character.toLowerCase(upperCase) != Character.toLowerCase(upperCase2)) {
                return false;
            }
        }
        return true;
    }

    public static boolean Kkkkkkkk(CharSequence charSequence, int i, String str) {
        int length = str.length();
        if (charSequence.length() - i < length) {
            return false;
        }
        for (int i2 = 0; i2 < length; i2++) {
            if (charSequence.charAt(i + i2) != str.charAt(i2)) {
                return false;
            }
        }
        return true;
    }

    public static void Kkkkkkkkkkkkkkkk(Appendable appendable, int i) throws IOException {
        while (true) {
            i--;
            if (i >= 0) {
                appendable.append((char) 65533);
            } else {
                return;
            }
        }
    }

    public DateTimeParser Illllllllllllllllllllllllllll() {
        Object Kkkkkk = Kkkkkk();
        if (Kkkk(Kkkkkk)) {
            return InternalParserDateTimeParser.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((InternalParser) Kkkkkk);
        }
        throw new UnsupportedOperationException("Parsing is not supported");
    }

    public DateTimeFormatter Kk() {
        InternalPrinter internalPrinter;
        Object Kkkkkk = Kkkkkk();
        InternalParser internalParser = null;
        if (Kkk(Kkkkkk)) {
            internalPrinter = (InternalPrinter) Kkkkkk;
        } else {
            internalPrinter = null;
        }
        if (Kkkk(Kkkkkk)) {
            internalParser = (InternalParser) Kkkkkk;
        }
        if (internalPrinter == null && internalParser == null) {
            throw new UnsupportedOperationException("Both printing and parsing not supported");
        }
        return new DateTimeFormatter(internalPrinter, internalParser);
    }

    public final boolean Kkk(Object obj) {
        if (obj instanceof InternalPrinter) {
            if (obj instanceof Composite) {
                return ((Composite) obj).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            return true;
        }
        return false;
    }

    public final boolean Kkkk(Object obj) {
        if (obj instanceof InternalParser) {
            if (obj instanceof Composite) {
                return ((Composite) obj).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            return true;
        }
        return false;
    }

    public final boolean Kkkkk(Object obj) {
        if (!Kkk(obj) && !Kkkk(obj)) {
            return false;
        }
        return true;
    }

    public final Object Kkkkkk() {
        Object obj = this.f13838Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (obj == null) {
            if (this.f13839Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size() == 2) {
                Object obj2 = this.f13839Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(0);
                Object obj3 = this.f13839Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(1);
                if (obj2 != null) {
                    if (obj2 == obj3 || obj3 == null) {
                        obj = obj2;
                    }
                } else {
                    obj = obj3;
                }
            }
            if (obj == null) {
                obj = new Composite(this.f13839Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            }
            this.f13838Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = obj;
        }
        return obj;
    }

    public final void Kkkkkkkkk(DateTimePrinter dateTimePrinter) {
        if (dateTimePrinter != null) {
            return;
        }
        throw new IllegalArgumentException("No printer supplied");
    }

    public final void Kkkkkkkkkk(DateTimeParser dateTimeParser) {
        if (dateTimeParser != null) {
            return;
        }
        throw new IllegalArgumentException("No parser supplied");
    }

    public boolean Kkkkkkkkkkk() {
        return Kkkkk(Kkkkkk());
    }

    public DateTimeFormatterBuilder Kkkkkkkkkkkk(int i, int i2) {
        return Wwwwwwwwwwwwwwwwwwwww(DateTimeFieldType.yearOfEra(), i, i2);
    }

    public DateTimeFormatterBuilder Kkkkkkkkkkkkk(int i, int i2) {
        return Kkkkkkkkkkkkkkkkkkkkkkkkk(DateTimeFieldType.year(), i, i2);
    }

    public DateTimeFormatterBuilder Kkkkkkkkkkkkkk(int i, int i2) {
        return Kkkkkkkkkkkkkkkkkkkkkkkkk(DateTimeFieldType.weekyear(), i, i2);
    }

    public DateTimeFormatterBuilder Kkkkkkkkkkkkkkk(int i) {
        return Wwwwwwwwwwwwwwwwwwwww(DateTimeFieldType.weekOfWeekyear(), i, 2);
    }

    public DateTimeFormatterBuilder Kkkkkkkkkkkkkkkkk(int i, boolean z) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new TwoDigitYear(DateTimeFieldType.year(), i, z));
    }

    public DateTimeFormatterBuilder Kkkkkkkkkkkkkkkkkk(int i, boolean z) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new TwoDigitYear(DateTimeFieldType.weekyear(), i, z));
    }

    public DateTimeFormatterBuilder Kkkkkkkkkkkkkkkkkkk(Map<String, DateTimeZone> map) {
        TimeZoneName timeZoneName = new TimeZoneName(1, map);
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(timeZoneName, timeZoneName);
    }

    public DateTimeFormatterBuilder Kkkkkkkkkkkkkkkkkkkk(String str, boolean z, int i, int i2) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new TimeZoneOffset(str, str, z, i, i2));
    }

    public DateTimeFormatterBuilder Kkkkkkkkkkkkkkkkkkkkk(String str, String str2, boolean z, int i, int i2) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new TimeZoneOffset(str, str2, z, i, i2));
    }

    public DateTimeFormatterBuilder Kkkkkkkkkkkkkkkkkkkkkk() {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new TimeZoneName(0, null), null);
    }

    public DateTimeFormatterBuilder Kkkkkkkkkkkkkkkkkkkkkkk() {
        TimeZoneId timeZoneId = TimeZoneId.INSTANCE;
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(timeZoneId, timeZoneId);
    }

    public DateTimeFormatterBuilder Kkkkkkkkkkkkkkkkkkkkkkkk(DateTimeFieldType dateTimeFieldType) {
        if (dateTimeFieldType != null) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new TextField(dateTimeFieldType, false));
        }
        throw new IllegalArgumentException("Field type must not be null");
    }

    public DateTimeFormatterBuilder Kkkkkkkkkkkkkkkkkkkkkkkkk(DateTimeFieldType dateTimeFieldType, int i, int i2) {
        if (dateTimeFieldType != null) {
            if (i2 < i) {
                i2 = i;
            }
            if (i >= 0 && i2 > 0) {
                if (i <= 1) {
                    return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new UnpaddedNumber(dateTimeFieldType, i2, true));
                }
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new PaddedNumber(dateTimeFieldType, i2, true, i));
            }
            throw new IllegalArgumentException();
        }
        throw new IllegalArgumentException("Field type must not be null");
    }

    public DateTimeFormatterBuilder Kkkkkkkkkkkkkkkkkkkkkkkkkk(DateTimeFieldType dateTimeFieldType) {
        if (dateTimeFieldType != null) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new TextField(dateTimeFieldType, true));
        }
        throw new IllegalArgumentException("Field type must not be null");
    }

    public DateTimeFormatterBuilder Www(int i) {
        return Wwwwwwwwwwwwwwwwwwwww(DateTimeFieldType.secondOfMinute(), i, 2);
    }

    public DateTimeFormatterBuilder Wwww(DateTimeParser dateTimeParser) {
        Kkkkkkkkkk(dateTimeParser);
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(null, new MatchingParser(new InternalParser[]{DateTimeParserInternalParser.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(dateTimeParser), null}));
    }

    public DateTimeFormatterBuilder Wwwww() {
        return Kkkkkkkkkkkkkkkkkkkkkkkk(DateTimeFieldType.monthOfYear());
    }

    public DateTimeFormatterBuilder Wwwwww() {
        return Kkkkkkkkkkkkkkkkkkkkkkkkkk(DateTimeFieldType.monthOfYear());
    }

    public DateTimeFormatterBuilder Wwwwwww(int i) {
        return Wwwwwwwwwwwwwwwwwwwww(DateTimeFieldType.monthOfYear(), i, 2);
    }

    public DateTimeFormatterBuilder Wwwwwwww(int i) {
        return Wwwwwwwwwwwwwwwwwwwww(DateTimeFieldType.minuteOfHour(), i, 2);
    }

    public DateTimeFormatterBuilder Wwwwwwwww(int i) {
        return Wwwwwwwwwwwwwwwwwwwww(DateTimeFieldType.millisOfSecond(), i, 3);
    }

    public DateTimeFormatterBuilder Wwwwwwwwww(String str) {
        if (str != null) {
            int length = str.length();
            if (length != 0) {
                if (length != 1) {
                    return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new StringLiteral(str));
                }
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new CharacterLiteral(str.charAt(0)));
            }
            return this;
        }
        throw new IllegalArgumentException("Literal must not be null");
    }

    public DateTimeFormatterBuilder Wwwwwwwwwww(char c) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new CharacterLiteral(c));
    }

    public DateTimeFormatterBuilder Wwwwwwwwwwww(int i) {
        return Wwwwwwwwwwwwwwwwwwwww(DateTimeFieldType.hourOfHalfday(), i, 2);
    }

    public DateTimeFormatterBuilder Wwwwwwwwwwwww(int i) {
        return Wwwwwwwwwwwwwwwwwwwww(DateTimeFieldType.hourOfDay(), i, 2);
    }

    public DateTimeFormatterBuilder Wwwwwwwwwwwwww() {
        return Kkkkkkkkkkkkkkkkkkkkkkkk(DateTimeFieldType.halfdayOfDay());
    }

    public DateTimeFormatterBuilder Wwwwwwwwwwwwwww(int i, int i2) {
        return Wwwwwwwwwwwwwwwwww(DateTimeFieldType.secondOfDay(), i, i2);
    }

    public DateTimeFormatterBuilder Wwwwwwwwwwwwwwww(int i, int i2) {
        return Wwwwwwwwwwwwwwwwww(DateTimeFieldType.minuteOfDay(), i, i2);
    }

    public DateTimeFormatterBuilder Wwwwwwwwwwwwwwwww(int i, int i2) {
        return Wwwwwwwwwwwwwwwwww(DateTimeFieldType.hourOfDay(), i, i2);
    }

    public DateTimeFormatterBuilder Wwwwwwwwwwwwwwwwww(DateTimeFieldType dateTimeFieldType, int i, int i2) {
        if (dateTimeFieldType != null) {
            if (i2 < i) {
                i2 = i;
            }
            if (i >= 0 && i2 > 0) {
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new Fraction(dateTimeFieldType, i, i2));
            }
            throw new IllegalArgumentException();
        }
        throw new IllegalArgumentException("Field type must not be null");
    }

    public DateTimeFormatterBuilder Wwwwwwwwwwwwwwwwwww(DateTimeFieldType dateTimeFieldType, int i) {
        if (dateTimeFieldType != null) {
            if (i > 0) {
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new FixedNumber(dateTimeFieldType, i, false));
            }
            throw new IllegalArgumentException("Illegal number of digits: " + i);
        }
        throw new IllegalArgumentException("Field type must not be null");
    }

    public DateTimeFormatterBuilder Wwwwwwwwwwwwwwwwwwww() {
        return Kkkkkkkkkkkkkkkkkkkkkkkk(DateTimeFieldType.era());
    }

    public DateTimeFormatterBuilder Wwwwwwwwwwwwwwwwwwwww(DateTimeFieldType dateTimeFieldType, int i, int i2) {
        if (dateTimeFieldType != null) {
            if (i2 < i) {
                i2 = i;
            }
            if (i >= 0 && i2 > 0) {
                if (i <= 1) {
                    return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new UnpaddedNumber(dateTimeFieldType, i2, false));
                }
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new PaddedNumber(dateTimeFieldType, i2, false, i));
            }
            throw new IllegalArgumentException();
        }
        throw new IllegalArgumentException("Field type must not be null");
    }

    public DateTimeFormatterBuilder Wwwwwwwwwwwwwwwwwwwwww(int i) {
        return Wwwwwwwwwwwwwwwwwwwww(DateTimeFieldType.dayOfYear(), i, 3);
    }

    public DateTimeFormatterBuilder Wwwwwwwwwwwwwwwwwwwwwww() {
        return Kkkkkkkkkkkkkkkkkkkkkkkk(DateTimeFieldType.dayOfWeek());
    }

    public DateTimeFormatterBuilder Wwwwwwwwwwwwwwwwwwwwwwww() {
        return Kkkkkkkkkkkkkkkkkkkkkkkkkk(DateTimeFieldType.dayOfWeek());
    }

    public DateTimeFormatterBuilder Wwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        return Wwwwwwwwwwwwwwwwwwwww(DateTimeFieldType.dayOfWeek(), i, 1);
    }

    public DateTimeFormatterBuilder Wwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        return Wwwwwwwwwwwwwwwwwwwww(DateTimeFieldType.dayOfMonth(), i, 2);
    }

    public DateTimeFormatterBuilder Wwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        return Wwwwwwwwwwwwwwwwwwwww(DateTimeFieldType.clockhourOfHalfday(), i, 2);
    }

    public DateTimeFormatterBuilder Wwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        return Wwwwwwwwwwwwwwwwwwwww(DateTimeFieldType.clockhourOfDay(), i, 2);
    }

    public DateTimeFormatterBuilder Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2) {
        return Kkkkkkkkkkkkkkkkkkkkkkkkk(DateTimeFieldType.centuryOfEra(), i, i2);
    }

    public final DateTimeFormatterBuilder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InternalPrinter internalPrinter, InternalParser internalParser) {
        this.f13838Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
        this.f13839Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(internalPrinter);
        this.f13839Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(internalParser);
        return this;
    }

    public final DateTimeFormatterBuilder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Object obj) {
        this.f13838Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
        this.f13839Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(obj);
        this.f13839Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(obj);
        return this;
    }

    public DateTimeFormatterBuilder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DateTimePrinter dateTimePrinter, DateTimeParser[] dateTimeParserArr) {
        if (dateTimePrinter != null) {
            Kkkkkkkkk(dateTimePrinter);
        }
        if (dateTimeParserArr != null) {
            int length = dateTimeParserArr.length;
            int i = 0;
            if (length == 1) {
                if (dateTimeParserArr[0] != null) {
                    return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DateTimePrinterInternalPrinter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(dateTimePrinter), DateTimeParserInternalParser.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(dateTimeParserArr[0]));
                }
                throw new IllegalArgumentException("No parser supplied");
            }
            InternalParser[] internalParserArr = new InternalParser[length];
            while (i < length - 1) {
                InternalParser Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = DateTimeParserInternalParser.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(dateTimeParserArr[i]);
                internalParserArr[i] = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                    i++;
                } else {
                    throw new IllegalArgumentException("Incomplete parser array");
                }
            }
            internalParserArr[i] = DateTimeParserInternalParser.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(dateTimeParserArr[i]);
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DateTimePrinterInternalPrinter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(dateTimePrinter), new MatchingParser(internalParserArr));
        }
        throw new IllegalArgumentException("No parsers supplied");
    }

    public DateTimeFormatterBuilder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DateTimeParser dateTimeParser) {
        Kkkkkkkkkk(dateTimeParser);
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(null, DateTimeParserInternalParser.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(dateTimeParser));
    }

    public DateTimeFormatterBuilder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DateTimeFormatter dateTimeFormatter) {
        if (dateTimeFormatter != null) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(dateTimeFormatter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), dateTimeFormatter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        }
        throw new IllegalArgumentException("No formatter supplied");
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static class TextField implements InternalPrinter, InternalParser {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static Map<Locale, Map<DateTimeFieldType, Object[]>> f13855Wwwwwwwwwwwwwwwwwwwwwww = new ConcurrentHashMap();

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final boolean f13856Wwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final DateTimeFieldType f13857Wwwwwwwwwwwwwwwwwwwwwwwww;

        public TextField(DateTimeFieldType dateTimeFieldType, boolean z) {
            this.f13857Wwwwwwwwwwwwwwwwwwwwwwwww = dateTimeFieldType;
            this.f13856Wwwwwwwwwwwwwwwwwwwwwwww = z;
        }

        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ReadablePartial readablePartial, Locale locale) {
            if (readablePartial.isSupported(this.f13857Wwwwwwwwwwwwwwwwwwwwwwwww)) {
                DateTimeField field = this.f13857Wwwwwwwwwwwwwwwwwwwwwwwww.getField(readablePartial.getChronology());
                if (this.f13856Wwwwwwwwwwwwwwwwwwwwwwww) {
                    return field.getAsShortText(readablePartial, locale);
                }
                return field.getAsText(readablePartial, locale);
            }
            return "�";
        }

        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j, Chronology chronology, Locale locale) {
            DateTimeField field = this.f13857Wwwwwwwwwwwwwwwwwwwwwwwww.getField(chronology);
            if (this.f13856Wwwwwwwwwwwwwwwwwwwwwwww) {
                return field.getAsShortText(j, locale);
            }
            return field.getAsText(j, locale);
        }

        @Override // org.joda.time.format.InternalParser
        public int estimateParsedLength() {
            return estimatePrintedLength();
        }

        @Override // org.joda.time.format.InternalPrinter
        public int estimatePrintedLength() {
            if (this.f13856Wwwwwwwwwwwwwwwwwwwwwwww) {
                return 6;
            }
            return 20;
        }

        @Override // org.joda.time.format.InternalParser
        public int parseInto(DateTimeParserBucket dateTimeParserBucket, CharSequence charSequence, int i) {
            int intValue;
            Map map;
            Locale Wwwwwwwwwwwwwwwwwwww2 = dateTimeParserBucket.Wwwwwwwwwwwwwwwwwwww();
            Map<DateTimeFieldType, Object[]> map2 = f13855Wwwwwwwwwwwwwwwwwwwwwww.get(Wwwwwwwwwwwwwwwwwwww2);
            if (map2 == null) {
                map2 = new ConcurrentHashMap<>();
                f13855Wwwwwwwwwwwwwwwwwwwwwww.put(Wwwwwwwwwwwwwwwwwwww2, map2);
            }
            Object[] objArr = map2.get(this.f13857Wwwwwwwwwwwwwwwwwwwwwwwww);
            if (objArr == null) {
                map = new ConcurrentHashMap(32);
                MutableDateTime.Property property = new MutableDateTime(0L, DateTimeZone.UTC).property(this.f13857Wwwwwwwwwwwwwwwwwwwwwwwww);
                int minimumValueOverall = property.getMinimumValueOverall();
                int maximumValueOverall = property.getMaximumValueOverall();
                if (maximumValueOverall - minimumValueOverall > 32) {
                    return ~i;
                }
                intValue = property.getMaximumTextLength(Wwwwwwwwwwwwwwwwwwww2);
                while (minimumValueOverall <= maximumValueOverall) {
                    property.set(minimumValueOverall);
                    String asShortText = property.getAsShortText(Wwwwwwwwwwwwwwwwwwww2);
                    Boolean bool = Boolean.TRUE;
                    map.put(asShortText, bool);
                    map.put(property.getAsShortText(Wwwwwwwwwwwwwwwwwwww2).toLowerCase(Wwwwwwwwwwwwwwwwwwww2), bool);
                    map.put(property.getAsShortText(Wwwwwwwwwwwwwwwwwwww2).toUpperCase(Wwwwwwwwwwwwwwwwwwww2), bool);
                    map.put(property.getAsText(Wwwwwwwwwwwwwwwwwwww2), bool);
                    map.put(property.getAsText(Wwwwwwwwwwwwwwwwwwww2).toLowerCase(Wwwwwwwwwwwwwwwwwwww2), bool);
                    map.put(property.getAsText(Wwwwwwwwwwwwwwwwwwww2).toUpperCase(Wwwwwwwwwwwwwwwwwwww2), bool);
                    minimumValueOverall++;
                }
                if ("en".equals(Wwwwwwwwwwwwwwwwwwww2.getLanguage()) && this.f13857Wwwwwwwwwwwwwwwwwwwwwwwww == DateTimeFieldType.era()) {
                    Boolean bool2 = Boolean.TRUE;
                    map.put("BCE", bool2);
                    map.put("bce", bool2);
                    map.put("CE", bool2);
                    map.put("ce", bool2);
                    intValue = 3;
                }
                map2.put(this.f13857Wwwwwwwwwwwwwwwwwwwwwwwww, new Object[]{map, Integer.valueOf(intValue)});
            } else {
                intValue = ((Integer) objArr[1]).intValue();
                map = (Map) objArr[0];
            }
            for (int min = Math.min(charSequence.length(), intValue + i); min > i; min--) {
                String charSequence2 = charSequence.subSequence(i, min).toString();
                if (map.containsKey(charSequence2)) {
                    dateTimeParserBucket.Wwwwwwwwwwww(this.f13857Wwwwwwwwwwwwwwwwwwwwwwwww, charSequence2, Wwwwwwwwwwwwwwwwwwww2);
                    return min;
                }
            }
            return ~i;
        }

        @Override // org.joda.time.format.InternalPrinter
        public void printTo(Appendable appendable, long j, Chronology chronology, int i, DateTimeZone dateTimeZone, Locale locale) throws IOException {
            try {
                appendable.append(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j, chronology, locale));
            } catch (RuntimeException unused) {
                appendable.append((char) 65533);
            }
        }

        @Override // org.joda.time.format.InternalPrinter
        public void printTo(Appendable appendable, ReadablePartial readablePartial, Locale locale) throws IOException {
            try {
                appendable.append(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(readablePartial, locale));
            } catch (RuntimeException unused) {
                appendable.append((char) 65533);
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static class PaddedNumber extends NumberFormatter {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f13853Wwwwwwwwwwwwwwwwwwwwww;

        public PaddedNumber(DateTimeFieldType dateTimeFieldType, int i, boolean z, int i2) {
            super(dateTimeFieldType, i, z);
            this.f13853Wwwwwwwwwwwwwwwwwwwwww = i2;
        }

        @Override // org.joda.time.format.InternalPrinter
        public int estimatePrintedLength() {
            return this.f13851Wwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Override // org.joda.time.format.InternalPrinter
        public void printTo(Appendable appendable, long j, Chronology chronology, int i, DateTimeZone dateTimeZone, Locale locale) throws IOException {
            try {
                FormatUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(appendable, this.f13852Wwwwwwwwwwwwwwwwwwwwwwwww.getField(chronology).get(j), this.f13853Wwwwwwwwwwwwwwwwwwwwww);
            } catch (RuntimeException unused) {
                DateTimeFormatterBuilder.Kkkkkkkkkkkkkkkk(appendable, this.f13853Wwwwwwwwwwwwwwwwwwwwww);
            }
        }

        @Override // org.joda.time.format.InternalPrinter
        public void printTo(Appendable appendable, ReadablePartial readablePartial, Locale locale) throws IOException {
            if (readablePartial.isSupported(this.f13852Wwwwwwwwwwwwwwwwwwwwwwwww)) {
                try {
                    FormatUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(appendable, readablePartial.get(this.f13852Wwwwwwwwwwwwwwwwwwwwwwwww), this.f13853Wwwwwwwwwwwwwwwwwwwwww);
                    return;
                } catch (RuntimeException unused) {
                    DateTimeFormatterBuilder.Kkkkkkkkkkkkkkkk(appendable, this.f13853Wwwwwwwwwwwwwwwwwwwwww);
                    return;
                }
            }
            DateTimeFormatterBuilder.Kkkkkkkkkkkkkkkk(appendable, this.f13853Wwwwwwwwwwwwwwwwwwwwww);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static class UnpaddedNumber extends NumberFormatter {
        public UnpaddedNumber(DateTimeFieldType dateTimeFieldType, int i, boolean z) {
            super(dateTimeFieldType, i, z);
        }

        @Override // org.joda.time.format.InternalPrinter
        public int estimatePrintedLength() {
            return this.f13851Wwwwwwwwwwwwwwwwwwwwwwww;
        }

        @Override // org.joda.time.format.InternalPrinter
        public void printTo(Appendable appendable, long j, Chronology chronology, int i, DateTimeZone dateTimeZone, Locale locale) throws IOException {
            try {
                FormatUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(appendable, this.f13852Wwwwwwwwwwwwwwwwwwwwwwwww.getField(chronology).get(j));
            } catch (RuntimeException unused) {
                appendable.append((char) 65533);
            }
        }

        @Override // org.joda.time.format.InternalPrinter
        public void printTo(Appendable appendable, ReadablePartial readablePartial, Locale locale) throws IOException {
            if (readablePartial.isSupported(this.f13852Wwwwwwwwwwwwwwwwwwwwwwwww)) {
                try {
                    FormatUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(appendable, readablePartial.get(this.f13852Wwwwwwwwwwwwwwwwwwwwwwwww));
                    return;
                } catch (RuntimeException unused) {
                    appendable.append((char) 65533);
                    return;
                }
            }
            appendable.append((char) 65533);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static class TwoDigitYear implements InternalPrinter, InternalParser {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final boolean f13868Wwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f13869Wwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final DateTimeFieldType f13870Wwwwwwwwwwwwwwwwwwwwwwwww;

        public TwoDigitYear(DateTimeFieldType dateTimeFieldType, int i, boolean z) {
            this.f13870Wwwwwwwwwwwwwwwwwwwwwwwww = dateTimeFieldType;
            this.f13869Wwwwwwwwwwwwwwwwwwwwwwww = i;
            this.f13868Wwwwwwwwwwwwwwwwwwwwwww = z;
        }

        public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ReadablePartial readablePartial) {
            if (readablePartial.isSupported(this.f13870Wwwwwwwwwwwwwwwwwwwwwwwww)) {
                try {
                    int i = readablePartial.get(this.f13870Wwwwwwwwwwwwwwwwwwwwwwwww);
                    if (i < 0) {
                        i = -i;
                    }
                    return i % 100;
                } catch (RuntimeException unused) {
                    return -1;
                }
            }
            return -1;
        }

        public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j, Chronology chronology) {
            try {
                int i = this.f13870Wwwwwwwwwwwwwwwwwwwwwwwww.getField(chronology).get(j);
                if (i < 0) {
                    i = -i;
                }
                return i % 100;
            } catch (RuntimeException unused) {
                return -1;
            }
        }

        @Override // org.joda.time.format.InternalParser
        public int estimateParsedLength() {
            if (this.f13868Wwwwwwwwwwwwwwwwwwwwwww) {
                return 4;
            }
            return 2;
        }

        @Override // org.joda.time.format.InternalPrinter
        public int estimatePrintedLength() {
            return 2;
        }

        @Override // org.joda.time.format.InternalParser
        public int parseInto(DateTimeParserBucket dateTimeParserBucket, CharSequence charSequence, int i) {
            int i2;
            int i3;
            int i4;
            int i5;
            int length = charSequence.length() - i;
            int i6 = 0;
            if (!this.f13868Wwwwwwwwwwwwwwwwwwwwwww) {
                if (Math.min(2, length) < 2) {
                    return ~i;
                }
            } else {
                int i7 = 0;
                boolean z = false;
                boolean z2 = false;
                while (i7 < length) {
                    char charAt = charSequence.charAt(i + i7);
                    if (i7 == 0 && (charAt == '-' || charAt == '+')) {
                        if (charAt == '-') {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if (z2) {
                            i7++;
                        } else {
                            i++;
                            length--;
                        }
                        z = true;
                    } else if (charAt < '0' || charAt > '9') {
                        break;
                    } else {
                        i7++;
                    }
                }
                if (i7 == 0) {
                    return ~i;
                }
                if (z || i7 != 2) {
                    if (i7 >= 9) {
                        i3 = i7 + i;
                        i4 = Integer.parseInt(charSequence.subSequence(i, i3).toString());
                    } else {
                        if (z2) {
                            i2 = i + 1;
                        } else {
                            i2 = i;
                        }
                        int i8 = i2 + 1;
                        try {
                            int charAt2 = charSequence.charAt(i2) - '0';
                            i3 = i7 + i;
                            while (i8 < i3) {
                                i8++;
                                charAt2 = (((charAt2 << 3) + (charAt2 << 1)) + charSequence.charAt(i8)) - 48;
                            }
                            if (z2) {
                                i4 = -charAt2;
                            } else {
                                i4 = charAt2;
                            }
                        } catch (StringIndexOutOfBoundsException unused) {
                            return ~i;
                        }
                    }
                    dateTimeParserBucket.Wwwwwwwwwwwww(this.f13870Wwwwwwwwwwwwwwwwwwwwwwwww, i4);
                    return i3;
                }
            }
            char charAt3 = charSequence.charAt(i);
            if (charAt3 >= '0' && charAt3 <= '9') {
                int i9 = charAt3 - '0';
                char charAt4 = charSequence.charAt(i + 1);
                if (charAt4 >= '0' && charAt4 <= '9') {
                    int i10 = (((i9 << 3) + (i9 << 1)) + charAt4) - 48;
                    int i11 = this.f13869Wwwwwwwwwwwwwwwwwwwwwwww;
                    if (dateTimeParserBucket.Wwwwwwwwwwwwwwwwww() != null) {
                        i11 = dateTimeParserBucket.Wwwwwwwwwwwwwwwwww().intValue();
                    }
                    int i12 = i11 - 50;
                    if (i12 >= 0) {
                        i5 = i12 % 100;
                    } else {
                        i5 = ((i11 - 49) % 100) + 99;
                    }
                    if (i10 < i5) {
                        i6 = 100;
                    }
                    dateTimeParserBucket.Wwwwwwwwwwwww(this.f13870Wwwwwwwwwwwwwwwwwwwwwwwww, i10 + ((i12 + i6) - i5));
                    return i + 2;
                }
                return ~i;
            }
            return ~i;
        }

        @Override // org.joda.time.format.InternalPrinter
        public void printTo(Appendable appendable, long j, Chronology chronology, int i, DateTimeZone dateTimeZone, Locale locale) throws IOException {
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j, chronology);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 < 0) {
                appendable.append((char) 65533);
                appendable.append((char) 65533);
                return;
            }
            FormatUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(appendable, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, 2);
        }

        @Override // org.joda.time.format.InternalPrinter
        public void printTo(Appendable appendable, ReadablePartial readablePartial, Locale locale) throws IOException {
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(readablePartial);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 < 0) {
                appendable.append((char) 65533);
                appendable.append((char) 65533);
                return;
            }
            FormatUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(appendable, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, 2);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static class Composite implements InternalPrinter, InternalParser {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f13841Wwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f13842Wwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final InternalParser[] f13843Wwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final InternalPrinter[] f13844Wwwwwwwwwwwwwwwwwwwwwwwww;

        public Composite(List<Object> list) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(list, arrayList, arrayList2);
            if (!arrayList.contains(null) && !arrayList.isEmpty()) {
                int size = arrayList.size();
                this.f13844Wwwwwwwwwwwwwwwwwwwwwwwww = new InternalPrinter[size];
                int i = 0;
                for (int i2 = 0; i2 < size; i2++) {
                    InternalPrinter internalPrinter = (InternalPrinter) arrayList.get(i2);
                    i += internalPrinter.estimatePrintedLength();
                    this.f13844Wwwwwwwwwwwwwwwwwwwwwwwww[i2] = internalPrinter;
                }
                this.f13842Wwwwwwwwwwwwwwwwwwwwwww = i;
            } else {
                this.f13844Wwwwwwwwwwwwwwwwwwwwwwwww = null;
                this.f13842Wwwwwwwwwwwwwwwwwwwwwww = 0;
            }
            if (!arrayList2.contains(null) && !arrayList2.isEmpty()) {
                int size2 = arrayList2.size();
                this.f13843Wwwwwwwwwwwwwwwwwwwwwwww = new InternalParser[size2];
                int i3 = 0;
                for (int i4 = 0; i4 < size2; i4++) {
                    InternalParser internalParser = (InternalParser) arrayList2.get(i4);
                    i3 += internalParser.estimateParsedLength();
                    this.f13843Wwwwwwwwwwwwwwwwwwwwwwww[i4] = internalParser;
                }
                this.f13841Wwwwwwwwwwwwwwwwwwwwww = i3;
                return;
            }
            this.f13843Wwwwwwwwwwwwwwwwwwwwwwww = null;
            this.f13841Wwwwwwwwwwwwwwwwwwwwww = 0;
        }

        public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            if (this.f13844Wwwwwwwwwwwwwwwwwwwwwwwww != null) {
                return true;
            }
            return false;
        }

        public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            if (this.f13843Wwwwwwwwwwwwwwwwwwwwwwww != null) {
                return true;
            }
            return false;
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(List<Object> list, List<Object> list2, List<Object> list3) {
            int size = list.size();
            for (int i = 0; i < size; i += 2) {
                Object obj = list.get(i);
                if (obj instanceof Composite) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(list2, ((Composite) obj).f13844Wwwwwwwwwwwwwwwwwwwwwwwww);
                } else {
                    list2.add(obj);
                }
                Object obj2 = list.get(i + 1);
                if (obj2 instanceof Composite) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(list3, ((Composite) obj2).f13843Wwwwwwwwwwwwwwwwwwwwwwww);
                } else {
                    list3.add(obj2);
                }
            }
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(List<Object> list, Object[] objArr) {
            if (objArr != null) {
                for (Object obj : objArr) {
                    list.add(obj);
                }
            }
        }

        @Override // org.joda.time.format.InternalParser
        public int estimateParsedLength() {
            return this.f13841Wwwwwwwwwwwwwwwwwwwwww;
        }

        @Override // org.joda.time.format.InternalPrinter
        public int estimatePrintedLength() {
            return this.f13842Wwwwwwwwwwwwwwwwwwwwwww;
        }

        @Override // org.joda.time.format.InternalParser
        public int parseInto(DateTimeParserBucket dateTimeParserBucket, CharSequence charSequence, int i) {
            InternalParser[] internalParserArr = this.f13843Wwwwwwwwwwwwwwwwwwwwwwww;
            if (internalParserArr != null) {
                int length = internalParserArr.length;
                for (int i2 = 0; i2 < length && i >= 0; i2++) {
                    i = internalParserArr[i2].parseInto(dateTimeParserBucket, charSequence, i);
                }
                return i;
            }
            throw new UnsupportedOperationException();
        }

        @Override // org.joda.time.format.InternalPrinter
        public void printTo(Appendable appendable, long j, Chronology chronology, int i, DateTimeZone dateTimeZone, Locale locale) throws IOException {
            InternalPrinter[] internalPrinterArr = this.f13844Wwwwwwwwwwwwwwwwwwwwwwwww;
            if (internalPrinterArr != null) {
                Locale locale2 = locale == null ? Locale.getDefault() : locale;
                for (InternalPrinter internalPrinter : internalPrinterArr) {
                    internalPrinter.printTo(appendable, j, chronology, i, dateTimeZone, locale2);
                }
                return;
            }
            throw new UnsupportedOperationException();
        }

        @Override // org.joda.time.format.InternalPrinter
        public void printTo(Appendable appendable, ReadablePartial readablePartial, Locale locale) throws IOException {
            InternalPrinter[] internalPrinterArr = this.f13844Wwwwwwwwwwwwwwwwwwwwwwwww;
            if (internalPrinterArr != null) {
                if (locale == null) {
                    locale = Locale.getDefault();
                }
                for (InternalPrinter internalPrinter : internalPrinterArr) {
                    internalPrinter.printTo(appendable, readablePartial, locale);
                }
                return;
            }
            throw new UnsupportedOperationException();
        }
    }
}
