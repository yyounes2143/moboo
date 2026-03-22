package org.joda.time.format;

import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentMap;
import java.util.regex.Pattern;
import org.joda.time.DurationFieldType;
import org.joda.time.PeriodType;
import org.joda.time.ReadWritablePeriod;
import org.joda.time.ReadablePeriod;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class PeriodFormatterBuilder {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final ConcurrentMap<String, Pattern> f13956Wwwwwwwwwwwwwwwwwwwwwwwww = new ConcurrentHashMap();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public FieldFormatter[] f13957Wwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f13958Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f13959Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public List<Object> f13960Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public PeriodFieldAffix f13961Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f13962Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f13963Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f13964Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f13965Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static class Composite implements PeriodPrinter, PeriodParser {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final PeriodParser[] f13966Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final PeriodPrinter[] f13967Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Composite(List<Object> list) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(list, arrayList, arrayList2);
            if (arrayList.size() <= 0) {
                this.f13967Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
            } else {
                this.f13967Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = (PeriodPrinter[]) arrayList.toArray(new PeriodPrinter[arrayList.size()]);
            }
            if (arrayList2.size() <= 0) {
                this.f13966Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
            } else {
                this.f13966Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = (PeriodParser[]) arrayList2.toArray(new PeriodParser[arrayList2.size()]);
            }
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(List<Object> list, List<Object> list2, List<Object> list3) {
            int size = list.size();
            for (int i = 0; i < size; i += 2) {
                Object obj = list.get(i);
                if (obj instanceof PeriodPrinter) {
                    if (obj instanceof Composite) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(list2, ((Composite) obj).f13967Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                    } else {
                        list2.add(obj);
                    }
                }
                Object obj2 = list.get(i + 1);
                if (obj2 instanceof PeriodParser) {
                    if (obj2 instanceof Composite) {
                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(list3, ((Composite) obj2).f13966Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                    } else {
                        list3.add(obj2);
                    }
                }
            }
        }

        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(List<Object> list, Object[] objArr) {
            if (objArr != null) {
                for (Object obj : objArr) {
                    list.add(obj);
                }
            }
        }

        @Override // org.joda.time.format.PeriodPrinter
        public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ReadablePeriod readablePeriod, Locale locale) {
            PeriodPrinter[] periodPrinterArr = this.f13967Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            int length = periodPrinterArr.length;
            int i = 0;
            while (true) {
                length--;
                if (length >= 0) {
                    i += periodPrinterArr[length].Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(readablePeriod, locale);
                } else {
                    return i;
                }
            }
        }

        @Override // org.joda.time.format.PeriodPrinter
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(StringBuffer stringBuffer, ReadablePeriod readablePeriod, Locale locale) {
            for (PeriodPrinter periodPrinter : this.f13967Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                periodPrinter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(stringBuffer, readablePeriod, locale);
            }
        }

        @Override // org.joda.time.format.PeriodPrinter
        public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ReadablePeriod readablePeriod, int i, Locale locale) {
            PeriodPrinter[] periodPrinterArr = this.f13967Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            int length = periodPrinterArr.length;
            int i2 = 0;
            while (i2 < i) {
                length--;
                if (length < 0) {
                    break;
                }
                i2 += periodPrinterArr[length].Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(readablePeriod, Integer.MAX_VALUE, locale);
            }
            return i2;
        }

        @Override // org.joda.time.format.PeriodParser
        public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ReadWritablePeriod readWritablePeriod, String str, int i, Locale locale) {
            PeriodParser[] periodParserArr = this.f13966Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (periodParserArr != null) {
                int length = periodParserArr.length;
                for (int i2 = 0; i2 < length && i >= 0; i2++) {
                    i = periodParserArr[i2].Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(readWritablePeriod, str, i, locale);
                }
                return i;
            }
            throw new UnsupportedOperationException();
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static class CompositeAffix extends IgnorableAffix {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String[] f13968Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final PeriodFieldAffix f13969Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final PeriodFieldAffix f13970Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public CompositeAffix(PeriodFieldAffix periodFieldAffix, PeriodFieldAffix periodFieldAffix2) {
            String[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            this.f13970Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = periodFieldAffix;
            this.f13969Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = periodFieldAffix2;
            HashSet hashSet = new HashSet();
            for (String str : periodFieldAffix.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                for (String str2 : this.f13969Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                    hashSet.add(str + str2);
                }
            }
            this.f13968Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = (String[]) hashSet.toArray(new String[hashSet.size()]);
        }

        @Override // org.joda.time.format.PeriodFormatterBuilder.PeriodFieldAffix
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(StringBuffer stringBuffer, int i) {
            this.f13970Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(stringBuffer, i);
            this.f13969Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(stringBuffer, i);
        }

        @Override // org.joda.time.format.PeriodFormatterBuilder.PeriodFieldAffix
        public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, int i) {
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f13970Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, i);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 >= 0 && (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f13969Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) >= 0 && Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) - Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, str, i)) {
                return ~i;
            }
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }

        @Override // org.joda.time.format.PeriodFormatterBuilder.PeriodFieldAffix
        public String[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return (String[]) this.f13968Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clone();
        }

        @Override // org.joda.time.format.PeriodFormatterBuilder.PeriodFieldAffix
        public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
            return this.f13970Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i) + this.f13969Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i);
        }

        @Override // org.joda.time.format.PeriodFormatterBuilder.PeriodFieldAffix
        public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, int i) {
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = this.f13970Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, i);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 >= 0 && ((Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f13969Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, this.f13970Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3))) < 0 || !Wwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f13969Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) - Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, str, i))) {
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 > 0) {
                    return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3;
                }
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            }
            return ~i;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static abstract class IgnorableAffix implements PeriodFieldAffix {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public volatile String[] f13979Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, String str, int i2) {
            String str2;
            int i3;
            if (this.f13979Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
                String[] strArr = this.f13979Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                int length = strArr.length;
                int i4 = 0;
                while (i4 < length) {
                    String str3 = strArr[i4];
                    int length2 = str3.length();
                    if (i < length2) {
                        str2 = str;
                        i3 = i2;
                        if (str2.regionMatches(true, i3, str3, 0, length2)) {
                            return true;
                        }
                    } else {
                        str2 = str;
                        i3 = i2;
                    }
                    if (i == length2 && str2.regionMatches(false, i3, str3, 0, length2)) {
                        return true;
                    }
                    i4++;
                    str = str2;
                    i2 = i3;
                }
            }
            return false;
        }

        @Override // org.joda.time.format.PeriodFormatterBuilder.PeriodFieldAffix
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Set<PeriodFieldAffix> set) {
            String[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            String[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3;
            if (this.f13979Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                int i = Integer.MAX_VALUE;
                String str = null;
                for (String str2 : Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                    if (str2.length() < i) {
                        i = str2.length();
                        str = str2;
                    }
                }
                HashSet hashSet = new HashSet();
                for (PeriodFieldAffix periodFieldAffix : set) {
                    if (periodFieldAffix != null) {
                        for (String str3 : periodFieldAffix.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                            if (str3.length() > i || (str3.equalsIgnoreCase(str) && !str3.equals(str))) {
                                hashSet.add(str3);
                            }
                        }
                    }
                }
                this.f13979Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = (String[]) hashSet.toArray(new String[hashSet.size()]);
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static class Literal implements PeriodPrinter, PeriodParser {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static final Literal f13980Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Literal("");

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f13981Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Literal(String str) {
            this.f13981Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        }

        @Override // org.joda.time.format.PeriodPrinter
        public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ReadablePeriod readablePeriod, Locale locale) {
            return this.f13981Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.length();
        }

        @Override // org.joda.time.format.PeriodPrinter
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(StringBuffer stringBuffer, ReadablePeriod readablePeriod, Locale locale) {
            stringBuffer.append(this.f13981Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }

        @Override // org.joda.time.format.PeriodPrinter
        public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ReadablePeriod readablePeriod, int i, Locale locale) {
            return 0;
        }

        @Override // org.joda.time.format.PeriodParser
        public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ReadWritablePeriod readWritablePeriod, String str, int i, Locale locale) {
            String str2 = this.f13981Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (str.regionMatches(true, i, str2, 0, str2.length())) {
                return i + this.f13981Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.length();
            }
            return ~i;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public interface PeriodFieldAffix {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Set<PeriodFieldAffix> set);

        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(StringBuffer stringBuffer, int i);

        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, int i);

        String[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i);

        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, int i);
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static class PluralAffix extends IgnorableAffix {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f13982Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f13983Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public PluralAffix(String str, String str2) {
            this.f13983Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
            this.f13982Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str2;
        }

        @Override // org.joda.time.format.PeriodFormatterBuilder.PeriodFieldAffix
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(StringBuffer stringBuffer, int i) {
            String str;
            if (i == 1) {
                str = this.f13983Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            } else {
                str = this.f13982Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            }
            stringBuffer.append(str);
        }

        @Override // org.joda.time.format.PeriodFormatterBuilder.PeriodFieldAffix
        public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, int i) {
            String str2;
            String str3;
            int length;
            String str4 = this.f13982Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            String str5 = this.f13983Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (str4.length() < str5.length()) {
                str3 = str4;
                str2 = str5;
            } else {
                str2 = str4;
                str3 = str5;
            }
            if (str.regionMatches(true, i, str2, 0, str2.length()) && !Wwwwwwwwwwwwwwwwwwwwwwwwwwww(str2.length(), str, i)) {
                length = str2.length();
            } else if (str.regionMatches(true, i, str3, 0, str3.length()) && !Wwwwwwwwwwwwwwwwwwwwwwwwwwww(str3.length(), str, i)) {
                length = str3.length();
            } else {
                return ~i;
            }
            return i + length;
        }

        @Override // org.joda.time.format.PeriodFormatterBuilder.PeriodFieldAffix
        public String[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return new String[]{this.f13983Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f13982Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww};
        }

        @Override // org.joda.time.format.PeriodFormatterBuilder.PeriodFieldAffix
        public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
            String str;
            if (i == 1) {
                str = this.f13983Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            } else {
                str = this.f13982Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            }
            return str.length();
        }

        @Override // org.joda.time.format.PeriodFormatterBuilder.PeriodFieldAffix
        public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, int i) {
            String str2;
            String str3;
            String str4 = this.f13982Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            String str5 = this.f13983Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (str4.length() < str5.length()) {
                str3 = str4;
                str2 = str5;
            } else {
                str2 = str4;
                str3 = str5;
            }
            int length = str2.length();
            int length2 = str3.length();
            int length3 = str.length();
            int i2 = i;
            while (i2 < length3) {
                String str6 = str;
                if (!str6.regionMatches(true, i2, str2, 0, length) || Wwwwwwwwwwwwwwwwwwwwwwwwwwww(str2.length(), str6, i2)) {
                    int i3 = length2;
                    if (!str6.regionMatches(true, i2, str3, 0, i3) || Wwwwwwwwwwwwwwwwwwwwwwwwwwww(str3.length(), str6, i2)) {
                        i2++;
                        str = str6;
                        length2 = i3;
                    }
                }
                return i2;
            }
            return ~i;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static class RegExAffix extends IgnorableAffix {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static final Comparator<String> f13984Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Comparator<String>() { // from class: org.joda.time.format.PeriodFormatterBuilder.RegExAffix.1
            @Override // java.util.Comparator
            /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
            public int compare(String str, String str2) {
                return str2.length() - str.length();
            }
        };

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String[] f13985Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Pattern[] f13986Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String[] f13987Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public RegExAffix(String[] strArr, String[] strArr2) {
            this.f13987Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = (String[]) strArr2.clone();
            this.f13986Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Pattern[strArr.length];
            for (int i = 0; i < strArr.length; i++) {
                Pattern pattern = (Pattern) PeriodFormatterBuilder.f13956Wwwwwwwwwwwwwwwwwwwwwwwww.get(strArr[i]);
                if (pattern == null) {
                    pattern = Pattern.compile(strArr[i]);
                    PeriodFormatterBuilder.f13956Wwwwwwwwwwwwwwwwwwwwwwwww.putIfAbsent(strArr[i], pattern);
                }
                this.f13986Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[i] = pattern;
            }
            String[] strArr3 = (String[]) this.f13987Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clone();
            this.f13985Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = strArr3;
            Arrays.sort(strArr3, f13984Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }

        public final int Wwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
            String valueOf = String.valueOf(i);
            int i2 = 0;
            while (true) {
                Pattern[] patternArr = this.f13986Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (i2 < patternArr.length) {
                    if (patternArr[i2].matcher(valueOf).matches()) {
                        return i2;
                    }
                    i2++;
                } else {
                    return patternArr.length - 1;
                }
            }
        }

        @Override // org.joda.time.format.PeriodFormatterBuilder.PeriodFieldAffix
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(StringBuffer stringBuffer, int i) {
            stringBuffer.append(this.f13987Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[Wwwwwwwwwwwwwwwwwwwwwwwwwww(i)]);
        }

        @Override // org.joda.time.format.PeriodFormatterBuilder.PeriodFieldAffix
        public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, int i) {
            String[] strArr = this.f13985Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            int length = strArr.length;
            int i2 = 0;
            while (i2 < length) {
                String str2 = strArr[i2];
                String str3 = str;
                int i3 = i;
                if (str3.regionMatches(true, i3, str2, 0, str2.length()) && !Wwwwwwwwwwwwwwwwwwwwwwwwwwww(str2.length(), str3, i3)) {
                    return i3 + str2.length();
                }
                i2++;
                str = str3;
                i = i3;
            }
            return ~i;
        }

        @Override // org.joda.time.format.PeriodFormatterBuilder.PeriodFieldAffix
        public String[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return (String[]) this.f13987Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clone();
        }

        @Override // org.joda.time.format.PeriodFormatterBuilder.PeriodFieldAffix
        public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
            return this.f13987Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[Wwwwwwwwwwwwwwwwwwwwwwwwwww(i)].length();
        }

        @Override // org.joda.time.format.PeriodFormatterBuilder.PeriodFieldAffix
        public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, int i) {
            int length = str.length();
            for (int i2 = i; i2 < length; i2++) {
                String[] strArr = this.f13985Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                int length2 = strArr.length;
                int i3 = 0;
                while (i3 < length2) {
                    String str2 = strArr[i3];
                    String str3 = str;
                    if (str3.regionMatches(true, i2, str2, 0, str2.length()) && !Wwwwwwwwwwwwwwwwwwwwwwwwwwww(str2.length(), str3, i2)) {
                        return i2;
                    }
                    i3++;
                    str = str3;
                }
            }
            return ~i;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static class Separator implements PeriodPrinter, PeriodParser {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public volatile PeriodParser f13988Wwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final PeriodParser f13989Wwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public volatile PeriodPrinter f13990Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final PeriodPrinter f13991Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final boolean f13992Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final boolean f13993Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String[] f13994Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f13995Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f13996Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Separator(String str, String str2, String[] strArr, PeriodPrinter periodPrinter, PeriodParser periodParser, boolean z, boolean z2) {
            this.f13996Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
            this.f13995Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str2;
            if ((str2 != null && !str.equals(str2)) || (strArr != null && strArr.length != 0)) {
                TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
                treeSet.add(str);
                treeSet.add(str2);
                if (strArr != null) {
                    int length = strArr.length;
                    while (true) {
                        length--;
                        if (length < 0) {
                            break;
                        }
                        treeSet.add(strArr[length]);
                    }
                }
                ArrayList arrayList = new ArrayList(treeSet);
                Collections.reverse(arrayList);
                this.f13994Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = (String[]) arrayList.toArray(new String[arrayList.size()]);
            } else {
                this.f13994Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new String[]{str};
            }
            this.f13991Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = periodPrinter;
            this.f13989Wwwwwwwwwwwwwwwwwwwwwwwwwww = periodParser;
            this.f13993Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
            this.f13992Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z2;
        }

        public Separator Wwwwwwwwwwwwwwwwwwwwwwwwwwww(PeriodPrinter periodPrinter, PeriodParser periodParser) {
            this.f13990Wwwwwwwwwwwwwwwwwwwwwwwwwwww = periodPrinter;
            this.f13988Wwwwwwwwwwwwwwwwwwwwwwwwww = periodParser;
            return this;
        }

        @Override // org.joda.time.format.PeriodPrinter
        public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ReadablePeriod readablePeriod, Locale locale) {
            int length;
            String str;
            PeriodPrinter periodPrinter = this.f13991Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            PeriodPrinter periodPrinter2 = this.f13990Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = periodPrinter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(readablePeriod, locale) + periodPrinter2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(readablePeriod, locale);
            if (this.f13993Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                if (periodPrinter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(readablePeriod, 1, locale) > 0) {
                    if (this.f13992Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = periodPrinter2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(readablePeriod, 2, locale);
                        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 > 0) {
                            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 > 1) {
                                str = this.f13996Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                            } else {
                                str = this.f13995Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                            }
                            length = str.length();
                        }
                    } else {
                        length = this.f13996Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.length();
                    }
                    return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 + length;
                }
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            }
            if (this.f13992Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww && periodPrinter2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(readablePeriod, 1, locale) > 0) {
                length = this.f13996Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.length();
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 + length;
            }
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }

        @Override // org.joda.time.format.PeriodPrinter
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(StringBuffer stringBuffer, ReadablePeriod readablePeriod, Locale locale) {
            String str;
            PeriodPrinter periodPrinter = this.f13991Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            PeriodPrinter periodPrinter2 = this.f13990Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
            periodPrinter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(stringBuffer, readablePeriod, locale);
            if (this.f13993Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                if (periodPrinter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(readablePeriod, 1, locale) > 0) {
                    if (this.f13992Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = periodPrinter2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(readablePeriod, 2, locale);
                        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 > 0) {
                            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 > 1) {
                                str = this.f13996Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                            } else {
                                str = this.f13995Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                            }
                            stringBuffer.append(str);
                        }
                    } else {
                        stringBuffer.append(this.f13996Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                    }
                }
            } else if (this.f13992Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww && periodPrinter2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(readablePeriod, 1, locale) > 0) {
                stringBuffer.append(this.f13996Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            }
            periodPrinter2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(stringBuffer, readablePeriod, locale);
        }

        @Override // org.joda.time.format.PeriodPrinter
        public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ReadablePeriod readablePeriod, int i, Locale locale) {
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f13991Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(readablePeriod, i, locale);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 < i) {
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 + this.f13990Wwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(readablePeriod, i, locale);
            }
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }

        /* JADX WARN: Removed duplicated region for block: B:26:0x0047  */
        /* JADX WARN: Removed duplicated region for block: B:44:? A[RETURN, SYNTHETIC] */
        @Override // org.joda.time.format.PeriodParser
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(org.joda.time.ReadWritablePeriod r11, java.lang.String r12, int r13, java.util.Locale r14) {
            /*
                r10 = this;
                org.joda.time.format.PeriodParser r0 = r10.f13989Wwwwwwwwwwwwwwwwwwwwwwwwwww
                int r3 = r0.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r11, r12, r13, r14)
                if (r3 >= 0) goto L9
                return r3
            L9:
                r0 = 0
                if (r3 <= r13) goto L3c
                java.lang.String[] r13 = r10.f13994Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                int r7 = r13.length
                r8 = r0
            L10:
                if (r8 >= r7) goto L3c
                r4 = r13[r8]
                if (r4 == 0) goto L2e
                int r1 = r4.length()
                if (r1 == 0) goto L2e
                r5 = 0
                int r6 = r4.length()
                r2 = 1
                r1 = r12
                boolean r12 = r1.regionMatches(r2, r3, r4, r5, r6)
                if (r12 == 0) goto L2a
                goto L2f
            L2a:
                int r8 = r8 + 1
                r12 = r1
                goto L10
            L2e:
                r1 = r12
            L2f:
                if (r4 != 0) goto L32
                goto L36
            L32:
                int r0 = r4.length()
            L36:
                int r3 = r3 + r0
                r12 = 1
                r9 = r0
                r0 = r12
                r12 = r9
                goto L3e
            L3c:
                r1 = r12
                r12 = -1
            L3e:
                org.joda.time.format.PeriodParser r13 = r10.f13988Wwwwwwwwwwwwwwwwwwwwwwwwww
                int r11 = r13.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r11, r1, r3, r14)
                if (r11 >= 0) goto L47
                goto L58
            L47:
                if (r0 == 0) goto L4f
                if (r11 != r3) goto L4f
                if (r12 <= 0) goto L4f
                int r11 = ~r3
                return r11
            L4f:
                if (r11 <= r3) goto L58
                if (r0 != 0) goto L58
                boolean r12 = r10.f13993Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                if (r12 != 0) goto L58
                int r11 = ~r3
            L58:
                return r11
            */
            throw new UnsupportedOperationException("Method not decompiled: org.joda.time.format.PeriodFormatterBuilder.Separator.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(org.joda.time.ReadWritablePeriod, java.lang.String, int, java.util.Locale):int");
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static class SimpleAffix extends IgnorableAffix {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f13997Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public SimpleAffix(String str) {
            this.f13997Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        }

        @Override // org.joda.time.format.PeriodFormatterBuilder.PeriodFieldAffix
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(StringBuffer stringBuffer, int i) {
            stringBuffer.append(this.f13997Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }

        @Override // org.joda.time.format.PeriodFormatterBuilder.PeriodFieldAffix
        public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, int i) {
            String str2 = this.f13997Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            int length = str2.length();
            if (str.regionMatches(true, i, str2, 0, length) && !Wwwwwwwwwwwwwwwwwwwwwwwwwwww(length, str, i)) {
                return i + length;
            }
            return ~i;
        }

        @Override // org.joda.time.format.PeriodFormatterBuilder.PeriodFieldAffix
        public String[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return new String[]{this.f13997Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww};
        }

        @Override // org.joda.time.format.PeriodFormatterBuilder.PeriodFieldAffix
        public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
            return this.f13997Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.length();
        }

        @Override // org.joda.time.format.PeriodFormatterBuilder.PeriodFieldAffix
        public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, int i) {
            String str2 = this.f13997Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            int length = str2.length();
            int length2 = str.length();
            int i2 = i;
            while (i2 < length2) {
                String str3 = str;
                if (str3.regionMatches(true, i2, str2, 0, length) && !Wwwwwwwwwwwwwwwwwwwwwwwwwwww(length, str3, i2)) {
                    return i2;
                }
                switch (str3.charAt(i2)) {
                    case '+':
                    case ',':
                    case '-':
                    case '.':
                    case '0':
                    case '1':
                    case '2':
                    case '3':
                    case '4':
                    case '5':
                    case '6':
                    case '7':
                    case '8':
                    case '9':
                        i2++;
                        str = str3;
                    case '/':
                    default:
                        return ~i;
                }
            }
            return ~i;
        }
    }

    public PeriodFormatterBuilder() {
        Wwwwwwwwwwwww();
    }

    public static PeriodFormatter Wwwwwwwww(List<Object> list, boolean z, boolean z2) {
        if (z && z2) {
            throw new IllegalStateException("Builder has created neither a printer nor a parser");
        }
        int size = list.size();
        if (size >= 2 && (list.get(0) instanceof Separator)) {
            Separator separator = (Separator) list.get(0);
            if (separator.f13988Wwwwwwwwwwwwwwwwwwwwwwwwww == null && separator.f13990Wwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                PeriodFormatter Wwwwwwwww2 = Wwwwwwwww(list.subList(2, size), z, z2);
                Separator Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = separator.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                return new PeriodFormatter(Wwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            }
        }
        Object[] Wwwwwwwwwww2 = Wwwwwwwwwww(list);
        if (z) {
            return new PeriodFormatter(null, (PeriodParser) Wwwwwwwwwww2[1]);
        }
        if (z2) {
            return new PeriodFormatter((PeriodPrinter) Wwwwwwwwwww2[0], null);
        }
        return new PeriodFormatter((PeriodPrinter) Wwwwwwwwwww2[0], (PeriodParser) Wwwwwwwwwww2[1]);
    }

    public static Object[] Wwwwwwwwwww(List<Object> list) {
        int size = list.size();
        if (size != 0) {
            if (size != 1) {
                Composite composite = new Composite(list);
                return new Object[]{composite, composite};
            }
            return new Object[]{list.get(0), list.get(1)};
        }
        Literal literal = Literal.f13980Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        return new Object[]{literal, literal};
    }

    public PeriodFormatter Wwwwwwwwww() {
        FieldFormatter[] fieldFormatterArr;
        PeriodFormatter Wwwwwwwww2 = Wwwwwwwww(this.f13960Wwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f13959Wwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f13958Wwwwwwwwwwwwwwwwwwwwwwwwwww);
        for (FieldFormatter fieldFormatter : this.f13957Wwwwwwwwwwwwwwwwwwwwwwwwww) {
            if (fieldFormatter != null) {
                fieldFormatter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f13957Wwwwwwwwwwwwwwwwwwwwwwwwww);
            }
        }
        this.f13957Wwwwwwwwwwwwwwwwwwwwwwwwww = (FieldFormatter[]) this.f13957Wwwwwwwwwwwwwwwwwwwwwwwwww.clone();
        return Wwwwwwwww2;
    }

    public final void Wwwwwwwwwwww() throws IllegalStateException {
        if (this.f13961Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
            this.f13961Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
            return;
        }
        throw new IllegalStateException("Prefix not followed by field");
    }

    public void Wwwwwwwwwwwww() {
        this.f13965Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 1;
        this.f13964Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 2;
        this.f13963Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 10;
        this.f13962Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = false;
        this.f13961Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
        List<Object> list = this.f13960Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (list == null) {
            this.f13960Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();
        } else {
            list.clear();
        }
        this.f13959Wwwwwwwwwwwwwwwwwwwwwwwwwwww = false;
        this.f13958Wwwwwwwwwwwwwwwwwwwwwwwwwww = false;
        this.f13957Wwwwwwwwwwwwwwwwwwwwwwwwww = new FieldFormatter[10];
    }

    public PeriodFormatterBuilder Wwwwwwwwwwwwww() {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(0);
        return this;
    }

    public PeriodFormatterBuilder Wwwwwwwwwwwwwww() {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(2);
        return this;
    }

    public PeriodFormatterBuilder Wwwwwwwwwwwwwwww(String[] strArr, String[] strArr2) {
        if (strArr != null && strArr2 != null && strArr.length >= 1 && strArr.length == strArr2.length) {
            return Wwwwwwwwwwwwwwwww(new RegExAffix(strArr, strArr2));
        }
        throw new IllegalArgumentException();
    }

    public final PeriodFormatterBuilder Wwwwwwwwwwwwwwwww(PeriodFieldAffix periodFieldAffix) {
        Object obj;
        Object obj2;
        List<Object> list;
        List<Object> list2;
        List<Object> list3;
        List<Object> list4;
        if (this.f13960Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.size() > 0) {
            obj = this.f13960Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(list3.size() - 2);
            obj2 = this.f13960Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(list4.size() - 1);
        } else {
            obj = null;
            obj2 = null;
        }
        if (obj != null && obj2 != null && obj == obj2 && (obj instanceof FieldFormatter)) {
            Wwwwwwwwwwww();
            FieldFormatter fieldFormatter = new FieldFormatter((FieldFormatter) obj, periodFieldAffix);
            this.f13960Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.set(list.size() - 2, fieldFormatter);
            this.f13960Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.set(list2.size() - 1, fieldFormatter);
            this.f13957Wwwwwwwwwwwwwwwwwwwwwwwwww[fieldFormatter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()] = fieldFormatter;
            return this;
        }
        throw new IllegalStateException("No field to apply suffix to");
    }

    public PeriodFormatterBuilder Wwwwwwwwwwwwwwwwww(String str, String str2) {
        if (str != null && str2 != null) {
            return Wwwwwwwwwwwwwwwww(new PluralAffix(str, str2));
        }
        throw new IllegalArgumentException();
    }

    public PeriodFormatterBuilder Wwwwwwwwwwwwwwwwwww(String str) {
        if (str != null) {
            return Wwwwwwwwwwwwwwwww(new SimpleAffix(str));
        }
        throw new IllegalArgumentException();
    }

    public PeriodFormatterBuilder Wwwwwwwwwwwwwwwwwwww(String str) {
        return Wwwwwwwwwwwwwwwwwwwww(str, str, null, false, true);
    }

    public final PeriodFormatterBuilder Wwwwwwwwwwwwwwwwwwwww(String str, String str2, String[] strArr, boolean z, boolean z2) {
        Separator separator;
        if (str != null && str2 != null) {
            Wwwwwwwwwwww();
            List<Object> list = this.f13960Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (list.size() == 0) {
                if (z2 && !z) {
                    Literal literal = Literal.f13980Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    Separator separator2 = new Separator(str, str2, strArr, literal, literal, z, z2);
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(separator2, separator2);
                }
                return this;
            }
            int size = list.size();
            while (true) {
                int i = size - 1;
                if (i >= 0) {
                    if (list.get(i) instanceof Separator) {
                        separator = (Separator) list.get(i);
                        list = list.subList(size, list.size());
                        break;
                    }
                    size -= 2;
                } else {
                    separator = null;
                    break;
                }
            }
            if (separator != null && list.size() == 0) {
                throw new IllegalStateException("Cannot have two adjacent separators");
            }
            Object[] Wwwwwwwwwww2 = Wwwwwwwwwww(list);
            list.clear();
            Separator separator3 = new Separator(str, str2, strArr, (PeriodPrinter) Wwwwwwwwwww2[0], (PeriodParser) Wwwwwwwwwww2[1], z, z2);
            list.add(separator3);
            list.add(separator3);
            return this;
        }
        throw new IllegalArgumentException();
    }

    public PeriodFormatterBuilder Wwwwwwwwwwwwwwwwwwwwww(String str, String str2, String[] strArr) {
        return Wwwwwwwwwwwwwwwwwwwww(str, str2, strArr, true, true);
    }

    public PeriodFormatterBuilder Wwwwwwwwwwwwwwwwwwwwwww() {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(9);
        return this;
    }

    public PeriodFormatterBuilder Wwwwwwwwwwwwwwwwwwwwwwww() {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(6);
        return this;
    }

    public PeriodFormatterBuilder Wwwwwwwwwwwwwwwwwwwwwwwww() {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(1);
        return this;
    }

    public PeriodFormatterBuilder Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(5);
        return this;
    }

    public PeriodFormatterBuilder Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(7);
        return this;
    }

    public PeriodFormatterBuilder Wwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        if (str != null) {
            Wwwwwwwwwwww();
            Literal literal = new Literal(str);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(literal, literal);
            return this;
        }
        throw new IllegalArgumentException("Literal must not be null");
    }

    public PeriodFormatterBuilder Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(4);
        return this;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2) {
        FieldFormatter fieldFormatter = new FieldFormatter(i2, this.f13964Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f13963Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f13962Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, i, this.f13957Wwwwwwwwwwwwwwwwwwwwwwwwww, this.f13961Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww, null);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(fieldFormatter, fieldFormatter);
        this.f13957Wwwwwwwwwwwwwwwwwwwwwwwwww[i] = fieldFormatter;
        this.f13961Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, this.f13965Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public PeriodFormatterBuilder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(3);
        return this;
    }

    public final PeriodFormatterBuilder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(PeriodPrinter periodPrinter, PeriodParser periodParser) {
        boolean z;
        this.f13960Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(periodPrinter);
        this.f13960Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(periodParser);
        boolean z2 = this.f13959Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
        boolean z3 = false;
        if (periodPrinter == null) {
            z = true;
        } else {
            z = false;
        }
        this.f13959Wwwwwwwwwwwwwwwwwwwwwwwwwwww = z | z2;
        boolean z4 = this.f13958Wwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (periodParser == null) {
            z3 = true;
        }
        this.f13958Wwwwwwwwwwwwwwwwwwwwwwwwwww = z4 | z3;
        return this;
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static class FieldFormatter implements PeriodPrinter, PeriodParser {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final PeriodFieldAffix f13971Wwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final PeriodFieldAffix f13972Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final FieldFormatter[] f13973Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f13974Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final boolean f13975Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f13976Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f13977Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f13978Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public FieldFormatter(int i, int i2, int i3, boolean z, int i4, FieldFormatter[] fieldFormatterArr, PeriodFieldAffix periodFieldAffix, PeriodFieldAffix periodFieldAffix2) {
            this.f13978Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
            this.f13977Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i2;
            this.f13976Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i3;
            this.f13975Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
            this.f13974Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i4;
            this.f13973Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = fieldFormatterArr;
            this.f13972Wwwwwwwwwwwwwwwwwwwwwwwwwwww = periodFieldAffix;
            this.f13971Wwwwwwwwwwwwwwwwwwwwwwwwwww = periodFieldAffix2;
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwww(ReadWritablePeriod readWritablePeriod, int i, int i2) {
            switch (i) {
                case 0:
                    readWritablePeriod.setYears(i2);
                    return;
                case 1:
                    readWritablePeriod.setMonths(i2);
                    return;
                case 2:
                    readWritablePeriod.setWeeks(i2);
                    return;
                case 3:
                    readWritablePeriod.setDays(i2);
                    return;
                case 4:
                    readWritablePeriod.setHours(i2);
                    return;
                case 5:
                    readWritablePeriod.setMinutes(i2);
                    return;
                case 6:
                    readWritablePeriod.setSeconds(i2);
                    return;
                case 7:
                    readWritablePeriod.setMillis(i2);
                    return;
                default:
                    return;
            }
        }

        public final int Wwwwwwwwwwwwwwwwwwwwwwwww(String str, int i, int i2) {
            if (i2 >= 10) {
                return Integer.parseInt(str.substring(i, i2 + i));
            }
            boolean z = false;
            if (i2 <= 0) {
                return 0;
            }
            int i3 = i + 1;
            char charAt = str.charAt(i);
            int i4 = i2 - 1;
            if (charAt == '-') {
                i4 = i2 - 2;
                if (i4 < 0) {
                    return 0;
                }
                charAt = str.charAt(i3);
                z = true;
                i3 = i + 2;
            }
            int i5 = charAt - '0';
            while (true) {
                int i6 = i4 - 1;
                if (i4 <= 0) {
                    break;
                }
                i4 = i6;
                i3++;
                i5 = (((i5 << 3) + (i5 << 1)) + str.charAt(i3)) - 48;
            }
            if (z) {
                return -i5;
            }
            return i5;
        }

        public boolean Wwwwwwwwwwwwwwwwwwwwwwwwww(ReadablePeriod readablePeriod) {
            int size = readablePeriod.size();
            for (int i = 0; i < size; i++) {
                if (readablePeriod.getValue(i) != 0) {
                    return false;
                }
            }
            return true;
        }

        public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwww(PeriodType periodType, int i) {
            switch (i) {
                case 0:
                    return periodType.isSupported(DurationFieldType.years());
                case 1:
                    return periodType.isSupported(DurationFieldType.months());
                case 2:
                    return periodType.isSupported(DurationFieldType.weeks());
                case 3:
                    return periodType.isSupported(DurationFieldType.days());
                case 4:
                    return periodType.isSupported(DurationFieldType.hours());
                case 5:
                    return periodType.isSupported(DurationFieldType.minutes());
                case 6:
                    return periodType.isSupported(DurationFieldType.seconds());
                case 7:
                    return periodType.isSupported(DurationFieldType.millis());
                case 8:
                case 9:
                    if (!periodType.isSupported(DurationFieldType.seconds()) && !periodType.isSupported(DurationFieldType.millis())) {
                        return false;
                    }
                    return true;
                default:
                    return false;
            }
        }

        public long Wwwwwwwwwwwwwwwwwwwwwwwwwwww(ReadablePeriod readablePeriod) {
            PeriodType periodType;
            int i;
            long j;
            if (this.f13977Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == 4) {
                periodType = null;
            } else {
                periodType = readablePeriod.getPeriodType();
            }
            if (periodType != null && !Wwwwwwwwwwwwwwwwwwwwwwwwwww(periodType, this.f13974Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                return Long.MAX_VALUE;
            }
            switch (this.f13974Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                case 0:
                    i = readablePeriod.get(DurationFieldType.years());
                    j = i;
                    break;
                case 1:
                    i = readablePeriod.get(DurationFieldType.months());
                    j = i;
                    break;
                case 2:
                    i = readablePeriod.get(DurationFieldType.weeks());
                    j = i;
                    break;
                case 3:
                    i = readablePeriod.get(DurationFieldType.days());
                    j = i;
                    break;
                case 4:
                    i = readablePeriod.get(DurationFieldType.hours());
                    j = i;
                    break;
                case 5:
                    i = readablePeriod.get(DurationFieldType.minutes());
                    j = i;
                    break;
                case 6:
                    i = readablePeriod.get(DurationFieldType.seconds());
                    j = i;
                    break;
                case 7:
                    i = readablePeriod.get(DurationFieldType.millis());
                    j = i;
                    break;
                case 8:
                case 9:
                    j = (readablePeriod.get(DurationFieldType.seconds()) * 1000) + readablePeriod.get(DurationFieldType.millis());
                    break;
                default:
                    return Long.MAX_VALUE;
            }
            if (j == 0) {
                int i2 = this.f13977Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (i2 != 1) {
                    if (i2 != 2) {
                        if (i2 == 5) {
                            return Long.MAX_VALUE;
                        }
                    } else {
                        if (Wwwwwwwwwwwwwwwwwwwwwwwwww(readablePeriod)) {
                            FieldFormatter[] fieldFormatterArr = this.f13973Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                            int i3 = this.f13974Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                            if (fieldFormatterArr[i3] == this) {
                                for (int i4 = i3 + 1; i4 <= 9; i4++) {
                                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwww(periodType, i4) && this.f13973Wwwwwwwwwwwwwwwwwwwwwwwwwwwww[i4] != null) {
                                        return Long.MAX_VALUE;
                                    }
                                }
                            }
                        }
                        return Long.MAX_VALUE;
                    }
                } else {
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwww(readablePeriod)) {
                        FieldFormatter[] fieldFormatterArr2 = this.f13973Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                        int i5 = this.f13974Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                        if (fieldFormatterArr2[i5] == this) {
                            int min = Math.min(i5, 8);
                            while (true) {
                                min--;
                                if (min >= 0 && min <= 9) {
                                    if (!Wwwwwwwwwwwwwwwwwwwwwwwwwww(periodType, min) || this.f13973Wwwwwwwwwwwwwwwwwwwwwwwwwwwww[min] == null) {
                                    }
                                }
                            }
                        }
                    }
                    return Long.MAX_VALUE;
                }
            }
            return j;
        }

        public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f13974Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FieldFormatter[] fieldFormatterArr) {
            HashSet hashSet = new HashSet();
            HashSet hashSet2 = new HashSet();
            for (FieldFormatter fieldFormatter : fieldFormatterArr) {
                if (fieldFormatter != null && !equals(fieldFormatter)) {
                    hashSet.add(fieldFormatter.f13972Wwwwwwwwwwwwwwwwwwwwwwwwwwww);
                    hashSet2.add(fieldFormatter.f13971Wwwwwwwwwwwwwwwwwwwwwwwwwww);
                }
            }
            PeriodFieldAffix periodFieldAffix = this.f13972Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (periodFieldAffix != null) {
                periodFieldAffix.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(hashSet);
            }
            PeriodFieldAffix periodFieldAffix2 = this.f13971Wwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (periodFieldAffix2 != null) {
                periodFieldAffix2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(hashSet2);
            }
        }

        @Override // org.joda.time.format.PeriodPrinter
        public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ReadablePeriod readablePeriod, Locale locale) {
            int i;
            long Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwww(readablePeriod);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 == Long.MAX_VALUE) {
                return 0;
            }
            int max = Math.max(FormatUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwww2), this.f13978Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            if (this.f13974Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww >= 8) {
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 < 0) {
                    i = 5;
                } else {
                    i = 4;
                }
                int max2 = Math.max(max, i);
                int i2 = max2 + 1;
                if (this.f13974Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww == 9 && Math.abs(Wwwwwwwwwwwwwwwwwwwwwwwwwwww2) % 1000 == 0) {
                    max = max2 - 3;
                } else {
                    max = i2;
                }
                Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 /= 1000;
            }
            int i3 = (int) Wwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            PeriodFieldAffix periodFieldAffix = this.f13972Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (periodFieldAffix != null) {
                max += periodFieldAffix.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i3);
            }
            PeriodFieldAffix periodFieldAffix2 = this.f13971Wwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (periodFieldAffix2 != null) {
                return max + periodFieldAffix2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i3);
            }
            return max;
        }

        @Override // org.joda.time.format.PeriodPrinter
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(StringBuffer stringBuffer, ReadablePeriod readablePeriod, Locale locale) {
            long Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwww(readablePeriod);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 != Long.MAX_VALUE) {
                int i = (int) Wwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                if (this.f13974Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww >= 8) {
                    i = (int) (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 / 1000);
                }
                PeriodFieldAffix periodFieldAffix = this.f13972Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (periodFieldAffix != null) {
                    periodFieldAffix.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(stringBuffer, i);
                }
                int length = stringBuffer.length();
                int i2 = this.f13978Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (i2 <= 1) {
                    FormatUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(stringBuffer, i);
                } else {
                    FormatUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(stringBuffer, i, i2);
                }
                if (this.f13974Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww >= 8) {
                    int abs = (int) (Math.abs(Wwwwwwwwwwwwwwwwwwwwwwwwwwww2) % 1000);
                    if (this.f13974Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww == 8 || abs > 0) {
                        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 < 0 && Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 > -1000) {
                            stringBuffer.insert(length, '-');
                        }
                        stringBuffer.append('.');
                        FormatUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(stringBuffer, abs, 3);
                    }
                }
                PeriodFieldAffix periodFieldAffix2 = this.f13971Wwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (periodFieldAffix2 != null) {
                    periodFieldAffix2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(stringBuffer, i);
                }
            }
        }

        @Override // org.joda.time.format.PeriodPrinter
        public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ReadablePeriod readablePeriod, int i, Locale locale) {
            if (i <= 0) {
                return 0;
            }
            if (this.f13977Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != 4 && Wwwwwwwwwwwwwwwwwwwwwwwwwwww(readablePeriod) == Long.MAX_VALUE) {
                return 0;
            }
            return 1;
        }

        /* JADX WARN: Code restructure failed: missing block: B:63:0x00ae, code lost:
            if (r15 > '9') goto L47;
         */
        /* JADX WARN: Code restructure failed: missing block: B:64:0x00b0, code lost:
            r10 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:80:0x00de, code lost:
            return ~r3;
         */
        @Override // org.joda.time.format.PeriodParser
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(org.joda.time.ReadWritablePeriod r17, java.lang.String r18, int r19, java.util.Locale r20) {
            /*
                Method dump skipped, instructions count: 325
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.joda.time.format.PeriodFormatterBuilder.FieldFormatter.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(org.joda.time.ReadWritablePeriod, java.lang.String, int, java.util.Locale):int");
        }

        public FieldFormatter(FieldFormatter fieldFormatter, PeriodFieldAffix periodFieldAffix) {
            this.f13978Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = fieldFormatter.f13978Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            this.f13977Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = fieldFormatter.f13977Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            this.f13976Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = fieldFormatter.f13976Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            this.f13975Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = fieldFormatter.f13975Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            this.f13974Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = fieldFormatter.f13974Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            this.f13973Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = fieldFormatter.f13973Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            this.f13972Wwwwwwwwwwwwwwwwwwwwwwwwwwww = fieldFormatter.f13972Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
            PeriodFieldAffix periodFieldAffix2 = fieldFormatter.f13971Wwwwwwwwwwwwwwwwwwwwwwwwwww;
            this.f13971Wwwwwwwwwwwwwwwwwwwwwwwwwww = periodFieldAffix2 != null ? new CompositeAffix(periodFieldAffix2, periodFieldAffix) : periodFieldAffix;
        }
    }
}
