package com.sensorsdata.analytics.android.sdk.remote;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.net.Uri;
import android.text.TextUtils;
import com.sensorsdata.analytics.android.sdk.R;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.core.SACoreHelper;
import com.sensorsdata.analytics.android.sdk.core.event.InputData;
import com.sensorsdata.analytics.android.sdk.dialog.SensorsDataDialogUtils;
import com.sensorsdata.analytics.android.sdk.dialog.SensorsDataLoadingDialog;
import com.sensorsdata.analytics.android.sdk.internal.beans.EventType;
import com.sensorsdata.analytics.android.sdk.internal.beans.ServerUrl;
import com.sensorsdata.analytics.android.sdk.network.HttpCallback;
import com.sensorsdata.analytics.android.sdk.remote.BaseSensorsDataSDKRemoteManager;
import com.sensorsdata.analytics.android.sdk.util.AppInfoUtils;
import com.sensorsdata.analytics.android.sdk.util.NetworkUtils;
import com.sensorsdata.analytics.android.sdk.util.SADisplayUtil;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class SensorsDataRemoteManagerDebug extends BaseSensorsDataSDKRemoteManager {
    private static final String TAG = "SA.SensorsDataRemoteManagerDebug";
    private String errorMsg;

    /* compiled from: Proguard */
    /* renamed from: com.sensorsdata.analytics.android.sdk.remote.SensorsDataRemoteManagerDebug$2  reason: invalid class name */
    /* loaded from: classes6.dex */
    public class AnonymousClass2 implements DialogInterface.OnClickListener {
        final /* synthetic */ Activity val$activity;
        final /* synthetic */ Uri val$uri;

        public AnonymousClass2(Activity activity, Uri uri) {
            this.val$activity = activity;
            this.val$uri = uri;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            final SensorsDataLoadingDialog sensorsDataLoadingDialog = new SensorsDataLoadingDialog(this.val$activity);
            SensorsDataDialogUtils.dialogShowDismissOld(sensorsDataLoadingDialog);
            SensorsDataRemoteManagerDebug.this.requestRemoteConfig(false, new HttpCallback.StringCallback() { // from class: com.sensorsdata.analytics.android.sdk.remote.SensorsDataRemoteManagerDebug.2.1
                @Override // com.sensorsdata.analytics.android.sdk.network.HttpCallback
                public void onFailure(int i2, String str) {
                    sensorsDataLoadingDialog.dismiss();
                    Activity activity = AnonymousClass2.this.val$activity;
                    SensorsDataDialogUtils.showDialog(activity, SADisplayUtil.getStringResource(activity, R.string.sensors_analytics_remote_fail));
                    SALog.i(SensorsDataRemoteManagerDebug.TAG, "remote config: Remote request was failed,code is " + i2 + ",errorMessage is" + str);
                }

                @Override // com.sensorsdata.analytics.android.sdk.network.HttpCallback
                public void onResponse(String str) {
                    sensorsDataLoadingDialog.dismiss();
                    if (!TextUtils.isEmpty(str)) {
                        SensorsDataSDKRemoteConfig sDKRemoteConfig = SensorsDataRemoteManagerDebug.this.toSDKRemoteConfig(str);
                        String queryParameter = AnonymousClass2.this.val$uri.getQueryParameter("nv");
                        if (!sDKRemoteConfig.getNewVersion().equals(queryParameter)) {
                            Activity activity = AnonymousClass2.this.val$activity;
                            SensorsDataDialogUtils.showDialog(activity, SADisplayUtil.getStringResource(activity, R.string.sensors_analytics_remote_version_error), String.format(SADisplayUtil.getStringResource(AnonymousClass2.this.val$activity, R.string.sensors_analytics_remote_version_tip), sDKRemoteConfig.getNewVersion(), queryParameter), SADisplayUtil.getStringResource(AnonymousClass2.this.val$activity, R.string.sensors_analytics_common_ok), new DialogInterface.OnClickListener() { // from class: com.sensorsdata.analytics.android.sdk.remote.SensorsDataRemoteManagerDebug.2.1.1
                                @Override // android.content.DialogInterface.OnClickListener
                                public void onClick(DialogInterface dialogInterface2, int i2) {
                                    SensorsDataDialogUtils.startLaunchActivity(AnonymousClass2.this.val$activity);
                                }
                            }, null, null);
                        } else {
                            Activity activity2 = AnonymousClass2.this.val$activity;
                            SensorsDataDialogUtils.showDialog(activity2, SADisplayUtil.getStringResource(activity2, R.string.sensors_analytics_remote_succeed));
                            SensorsDataRemoteManagerDebug.this.setSDKRemoteConfig(sDKRemoteConfig);
                        }
                    } else {
                        Activity activity3 = AnonymousClass2.this.val$activity;
                        SensorsDataDialogUtils.showDialog(activity3, SADisplayUtil.getStringResource(activity3, R.string.sensors_analytics_remote_other_error));
                    }
                    SALog.i(SensorsDataRemoteManagerDebug.TAG, "remote config: Remote request was successful,response data is " + str);
                }

                @Override // com.sensorsdata.analytics.android.sdk.network.HttpCallback
                public void onAfter() {
                }
            });
        }
    }

    public SensorsDataRemoteManagerDebug(SensorsDataAPI sensorsDataAPI, Context context) {
        super(sensorsDataAPI, sensorsDataAPI.getSAContextManager());
        this.errorMsg = "";
        SALog.i(TAG, "remote config: Construct a SensorsDataRemoteManagerDebug");
    }

    private boolean verifyRemoteRequestParameter(Uri uri, Activity activity) {
        String str;
        boolean z;
        String queryParameter = uri.getQueryParameter("app_id");
        String queryParameter2 = uri.getQueryParameter("os");
        String queryParameter3 = uri.getQueryParameter("project");
        String queryParameter4 = uri.getQueryParameter("nv");
        String serverUrl = this.mSensorsDataAPI.getServerUrl();
        if (!TextUtils.isEmpty(serverUrl)) {
            str = new ServerUrl(serverUrl).getProject();
        } else {
            str = "";
        }
        SALog.i(TAG, "remote config: ServerUrl is " + serverUrl);
        if (!NetworkUtils.isNetworkAvailable(this.mContextManager.getContext())) {
            this.errorMsg = SADisplayUtil.getStringResource(activity, R.string.sensors_analytics_remote_tip_error_network);
        } else {
            SensorsDataAPI sensorsDataAPI = this.mSensorsDataAPI;
            if (sensorsDataAPI != null && !sensorsDataAPI.isNetworkRequestEnable()) {
                this.errorMsg = SADisplayUtil.getStringResource(activity, R.string.sensors_analytics_remote_tip_error_disable_network);
                SALog.i(TAG, "enableNetworkRequest is false");
            } else if (this.mDisableDefaultRemoteConfig) {
                this.errorMsg = SADisplayUtil.getStringResource(activity, R.string.sensors_analytics_remote_tip_error_disable_remote);
                SALog.i(TAG, "disableDefaultRemoteConfig is true");
            } else if (!str.equals(queryParameter3)) {
                this.errorMsg = SADisplayUtil.getStringResource(activity, R.string.sensors_analytics_remote_tip_error_project);
            } else if (!"Android".equals(queryParameter2)) {
                this.errorMsg = SADisplayUtil.getStringResource(activity, R.string.sensors_analytics_remote_tip_error_os);
            } else if (!AppInfoUtils.getProcessName(activity).equals(queryParameter)) {
                this.errorMsg = SADisplayUtil.getStringResource(activity, R.string.sensors_analytics_remote_tip_error_appid);
            } else if (TextUtils.isEmpty(queryParameter4)) {
                this.errorMsg = SADisplayUtil.getStringResource(activity, R.string.sensors_analytics_remote_tip_error_qrcode);
            } else {
                z = true;
                SALog.i(TAG, "remote config: Uri is " + uri.toString());
                SALog.i(TAG, "remote config: The verification result is " + z);
                return z;
            }
        }
        z = false;
        SALog.i(TAG, "remote config: Uri is " + uri.toString());
        SALog.i(TAG, "remote config: The verification result is " + z);
        return z;
    }

    @Override // com.sensorsdata.analytics.android.sdk.remote.BaseSensorsDataSDKRemoteManager
    public void applySDKConfigFromCache() {
        SALog.i(TAG, "remote config: Running applySDKConfigFromCache");
    }

    public void checkRemoteConfig(Uri uri, final Activity activity) {
        if (verifyRemoteRequestParameter(uri, activity)) {
            SensorsDataDialogUtils.showDialog(activity, SADisplayUtil.getStringResource(activity, R.string.sensors_analytics_common_title), SADisplayUtil.getStringResource(activity, R.string.sensors_analytics_remote_config), SADisplayUtil.getStringResource(activity, R.string.sensors_analytics_common_continue), new AnonymousClass2(activity, uri), SADisplayUtil.getStringResource(activity, R.string.sensors_analytics_common_cancel), new DialogInterface.OnClickListener() { // from class: com.sensorsdata.analytics.android.sdk.remote.SensorsDataRemoteManagerDebug.3
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    SensorsDataDialogUtils.startLaunchActivity(activity);
                }
            });
        } else {
            SensorsDataDialogUtils.showDialog(activity, this.errorMsg);
        }
    }

    @Override // com.sensorsdata.analytics.android.sdk.remote.BaseSensorsDataSDKRemoteManager
    public void pullSDKConfigFromServer() {
        SALog.i(TAG, "remote config: Running pullSDKConfigFromServer");
    }

    @Override // com.sensorsdata.analytics.android.sdk.remote.BaseSensorsDataSDKRemoteManager
    public void requestRemoteConfig(BaseSensorsDataSDKRemoteManager.RandomTimeType randomTimeType, boolean z) {
        SALog.i(TAG, "remote config: Running requestRemoteConfig");
    }

    @Override // com.sensorsdata.analytics.android.sdk.remote.BaseSensorsDataSDKRemoteManager
    public void resetPullSDKConfigTimer() {
        SALog.i(TAG, "remote config: Running resetPullSDKConfigTimer");
    }

    @Override // com.sensorsdata.analytics.android.sdk.remote.BaseSensorsDataSDKRemoteManager
    public void setSDKRemoteConfig(SensorsDataSDKRemoteConfig sensorsDataSDKRemoteConfig) {
        try {
            final JSONObject jSONObject = new JSONObject();
            jSONObject.put("$app_remote_config", sensorsDataSDKRemoteConfig.toJson().put("debug", true).toString());
            SACoreHelper.getInstance().trackQueueEvent(new Runnable() { // from class: com.sensorsdata.analytics.android.sdk.remote.SensorsDataRemoteManagerDebug.1
                @Override // java.lang.Runnable
                public void run() {
                    SensorsDataAPI.sharedInstance().getSAContextManager().trackEvent(new InputData().setEventName("$AppRemoteConfigChanged").setProperties(jSONObject).setEventType(EventType.TRACK));
                }
            });
            this.mSensorsDataAPI.flush();
            BaseSensorsDataSDKRemoteManager.mSDKRemoteConfig = sensorsDataSDKRemoteConfig;
            SALog.i(TAG, "remote config: The remote configuration takes effect immediately");
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }
}
