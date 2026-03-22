package org.joda.time.chrono;

import j$.util.concurrent.ConcurrentHashMap;
import java.text.DateFormatSymbols;
import java.util.Comparator;
import java.util.Locale;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentMap;
import org.joda.time.DateTimeFieldType;
import org.joda.time.DateTimeUtils;
import org.joda.time.IllegalFieldValueException;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
class GJLocaleSymbols {

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static ConcurrentMap<Locale, GJLocaleSymbols> f13757Wwwwwwwwwwwwwwwwwww = new ConcurrentHashMap();

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f13758Wwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f13759Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f13760Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f13761Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f13762Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f13763Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final TreeMap<String, Integer> f13764Wwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final TreeMap<String, Integer> f13765Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final TreeMap<String, Integer> f13766Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String[] f13767Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String[] f13768Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String[] f13769Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String[] f13770Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String[] f13771Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String[] f13772Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public GJLocaleSymbols(Locale locale) {
        DateFormatSymbols Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(locale);
        this.f13772Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getEras();
        this.f13771Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getWeekdays());
        this.f13770Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getShortWeekdays());
        this.f13769Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getMonths());
        this.f13768Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getShortMonths());
        this.f13767Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getAmPmStrings();
        Integer[] numArr = new Integer[13];
        for (int i = 0; i < 13; i++) {
            numArr[i] = Integer.valueOf(i);
        }
        Comparator comparator = String.CASE_INSENSITIVE_ORDER;
        TreeMap<String, Integer> treeMap = new TreeMap<>(comparator);
        this.f13766Wwwwwwwwwwwwwwwwwwwwwwwwwwww = treeMap;
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(treeMap, this.f13772Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, numArr);
        if ("en".equals(locale.getLanguage())) {
            treeMap.put("BCE", numArr[0]);
            treeMap.put("CE", numArr[1]);
        }
        TreeMap<String, Integer> treeMap2 = new TreeMap<>(comparator);
        this.f13765Wwwwwwwwwwwwwwwwwwwwwwwwwww = treeMap2;
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(treeMap2, this.f13771Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, numArr);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(treeMap2, this.f13770Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, numArr);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(treeMap2, 1, 7, numArr);
        TreeMap<String, Integer> treeMap3 = new TreeMap<>(comparator);
        this.f13764Wwwwwwwwwwwwwwwwwwwwwwwwww = treeMap3;
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(treeMap3, this.f13769Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, numArr);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(treeMap3, this.f13768Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww, numArr);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(treeMap3, 1, 12, numArr);
        this.f13763Wwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwww(this.f13772Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        this.f13762Wwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwww(this.f13771Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        this.f13761Wwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwww(this.f13770Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        this.f13760Wwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwww(this.f13769Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        this.f13759Wwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwww(this.f13768Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        this.f13758Wwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwww(this.f13767Wwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public static String[] Wwwwwwwwwwwww(String[] strArr) {
        String[] strArr2 = new String[13];
        for (int i = 1; i < 13; i++) {
            strArr2[i] = strArr[i - 1];
        }
        return strArr2;
    }

    public static String[] Wwwwwwwwwwwwww(String[] strArr) {
        int i;
        String[] strArr2 = new String[8];
        for (int i2 = 1; i2 < 8; i2++) {
            if (i2 < 7) {
                i = i2 + 1;
            } else {
                i = 1;
            }
            strArr2[i2] = strArr[i];
        }
        return strArr2;
    }

    public static int Wwwwwwwwwwwwwwwwww(String[] strArr) {
        int length;
        int length2 = strArr.length;
        int i = 0;
        while (true) {
            length2--;
            if (length2 >= 0) {
                String str = strArr[length2];
                if (str != null && (length = str.length()) > i) {
                    i = length;
                }
            } else {
                return i;
            }
        }
    }

    public static GJLocaleSymbols Wwwwwwwwwwwwwwwwwwwwwwwwwww(Locale locale) {
        GJLocaleSymbols putIfAbsent;
        if (locale == null) {
            locale = Locale.getDefault();
        }
        GJLocaleSymbols gJLocaleSymbols = f13757Wwwwwwwwwwwwwwwwwww.get(locale);
        if (gJLocaleSymbols == null && (putIfAbsent = f13757Wwwwwwwwwwwwwwwwwww.putIfAbsent(locale, (gJLocaleSymbols = new GJLocaleSymbols(locale)))) != null) {
            return putIfAbsent;
        }
        return gJLocaleSymbols;
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(TreeMap<String, Integer> treeMap, String[] strArr, Integer[] numArr) {
        int length = strArr.length;
        while (true) {
            length--;
            if (length >= 0) {
                String str = strArr[length];
                if (str != null) {
                    treeMap.put(str, numArr[length]);
                }
            } else {
                return;
            }
        }
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(TreeMap<String, Integer> treeMap, int i, int i2, Integer[] numArr) {
        while (i <= i2) {
            treeMap.put(String.valueOf(i).intern(), numArr[i]);
            i++;
        }
    }

    public String Wwwwwwwwwwwwwww(int i) {
        return this.f13769Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[i];
    }

    public String Wwwwwwwwwwwwwwww(int i) {
        return this.f13768Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww[i];
    }

    public int Wwwwwwwwwwwwwwwww(String str) {
        Integer num = this.f13764Wwwwwwwwwwwwwwwwwwwwwwwwww.get(str);
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalFieldValueException(DateTimeFieldType.monthOfYear(), str);
    }

    public String Wwwwwwwwwwwwwwwwwww(int i) {
        return this.f13767Wwwwwwwwwwwwwwwwwwwwwwwwwwwww[i];
    }

    public int Wwwwwwwwwwwwwwwwwwww(String str) {
        String[] strArr = this.f13767Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        int length = strArr.length;
        do {
            length--;
            if (length < 0) {
                throw new IllegalFieldValueException(DateTimeFieldType.halfdayOfDay(), str);
            }
        } while (!strArr[length].equalsIgnoreCase(str));
        return length;
    }

    public int Wwwwwwwwwwwwwwwwwwwww() {
        return this.f13760Wwwwwwwwwwwwwwwwwwwwww;
    }

    public int Wwwwwwwwwwwwwwwwwwwwww() {
        return this.f13759Wwwwwwwwwwwwwwwwwwwww;
    }

    public int Wwwwwwwwwwwwwwwwwwwwwww() {
        return this.f13758Wwwwwwwwwwwwwwwwwwww;
    }

    public int Wwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f13763Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public int Wwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f13762Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    public int Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f13761Wwwwwwwwwwwwwwwwwwwwwww;
    }

    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        return this.f13772Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[i];
    }

    public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        Integer num = this.f13766Wwwwwwwwwwwwwwwwwwwwwwwwwwww.get(str);
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalFieldValueException(DateTimeFieldType.era(), str);
    }

    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        return this.f13771Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[i];
    }

    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        return this.f13770Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[i];
    }

    public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        Integer num = this.f13765Wwwwwwwwwwwwwwwwwwwwwwwwwww.get(str);
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalFieldValueException(DateTimeFieldType.dayOfWeek(), str);
    }
}
