package org.joda.time.tz;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.joda.time.DateTimeUtils;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class DefaultNameProvider implements NameProvider {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public HashMap<Locale, Map<String, Map<String, Object>>> f14031Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public HashMap<Locale, Map<String, Map<Boolean, Object>>> f14030Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Locale locale, String str, String str2, boolean z) {
        String[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(locale, str, str2, z);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return null;
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2[0];
    }

    public final synchronized String[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Locale locale, String str, String str2, boolean z) {
        String[] strArr;
        String[] strArr2 = null;
        if (locale == null || str == null || str2 == null) {
            return null;
        }
        try {
            if (str.startsWith("Etc/")) {
                str = str.substring(4);
            }
            Map<String, Map<Boolean, Object>> map = this.f14030Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(locale);
            if (map == null) {
                HashMap<Locale, Map<String, Map<Boolean, Object>>> hashMap = this.f14030Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                HashMap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                hashMap.put(locale, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                map = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            }
            Map<Boolean, Object> map2 = map.get(str);
            if (map2 == null) {
                map2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                map.put(str, map2);
                String[][] zoneStrings = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Locale.ENGLISH).getZoneStrings();
                int length = zoneStrings.length;
                int i = 0;
                while (true) {
                    if (i < length) {
                        strArr = zoneStrings[i];
                        if (strArr != null && strArr.length >= 5 && str.equals(strArr[0])) {
                            break;
                        }
                        i++;
                    } else {
                        strArr = null;
                        break;
                    }
                }
                String[][] zoneStrings2 = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(locale).getZoneStrings();
                int length2 = zoneStrings2.length;
                int i2 = 0;
                while (true) {
                    if (i2 < length2) {
                        String[] strArr3 = zoneStrings2[i2];
                        if (strArr3 != null && strArr3.length >= 5 && str.equals(strArr3[0])) {
                            strArr2 = strArr3;
                            break;
                        }
                        i2++;
                    } else {
                        break;
                    }
                }
                if (strArr != null && strArr2 != null) {
                    map2.put(Boolean.TRUE, new String[]{strArr2[2], strArr2[1]});
                    map2.put(Boolean.FALSE, new String[]{strArr2[4], strArr2[3]});
                }
            }
            return (String[]) map2.get(Boolean.valueOf(z));
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized String[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Locale locale, String str, String str2) {
        Object[] objArr;
        Object[] objArr2 = null;
        if (locale == null || str == null || str2 == null) {
            return null;
        }
        try {
            Map<String, Map<String, Object>> map = this.f14031Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(locale);
            if (map == null) {
                HashMap<Locale, Map<String, Map<String, Object>>> hashMap = this.f14031Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                HashMap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                hashMap.put(locale, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                map = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            }
            Map<String, Object> map2 = map.get(str);
            if (map2 == null) {
                map2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                map.put(str, map2);
                Object[][] zoneStrings = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Locale.ENGLISH).getZoneStrings();
                int length = zoneStrings.length;
                int i = 0;
                while (true) {
                    if (i < length) {
                        objArr = zoneStrings[i];
                        if (objArr != null && objArr.length >= 5 && str.equals(objArr[0])) {
                            break;
                        }
                        i++;
                    } else {
                        objArr = null;
                        break;
                    }
                }
                Object[][] zoneStrings2 = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(locale).getZoneStrings();
                int length2 = zoneStrings2.length;
                int i2 = 0;
                while (true) {
                    if (i2 < length2) {
                        Object[] objArr3 = zoneStrings2[i2];
                        if (objArr3 != null && objArr3.length >= 5 && str.equals(objArr3[0])) {
                            objArr2 = objArr3;
                            break;
                        }
                        i2++;
                    } else {
                        break;
                    }
                }
                if (objArr != null && objArr2 != null) {
                    map2.put(objArr[2], new String[]{objArr2[2], objArr2[1]});
                    if (objArr[2].equals(objArr[4])) {
                        map2.put(objArr[4] + "-Summer", new String[]{objArr2[4], objArr2[3]});
                    } else {
                        map2.put(objArr[4], new String[]{objArr2[4], objArr2[3]});
                    }
                }
            }
            return (String[]) map2.get(str2);
        } catch (Throwable th) {
            throw th;
        }
    }

    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Locale locale, String str, String str2, boolean z) {
        String[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(locale, str, str2, z);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return null;
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2[1];
    }

    public final HashMap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return new HashMap(7);
    }

    @Override // org.joda.time.tz.NameProvider
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Locale locale, String str, String str2) {
        String[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(locale, str, str2);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return null;
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2[0];
    }

    @Override // org.joda.time.tz.NameProvider
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Locale locale, String str, String str2) {
        String[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(locale, str, str2);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return null;
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2[1];
    }
}
