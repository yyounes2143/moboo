package com.tencent.thumbplayer.tcmedia.utils;

import android.text.TextUtils;
import java.util.Map;
import java.util.Properties;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class l implements com.tencent.thumbplayer.tcmedia.common.a.a {

    /* renamed from: a  reason: collision with root package name */
    protected final Properties f10696a;

    public l() {
        this(null);
    }

    public Properties a() {
        return this.f10696a;
    }

    public String toString() {
        JSONObject jSONObject = new JSONObject(this.f10696a);
        if (jSONObject.has("data")) {
            try {
                String string = jSONObject.getString("data");
                jSONObject.remove("data");
                jSONObject.put("data", new JSONObject(string));
            } catch (JSONException e) {
                TPLogUtil.e("TPProperties", e);
            }
        }
        return jSONObject.toString();
    }

    public l(Properties properties) {
        this.f10696a = new Properties();
        if (properties != null) {
            for (Map.Entry entry : properties.entrySet()) {
                a((String) entry.getKey(), (String) entry.getValue());
            }
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.common.a.a
    public void a(String str, float f) {
        if (str != null) {
            this.f10696a.put(str, String.valueOf(f));
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.common.a.a
    public void a(String str, int i) {
        if (str != null) {
            this.f10696a.put(str, String.valueOf(i));
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.common.a.a
    public void a(String str, long j) {
        if (str != null) {
            this.f10696a.put(str, String.valueOf(j));
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.common.a.a
    public void a(String str, String str2) {
        if (str != null) {
            if (TextUtils.isEmpty(str2)) {
                this.f10696a.put(str, "");
            } else {
                this.f10696a.put(str, str2);
            }
        }
    }

    @Override // com.tencent.thumbplayer.tcmedia.common.a.a
    public void a(Map<String, String> map) {
        if (map == null) {
            throw new IllegalArgumentException("map must not be null!");
        }
        for (Map.Entry entry : this.f10696a.entrySet()) {
            Object key = entry.getKey();
            Object value = entry.getValue();
            if (value == null) {
                map.put(key.toString(), "");
            } else {
                map.put(key.toString(), value.toString());
            }
        }
    }
}
