package com.tencent.liteav.txcplayer.a;

import com.tencent.liteav.base.storage.PersistStorage;
import java.util.HashSet;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public PersistStorage f10289a;
    public PersistStorage b;

    public c(String str) {
        this.f10289a = null;
        this.b = null;
        PersistStorage persistStorage = new PersistStorage(str);
        this.b = persistStorage;
        Integer num = persistStorage.getInt("old_data_move_completed");
        if (num == null || num.intValue() == 0) {
            PersistStorage persistStorage2 = new PersistStorage(str, true);
            this.f10289a = persistStorage2;
            if (persistStorage2.getAllKeys() != null && this.f10289a.getAllKeys().length != 0) {
                return;
            }
            this.f10289a = null;
            this.b.put("old_data_move_completed", 1);
        }
    }

    public final void a(String str, String str2) {
        this.b.put(str, str2);
        PersistStorage persistStorage = this.f10289a;
        if (persistStorage != null) {
            persistStorage.clear(str);
        }
    }

    public final String b(String str) {
        String string = this.b.getString(str);
        if (string != null) {
            return string;
        }
        PersistStorage persistStorage = this.f10289a;
        if (persistStorage != null) {
            String string2 = persistStorage.getString(str);
            if (string2 != null) {
                this.b.put(str, string2);
                this.f10289a.clear(str);
                this.b.commit();
                this.f10289a.commit();
            }
            return string2;
        }
        return null;
    }

    public final void a(String str) {
        PersistStorage persistStorage = this.f10289a;
        if (persistStorage != null) {
            persistStorage.clear(str);
        }
        this.b.clear(str);
    }

    public final void a() {
        this.b.commit();
        PersistStorage persistStorage = this.f10289a;
        if (persistStorage != null) {
            persistStorage.commit();
        }
    }

    public final String[] b() {
        String[] allKeys = this.b.getAllKeys();
        PersistStorage persistStorage = this.f10289a;
        String[] allKeys2 = persistStorage == null ? null : persistStorage.getAllKeys();
        HashSet hashSet = new HashSet();
        if (allKeys != null && allKeys.length > 0) {
            for (String str : allKeys) {
                hashSet.add(str);
            }
        }
        if (allKeys2 != null && allKeys2.length > 0) {
            for (String str2 : allKeys2) {
                hashSet.add(str2);
            }
        }
        hashSet.remove("old_data_move_completed");
        if (hashSet.size() == 0) {
            return null;
        }
        String[] strArr = new String[hashSet.size()];
        hashSet.toArray(strArr);
        return strArr;
    }
}
