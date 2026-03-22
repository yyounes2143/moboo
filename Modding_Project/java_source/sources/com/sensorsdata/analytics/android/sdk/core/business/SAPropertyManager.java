package com.sensorsdata.analytics.android.sdk.core.business;

import java.util.HashMap;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class SAPropertyManager {
    private Map<String, String> mLimitKeys;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class Holder {
        public static SAPropertyManager INSTANCE = new SAPropertyManager();
    }

    public static SAPropertyManager getInstance() {
        return Holder.INSTANCE;
    }

    public String getLimitValue(String str) {
        Map<String, String> map = this.mLimitKeys;
        if (map == null) {
            return null;
        }
        return map.get(str);
    }

    public boolean isLimitKey(String str) {
        Map<String, String> map = this.mLimitKeys;
        if (map != null && map.containsKey(str)) {
            return true;
        }
        return false;
    }

    public void registerLimitKeys(Map<String, String> map) {
        if (map != null) {
            this.mLimitKeys.putAll(map);
        }
    }

    private SAPropertyManager() {
        this.mLimitKeys = new HashMap();
    }
}
