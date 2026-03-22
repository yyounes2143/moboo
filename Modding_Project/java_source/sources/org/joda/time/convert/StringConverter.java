package org.joda.time.convert;

import org.joda.time.Chronology;
import org.joda.time.DateTime;
import org.joda.time.Period;
import org.joda.time.ReadWritableInterval;
import org.joda.time.ReadWritablePeriod;
import org.joda.time.ReadablePartial;
import org.joda.time.field.FieldUtils;
import org.joda.time.format.DateTimeFormatter;
import org.joda.time.format.ISODateTimeFormat;
import org.joda.time.format.ISOPeriodFormat;
import org.joda.time.format.PeriodFormatter;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
class StringConverter extends AbstractConverter implements InstantConverter, PartialConverter, DurationConverter, PeriodConverter, IntervalConverter {
    static final StringConverter INSTANCE = new StringConverter();

    @Override // org.joda.time.convert.AbstractConverter, org.joda.time.convert.PartialConverter
    public int[] Wwwwwwwwwwwwwwwwwwwwwwww(ReadablePartial readablePartial, Object obj, Chronology chronology, DateTimeFormatter dateTimeFormatter) {
        if (dateTimeFormatter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != null) {
            chronology = chronology.withZone(dateTimeFormatter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        }
        return chronology.get(readablePartial, dateTimeFormatter.Wwwwwwwwwwwwww(chronology).Wwwwwwwwwwwwwwwwwwwwwwwww((String) obj));
    }

    @Override // org.joda.time.convert.Converter
    public Class<?> Wwwwwwwwwwwwwwwwwwwwwwwww() {
        return String.class;
    }

    @Override // org.joda.time.convert.PeriodConverter
    public void Wwwwwwwwwwwwwwwwwwwwwwwwww(ReadWritablePeriod readWritablePeriod, Object obj, Chronology chronology) {
        String str = (String) obj;
        PeriodFormatter Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = ISOPeriodFormat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        readWritablePeriod.clear();
        int Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(readWritablePeriod, str, 0);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 < str.length()) {
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 < 0) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwww(readWritablePeriod.getPeriodType()).Wwwwwwwwwwwwwwwwwwwwwwwwwww(str);
            }
            throw new IllegalArgumentException("Invalid format: \"" + str + '\"');
        }
    }

    @Override // org.joda.time.convert.AbstractConverter, org.joda.time.convert.InstantConverter
    public long Wwwwwwwwwwwwwwwwwwwwwwwwwww(Object obj, Chronology chronology) {
        return ISODateTimeFormat.Wwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwww(chronology).Wwwwwwwwwwwwwwwwwwwwwwwww((String) obj);
    }

    @Override // org.joda.time.convert.IntervalConverter
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(ReadWritableInterval readWritableInterval, Object obj, Chronology chronology) {
        Period Wwwwwwwwwwwwwwwwwwwwwwwwww2;
        long j;
        long add;
        String str = (String) obj;
        int indexOf = str.indexOf(47);
        if (indexOf >= 0) {
            String substring = str.substring(0, indexOf);
            if (substring.length() > 0) {
                String substring2 = str.substring(indexOf + 1);
                if (substring2.length() > 0) {
                    DateTimeFormatter Wwwwwwwwwwwwww2 = ISODateTimeFormat.Wwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwww(chronology);
                    PeriodFormatter Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = ISOPeriodFormat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    char charAt = substring.charAt(0);
                    Chronology chronology2 = null;
                    if (charAt != 'P' && charAt != 'p') {
                        DateTime Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(substring);
                        j = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getMillis();
                        chronology2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getChronology();
                        Wwwwwwwwwwwwwwwwwwwwwwwwww2 = null;
                    } else {
                        Wwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(substring)).Wwwwwwwwwwwwwwwwwwwwwwwwww(substring);
                        j = 0;
                    }
                    char charAt2 = substring2.charAt(0);
                    if (charAt2 != 'P' && charAt2 != 'p') {
                        DateTime Wwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = Wwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(substring2);
                        add = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww3.getMillis();
                        if (chronology2 == null) {
                            chronology2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww3.getChronology();
                        }
                        if (chronology != null) {
                            chronology2 = chronology;
                        }
                        if (Wwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                            j = chronology2.add(Wwwwwwwwwwwwwwwwwwwwwwwwww2, add, -1);
                        }
                    } else if (Wwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                        Period Wwwwwwwwwwwwwwwwwwwwwwwwww3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(substring2)).Wwwwwwwwwwwwwwwwwwwwwwwwww(substring2);
                        if (chronology != null) {
                            chronology2 = chronology;
                        }
                        add = chronology2.add(Wwwwwwwwwwwwwwwwwwwwwwwwww3, j, 1);
                    } else {
                        throw new IllegalArgumentException("Interval composed of two durations: " + str);
                    }
                    readWritableInterval.setInterval(j, add);
                    readWritableInterval.setChronology(chronology2);
                    return;
                }
                throw new IllegalArgumentException("Format invalid: " + str);
            }
            throw new IllegalArgumentException("Format invalid: " + str);
        }
        throw new IllegalArgumentException("Format requires a '/' separator: " + str);
    }

    @Override // org.joda.time.convert.DurationConverter
    public long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Object obj) {
        long parseLong;
        long j;
        long j2;
        String str = (String) obj;
        int length = str.length();
        if (length >= 4 && ((str.charAt(0) == 'P' || str.charAt(0) == 'p') && (str.charAt(1) == 'T' || str.charAt(1) == 't'))) {
            int i = length - 1;
            if (str.charAt(i) == 'S' || str.charAt(i) == 's') {
                String substring = str.substring(2, i);
                int i2 = 0;
                int i3 = -1;
                for (int i4 = 0; i4 < substring.length(); i4++) {
                    if (substring.charAt(i4) < '0' || substring.charAt(i4) > '9') {
                        if (i4 == 0 && substring.charAt(0) == '-') {
                            i2 = 1;
                        } else if (i4 > i2 && substring.charAt(i4) == '.' && i3 == -1) {
                            i3 = i4;
                        } else {
                            throw new IllegalArgumentException("Invalid format: \"" + str + '\"');
                        }
                    }
                }
                if (i3 > 0) {
                    j2 = Long.parseLong(substring.substring(i2, i3));
                    String substring2 = substring.substring(i3 + 1);
                    if (substring2.length() != 3) {
                        substring2 = (substring2 + "000").substring(0, 3);
                    }
                    j = Integer.parseInt(substring2);
                } else {
                    if (i2 != 0) {
                        parseLong = Long.parseLong(substring.substring(i2, substring.length()));
                    } else {
                        parseLong = Long.parseLong(substring);
                    }
                    j = 0;
                    j2 = parseLong;
                }
                if (i2 != 0) {
                    return FieldUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FieldUtils.Wwwwwwwwwwwwwwwwwwwwwwwwww(-j2, 1000), -j);
                }
                return FieldUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FieldUtils.Wwwwwwwwwwwwwwwwwwwwwwwwww(j2, 1000), j);
            }
        }
        throw new IllegalArgumentException("Invalid format: \"" + str + '\"');
    }
}
