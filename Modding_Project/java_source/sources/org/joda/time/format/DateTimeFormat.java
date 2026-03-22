package org.joda.time.format;

import j$.util.concurrent.ConcurrentHashMap;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicReferenceArray;
import org.joda.time.Chronology;
import org.joda.time.DateTime;
import org.joda.time.DateTimeZone;
import org.joda.time.ReadablePartial;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class DateTimeFormat {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final ConcurrentHashMap<String, DateTimeFormatter> f13823Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ConcurrentHashMap<>();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final AtomicReferenceArray<DateTimeFormatter> f13822Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new AtomicReferenceArray<>(25);

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static class StyleFormatterCacheKey {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Locale f13828Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f13829Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public StyleFormatterCacheKey(int i, int i2, int i3, Locale locale) {
            this.f13828Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = locale;
            this.f13829Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i + (i2 << 4) + (i3 << 8);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !(obj instanceof StyleFormatterCacheKey)) {
                return false;
            }
            StyleFormatterCacheKey styleFormatterCacheKey = (StyleFormatterCacheKey) obj;
            if (this.f13829Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != styleFormatterCacheKey.f13829Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                return false;
            }
            Locale locale = this.f13828Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (locale == null) {
                if (styleFormatterCacheKey.f13828Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
                    return false;
                }
            } else if (!locale.equals(styleFormatterCacheKey.f13828Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            int hashCode;
            int i = (this.f13829Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + 31) * 31;
            Locale locale = this.f13828Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (locale == null) {
                hashCode = 0;
            } else {
                hashCode = locale.hashCode();
            }
            return i + hashCode;
        }
    }

    public static String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, int[] iArr) {
        StringBuilder sb = new StringBuilder();
        int i = iArr[0];
        int length = str.length();
        char charAt = str.charAt(i);
        if ((charAt >= 'A' && charAt <= 'Z') || (charAt >= 'a' && charAt <= 'z')) {
            sb.append(charAt);
            while (true) {
                int i2 = i + 1;
                if (i2 >= length || str.charAt(i2) != charAt) {
                    break;
                }
                sb.append(charAt);
                i = i2;
            }
        } else {
            sb.append('\'');
            boolean z = false;
            while (i < length) {
                char charAt2 = str.charAt(i);
                if (charAt2 == '\'') {
                    int i3 = i + 1;
                    if (i3 < length && str.charAt(i3) == '\'') {
                        sb.append(charAt2);
                        i = i3;
                    } else {
                        z = !z;
                    }
                } else if (!z && ((charAt2 >= 'A' && charAt2 <= 'Z') || (charAt2 >= 'a' && charAt2 <= 'z'))) {
                    i--;
                    break;
                } else {
                    sb.append(charAt2);
                }
                i++;
            }
        }
        iArr[0] = i;
        return sb.toString();
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DateTimeFormatterBuilder dateTimeFormatterBuilder, String str) {
        boolean z;
        int length = str.length();
        int[] iArr = new int[1];
        int i = 0;
        while (i < length) {
            iArr[0] = i;
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, iArr);
            int i2 = iArr[0];
            int length2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.length();
            if (length2 != 0) {
                char charAt = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.charAt(0);
                if (charAt != '\'') {
                    if (charAt != 'K') {
                        if (charAt != 'M') {
                            if (charAt != 'S') {
                                if (charAt != 'a') {
                                    if (charAt != 'h') {
                                        if (charAt != 'k') {
                                            if (charAt != 'm') {
                                                if (charAt != 's') {
                                                    if (charAt != 'G') {
                                                        if (charAt != 'H') {
                                                            if (charAt != 'Y') {
                                                                if (charAt != 'Z') {
                                                                    if (charAt != 'd') {
                                                                        if (charAt != 'e') {
                                                                            switch (charAt) {
                                                                                case 'C':
                                                                                    dateTimeFormatterBuilder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(length2, length2);
                                                                                    break;
                                                                                case 'D':
                                                                                    dateTimeFormatterBuilder.Wwwwwwwwwwwwwwwwwwwwww(length2);
                                                                                    break;
                                                                                case 'E':
                                                                                    if (length2 >= 4) {
                                                                                        dateTimeFormatterBuilder.Wwwwwwwwwwwwwwwwwwwwwww();
                                                                                        break;
                                                                                    } else {
                                                                                        dateTimeFormatterBuilder.Wwwwwwwwwwwwwwwwwwwwwwww();
                                                                                        break;
                                                                                    }
                                                                                default:
                                                                                    switch (charAt) {
                                                                                        case 'w':
                                                                                            dateTimeFormatterBuilder.Kkkkkkkkkkkkkkk(length2);
                                                                                            break;
                                                                                        case 'x':
                                                                                        case 'y':
                                                                                            break;
                                                                                        case 'z':
                                                                                            if (length2 >= 4) {
                                                                                                dateTimeFormatterBuilder.Kkkkkkkkkkkkkkkkkkkkkk();
                                                                                                break;
                                                                                            } else {
                                                                                                dateTimeFormatterBuilder.Kkkkkkkkkkkkkkkkkkk(null);
                                                                                                break;
                                                                                            }
                                                                                        default:
                                                                                            throw new IllegalArgumentException("Illegal pattern component: " + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                                                                                    }
                                                                            }
                                                                        } else {
                                                                            dateTimeFormatterBuilder.Wwwwwwwwwwwwwwwwwwwwwwwww(length2);
                                                                        }
                                                                    } else {
                                                                        dateTimeFormatterBuilder.Wwwwwwwwwwwwwwwwwwwwwwwwww(length2);
                                                                    }
                                                                } else if (length2 == 1) {
                                                                    dateTimeFormatterBuilder.Kkkkkkkkkkkkkkkkkkkkk(null, "Z", false, 2, 2);
                                                                } else if (length2 == 2) {
                                                                    dateTimeFormatterBuilder.Kkkkkkkkkkkkkkkkkkkkk(null, "Z", true, 2, 2);
                                                                } else {
                                                                    dateTimeFormatterBuilder.Kkkkkkkkkkkkkkkkkkkkkkk();
                                                                }
                                                            }
                                                            if (length2 == 2) {
                                                                if (i2 + 1 < length) {
                                                                    iArr[0] = iArr[0] + 1;
                                                                    z = !Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, iArr));
                                                                    iArr[0] = iArr[0] - 1;
                                                                } else {
                                                                    z = true;
                                                                }
                                                                if (charAt != 'x') {
                                                                    dateTimeFormatterBuilder.Kkkkkkkkkkkkkkkkk(new DateTime().getYear() - 30, z);
                                                                } else {
                                                                    dateTimeFormatterBuilder.Kkkkkkkkkkkkkkkkkk(new DateTime().getWeekyear() - 30, z);
                                                                }
                                                            } else {
                                                                int i3 = 9;
                                                                if (i2 + 1 < length) {
                                                                    iArr[0] = iArr[0] + 1;
                                                                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, iArr))) {
                                                                        i3 = length2;
                                                                    }
                                                                    iArr[0] = iArr[0] - 1;
                                                                }
                                                                if (charAt != 'Y') {
                                                                    if (charAt != 'x') {
                                                                        if (charAt == 'y') {
                                                                            dateTimeFormatterBuilder.Kkkkkkkkkkkkk(length2, i3);
                                                                        }
                                                                    } else {
                                                                        dateTimeFormatterBuilder.Kkkkkkkkkkkkkk(length2, i3);
                                                                    }
                                                                } else {
                                                                    dateTimeFormatterBuilder.Kkkkkkkkkkkk(length2, i3);
                                                                }
                                                            }
                                                        } else {
                                                            dateTimeFormatterBuilder.Wwwwwwwwwwwww(length2);
                                                        }
                                                    } else {
                                                        dateTimeFormatterBuilder.Wwwwwwwwwwwwwwwwwwww();
                                                    }
                                                } else {
                                                    dateTimeFormatterBuilder.Www(length2);
                                                }
                                            } else {
                                                dateTimeFormatterBuilder.Wwwwwwww(length2);
                                            }
                                        } else {
                                            dateTimeFormatterBuilder.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(length2);
                                        }
                                    } else {
                                        dateTimeFormatterBuilder.Wwwwwwwwwwwwwwwwwwwwwwwwwww(length2);
                                    }
                                } else {
                                    dateTimeFormatterBuilder.Wwwwwwwwwwwwww();
                                }
                            } else {
                                dateTimeFormatterBuilder.Wwwwwwwwwwwwwww(length2, length2);
                            }
                        } else if (length2 >= 3) {
                            if (length2 >= 4) {
                                dateTimeFormatterBuilder.Wwwww();
                            } else {
                                dateTimeFormatterBuilder.Wwwwww();
                            }
                        } else {
                            dateTimeFormatterBuilder.Wwwwwww(length2);
                        }
                    } else {
                        dateTimeFormatterBuilder.Wwwwwwwwwwww(length2);
                    }
                } else {
                    String substring = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.substring(1);
                    if (substring.length() == 1) {
                        dateTimeFormatterBuilder.Wwwwwwwwwww(substring.charAt(0));
                    } else {
                        dateTimeFormatterBuilder.Wwwwwwwwww(new String(substring));
                    }
                }
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0013 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(java.lang.String r3) {
        /*
            int r0 = r3.length()
            r1 = 0
            if (r0 <= 0) goto L14
            char r3 = r3.charAt(r1)
            r2 = 1
            switch(r3) {
                case 67: goto L13;
                case 68: goto L13;
                case 70: goto L13;
                case 72: goto L13;
                case 75: goto L13;
                case 77: goto L10;
                case 83: goto L13;
                case 87: goto L13;
                case 89: goto L13;
                case 99: goto L13;
                case 100: goto L13;
                case 101: goto L13;
                case 104: goto L13;
                case 107: goto L13;
                case 109: goto L13;
                case 115: goto L13;
                case 119: goto L13;
                case 120: goto L13;
                case 121: goto L13;
                default: goto Lf;
            }
        Lf:
            goto L14
        L10:
            r3 = 2
            if (r0 > r3) goto L14
        L13:
            return r2
        L14:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.joda.time.format.DateTimeFormat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(java.lang.String):boolean");
    }

    public static DateTimeFormatter Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
    }

    public static DateTimeFormatter Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        DateTimeFormatter putIfAbsent;
        if (str != null && str.length() != 0) {
            ConcurrentHashMap<String, DateTimeFormatter> concurrentHashMap = f13823Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            DateTimeFormatter dateTimeFormatter = concurrentHashMap.get(str);
            if (dateTimeFormatter == null) {
                DateTimeFormatterBuilder dateTimeFormatterBuilder = new DateTimeFormatterBuilder();
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(dateTimeFormatterBuilder, str);
                dateTimeFormatter = dateTimeFormatterBuilder.Kk();
                if (concurrentHashMap.size() < 500 && (putIfAbsent = concurrentHashMap.putIfAbsent(str, dateTimeFormatter)) != null) {
                    return putIfAbsent;
                }
            }
            return dateTimeFormatter;
        }
        throw new IllegalArgumentException("Invalid pattern specification");
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static class StyleFormatter implements InternalPrinter, InternalParser {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static final ConcurrentHashMap<StyleFormatterCacheKey, DateTimeFormatter> f13824Wwwwwwwwwwwwwwwwwwwwww = new ConcurrentHashMap<>();

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f13825Wwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f13826Wwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f13827Wwwwwwwwwwwwwwwwwwwwwwwww;

        public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Locale locale) {
            DateFormat dateInstance;
            int i = this.f13825Wwwwwwwwwwwwwwwwwwwwwww;
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        dateInstance = null;
                    } else {
                        dateInstance = DateFormat.getDateTimeInstance(this.f13827Wwwwwwwwwwwwwwwwwwwwwwwww, this.f13826Wwwwwwwwwwwwwwwwwwwwwwww, locale);
                    }
                } else {
                    dateInstance = DateFormat.getTimeInstance(this.f13826Wwwwwwwwwwwwwwwwwwwwwwww, locale);
                }
            } else {
                dateInstance = DateFormat.getDateInstance(this.f13827Wwwwwwwwwwwwwwwwwwwwwwwww, locale);
            }
            if (dateInstance instanceof SimpleDateFormat) {
                return ((SimpleDateFormat) dateInstance).toPattern();
            }
            throw new IllegalArgumentException("No datetime pattern for locale: " + locale);
        }

        public final DateTimeFormatter Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Locale locale) {
            if (locale == null) {
                locale = Locale.getDefault();
            }
            StyleFormatterCacheKey styleFormatterCacheKey = new StyleFormatterCacheKey(this.f13825Wwwwwwwwwwwwwwwwwwwwwww, this.f13827Wwwwwwwwwwwwwwwwwwwwwwwww, this.f13826Wwwwwwwwwwwwwwwwwwwwwwww, locale);
            ConcurrentHashMap<StyleFormatterCacheKey, DateTimeFormatter> concurrentHashMap = f13824Wwwwwwwwwwwwwwwwwwwwww;
            DateTimeFormatter dateTimeFormatter = concurrentHashMap.get(styleFormatterCacheKey);
            if (dateTimeFormatter == null) {
                DateTimeFormatter Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = DateTimeFormat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(locale));
                DateTimeFormatter putIfAbsent = concurrentHashMap.putIfAbsent(styleFormatterCacheKey, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                if (putIfAbsent != null) {
                    return putIfAbsent;
                }
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            }
            return dateTimeFormatter;
        }

        @Override // org.joda.time.format.InternalParser
        public int estimateParsedLength() {
            return 40;
        }

        @Override // org.joda.time.format.InternalPrinter
        public int estimatePrintedLength() {
            return 40;
        }

        @Override // org.joda.time.format.InternalParser
        public int parseInto(DateTimeParserBucket dateTimeParserBucket, CharSequence charSequence, int i) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(dateTimeParserBucket.Wwwwwwwwwwwwwwwwwwww()).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().parseInto(dateTimeParserBucket, charSequence, i);
        }

        @Override // org.joda.time.format.InternalPrinter
        public void printTo(Appendable appendable, long j, Chronology chronology, int i, DateTimeZone dateTimeZone, Locale locale) throws IOException {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(locale).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().printTo(appendable, j, chronology, i, dateTimeZone, locale);
        }

        @Override // org.joda.time.format.InternalPrinter
        public void printTo(Appendable appendable, ReadablePartial readablePartial, Locale locale) throws IOException {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(locale).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().printTo(appendable, readablePartial, locale);
        }
    }
}
