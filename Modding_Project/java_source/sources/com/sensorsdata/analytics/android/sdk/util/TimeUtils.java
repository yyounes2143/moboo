package com.sensorsdata.analytics.android.sdk.util;

import android.text.TextUtils;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.vungle.ads.internal.signals.SignalManager;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class TimeUtils {
    public static final String YYYY_MM_DD = "yyyy-MM-dd";
    private static final String YYYY_MM_DD_HH_MM_SS_SSS = "yyyy-MM-dd HH:mm:ss.SSS";
    public static Locale SDK_LOCALE = Locale.CHINA;
    private static Map<String, ThreadLocal<SimpleDateFormat>> formatMaps = new HashMap();

    public static Float duration(long j, long j2) {
        long j3 = j2 - j;
        try {
            if (j3 >= 0 && j3 <= SignalManager.TWENTY_FOUR_HOURS_MILLIS) {
                return Float.valueOf(Math.round((float) j3) / 1000.0f);
            }
            return Float.valueOf(0.0f);
        } catch (Exception e) {
            SALog.printStackTrace(e);
            return Float.valueOf(0.0f);
        }
    }

    public static String formatDate(Date date) {
        return formatDate(date, YYYY_MM_DD_HH_MM_SS_SSS);
    }

    public static String formatTime(long j) {
        return formatTime(j, SDK_LOCALE);
    }

    private static synchronized SimpleDateFormat getDateFormat(final String str, final Locale locale) {
        String country;
        SimpleDateFormat simpleDateFormat;
        String country2;
        synchronized (TimeUtils.class) {
            try {
                Map<String, ThreadLocal<SimpleDateFormat>> map = formatMaps;
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                sb.append("_");
                if (locale == null) {
                    country = SDK_LOCALE.getCountry();
                } else {
                    country = locale.getCountry();
                }
                sb.append(country);
                ThreadLocal<SimpleDateFormat> threadLocal = map.get(sb.toString());
                if (threadLocal == null) {
                    threadLocal = new ThreadLocal<SimpleDateFormat>() { // from class: com.sensorsdata.analytics.android.sdk.util.TimeUtils.1
                        @Override // java.lang.ThreadLocal
                        public SimpleDateFormat initialValue() {
                            try {
                                if (locale == null) {
                                    return new SimpleDateFormat(str, TimeUtils.SDK_LOCALE);
                                }
                                return new SimpleDateFormat(str, locale);
                            } catch (Exception e) {
                                SALog.printStackTrace(e);
                                return null;
                            }
                        }
                    };
                    if (threadLocal.get() != null) {
                        Map<String, ThreadLocal<SimpleDateFormat>> map2 = formatMaps;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(str);
                        sb2.append("_");
                        if (locale == null) {
                            country2 = SDK_LOCALE.getCountry();
                        } else {
                            country2 = locale.getCountry();
                        }
                        sb2.append(country2);
                        map2.put(sb2.toString(), threadLocal);
                    }
                }
                simpleDateFormat = threadLocal.get();
            } catch (Throwable th) {
                throw th;
            }
        }
        return simpleDateFormat;
    }

    public static Integer getZoneOffset() {
        try {
            Calendar calendar = Calendar.getInstance(Locale.getDefault());
            return Integer.valueOf((-(calendar.get(15) + calendar.get(16))) / 60000);
        } catch (Exception e) {
            SALog.printStackTrace(e);
            return null;
        }
    }

    public static boolean isDateValid(Date date) {
        try {
            return date.after(getDateFormat(YYYY_MM_DD_HH_MM_SS_SSS, SDK_LOCALE).parse("2015-05-15 10:24:00.000"));
        } catch (ParseException e) {
            SALog.printStackTrace(e);
            return false;
        }
    }

    public static String formatDate(Date date, String str) {
        return formatDate(date, str, SDK_LOCALE);
    }

    public static String formatTime(long j, String str) {
        return formatTime(j, str, SDK_LOCALE);
    }

    public static String formatDate(Date date, Locale locale) {
        return formatDate(date, YYYY_MM_DD_HH_MM_SS_SSS, locale);
    }

    public static String formatTime(long j, Locale locale) {
        return formatTime(j, null, locale);
    }

    public static String formatDate(Date date, String str, Locale locale) {
        if (TextUtils.isEmpty(str)) {
            str = YYYY_MM_DD_HH_MM_SS_SSS;
        }
        SimpleDateFormat dateFormat = getDateFormat(str, locale);
        if (dateFormat != null) {
            try {
                return dateFormat.format(date);
            } catch (IllegalArgumentException e) {
                SALog.printStackTrace(e);
                return "";
            }
        }
        return "";
    }

    public static String formatTime(long j, String str, Locale locale) {
        if (TextUtils.isEmpty(str)) {
            str = YYYY_MM_DD_HH_MM_SS_SSS;
        }
        SimpleDateFormat dateFormat = getDateFormat(str, locale);
        if (dateFormat != null) {
            try {
                return dateFormat.format(Long.valueOf(j));
            } catch (IllegalArgumentException e) {
                SALog.printStackTrace(e);
                return "";
            }
        }
        return "";
    }

    public static Float duration(float f) {
        return Float.valueOf(Math.round(f) / 1000.0f);
    }

    public static boolean isDateValid(long j) {
        try {
            Date parse = getDateFormat(YYYY_MM_DD_HH_MM_SS_SSS, SDK_LOCALE).parse("2015-05-15 10:24:00.000");
            if (parse == null) {
                return false;
            }
            return parse.getTime() < j;
        } catch (ParseException e) {
            SALog.printStackTrace(e);
            return false;
        }
    }

    public static JSONObject formatDate(JSONObject jSONObject) {
        if (jSONObject == null) {
            return new JSONObject();
        }
        try {
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                Object obj = jSONObject.get(next);
                if (obj instanceof Date) {
                    jSONObject.put(next, formatDate((Date) obj, SDK_LOCALE));
                }
            }
        } catch (JSONException e) {
            SALog.printStackTrace(e);
        }
        return jSONObject;
    }
}
