package com.sensorsdata.analytics.android.sdk.plugin.encrypt;

import android.content.Context;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class SAStoreManager extends AbstractStoreManager {
    public static final String SECRET_KEY = "sa_sp_encrypt_secret_key";
    private static final String SP_SENSORS_DATA = "sensorsdata";
    private static final String SP_SENSORS_DATA_API = "com.sensorsdata.analytics.android.sdk.SensorsDataAPI";
    private static final String SP_SENSORS_DATA_EXIT = "sensorsdata.exit";
    private static final String TAG = "SA.SAStoreManager";
    private final ArrayList<String> mAPIStoreKeys;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class SingletonHolder {
        private static final SAStoreManager INSTANCE = new SAStoreManager();

        private SingletonHolder() {
        }
    }

    public static SAStoreManager getInstance() {
        return SingletonHolder.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initAPIKeys() {
        try {
            for (Field field : DbParams.PersistentName.class.getDeclaredFields()) {
                this.mAPIStoreKeys.add((String) field.get(null));
            }
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    private void registerAPIPlugin(Context context) {
        registerPlugin(new DefaultStorePlugin(context, SP_SENSORS_DATA_API) { // from class: com.sensorsdata.analytics.android.sdk.plugin.encrypt.SAStoreManager.2
            @Override // com.sensorsdata.analytics.android.sdk.plugin.encrypt.DefaultStorePlugin
            public List<String> storeKeys() {
                if (SAStoreManager.this.mAPIStoreKeys.isEmpty()) {
                    SAStoreManager.this.initAPIKeys();
                }
                return SAStoreManager.this.mAPIStoreKeys;
            }
        });
    }

    private void registerExitPlugin(Context context) {
        final ArrayList arrayList = new ArrayList();
        arrayList.add(DbParams.APP_EXIT_DATA);
        registerPlugin(new DefaultStorePlugin(context, SP_SENSORS_DATA_EXIT) { // from class: com.sensorsdata.analytics.android.sdk.plugin.encrypt.SAStoreManager.1
            @Override // com.sensorsdata.analytics.android.sdk.plugin.encrypt.DefaultStorePlugin
            public List<String> storeKeys() {
                return arrayList;
            }
        });
    }

    private void registerSensorsDataPlugin(Context context) {
        registerPlugin(new DefaultStorePlugin(context, "sensorsdata") { // from class: com.sensorsdata.analytics.android.sdk.plugin.encrypt.SAStoreManager.3
            @Override // com.sensorsdata.analytics.android.sdk.plugin.encrypt.DefaultStorePlugin
            public List<String> storeKeys() {
                return null;
            }
        });
    }

    public void registerPlugins(List<StorePlugin> list, Context context) {
        if (list != null && !list.isEmpty()) {
            this.mDefaultState = false;
            if (isRegisterPlugin(context, SP_SENSORS_DATA_EXIT)) {
                registerExitPlugin(context);
            }
            if (isRegisterPlugin(context, SP_SENSORS_DATA_API)) {
                registerAPIPlugin(context);
            }
            if (isRegisterPlugin(context, "sensorsdata")) {
                registerSensorsDataPlugin(context);
            }
            for (StorePlugin storePlugin : list) {
                registerPlugin(storePlugin);
            }
            return;
        }
        this.mDefaultState = true;
        registerExitPlugin(context);
        registerAPIPlugin(context);
        registerSensorsDataPlugin(context);
    }

    private SAStoreManager() {
        this.mAPIStoreKeys = new ArrayList<>();
    }
}
