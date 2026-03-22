package com.sensorsdata.analytics.android.sdk.core.rpc;

import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.sensorsdata.analytics.android.sdk.AbstractSensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.SAConfigOptions;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPIEmptyImplementation;
import com.sensorsdata.analytics.android.sdk.core.SAContextManager;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbAdapter;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.sensorsdata.analytics.android.sdk.useridentity.LoginIDAndKey;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class SensorsDataContentObserver extends ContentObserver {
    public static boolean isDisableFromObserver = false;
    public static boolean isEnableFromObserver = false;
    public static boolean isLoginFromObserver = false;

    public SensorsDataContentObserver() {
        super(new Handler(Looper.getMainLooper()));
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z, Uri uri) {
        SAContextManager sAContextManager;
        SAConfigOptions configOptions;
        SAConfigOptions configOptions2;
        try {
            if (DbParams.getInstance().getSessionTimeUri().equals(uri)) {
                SensorsDataAPI.sharedInstance().setSessionIntervalTime(DbAdapter.getInstance().getSessionIntervalTime());
            } else if (DbParams.getInstance().getLoginIdUri().equals(uri)) {
                String loginIdKey = DbAdapter.getInstance().getLoginIdKey();
                String loginId = DbAdapter.getInstance().getLoginId();
                if ((TextUtils.isEmpty(loginId) || loginIdKey.equals(LoginIDAndKey.LOGIN_ID_KEY_DEFAULT)) && TextUtils.isEmpty(loginId)) {
                    SensorsDataAPI.sharedInstance().logout();
                    return;
                }
                isLoginFromObserver = true;
                SensorsDataAPI.sharedInstance().loginWithKey(loginIdKey, loginId);
            } else if (DbParams.getInstance().getDisableSDKUri().equals(uri)) {
                configOptions2 = AbstractSensorsDataAPI.getConfigOptions();
                if (!configOptions2.isDisableSDK()) {
                    isDisableFromObserver = true;
                    SensorsDataAPI.disableSDK();
                }
            } else if (DbParams.getInstance().getEnableSDKUri().equals(uri)) {
                configOptions = AbstractSensorsDataAPI.getConfigOptions();
                if (configOptions.isDisableSDK()) {
                    isEnableFromObserver = true;
                    SensorsDataAPI.enableSDK();
                }
            } else if (DbParams.getInstance().getUserIdentities().equals(uri)) {
                SensorsDataAPI sharedInstance = SensorsDataAPI.sharedInstance();
                if (!(sharedInstance instanceof SensorsDataAPIEmptyImplementation) && (sAContextManager = sharedInstance.getSAContextManager()) != null) {
                    sAContextManager.getUserIdentityAPI().getIdentitiesInstance().updateIdentities();
                }
            }
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }
}
