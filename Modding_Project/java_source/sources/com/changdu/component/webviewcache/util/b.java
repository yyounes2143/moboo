package com.changdu.component.webviewcache.util;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class b {
    public static LinkedHashMap a(JSONObject jSONObject) {
        if (JSONObject.NULL.equals(jSONObject)) {
            return null;
        }
        try {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                Object obj = jSONObject.get(next);
                if (obj instanceof JSONArray) {
                    obj = a((JSONArray) obj);
                } else if (obj instanceof JSONObject) {
                    obj = a((JSONObject) obj);
                }
                linkedHashMap.put(next, obj);
            }
            return linkedHashMap;
        } catch (Exception unused) {
            return null;
        }
    }

    public static ArrayList a(JSONArray jSONArray) {
        if (JSONObject.NULL.equals(jSONArray)) {
            return null;
        }
        try {
            ArrayList arrayList = new ArrayList();
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                Object obj = jSONArray.get(i);
                if (obj instanceof JSONArray) {
                    obj = a((JSONArray) obj);
                } else if (obj instanceof JSONObject) {
                    obj = a((JSONObject) obj);
                }
                arrayList.add(obj);
            }
            return arrayList;
        } catch (Exception unused) {
            return null;
        }
    }
}
