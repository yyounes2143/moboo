package com.mbridge.msdk.foundation.same.report.metrics;

import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import java.util.HashMap;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private Map<String, String> f9068a = new HashMap();

    public void a(String str, Object obj) {
        if (TextUtils.isEmpty(str) || obj == null) {
            return;
        }
        try {
            if (obj instanceof String) {
                if (TextUtils.isEmpty((String) obj)) {
                    return;
                }
                this.f9068a.put(str, (String) obj);
                return;
            }
            Map<String, String> map = this.f9068a;
            map.put(str, obj + "");
        } catch (Exception e) {
            if (MBridgeConstans.DEBUG) {
                e.printStackTrace();
            }
        }
    }

    public Object b(String str) {
        return this.f9068a.get(str);
    }

    public void c(String str) {
        if (this.f9068a != null && !TextUtils.isEmpty(str)) {
            this.f9068a.remove(str);
        }
    }

    public boolean a(String str) {
        return this.f9068a.containsKey(str);
    }

    public Map<String, String> a() {
        return this.f9068a;
    }

    public void a(e eVar) {
        Map<String, String> map;
        Map<String, String> map2;
        if (eVar == null || (map = eVar.f9068a) == null || (map2 = this.f9068a) == null) {
            return;
        }
        map2.putAll(map);
    }
}
