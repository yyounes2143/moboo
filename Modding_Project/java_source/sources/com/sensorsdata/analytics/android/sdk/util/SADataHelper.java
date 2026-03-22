package com.sensorsdata.analytics.android.sdk.util;

import android.content.Context;
import android.text.TextUtils;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.exceptions.InvalidDataException;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class SADataHelper {
    private static final Pattern KEY_PATTERN = Pattern.compile("^((?!^distinct_id$|^original_id$|^time$|^properties$|^id$|^first_id$|^second_id$|^users$|^events$|^event$|^user_id$|^date$|^datetime$|^user_tag.*|^user_group.*)[a-zA-Z_$][a-zA-Z\\d_$]*)$", 2);
    private static final int MAX_LENGTH_100 = 100;
    public static final int MAX_LENGTH_1024 = 1024;
    private static final String TAG = "SA.SADataHelper";

    public static void addCarrier(Context context, JSONObject jSONObject) {
        try {
            if (TextUtils.isEmpty(jSONObject.optString("$carrier"))) {
                String operator = SensorsDataUtils.getOperator(context);
                if (!TextUtils.isEmpty(operator)) {
                    jSONObject.put("$carrier", operator);
                }
            }
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    public static void addTimeProperty(JSONObject jSONObject) {
        if (!jSONObject.has("$time")) {
            try {
                jSONObject.put("$time", new Date(System.currentTimeMillis()));
            } catch (JSONException e) {
                SALog.printStackTrace(e);
            }
        }
    }

    public static JSONObject appendLibMethodAutoTrack(JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        try {
            jSONObject.put("$lib_method", "autoTrack");
            return jSONObject;
        } catch (JSONException e) {
            SALog.printStackTrace(e);
            return jSONObject;
        }
    }

    public static void assertDistinctId(String str) throws InvalidDataException {
        if (!TextUtils.isEmpty(str)) {
            if (str.length() > 1024) {
                SALog.i(TAG, str + "'s length is longer than 1024");
                return;
            }
            return;
        }
        throw new InvalidDataException("Id is empty or null");
    }

    public static void assertEventName(String str) {
        if (TextUtils.isEmpty(str)) {
            SALog.i(TAG, "EventName is empty or null");
        } else if (str.length() > 100) {
            SALog.i(TAG, str + "'s length is longer than 100");
        } else if (!KEY_PATTERN.matcher(str).matches()) {
            SALog.i(TAG, str + " is invalid");
        }
    }

    public static void assertItemId(String str) {
        if (str == null) {
            SALog.i(TAG, "ItemId is empty or null");
        } else if (str.length() > 1024) {
            SALog.i(TAG, str + "'s length is longer than 1024");
        }
    }

    public static boolean assertPropertyKey(String str) {
        if (TextUtils.isEmpty(str)) {
            SALog.i(TAG, "Property key is empty or null");
            return false;
        } else if (!KEY_PATTERN.matcher(str).matches()) {
            SALog.i(TAG, str + " is invalid");
            return false;
        } else if (str.length() > 100) {
            SALog.i(TAG, str + "'s length is longer than 100");
            return true;
        } else {
            return true;
        }
    }

    public static void assertPropertyTypes(JSONObject jSONObject) throws InvalidDataException {
        if (jSONObject != null) {
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                try {
                    if (!assertPropertyKey(next)) {
                        keys.remove();
                    } else {
                        Object obj = jSONObject.get(next);
                        if (obj == JSONObject.NULL) {
                            SALog.i(TAG, "Property value is empty or null");
                            keys.remove();
                        } else {
                            int i = 0;
                            if (obj instanceof List) {
                                List list = (List) obj;
                                int size = list.size();
                                JSONArray jSONArray = new JSONArray();
                                while (i < size) {
                                    jSONArray.put(formatString(list.get(i)));
                                    i++;
                                }
                                jSONObject.put(next, jSONArray);
                            } else if (!(obj instanceof CharSequence) && !(obj instanceof Number) && !(obj instanceof JSONArray) && !(obj instanceof Boolean) && !(obj instanceof Date)) {
                                SALog.i(TAG, "The property value must be an instance of CharSequence/Number/Boolean/JSONArray/Date/List<String>. [key='" + next + "', value='" + obj.toString() + "', class='" + obj.getClass().getCanonicalName() + "']");
                                keys.remove();
                            } else if (obj instanceof JSONArray) {
                                JSONArray jSONArray2 = (JSONArray) obj;
                                while (i < jSONArray2.length()) {
                                    jSONArray2.put(i, formatString(jSONArray2.opt(i)));
                                    i++;
                                }
                            } else if ("app_crashed_reason".equals(next) && (obj instanceof String) && ((String) obj).length() > 16382) {
                                SALog.d(TAG, "The property value is too long. [key='" + next + "', value='" + obj + "']");
                                StringBuilder sb = new StringBuilder();
                                sb.append(((String) obj).substring(0, 16382));
                                sb.append("$");
                                jSONObject.put(next, sb.toString());
                            } else if ((obj instanceof String) && ((String) obj).length() > 8191) {
                                jSONObject.put(next, ((String) obj).substring(0, 8191) + "$");
                                SALog.d(TAG, "The property value is too long. [key='" + next + "', value='" + obj + "']");
                            }
                        }
                    }
                } catch (Error e) {
                    SALog.i(TAG, e);
                } catch (JSONException unused) {
                    throw new InvalidDataException("Unexpected property key. [key='" + next + "']");
                }
            }
        }
    }

    public static String assertPropertyValue(String str) {
        if (str == null) {
            SALog.i(TAG, "Property value is empty or null");
            return str;
        }
        if (str.length() > 1024) {
            SALog.i(TAG, str + "'s length is longer than 1024");
        }
        return str;
    }

    public static String formatString(Object obj) {
        if (obj == null) {
            return "";
        }
        if (obj instanceof Date) {
            return TimeUtils.formatDate((Date) obj);
        }
        return obj.toString();
    }
}
