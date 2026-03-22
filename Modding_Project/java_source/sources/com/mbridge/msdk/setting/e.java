package com.mbridge.msdk.setting;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    public int f9437a;
    private HashMap<String, f> b;

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private static final e f9438a = new e();
    }

    public static e a() {
        return b.f9438a;
    }

    public void b(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (this.b == null) {
                    this.b = new HashMap<>();
                }
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    String string = jSONObject.getString(next);
                    f fVar = new f();
                    fVar.a(next);
                    fVar.b(string);
                    this.b.put(next, fVar);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    private e() {
        this.f9437a = 6;
        this.b = new HashMap<>();
    }

    public int a(String str) {
        HashMap<String, f> hashMap;
        f fVar;
        if (TextUtils.isEmpty(str) || (hashMap = this.b) == null || !hashMap.containsKey(str) || (fVar = this.b.get(str)) == null) {
            return 0;
        }
        int i = fVar.b() ? 1 : fVar.a() >= this.f9437a ? 2 : 0;
        fVar.a(false);
        return i;
    }
}
