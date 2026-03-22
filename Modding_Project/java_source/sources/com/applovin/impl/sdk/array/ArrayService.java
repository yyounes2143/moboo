package com.applovin.impl.sdk.array;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.core.view.InputDeviceCompat;
import com.applovin.array.apphub.aidl.IAppHubDirectDownloadServiceCallback;
import com.applovin.array.apphub.aidl.IAppHubService;
import com.applovin.impl.b;
import com.applovin.impl.k0;
import com.applovin.impl.l3;
import com.applovin.impl.l4;
import com.applovin.impl.q2;
import com.applovin.impl.sdk.k;
import com.applovin.impl.sdk.o;
import com.applovin.impl.sdk.utils.BundleUtils;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.y1;
import com.applovin.sdk.AppLovinSdk;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class ArrayService extends IAppHubDirectDownloadServiceCallback.Stub {
    public static final String DIRECT_DOWNLOAD_EVENT_APP_DETAILS_DISMISSED = "APP_DETAILS_DISMISSED";
    public static final String DIRECT_DOWNLOAD_EVENT_APP_DETAILS_SHOWN = "APP_DETAILS_SHOWN";
    public static final String KEY_AD_TOKEN = "ad_token";
    private static final int MAX_RECONNECT_RETRY_COUNT = 3;
    private static final String SERVICE_INTENT_CLASS_NAME = "com.applovin.oem.am.android.external.AppHubService";
    private static final String SERVICE_INTENT_FILTER_ACTION = "com.applovin.am.intent.action.APPHUB_SERVICE";
    private static final String TAG = "ArrayService";
    @Nullable
    private String appHubPackageName;
    @Nullable
    private IAppHubService appHubService;
    @Nullable
    private final Intent appHubServiceIntent;
    private long appHubVersionCode = -1;
    @Nullable
    private DirectDownloadState currentDownloadState;
    private int currentRetryCount;
    private final ArrayDataCollector dataCollector;
    @Nullable
    private Boolean isDirectDownloadEnabled;
    private final o logger;
    private final int minVersionCodeWithGenericEventsSupport;
    @Nullable
    private String randomUserToken;
    private final k sdk;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface DirectDownloadListener {
        void onEvent(String str, Bundle bundle);

        void onFailure();
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class DirectDownloadState {
        private final String adToken;
        private final AtomicBoolean errorCallbackInvoked = new AtomicBoolean();
        private final DirectDownloadListener listener;
        @Nullable
        private final Bundle parameters;

        public DirectDownloadState(String str, @Nullable Bundle bundle, DirectDownloadListener directDownloadListener) {
            this.adToken = str;
            this.parameters = bundle;
            this.listener = directDownloadListener;
        }

        public boolean canEqual(Object obj) {
            return obj instanceof DirectDownloadState;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof DirectDownloadState)) {
                return false;
            }
            DirectDownloadState directDownloadState = (DirectDownloadState) obj;
            if (!directDownloadState.canEqual(this)) {
                return false;
            }
            AtomicBoolean errorCallbackInvoked = getErrorCallbackInvoked();
            AtomicBoolean errorCallbackInvoked2 = directDownloadState.getErrorCallbackInvoked();
            if (errorCallbackInvoked != null ? !errorCallbackInvoked.equals(errorCallbackInvoked2) : errorCallbackInvoked2 != null) {
                return false;
            }
            String adToken = getAdToken();
            String adToken2 = directDownloadState.getAdToken();
            if (adToken != null ? !adToken.equals(adToken2) : adToken2 != null) {
                return false;
            }
            Bundle parameters = getParameters();
            Bundle parameters2 = directDownloadState.getParameters();
            if (parameters != null ? !parameters.equals(parameters2) : parameters2 != null) {
                return false;
            }
            DirectDownloadListener listener = getListener();
            DirectDownloadListener listener2 = directDownloadState.getListener();
            if (listener != null ? listener.equals(listener2) : listener2 == null) {
                return true;
            }
            return false;
        }

        public String getAdToken() {
            return this.adToken;
        }

        public AtomicBoolean getErrorCallbackInvoked() {
            return this.errorCallbackInvoked;
        }

        public DirectDownloadListener getListener() {
            return this.listener;
        }

        @Nullable
        public Bundle getParameters() {
            return this.parameters;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2;
            int hashCode3;
            AtomicBoolean errorCallbackInvoked = getErrorCallbackInvoked();
            int i = 43;
            if (errorCallbackInvoked == null) {
                hashCode = 43;
            } else {
                hashCode = errorCallbackInvoked.hashCode();
            }
            String adToken = getAdToken();
            int i2 = (hashCode + 59) * 59;
            if (adToken == null) {
                hashCode2 = 43;
            } else {
                hashCode2 = adToken.hashCode();
            }
            int i3 = i2 + hashCode2;
            Bundle parameters = getParameters();
            int i4 = i3 * 59;
            if (parameters == null) {
                hashCode3 = 43;
            } else {
                hashCode3 = parameters.hashCode();
            }
            int i5 = i4 + hashCode3;
            DirectDownloadListener listener = getListener();
            int i6 = i5 * 59;
            if (listener != null) {
                i = listener.hashCode();
            }
            return i6 + i;
        }

        public String toString() {
            return "ArrayService.DirectDownloadState(errorCallbackInvoked=" + getErrorCallbackInvoked() + ", adToken=" + getAdToken() + ", parameters=" + getParameters() + ", listener=" + getListener() + ")";
        }
    }

    public ArrayService(final k kVar) {
        this.sdk = kVar;
        this.logger = kVar.O();
        this.dataCollector = new ArrayDataCollector(kVar);
        Intent createAppHubServiceIntent = createAppHubServiceIntent();
        this.appHubServiceIntent = createAppHubServiceIntent;
        this.minVersionCodeWithGenericEventsSupport = ((Integer) kVar.a(l4.d0)).intValue();
        if (createAppHubServiceIntent != null) {
            bindAppHubService();
        }
        kVar.e().a(new b() { // from class: com.applovin.impl.sdk.array.ArrayService.1
            @Override // com.applovin.impl.b, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStopped(Activity activity) {
                DirectDownloadState directDownloadState = ArrayService.this.currentDownloadState;
                if (ArrayService.this.appHubService != null && directDownloadState != null) {
                    try {
                        o unused = ArrayService.this.logger;
                        if (o.a()) {
                            ArrayService.this.logger.a(ArrayService.TAG, "Dismissing Direct Download Activity");
                        }
                        ArrayService.this.appHubService.dismissDirectDownloadAppDetails(directDownloadState.adToken);
                        directDownloadState.listener.onEvent(ArrayService.DIRECT_DOWNLOAD_EVENT_APP_DETAILS_DISMISSED, ArrayService.this.createBaseExtras(directDownloadState.adToken));
                        ArrayService.this.currentDownloadState = null;
                    } catch (RemoteException e) {
                        o unused2 = ArrayService.this.logger;
                        if (o.a()) {
                            ArrayService.this.logger.a(ArrayService.TAG, "Failed dismiss Direct Download Activity", e);
                        }
                        kVar.E().a(ArrayService.TAG, "dismissDirectDownloadActivity", e, ArrayService.this.getHealthEventExtraParameters());
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void bindAppHubService() {
        if (this.currentRetryCount > 3) {
            if (o.a()) {
                this.logger.k(TAG, "Exceeded maximum retry count");
                return;
            }
            return;
        }
        if (o.a()) {
            this.logger.a(TAG, "Attempting connection to App Hub service...");
        }
        int i = 1;
        this.currentRetryCount++;
        try {
            if (k0.c()) {
                i = InputDeviceCompat.SOURCE_DPAD;
            }
            if (!k.o().bindService(this.appHubServiceIntent, new ServiceConnection() { // from class: com.applovin.impl.sdk.array.ArrayService.2
                @Override // android.content.ServiceConnection
                public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                    o unused = ArrayService.this.logger;
                    if (o.a()) {
                        o oVar = ArrayService.this.logger;
                        oVar.a(ArrayService.TAG, "Connection successful: " + componentName);
                    }
                    ArrayService.this.appHubService = IAppHubService.Stub.asInterface(iBinder);
                }

                @Override // android.content.ServiceConnection
                public void onServiceDisconnected(ComponentName componentName) {
                    o unused = ArrayService.this.logger;
                    if (o.a()) {
                        o oVar = ArrayService.this.logger;
                        oVar.b(ArrayService.TAG, "Service disconnected: " + componentName);
                    }
                    ArrayService.this.appHubService = null;
                    o unused2 = ArrayService.this.logger;
                    if (o.a()) {
                        ArrayService.this.logger.b(ArrayService.TAG, "Retrying...");
                    }
                    ArrayService.this.bindAppHubService();
                }
            }, i) && o.a()) {
                this.logger.k(TAG, "App Hub not available");
            }
        } catch (Throwable th) {
            if (o.a()) {
                this.logger.a(TAG, "Failed to bind to service", th);
            }
            this.sdk.E().a(TAG, "bindAppHubService", th, getHealthEventExtraParameters());
        }
    }

    @Nullable
    private Intent createAppHubServiceIntent() {
        Intent intent = new Intent(SERVICE_INTENT_FILTER_ACTION);
        List<ResolveInfo> queryIntentServices = k.o().getPackageManager().queryIntentServices(intent, 0);
        if (queryIntentServices != null && !queryIntentServices.isEmpty()) {
            String str = queryIntentServices.get(0).serviceInfo.packageName;
            this.appHubPackageName = str;
            intent.setClassName(str, SERVICE_INTENT_CLASS_NAME);
            return intent;
        } else if (o.a()) {
            this.logger.k(TAG, "App Hub not available");
            return null;
        } else {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Bundle createBaseExtras(String str) {
        Bundle bundle = new Bundle();
        BundleUtils.putString(KEY_AD_TOKEN, str, bundle);
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, String> getHealthEventExtraParameters() {
        HashMap hashMap = new HashMap(2);
        CollectionUtils.putStringIfValid("array_version_code", String.valueOf(getAppHubVersionCode()), hashMap);
        CollectionUtils.putStringIfValid("array_sdk_package_name", getAppHubPackageName(), hashMap);
        return hashMap;
    }

    private void handleEvent(String str, Bundle bundle) {
        DirectDownloadState directDownloadState = this.currentDownloadState;
        if (directDownloadState != null) {
            if (!directDownloadState.adToken.equalsIgnoreCase(bundle.getString(KEY_AD_TOKEN))) {
                String str2 = "Ignoring event (" + str + ") for mismatched token.";
                if (o.a()) {
                    this.logger.a(TAG, str2);
                }
                Map<String, String> healthEventExtraParameters = getHealthEventExtraParameters();
                healthEventExtraParameters.put("source", "ArrayService:handleEvent");
                healthEventExtraParameters.put("details", str2);
                this.sdk.E().d(y1.C0, healthEventExtraParameters);
                return;
            }
            directDownloadState.listener.onEvent(str, bundle);
            if (DIRECT_DOWNLOAD_EVENT_APP_DETAILS_DISMISSED.equals(str)) {
                this.currentDownloadState = null;
            }
        }
    }

    private boolean shouldUseGenericDirectDownloadEvent() {
        if (this.minVersionCodeWithGenericEventsSupport < 0 || getAppHubVersionCode() < this.minVersionCodeWithGenericEventsSupport) {
            return false;
        }
        return true;
    }

    public void collectAppHubData() {
        if (isAppHubInstalled()) {
            if (o.a()) {
                this.logger.a(TAG, "Collecting data...");
            }
            if (this.isDirectDownloadEnabled == null && ((Boolean) this.sdk.a(l4.a0)).booleanValue()) {
                this.isDirectDownloadEnabled = this.dataCollector.collectDirectDownloadEnabled(this.appHubService);
            }
            if (this.appHubVersionCode == -1 && ((Boolean) this.sdk.a(l4.Z)).booleanValue()) {
                this.appHubVersionCode = this.dataCollector.collectAppHubVersionCode(this.appHubService);
            }
            if (TextUtils.isEmpty(this.randomUserToken) && ((Boolean) this.sdk.a(l4.b0)).booleanValue()) {
                this.randomUserToken = this.dataCollector.collectRandomUserToken(this.appHubService);
            }
        }
    }

    @Nullable
    public String getAppHubPackageName() {
        return this.appHubPackageName;
    }

    public long getAppHubVersionCode() {
        return this.appHubVersionCode;
    }

    @Nullable
    public Boolean getIsDirectDownloadEnabled() {
        return this.isDirectDownloadEnabled;
    }

    public String getJavaScript(String str, Bundle bundle) {
        JSONObject jSONObject = BundleUtils.toJSONObject(bundle);
        return "javascript:al_onDirectDownloadEvent('" + str + "'," + jSONObject + ");";
    }

    @Nullable
    public String getRandomUserToken() {
        return this.randomUserToken;
    }

    public boolean isAppHubInstalled() {
        if (this.appHubService != null) {
            return true;
        }
        return false;
    }

    public void maybeSendAdEvent(q2 q2Var, String str) {
        IAppHubService iAppHubService;
        if (((Boolean) this.sdk.a(l4.c0)).booleanValue() && (iAppHubService = this.appHubService) != null && l3.b(q2Var)) {
            if (o.a()) {
                o oVar = this.logger;
                oVar.a(TAG, "Sending ad event: " + str + " for ad: " + q2Var);
            }
            Bundle bundle = new Bundle();
            BundleUtils.putString("sdk_version", AppLovinSdk.VERSION, bundle);
            BundleUtils.putString(FirebaseAnalytics.Param.AD_FORMAT, q2Var.getFormat().getLabel(), bundle);
            Bundle B = q2Var.B();
            if (B != null) {
                bundle.putAll(B);
            }
            try {
                iAppHubService.onAdSdkEvent(str, bundle);
            } catch (Throwable th) {
                if (o.a()) {
                    o oVar2 = this.logger;
                    oVar2.a(TAG, "Failed to send ad event: " + str, th);
                }
                Map map = CollectionUtils.map("name", str);
                map.putAll(getHealthEventExtraParameters());
                this.sdk.E().a(TAG, "failedToSendAdEvent", th, map);
            }
        }
    }

    @Override // com.applovin.array.apphub.aidl.IAppHubDirectDownloadServiceCallback
    public void onAppDetailsDismissed(String str) {
        if (o.a()) {
            this.logger.a(TAG, "App details dismissed");
        }
        if (shouldUseGenericDirectDownloadEvent()) {
            return;
        }
        handleEvent(DIRECT_DOWNLOAD_EVENT_APP_DETAILS_DISMISSED, createBaseExtras(str));
    }

    @Override // com.applovin.array.apphub.aidl.IAppHubDirectDownloadServiceCallback
    public void onAppDetailsShown(String str) {
        if (o.a()) {
            this.logger.a(TAG, "App details shown");
        }
        if (shouldUseGenericDirectDownloadEvent()) {
            return;
        }
        handleEvent(DIRECT_DOWNLOAD_EVENT_APP_DETAILS_SHOWN, createBaseExtras(str));
    }

    @Override // com.applovin.array.apphub.aidl.IAppHubDirectDownloadServiceCallback
    public void onDownloadStarted(String str) {
        if (o.a()) {
            this.logger.a(TAG, "Download started");
        }
    }

    @Override // com.applovin.array.apphub.aidl.IAppHubDirectDownloadServiceCallback
    public void onError(String str, String str2) {
        if (o.a()) {
            o oVar = this.logger;
            oVar.b(TAG, "Encountered error: " + str2);
        }
        Map<String, String> healthEventExtraParameters = getHealthEventExtraParameters();
        CollectionUtils.putStringIfValid("error_message", str2, healthEventExtraParameters);
        this.sdk.E().d(y1.l0, healthEventExtraParameters);
        DirectDownloadState directDownloadState = this.currentDownloadState;
        if (directDownloadState != null) {
            if (!directDownloadState.adToken.equalsIgnoreCase(str)) {
                if (o.a()) {
                    this.logger.a(TAG, "Ignoring error callback for mismatched token.");
                }
                healthEventExtraParameters.put("details", "Ignoring error callback for mismatched token.");
                this.sdk.E().a(y1.C0, "ArrayService:onError", healthEventExtraParameters);
            } else if (directDownloadState.errorCallbackInvoked.compareAndSet(false, true)) {
                directDownloadState.listener.onFailure();
                this.currentDownloadState = null;
            }
        }
    }

    @Override // com.applovin.array.apphub.aidl.IAppHubDirectDownloadServiceCallback
    public void onEvent(String str, Bundle bundle) {
        if (o.a()) {
            o oVar = this.logger;
            oVar.a(TAG, "Received event: " + str);
        }
        if (!shouldUseGenericDirectDownloadEvent()) {
            return;
        }
        handleEvent(str, bundle);
    }

    public void startDirectInstallOrDownloadProcess(ArrayDirectDownloadAd arrayDirectDownloadAd, @Nullable Bundle bundle, DirectDownloadListener directDownloadListener) {
        if (this.appHubService == null) {
            if (o.a()) {
                this.logger.b(TAG, "Cannot begin Direct Install / Download process - service disconnected");
            }
            directDownloadListener.onFailure();
        } else if (!arrayDirectDownloadAd.isDirectDownloadEnabled()) {
            if (o.a()) {
                this.logger.b(TAG, "Cannot begin Direct Install / Download process - missing token");
            }
            directDownloadListener.onFailure();
        } else {
            try {
                Bundle directDownloadParameters = arrayDirectDownloadAd.getDirectDownloadParameters();
                if (bundle != null) {
                    directDownloadParameters.putAll(bundle);
                }
                this.currentDownloadState = new DirectDownloadState(arrayDirectDownloadAd.getDirectDownloadToken(), directDownloadParameters, directDownloadListener);
                if (o.a()) {
                    this.logger.a(TAG, "Starting Direct Download Activity");
                }
                if (this.appHubVersionCode >= 21) {
                    this.appHubService.showDirectDownloadAppDetailsWithExtra(this.currentDownloadState.adToken, this.currentDownloadState.parameters, this);
                } else {
                    this.appHubService.showDirectDownloadAppDetails(this.currentDownloadState.adToken, this);
                }
                if (o.a()) {
                    this.logger.a(TAG, "Activity started");
                }
            } catch (Throwable th) {
                if (o.a()) {
                    this.logger.a(TAG, "Failed to execute Direct Install / Download process", th);
                }
                this.sdk.E().a(TAG, "directInstallDownload", th, getHealthEventExtraParameters());
                this.currentDownloadState = null;
                directDownloadListener.onFailure();
            }
        }
    }
}
