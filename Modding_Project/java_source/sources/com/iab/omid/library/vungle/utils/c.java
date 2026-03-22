package com.iab.omid.library.vungle.utils;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.iab.omid.library.vungle.adsession.OutputDeviceStatus;
import com.iab.omid.library.vungle.walking.a;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class c {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static WindowManager f8645Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static String[] f8644Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = {"x", "y", "width", "height"};

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static float f8643Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Resources.getSystem().getDisplayMetrics().density;

    /* loaded from: classes5.dex */
    public static /* synthetic */ class a {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static final /* synthetic */ int[] f8646Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        static {
            int[] iArr = new int[OutputDeviceStatus.values().length];
            f8646Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = iArr;
            try {
                iArr[OutputDeviceStatus.NOT_DETECTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    /* loaded from: classes5.dex */
    public static class b {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final float f8647Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final float f8648Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public b(float f, float f2) {
            this.f8648Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = f;
            this.f8647Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = f2;
        }
    }

    public static boolean Wwwwwwwwwwwww(@NonNull JSONObject jSONObject, @Nullable JSONObject jSONObject2) {
        if (jSONObject == null && jSONObject2 == null) {
            return true;
        }
        if (jSONObject != null && jSONObject2 != null && Wwwwwwwwwwwwwww(jSONObject, jSONObject2) && Wwwwwwwwwwwwww(jSONObject, jSONObject2) && Wwwwwwwwwwwwwwww(jSONObject, jSONObject2) && Wwwwwwwwwwwwwwwww(jSONObject, jSONObject2) && Wwwwwwwwwwwwwwwwww(jSONObject, jSONObject2) && Wwwwwwwwwwwwwwwwwww(jSONObject, jSONObject2)) {
            return true;
        }
        return false;
    }

    public static boolean Wwwwwwwwwwwwww(JSONObject jSONObject, JSONObject jSONObject2) {
        return jSONObject.optString("adSessionId", "").equals(jSONObject2.optString("adSessionId", ""));
    }

    public static boolean Wwwwwwwwwwwwwww(JSONObject jSONObject, JSONObject jSONObject2) {
        String[] strArr;
        for (String str : f8644Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            if (jSONObject.optDouble(str) != jSONObject2.optDouble(str)) {
                return false;
            }
        }
        return true;
    }

    public static boolean Wwwwwwwwwwwwwwww(JSONObject jSONObject, JSONObject jSONObject2) {
        return Boolean.valueOf(jSONObject.optBoolean("noOutputDevice")).equals(Boolean.valueOf(jSONObject2.optBoolean("noOutputDevice")));
    }

    public static boolean Wwwwwwwwwwwwwwwww(JSONObject jSONObject, JSONObject jSONObject2) {
        return Boolean.valueOf(jSONObject.optBoolean("hasWindowFocus")).equals(Boolean.valueOf(jSONObject2.optBoolean("hasWindowFocus")));
    }

    public static boolean Wwwwwwwwwwwwwwwwww(JSONObject jSONObject, JSONObject jSONObject2) {
        JSONArray optJSONArray = jSONObject.optJSONArray("isFriendlyObstructionFor");
        JSONArray optJSONArray2 = jSONObject2.optJSONArray("isFriendlyObstructionFor");
        if (optJSONArray == null && optJSONArray2 == null) {
            return true;
        }
        if (!Wwwwwwwwwwwwwwwwwwwwwww(optJSONArray, optJSONArray2)) {
            return false;
        }
        for (int i = 0; i < optJSONArray.length(); i++) {
            if (!optJSONArray.optString(i, "").equals(optJSONArray2.optString(i, ""))) {
                return false;
            }
        }
        return true;
    }

    public static boolean Wwwwwwwwwwwwwwwwwww(JSONObject jSONObject, JSONObject jSONObject2) {
        JSONArray optJSONArray = jSONObject.optJSONArray("childViews");
        JSONArray optJSONArray2 = jSONObject2.optJSONArray("childViews");
        if (optJSONArray == null && optJSONArray2 == null) {
            return true;
        }
        if (!Wwwwwwwwwwwwwwwwwwwwwww(optJSONArray, optJSONArray2)) {
            return false;
        }
        for (int i = 0; i < optJSONArray.length(); i++) {
            if (!Wwwwwwwwwwwww(optJSONArray.optJSONObject(i), optJSONArray2.optJSONObject(i))) {
                return false;
            }
        }
        return true;
    }

    public static void Wwwwwwwwwwwwwwwwwwww(JSONObject jSONObject, String str) {
        try {
            jSONObject.put("notVisibleReason", str);
        } catch (JSONException e) {
            d.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("Error with setting not visible reason", e);
        }
    }

    public static void Wwwwwwwwwwwwwwwwwwwww(JSONObject jSONObject, Boolean bool) {
        if (bool.booleanValue()) {
            try {
                jSONObject.put("isPipActive", bool);
            } catch (JSONException e) {
                d.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("Error with setting is picture-in-picture active", e);
            }
        }
    }

    public static void Wwwwwwwwwwwwwwwwwwwwww(JSONObject jSONObject) {
        b Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject);
        try {
            jSONObject.put("width", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f8648Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            jSONObject.put("height", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.f8647Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public static boolean Wwwwwwwwwwwwwwwwwwwwwww(JSONArray jSONArray, JSONArray jSONArray2) {
        if (jSONArray == null && jSONArray2 == null) {
            return true;
        }
        if (jSONArray != null && jSONArray2 != null && jSONArray.length() == jSONArray2.length()) {
            return true;
        }
        return false;
    }

    public static boolean Wwwwwwwwwwwwwwwwwwwwwwww(OutputDeviceStatus outputDeviceStatus) {
        if (a.f8646Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[outputDeviceStatus.ordinal()] == 1) {
            return true;
        }
        return false;
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwww(JSONObject jSONObject, JSONObject jSONObject2) {
        try {
            JSONArray optJSONArray = jSONObject.optJSONArray("childViews");
            if (optJSONArray == null) {
                optJSONArray = new JSONArray();
                jSONObject.put("childViews", optJSONArray);
            }
            optJSONArray.put(jSONObject2);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwww(JSONObject jSONObject, String str, Object obj) {
        try {
            jSONObject.put(str, obj);
        } catch (NullPointerException | JSONException e) {
            d.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("JSONException during JSONObject.put for name [" + str + "]", e);
        }
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwww(JSONObject jSONObject, String str) {
        try {
            jSONObject.put("adSessionId", str);
        } catch (JSONException e) {
            d.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("Error with setting ad session id", e);
        }
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(JSONObject jSONObject, Boolean bool) {
        try {
            jSONObject.put("hasWindowFocus", bool);
        } catch (JSONException e) {
            d.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("Error with setting has window focus", e);
        }
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(JSONObject jSONObject, a.C0080a c0080a) {
        com.iab.omid.library.vungle.internal.e Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = c0080a.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        JSONArray jSONArray = new JSONArray();
        ArrayList<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = c0080a.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        int size = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.size();
        int i = 0;
        while (i < size) {
            String str = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.get(i);
            i++;
            jSONArray.put(str);
        }
        try {
            jSONObject.put("isFriendlyObstructionFor", jSONArray);
            jSONObject.put("friendlyObstructionClass", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            jSONObject.put("friendlyObstructionPurpose", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            jSONObject.put("friendlyObstructionReason", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        } catch (JSONException e) {
            d.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("Error with setting friendly obstruction", e);
        }
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JSONObject jSONObject, OutputDeviceStatus outputDeviceStatus) {
        try {
            jSONObject.put("noOutputDevice", Wwwwwwwwwwwwwwwwwwwwwwww(outputDeviceStatus));
        } catch (JSONException e) {
            d.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("Error with setting output device status", e);
        }
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context) {
        if (context != null) {
            f8643Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = context.getResources().getDisplayMetrics().density;
            f8645Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = (WindowManager) context.getSystemService("window");
        }
    }

    public static JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2, int i3, int i4) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("x", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i));
            jSONObject.put("y", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i2));
            jSONObject.put("width", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i3));
            jSONObject.put("height", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i4));
            return jSONObject;
        } catch (JSONException e) {
            d.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("Error with creating viewStateObject", e);
            return jSONObject;
        }
    }

    public static b Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JSONObject jSONObject) {
        float f;
        float f2;
        if (f8645Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
            Point point = new Point(0, 0);
            f8645Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getDefaultDisplay().getRealSize(point);
            f = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(point.x);
            f2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(point.y);
        } else {
            f = 0.0f;
            f2 = 0.0f;
        }
        return new b(f, f2);
    }

    public static float Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        return i / f8643Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
