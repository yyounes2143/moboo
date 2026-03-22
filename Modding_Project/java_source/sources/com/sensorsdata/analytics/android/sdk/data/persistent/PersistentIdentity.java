package com.sensorsdata.analytics.android.sdk.data.persistent;

import android.annotation.SuppressLint;
import com.sensorsdata.analytics.android.sdk.AbstractSensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.SAConfigOptions;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.plugin.encrypt.SAStoreManager;
/* compiled from: Proguard */
@SuppressLint({"CommitPrefEdits"})
/* loaded from: classes6.dex */
public abstract class PersistentIdentity<T> {
    private static final String TAG = "SA.PersistentIdentity";
    private T item;
    private final String persistentKey;
    private final SAStoreManager saStoreManager = SAStoreManager.getInstance();
    private final PersistentSerializer serializer;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface PersistentSerializer<T> {
        T create();

        T load(String str);

        String save(T t);
    }

    public PersistentIdentity(String str, PersistentSerializer<T> persistentSerializer) {
        this.serializer = persistentSerializer;
        this.persistentKey = str;
    }

    public void commit(T t) {
        SAConfigOptions configOptions;
        configOptions = AbstractSensorsDataAPI.getConfigOptions();
        if (configOptions.isDisableSDK()) {
            return;
        }
        this.item = t;
        synchronized (this.saStoreManager) {
            try {
                if (this.item == null) {
                    this.item = (T) this.serializer.create();
                }
                this.saStoreManager.setString(this.persistentKey, this.serializer.save(this.item));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public T get() {
        if (this.item == null) {
            synchronized (this.saStoreManager) {
                try {
                    String string = this.saStoreManager.getString(this.persistentKey, null);
                    if (string == null) {
                        T t = (T) this.serializer.create();
                        this.item = t;
                        commit(t);
                    } else {
                        this.item = (T) this.serializer.load(string);
                    }
                } finally {
                }
            }
        }
        return this.item;
    }

    public boolean isExists() {
        try {
            return this.saStoreManager.isExists(this.persistentKey);
        } catch (Exception e) {
            SALog.printStackTrace(e);
            return false;
        }
    }

    public void remove() {
        synchronized (this.saStoreManager) {
            this.saStoreManager.remove(this.persistentKey);
        }
    }
}
