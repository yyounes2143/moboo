package com.applovin.impl;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.URLUtil;
import android.widget.ImageView;
import com.applovin.impl.sdk.utils.ImageViewUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class g7 implements d4 {

    /* renamed from: a  reason: collision with root package name */
    public final Set f3133a = new HashSet();
    public final Set b = new HashSet();
    private Uri c;
    private Uri d;
    private int e;
    private int f;

    public static g7 a(b8 b8Var, com.applovin.impl.sdk.k kVar) {
        if (b8Var != null) {
            if (kVar != null) {
                b8 c = b8Var.c("StaticResource");
                if (c != null && URLUtil.isValidUrl(c.d())) {
                    g7 g7Var = new g7();
                    g7Var.c = Uri.parse(c.d());
                    b8 b = b8Var.b("IconClickThrough");
                    if (b != null && URLUtil.isValidUrl(b.d())) {
                        g7Var.d = Uri.parse(b.d());
                    }
                    String str = (String) b8Var.a().get("width");
                    int i = 0;
                    int parseInt = (str == null || Integer.parseInt(str) <= 0) ? 0 : Integer.parseInt(str);
                    String str2 = (String) b8Var.a().get("height");
                    if (str2 != null && Integer.parseInt(str2) > 0) {
                        i = Integer.parseInt(str2);
                    }
                    int intValue = ((Integer) kVar.a(l4.x4)).intValue();
                    if (parseInt > 0 && i > 0) {
                        double d = parseInt / i;
                        int min = Math.min(Math.max(parseInt, i), intValue);
                        if (parseInt >= i) {
                            g7Var.e = min;
                            g7Var.f = (int) (min / d);
                            return g7Var;
                        }
                        g7Var.f = min;
                        g7Var.e = (int) (min * d);
                        return g7Var;
                    }
                    g7Var.f = intValue;
                    g7Var.e = intValue;
                    return g7Var;
                }
                kVar.O();
                if (com.applovin.impl.sdk.o.a()) {
                    kVar.O().b("VastIndustryIcon", "Unable to create industry icon.  No valid image URL found.");
                    return null;
                }
                return null;
            }
            throw new IllegalArgumentException("No sdk specified.");
        }
        throw new IllegalArgumentException("No node specified.");
    }

    public Set b() {
        return this.f3133a;
    }

    public Uri c() {
        return this.d;
    }

    public int d() {
        return this.f;
    }

    public Uri e() {
        return this.c;
    }

    public Set f() {
        return this.b;
    }

    public int g() {
        return this.e;
    }

    public String toString() {
        return "VastIndustryIcon{imageUri='" + e() + "', clickUri='" + c() + "', width=" + g() + ", height=" + d() + "}";
    }

    public static ImageView a(Uri uri, Context context, com.applovin.impl.sdk.k kVar) {
        ImageView imageView = new ImageView(context);
        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        imageView.setClickable(true);
        imageView.setVisibility(8);
        ImageViewUtils.setImageUri(imageView, uri, kVar);
        return imageView;
    }

    public static g7 a(JSONObject jSONObject, com.applovin.impl.sdk.k kVar) {
        k7 a2;
        k7 a3;
        if (jSONObject == null) {
            return null;
        }
        g7 g7Var = new g7();
        String string = JsonUtils.getString(jSONObject, "image_uri", null);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        g7Var.c = Uri.parse(string);
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "click_trackers", new JSONArray());
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONArray, i, (JSONObject) null);
            if (jSONObject2 != null && (a3 = k7.a(jSONObject2, kVar)) != null) {
                g7Var.f3133a.add(a3);
            }
        }
        JSONArray jSONArray2 = JsonUtils.getJSONArray(jSONObject, "view_trackers", new JSONArray());
        for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
            JSONObject jSONObject3 = JsonUtils.getJSONObject(jSONArray2, i2, (JSONObject) null);
            if (jSONObject3 != null && (a2 = k7.a(jSONObject3, kVar)) != null) {
                g7Var.b.add(a2);
            }
        }
        String string2 = JsonUtils.getString(jSONObject, "click_uri", null);
        g7Var.d = StringUtils.isValidString(string2) ? Uri.parse(string2) : null;
        g7Var.e = JsonUtils.getInt(jSONObject, "width", 0);
        g7Var.f = JsonUtils.getInt(jSONObject, "height", 0);
        return g7Var;
    }

    @Override // com.applovin.impl.d4
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        for (k7 k7Var : this.f3133a) {
            jSONArray.put(k7Var.a());
        }
        JsonUtils.putJsonArray(jSONObject, "click_trackers", jSONArray);
        JSONArray jSONArray2 = new JSONArray();
        for (k7 k7Var2 : this.b) {
            jSONArray.put(k7Var2.a());
        }
        JsonUtils.putJsonArray(jSONObject, "view_trackers", jSONArray2);
        Uri uri = this.c;
        JsonUtils.putString(jSONObject, "image_uri", uri == null ? null : uri.toString());
        Uri uri2 = this.d;
        JsonUtils.putString(jSONObject, "click_uri", uri2 != null ? uri2.toString() : null);
        JsonUtils.putInt(jSONObject, "width", this.e);
        JsonUtils.putInt(jSONObject, "height", this.f);
        return jSONObject;
    }
}
