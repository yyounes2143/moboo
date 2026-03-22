package com.sensorsdata.analytics.android.sdk.util;

import android.text.TextUtils;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.exceptions.InvalidDataException;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class JSONUtils {
    private static void addIndentBlank(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            try {
                sb.append('\t');
            } catch (Exception e) {
                SALog.printStackTrace(e);
                return;
            }
        }
    }

    public static JSONObject cloneJsonObject(JSONObject jSONObject) throws InvalidDataException {
        if (jSONObject == null) {
            return new JSONObject();
        }
        try {
            SADataHelper.assertPropertyTypes(jSONObject);
            JSONObject jSONObject2 = new JSONObject(jSONObject.toString());
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                Object obj = jSONObject.get(next);
                if (obj instanceof Date) {
                    jSONObject2.put(next, new Date(((Date) obj).getTime()));
                }
            }
            return jSONObject2;
        } catch (JSONException unused) {
            return jSONObject;
        }
    }

    public static String formatJson(String str) {
        if (str != null) {
            try {
                if (!"".equals(str)) {
                    StringBuilder sb = new StringBuilder();
                    int i = 0;
                    char c = 0;
                    boolean z = false;
                    int i2 = 0;
                    while (i < str.length()) {
                        char charAt = str.charAt(i);
                        if (charAt != '\"') {
                            if (charAt != ',') {
                                if (charAt != '{') {
                                    if (charAt != '}') {
                                        switch (charAt) {
                                            case '[':
                                                break;
                                            case '\\':
                                                break;
                                            case ']':
                                                break;
                                            default:
                                                sb.append(charAt);
                                                break;
                                        }
                                    }
                                    if (!z) {
                                        sb.append('\n');
                                        i2--;
                                        addIndentBlank(sb, i2);
                                    }
                                    sb.append(charAt);
                                }
                                sb.append(charAt);
                                if (!z) {
                                    sb.append('\n');
                                    i2++;
                                    addIndentBlank(sb, i2);
                                }
                            } else {
                                sb.append(charAt);
                                if (c != '\\' && !z) {
                                    sb.append('\n');
                                    addIndentBlank(sb, i2);
                                }
                            }
                        } else {
                            if (c != '\\') {
                                z = !z;
                            }
                            sb.append(charAt);
                        }
                        i++;
                        c = charAt;
                    }
                    return sb.toString();
                }
            } catch (Exception e) {
                SALog.printStackTrace(e);
            }
        }
        return "";
    }

    public static Map<String, String> json2Map(JSONObject jSONObject) {
        if (jSONObject != null && jSONObject.length() > 0) {
            HashMap hashMap = new HashMap();
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                hashMap.put(next, jSONObject.optString(next));
            }
            return hashMap;
        }
        return null;
    }

    public static void mergeDistinctProperty(JSONObject jSONObject, JSONObject jSONObject2) {
        if (jSONObject2 != null && jSONObject != null) {
            try {
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    if (!jSONObject2.has(next)) {
                        Object obj = jSONObject.get(next);
                        if ((obj instanceof Date) && !"$time".equals(next)) {
                            jSONObject2.put(next, TimeUtils.formatDate((Date) obj, TimeUtils.SDK_LOCALE));
                        } else {
                            jSONObject2.put(next, obj);
                        }
                    }
                }
            } catch (Exception e) {
                SALog.printStackTrace(e);
            }
        }
    }

    public static void mergeDuplicateProperty(JSONObject jSONObject, JSONObject jSONObject2) {
        if (jSONObject2 != null && jSONObject != null) {
            try {
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    if (jSONObject2.has(next)) {
                        Object obj = jSONObject.get(next);
                        if ((obj instanceof Date) && !"$time".equals(next)) {
                            jSONObject2.put(next, TimeUtils.formatDate((Date) obj, TimeUtils.SDK_LOCALE));
                        } else {
                            jSONObject2.put(next, obj);
                        }
                    }
                }
            } catch (Exception e) {
                SALog.printStackTrace(e);
            }
        }
    }

    public static void mergeJSONObject(JSONObject jSONObject, JSONObject jSONObject2) {
        if (jSONObject != null) {
            if (jSONObject2 == null) {
                try {
                    jSONObject2 = new JSONObject();
                } catch (Exception e) {
                    SALog.printStackTrace(e);
                    return;
                }
            }
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                Object obj = jSONObject.get(next);
                if ((obj instanceof Date) && !"$time".equals(next)) {
                    jSONObject2.put(next, TimeUtils.formatDate((Date) obj, TimeUtils.SDK_LOCALE));
                } else {
                    jSONObject2.put(next, obj);
                }
            }
        }
    }

    public static JSONObject mergeSuperJSONObject(JSONObject jSONObject, JSONObject jSONObject2) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        if (jSONObject2 == null) {
            return jSONObject;
        }
        try {
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                Iterator<String> keys2 = jSONObject2.keys();
                while (keys2.hasNext()) {
                    String next2 = keys2.next();
                    if (!TextUtils.isEmpty(next) && next.equalsIgnoreCase(next2)) {
                        keys2.remove();
                    }
                }
            }
            mergeJSONObject(jSONObject, jSONObject2);
            return jSONObject2;
        } catch (Exception e) {
            SALog.printStackTrace(e);
            return jSONObject2;
        }
    }

    public static String optionalStringKey(JSONObject jSONObject, String str) throws JSONException {
        if (jSONObject.has(str) && !jSONObject.isNull(str)) {
            return jSONObject.getString(str);
        }
        return null;
    }
}
