package com.sensorsdata.analytics.android.sdk;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.view.View;
import android.webkit.WebView;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultLoadControl;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.core.SAContextManager;
import com.sensorsdata.analytics.android.sdk.core.business.exposure.SAExposureData;
import com.sensorsdata.analytics.android.sdk.core.event.InputData;
import com.sensorsdata.analytics.android.sdk.deeplink.SensorsDataDeepLinkCallback;
import com.sensorsdata.analytics.android.sdk.deeplink.SensorsDataDeferredDeepLinkCallback;
import com.sensorsdata.analytics.android.sdk.internal.beans.InternalConfigOptions;
import com.sensorsdata.analytics.android.sdk.listener.SAEventListener;
import com.sensorsdata.analytics.android.sdk.listener.SAFunctionListener;
import com.sensorsdata.analytics.android.sdk.listener.SAJSListener;
import com.sensorsdata.analytics.android.sdk.plugin.property.PropertyPluginManager;
import com.sensorsdata.analytics.android.sdk.plugin.property.SAPropertyPlugin;
import com.sensorsdata.analytics.android.sdk.remote.BaseSensorsDataSDKRemoteManager;
import com.sensorsdata.analytics.android.sdk.useridentity.UserIdentityAPI;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class SensorsDataAPIEmptyImplementation extends SensorsDataAPI {
    public SensorsDataAPIEmptyImplementation() {
        this.mSAContextManager = new EmptySAContext();
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public void disableAutoTrack(SensorsDataAPI.AutoTrackEventType autoTrackEventType) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI, com.sensorsdata.analytics.android.sdk.useridentity.IUserIdentityAPI
    public String getAnonymousId() {
        return null;
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public String getCookie(boolean z) {
        return null;
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI, com.sensorsdata.analytics.android.sdk.useridentity.IUserIdentityAPI
    public String getDistinctId() {
        return null;
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public int getFlushBulkSize() {
        return 100;
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public int getFlushInterval() {
        return DefaultLoadControl.DEFAULT_MIN_BUFFER_MS;
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.useridentity.IUserIdentityAPI
    public JSONObject getIdentities() {
        return new JSONObject();
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public List<Class<?>> getIgnoredViewTypeList() {
        return new ArrayList();
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public JSONObject getLastScreenTrackProperties() {
        return new JSONObject();
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public String getLastScreenUrl() {
        return null;
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI, com.sensorsdata.analytics.android.sdk.useridentity.IUserIdentityAPI
    public String getLoginId() {
        return null;
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public long getMaxCacheSize() {
        return 33554432L;
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public JSONObject getPresetProperties() {
        return new JSONObject();
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public String getScreenOrientation() {
        return "";
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public String getServerUrl() {
        return null;
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public int getSessionIntervalTime() {
        return 30000;
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public JSONObject getSuperProperties() {
        return new JSONObject();
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public void ignoreView(View view) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public boolean isActivityAutoTrackAppClickIgnored(Class<?> cls) {
        return true;
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public boolean isActivityAutoTrackAppViewScreenIgnored(Class<?> cls) {
        return true;
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public boolean isAutoTrackEnabled() {
        return false;
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public boolean isAutoTrackEventTypeIgnored(int i) {
        return true;
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public boolean isDebugMode() {
        return false;
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.IFragmentAPI
    public boolean isFragmentAutoTrackAppViewScreen(Class<?> cls) {
        return false;
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public boolean isHeatMapActivity(Class<?> cls) {
        return false;
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public boolean isHeatMapEnabled() {
        return false;
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public boolean isNetworkRequestEnable() {
        return false;
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.IFragmentAPI
    public boolean isTrackFragmentAppViewScreenEnabled() {
        return false;
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public boolean isVisualizedAutoTrackActivity(Class<?> cls) {
        return false;
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public boolean isVisualizedAutoTrackEnabled() {
        return false;
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI, com.sensorsdata.analytics.android.sdk.useridentity.IUserIdentityAPI
    public void login(String str) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.useridentity.IUserIdentityAPI
    public void loginWithKey(String str, String str2) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public void profileAppend(String str, String str2) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public void profileIncrement(String str, Number number) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public void profileSet(String str, Object obj) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public void profileSetOnce(String str, Object obj) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.core.mediator.exposure.SAExposureAPIProtocol
    public void removeExposureView(View view) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public void setGPSLocation(double d, double d2) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public void setServerUrl(String str) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public void setViewID(Dialog dialog, String str) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    @Deprecated
    public void showUpWebView(WebView webView, JSONObject jSONObject, boolean z, boolean z2) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public void showUpX5WebView(Object obj) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public void track(String str) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.core.mediator.advert.SAAdvertAPIProtocol
    public void trackAppInstall() {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.core.mediator.advert.SAAdvertAPIProtocol
    public void trackChannelEvent(String str) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI, com.sensorsdata.analytics.android.sdk.core.mediator.advert.SAAdvertAPIProtocol
    public void trackDeepLinkLaunch(String str) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.core.mediator.advert.SAAdvertAPIProtocol
    public void trackInstallation(String str) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public void trackTimerEnd(String str) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public String trackTimerStart(String str) {
        return "";
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public void trackViewAppClick(View view) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public void trackViewScreen(Activity activity) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public void disableAutoTrack(List<SensorsDataAPI.AutoTrackEventType> list) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public void ignoreView(View view, boolean z) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public boolean isAutoTrackEventTypeIgnored(SensorsDataAPI.AutoTrackEventType autoTrackEventType) {
        return true;
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI, com.sensorsdata.analytics.android.sdk.useridentity.IUserIdentityAPI
    public void login(String str, JSONObject jSONObject) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.useridentity.IUserIdentityAPI
    public void loginWithKey(String str, String str2, JSONObject jSONObject) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public void profileAppend(String str, Set<String> set) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public void profileIncrement(Map<String, ? extends Number> map) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public void profileSet(JSONObject jSONObject) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public void profileSetOnce(JSONObject jSONObject) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.core.mediator.exposure.SAExposureAPIProtocol
    public void removeExposureView(View view, String str) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public void setGPSLocation(double d, double d2, String str) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public void setServerUrl(String str, boolean z) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public void setViewID(View view, String str) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public void showUpWebView(WebView webView, boolean z) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    @Deprecated
    public void showUpX5WebView(Object obj, JSONObject jSONObject, boolean z, boolean z2) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public void track(String str, JSONObject jSONObject) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.core.mediator.advert.SAAdvertAPIProtocol
    public void trackAppInstall(JSONObject jSONObject) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.core.mediator.advert.SAAdvertAPIProtocol
    public void trackChannelEvent(String str, JSONObject jSONObject) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI, com.sensorsdata.analytics.android.sdk.core.mediator.advert.SAAdvertAPIProtocol
    public void trackDeepLinkLaunch(String str, String str2) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.core.mediator.advert.SAAdvertAPIProtocol
    public void trackInstallation(String str, JSONObject jSONObject) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public void trackTimerEnd(String str, JSONObject jSONObject) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public void trackViewAppClick(View view, JSONObject jSONObject) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public void trackViewScreen(Object obj) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public void setViewID(Object obj, String str) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    @Deprecated
    public void showUpWebView(WebView webView, boolean z, JSONObject jSONObject) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public void showUpX5WebView(Object obj, boolean z) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.core.mediator.advert.SAAdvertAPIProtocol
    public void trackAppInstall(JSONObject jSONObject, boolean z) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.core.mediator.advert.SAAdvertAPIProtocol
    public void trackInstallation(String str, JSONObject jSONObject, boolean z) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public void trackViewScreen(String str, JSONObject jSONObject) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public void showUpWebView(WebView webView, boolean z, boolean z2) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public void clearGPSLocation() {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public void clearLastScreenUrl() {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public void clearReferrerWhenAppEnd() {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public void clearSuperProperties() {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public void clearTrackTimer() {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public void deleteAll() {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public void flush() {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public void flushScheduled() {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public void flushSync() {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI, com.sensorsdata.analytics.android.sdk.useridentity.IUserIdentityAPI
    public void logout() {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public void profileDelete() {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI, com.sensorsdata.analytics.android.sdk.useridentity.IUserIdentityAPI
    public void resetAnonymousId() {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public void resumeTrackScreenOrientation() {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public void startTrackThread() {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public void stopTrackScreenOrientation() {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public void stopTrackThread() {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.IFragmentAPI
    public void trackFragmentAppViewScreen() {
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class EmptySAContext extends SAContextManager {
        @Override // com.sensorsdata.analytics.android.sdk.core.SAContextManager
        public AnalyticsMessages getAnalyticsMessages() {
            return null;
        }

        @Override // com.sensorsdata.analytics.android.sdk.core.SAContextManager
        public Context getContext() {
            return null;
        }

        @Override // com.sensorsdata.analytics.android.sdk.core.SAContextManager
        public List<SAEventListener> getEventListenerList() {
            return new ArrayList();
        }

        @Override // com.sensorsdata.analytics.android.sdk.core.SAContextManager
        public InternalConfigOptions getInternalConfigs() {
            return new InternalConfigOptions();
        }

        @Override // com.sensorsdata.analytics.android.sdk.core.SAContextManager
        public SensorsDataScreenOrientationDetector getOrientationDetector() {
            return null;
        }

        @Override // com.sensorsdata.analytics.android.sdk.core.SAContextManager
        public PropertyPluginManager getPluginManager() {
            return null;
        }

        @Override // com.sensorsdata.analytics.android.sdk.core.SAContextManager
        public BaseSensorsDataSDKRemoteManager getRemoteManager() {
            return null;
        }

        @Override // com.sensorsdata.analytics.android.sdk.core.SAContextManager
        public SensorsDataAPI getSensorsDataAPI() {
            return new SensorsDataAPIEmptyImplementation();
        }

        @Override // com.sensorsdata.analytics.android.sdk.core.SAContextManager
        public synchronized UserIdentityAPI getUserIdentityAPI() {
            return new UserIdentityAPI(this);
        }

        @Override // com.sensorsdata.analytics.android.sdk.core.SAContextManager
        public boolean isFirstDay(long j) {
            return false;
        }

        @Override // com.sensorsdata.analytics.android.sdk.core.SAContextManager
        public void addEventListener(SAEventListener sAEventListener) {
        }

        @Override // com.sensorsdata.analytics.android.sdk.core.SAContextManager
        public void removeEventListener(SAEventListener sAEventListener) {
        }

        @Override // com.sensorsdata.analytics.android.sdk.core.SAContextManager
        public void setOrientationDetector(SensorsDataScreenOrientationDetector sensorsDataScreenOrientationDetector) {
        }

        @Override // com.sensorsdata.analytics.android.sdk.core.SAContextManager
        public void setRemoteManager(BaseSensorsDataSDKRemoteManager baseSensorsDataSDKRemoteManager) {
        }

        @Override // com.sensorsdata.analytics.android.sdk.core.SAContextManager
        public void trackEvent(InputData inputData) {
        }
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.AbstractSensorsDataAPI
    public void addEventListener(SAEventListener sAEventListener) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.AbstractSensorsDataAPI
    public void addFunctionListener(SAFunctionListener sAFunctionListener) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public void addHeatMapActivities(List<Class<?>> list) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public void addHeatMapActivity(Class<?> cls) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.AbstractSensorsDataAPI
    public void addSAJSListener(SAJSListener sAJSListener) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public void addVisualizedAutoTrackActivities(List<Class<?>> list) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public void addVisualizedAutoTrackActivity(Class<?> cls) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public void enableAutoTrack(List<SensorsDataAPI.AutoTrackEventType> list) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.IFragmentAPI
    public void enableAutoTrackFragment(Class<?> cls) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.IFragmentAPI
    public void enableAutoTrackFragments(List<Class<?>> list) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI, com.sensorsdata.analytics.android.sdk.core.mediator.advert.SAAdvertAPIProtocol
    public void enableDeepLinkInstallSource(boolean z) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public void enableLog(boolean z) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public void enableNetworkRequest(boolean z) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public void enableTrackScreenOrientation(boolean z) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI, com.sensorsdata.analytics.android.sdk.useridentity.IUserIdentityAPI
    public void identify(String str) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public void ignoreAutoTrackActivities(List<Class<?>> list) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public void ignoreAutoTrackActivity(Class<?> cls) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.IFragmentAPI
    public void ignoreAutoTrackFragment(Class<?> cls) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.IFragmentAPI
    public void ignoreAutoTrackFragments(List<Class<?>> list) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public void ignoreViewType(Class cls) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public void profileUnset(String str) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public void profileUnsetPushId(String str) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public void registerDynamicSuperProperties(SensorsDataDynamicSuperProperties sensorsDataDynamicSuperProperties) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public void registerLimitKeys(Map<String, String> map) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public void registerPropertyPlugin(SAPropertyPlugin sAPropertyPlugin) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public void registerSuperProperties(JSONObject jSONObject) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.AbstractSensorsDataAPI
    public void removeEventListener(SAEventListener sAEventListener) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.AbstractSensorsDataAPI
    public void removeFunctionListener(SAFunctionListener sAFunctionListener) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public void removeTimer(String str) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.core.mediator.advert.SAAdvertAPIProtocol
    public void requestDeferredDeepLink(JSONObject jSONObject) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public void resumeAutoTrackActivities(List<Class<?>> list) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public void resumeAutoTrackActivity(Class<?> cls) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.IFragmentAPI
    public void resumeIgnoredAutoTrackFragment(Class<?> cls) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.IFragmentAPI
    public void resumeIgnoredAutoTrackFragments(List<Class<?>> list) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.AbstractSensorsDataAPI
    public void setDebugMode(SensorsDataAPI.DebugMode debugMode) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.core.mediator.advert.SAAdvertAPIProtocol
    public void setDeepLinkCallback(SensorsDataDeepLinkCallback sensorsDataDeepLinkCallback) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.core.mediator.advert.SAAdvertAPIProtocol
    public void setDeepLinkCompletion(SensorsDataDeferredDeepLinkCallback sensorsDataDeferredDeepLinkCallback) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public void setFlushBulkSize(int i) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public void setFlushInterval(int i) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public void setFlushNetworkPolicy(int i) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public void setMaxCacheSize(long j) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public void setSessionIntervalTime(int i) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public void setTrackEventCallBack(SensorsDataTrackEventCallBack sensorsDataTrackEventCallBack) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public void trackTimerPause(String str) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public void trackTimerResume(String str) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public void unregisterPropertyPlugin(SAPropertyPlugin sAPropertyPlugin) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public void unregisterSuperProperty(String str) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.core.mediator.exposure.SAExposureAPIProtocol
    public void addExposureView(View view, SAExposureData sAExposureData) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public void itemDelete(String str, String str2) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public void profilePushId(String str, String str2) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public void setCookie(String str, boolean z) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.core.mediator.exposure.SAExposureAPIProtocol
    public void setExposureIdentifier(View view, String str) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public void setViewActivity(View view, Activity activity) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public void setViewFragmentName(View view, String str) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.core.mediator.autotrack.AutoTrackProtocol
    public void setViewProperties(View view, JSONObject jSONObject) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    @Deprecated
    public void trackTimer(String str, TimeUnit timeUnit) {
    }

    @Override // com.sensorsdata.analytics.android.sdk.SensorsDataAPI, com.sensorsdata.analytics.android.sdk.ISensorsDataAPI
    public void itemSet(String str, String str2, JSONObject jSONObject) {
    }
}
