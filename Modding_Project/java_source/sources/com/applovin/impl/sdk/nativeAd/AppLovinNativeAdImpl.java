package com.applovin.impl.sdk.nativeAd;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.arch.core.util.Function;
import com.applovin.impl.a7;
import com.applovin.impl.adview.AppLovinTouchToClickListener;
import com.applovin.impl.l2;
import com.applovin.impl.l4;
import com.applovin.impl.q7;
import com.applovin.impl.s7;
import com.applovin.impl.sdk.AppLovinAdBase;
import com.applovin.impl.sdk.array.ArrayService;
import com.applovin.impl.sdk.k;
import com.applovin.impl.sdk.network.e;
import com.applovin.impl.sdk.o;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.v3;
import com.applovin.impl.v4;
import com.applovin.impl.w6;
import com.applovin.impl.x3;
import com.applovin.impl.z6;
import com.applovin.sdk.AppLovinSdkUtils;
import com.iab.omid.library.applovin.adsession.VerificationScriptResource;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sensorsdata.analytics.android.sdk.SensorsDataInstrumented;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class AppLovinNativeAdImpl extends AppLovinAdBase implements AppLovinNativeAd, View.OnClickListener, AppLovinTouchToClickListener.OnClickListener {
    private static final String AD_RESPONSE_TYPE_APPLOVIN = "applovin";
    private static final String AD_RESPONSE_TYPE_ORTB = "ortb";
    private static final String AD_RESPONSE_TYPE_UNDEFINED = "undefined";
    private static final String DEFAULT_APPLOVIN_PRIVACY_URL = "https://www.applovin.com/privacy/";
    private static final float MINIMUM_STARS_TO_RENDER = 3.0f;
    private static final String TAG = "AppLovinNativeAd";
    private static final int VIEWABLE_MRC100_PERCENTAGE = 100;
    private static final int VIEWABLE_MRC50_PERCENTAGE = 50;
    private static final int VIEWABLE_MRC_REQUIRED_SECONDS = 1;
    private static final int VIEWABLE_VIDEO_MRC_REQUIRED_SECONDS = 2;
    private final v3 adEventTracker;
    private final String advertiser;
    private final String body;
    private final String callToAction;
    private final Uri clickDestinationBackupUri;
    private final Uri clickDestinationUri;
    private final List<e> clickTrackingRequests;
    private final List<String> clickTrackingUrls;
    private AppLovinNativeAdEventListener eventListener;
    private Uri iconUri;
    private final List<e> impressionRequests;
    private final AtomicBoolean impressionTracked;
    private final List<String> jsTrackers;
    private float mainImageAspectRatio;
    private Uri mainImageUri;
    private AppLovinMediaView mediaView;
    private ViewGroup nativeAdView;
    private final b onAttachStateChangeHandler;
    private AppLovinOptionsView optionsView;
    private Uri privacyDestinationUri;
    private Uri privacyIconUri;
    private final List<View> registeredViews;
    private final Double starRating;
    private final String tag;
    private final String title;
    private final a7 vastAd;
    @Nullable
    private View videoView;
    private final c viewableMRC100Callback;
    private s7 viewableMRC100Tracker;
    private final c viewableMRC50Callback;
    private s7 viewableMRC50Tracker;
    @Nullable
    private c viewableVideoMRC50Callback;
    @Nullable
    private s7 viewableVideoMRC50Tracker;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class Builder {
        private final JSONObject adObject;
        private String advertiser;
        private String body;
        private String callToAction;
        private Uri clickDestinationBackupUri;
        private Uri clickDestinationUri;
        private List<e> clickTrackingRequests;
        private List<String> clickTrackingUrls;
        private final JSONObject fullResponse;
        private Uri iconUri;
        private List<e> impressionRequests;
        private List<String> jsTrackers;
        private float mainImageAspectRatio;
        private Uri mainImageUri;
        private Uri privacyDestinationUri;
        private Uri privacyIconUri;
        private final k sdk;
        private Double starRating;
        private String title;
        private a7 vastAd;
        private List<e> viewableMRC100Requests;
        private List<e> viewableMRC50Requests;
        private List<e> viewableVideo50Requests;

        public Builder(JSONObject jSONObject, JSONObject jSONObject2, k kVar) {
            this.adObject = jSONObject;
            this.fullResponse = jSONObject2;
            this.sdk = kVar;
        }

        public AppLovinNativeAdImpl build() {
            return new AppLovinNativeAdImpl(this, null);
        }

        public Builder setAdvertiser(String str) {
            this.advertiser = str;
            return this;
        }

        public Builder setBody(String str) {
            this.body = str;
            return this;
        }

        public Builder setCallToAction(String str) {
            this.callToAction = str;
            return this;
        }

        public Builder setClickDestinationBackupUri(Uri uri) {
            this.clickDestinationBackupUri = uri;
            return this;
        }

        public Builder setClickDestinationUri(Uri uri) {
            this.clickDestinationUri = uri;
            return this;
        }

        public Builder setClickTrackingRequests(List<e> list) {
            this.clickTrackingRequests = list;
            return this;
        }

        public Builder setClickTrackingUrls(List<String> list) {
            this.clickTrackingUrls = list;
            return this;
        }

        public Builder setIconUri(Uri uri) {
            this.iconUri = uri;
            return this;
        }

        public Builder setImpressionRequests(List<e> list) {
            this.impressionRequests = list;
            return this;
        }

        public Builder setJsTrackers(List<String> list) {
            this.jsTrackers = list;
            return this;
        }

        public Builder setMainImageUri(Uri uri) {
            this.mainImageUri = uri;
            return this;
        }

        public Builder setPrivacyDestinationUri(Uri uri) {
            this.privacyDestinationUri = uri;
            return this;
        }

        public Builder setPrivacyIconUri(Uri uri) {
            this.privacyIconUri = uri;
            return this;
        }

        public Builder setStarRating(Double d) {
            this.starRating = d;
            return this;
        }

        public Builder setTitle(String str) {
            this.title = str;
            return this;
        }

        public Builder setVastAd(a7 a7Var) {
            this.vastAd = a7Var;
            return this;
        }

        public Builder setViewableMRC100Requests(List<e> list) {
            this.viewableMRC100Requests = list;
            return this;
        }

        public Builder setViewableMRC50Requests(List<e> list) {
            this.viewableMRC50Requests = list;
            return this;
        }

        public Builder setViewableVideo50Requests(List<e> list) {
            this.viewableVideo50Requests = list;
            return this;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class b implements View.OnAttachStateChangeListener {

        /* renamed from: a  reason: collision with root package name */
        private final AppLovinNativeAdImpl f3699a;

        public b(AppLovinNativeAdImpl appLovinNativeAdImpl) {
            this.f3699a = appLovinNativeAdImpl;
        }

        public boolean a(Object obj) {
            return obj instanceof b;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            if (!bVar.a(this)) {
                return false;
            }
            AppLovinNativeAdImpl a2 = a();
            AppLovinNativeAdImpl a3 = bVar.a();
            if (a2 != null ? a2.equals(a3) : a3 == null) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            AppLovinNativeAdImpl a2 = a();
            if (a2 == null) {
                hashCode = 43;
            } else {
                hashCode = a2.hashCode();
            }
            return hashCode + 59;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            this.f3699a.maybeHandleOnAttachedToWindow(view);
        }

        public String toString() {
            return "AppLovinNativeAdImpl.OnAttachStateChangeHandler(ad=" + a() + ")";
        }

        public AppLovinNativeAdImpl a() {
            return this.f3699a;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class c implements s7.a {

        /* renamed from: a  reason: collision with root package name */
        private final List f3700a;

        public c(List list) {
            this.f3700a = list;
        }

        public boolean a(Object obj) {
            return obj instanceof c;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            if (!cVar.a(this)) {
                return false;
            }
            List a2 = a();
            List a3 = cVar.a();
            if (a2 != null ? a2.equals(a3) : a3 == null) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            List a2 = a();
            if (a2 == null) {
                hashCode = 43;
            } else {
                hashCode = a2.hashCode();
            }
            return hashCode + 59;
        }

        @Override // com.applovin.impl.s7.a
        public void onLogVisibilityImpression() {
            for (e eVar : this.f3700a) {
                ((AppLovinAdBase) AppLovinNativeAdImpl.this).sdk.f0().dispatchPostbackRequest(eVar, null);
            }
        }

        public String toString() {
            return "AppLovinNativeAdImpl.VisibilityCallback(requests=" + a() + ")";
        }

        public List a() {
            return this.f3700a;
        }
    }

    public /* synthetic */ AppLovinNativeAdImpl(Builder builder, a aVar) {
        this(builder);
    }

    public static /* synthetic */ List Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AppLovinNativeAdImpl appLovinNativeAdImpl, JSONArray jSONArray) {
        appLovinNativeAdImpl.getClass();
        if (jSONArray == null) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject = JsonUtils.getJSONObject(jSONArray, i, (JSONObject) null);
            try {
                URL url = new URL(JsonUtils.getString(jSONObject, "url", null));
                String string = JsonUtils.getString(jSONObject, "vendor_key", null);
                String string2 = JsonUtils.getString(jSONObject, "parameters", null);
                if (StringUtils.isValidString(string) && StringUtils.isValidString(string2)) {
                    arrayList.add(VerificationScriptResource.createVerificationScriptResourceWithParameters(string, url, string2));
                } else {
                    arrayList.add(VerificationScriptResource.createVerificationScriptResourceWithoutParameters(url));
                }
            } catch (Throwable th) {
                appLovinNativeAdImpl.sdk.O();
                if (o.a()) {
                    appLovinNativeAdImpl.sdk.O().a(appLovinNativeAdImpl.tag, "Failed to parse OMID verification script resource", th);
                }
            }
        }
        return arrayList;
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AppLovinNativeAdImpl appLovinNativeAdImpl) {
        for (View view : appLovinNativeAdImpl.registeredViews) {
            view.setOnTouchListener(null);
            view.setOnClickListener(null);
        }
        appLovinNativeAdImpl.sdk.O();
        if (o.a()) {
            o O = appLovinNativeAdImpl.sdk.O();
            String str = appLovinNativeAdImpl.tag;
            O.a(str, "Unregistered views: " + appLovinNativeAdImpl.registeredViews);
        }
        appLovinNativeAdImpl.registeredViews.clear();
        s7 s7Var = appLovinNativeAdImpl.viewableMRC50Tracker;
        if (s7Var != null) {
            s7Var.b();
        }
        s7 s7Var2 = appLovinNativeAdImpl.viewableMRC100Tracker;
        if (s7Var2 != null) {
            s7Var2.b();
        }
        s7 s7Var3 = appLovinNativeAdImpl.viewableVideoMRC50Tracker;
        if (s7Var3 != null) {
            s7Var3.b();
        }
        ViewGroup viewGroup = appLovinNativeAdImpl.nativeAdView;
        if (viewGroup != null) {
            viewGroup.removeOnAttachStateChangeListener(appLovinNativeAdImpl.onAttachStateChangeHandler);
            appLovinNativeAdImpl.nativeAdView = null;
        }
        AppLovinMediaView appLovinMediaView = appLovinNativeAdImpl.mediaView;
        if (appLovinMediaView != null) {
            appLovinMediaView.destroy();
        }
        AppLovinOptionsView appLovinOptionsView = appLovinNativeAdImpl.optionsView;
        if (appLovinOptionsView != null) {
            appLovinOptionsView.destroy();
        }
    }

    public static /* synthetic */ List Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Function function, v4 v4Var) {
        return (List) function.apply(v4Var.a("omid_verification_script_resources", (JSONArray) null));
    }

    public static /* synthetic */ List Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AppLovinNativeAdImpl appLovinNativeAdImpl, v4 v4Var) {
        appLovinNativeAdImpl.getClass();
        return z6.a(v4Var.a("click_tracking_urls", new JSONObject()), appLovinNativeAdImpl.getClCode(), v4Var.a("click_tracking_url", (String) null), appLovinNativeAdImpl.sdk);
    }

    private List<com.applovin.impl.e> getDirectClickTrackingPostbacks() {
        List<com.applovin.impl.e> a2;
        v4 v4Var = this.synchronizedAdObject;
        if (v4Var != null) {
            return (List) v4Var.a(new Function() { // from class: com.applovin.impl.sdk.nativeAd.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    return AppLovinNativeAdImpl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AppLovinNativeAdImpl.this, (v4) obj);
                }
            });
        }
        synchronized (this.adObjectLock) {
            a2 = z6.a(getJsonObjectFromAdObject("click_tracking_urls", new JSONObject()), getClCode(), getStringFromAdObject("click_tracking_url", null), this.sdk);
        }
        return a2;
    }

    private List<String> getPrivacySandboxClickAttributionUrls() {
        return getStringListFromAdObject("privacy_sandbox_click_attribution_urls", Collections.EMPTY_LIST);
    }

    private List<String> getPrivacySandboxImpressionAttributionUrls() {
        return getStringListFromAdObject("privacy_sandbox_impression_attribution_urls", Collections.EMPTY_LIST);
    }

    private boolean isDspAd() {
        return AD_RESPONSE_TYPE_ORTB.equalsIgnoreCase(getType());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void launchUri(Uri uri, @Nullable Uri uri2, Context context) {
        if (w6.a(uri, context, this.sdk)) {
            this.sdk.O();
            if (o.a()) {
                o O = this.sdk.O();
                String str = this.tag;
                O.a(str, "Opening URL: " + uri);
            }
        } else if (w6.a(uri2, context, this.sdk)) {
            this.sdk.O();
            if (o.a()) {
                o O2 = this.sdk.O();
                String str2 = this.tag;
                O2.a(str2, "Opening backup URL: " + uri2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeHandleOnAttachedToWindow(View view) {
        if (this.impressionTracked.compareAndSet(false, true)) {
            s7 s7Var = new s7(this.nativeAdView, this.sdk, this.viewableMRC50Callback);
            this.viewableMRC50Tracker = s7Var;
            TimeUnit timeUnit = TimeUnit.SECONDS;
            s7Var.a(0, 50.0f, 50.0f, timeUnit.toMillis(1L), this.nativeAdView);
            s7 s7Var2 = new s7(this.nativeAdView, this.sdk, this.viewableMRC100Callback);
            this.viewableMRC100Tracker = s7Var2;
            s7Var2.a(0, 100.0f, 100.0f, timeUnit.toMillis(1L), this.nativeAdView);
            a7 a7Var = this.vastAd;
            if (a7Var != null && a7Var.hasVideoUrl()) {
                s7 s7Var3 = new s7(this.nativeAdView, this.sdk, this.viewableVideoMRC50Callback);
                this.viewableVideoMRC50Tracker = s7Var3;
                s7Var3.a(0, 50.0f, 50.0f, timeUnit.toMillis(2L), this.videoView);
            }
            List<String> list = this.jsTrackers;
            if (list != null) {
                for (String str : list) {
                    this.sdk.x0().b(str);
                }
            }
            for (e eVar : this.impressionRequests) {
                this.sdk.f0().dispatchPostbackRequest(eVar, null);
            }
            this.adEventTracker.a(view);
            this.adEventTracker.g();
            if (this.sdk.g0() != null) {
                this.sdk.g0().b(getPrivacySandboxImpressionAttributionUrls());
            }
        }
    }

    @Override // com.applovin.impl.sdk.nativeAd.AppLovinNativeAd
    public void destroy() {
        unregisterViewsForInteraction();
        this.eventListener = null;
        this.adEventTracker.f();
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase
    public long getAdIdNumber() {
        return getLongFromAdObject("ad_id", -1L);
    }

    @Override // com.applovin.impl.sdk.nativeAd.AppLovinNativeAd
    public String getAdvertiser() {
        return this.advertiser;
    }

    @Override // com.applovin.impl.sdk.nativeAd.AppLovinNativeAd
    public String getBody() {
        return this.body;
    }

    @Nullable
    public String getCachePrefix() {
        return getStringFromAdObject("cache_prefix", null);
    }

    @Override // com.applovin.impl.sdk.nativeAd.AppLovinNativeAd
    public String getCallToAction() {
        return this.callToAction;
    }

    @Override // com.applovin.impl.sdk.array.ArrayDirectDownloadAd
    public Bundle getDirectDownloadParameters() {
        v4 v4Var = this.synchronizedAdObject;
        if (v4Var != null) {
            return (Bundle) v4Var.a(new Function() { // from class: com.applovin.impl.sdk.nativeAd.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    Bundle bundle;
                    bundle = JsonUtils.toBundle(((v4) obj).a("ah_parameters", (JSONObject) null));
                    return bundle;
                }
            });
        }
        return JsonUtils.toBundle(getJsonObjectFromAdObject("ah_parameters", null));
    }

    @Override // com.applovin.impl.sdk.array.ArrayDirectDownloadAd
    @Nullable
    public String getDirectDownloadToken() {
        return getStringFromAdObject("ah_dd_token", null);
    }

    @Override // com.applovin.impl.sdk.nativeAd.AppLovinNativeAd
    public Uri getIconUri() {
        return this.iconUri;
    }

    public float getMainImageAspectRatio() {
        return this.mainImageAspectRatio;
    }

    public Uri getMainImageUri() {
        return this.mainImageUri;
    }

    @Override // com.applovin.impl.sdk.nativeAd.AppLovinNativeAd
    public AppLovinMediaView getMediaView() {
        return this.mediaView;
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase, com.applovin.impl.r3
    @Nullable
    public String getOpenMeasurementContentUrl() {
        return getStringFromAdObject("omid_content_url", null);
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase, com.applovin.impl.r3
    public String getOpenMeasurementCustomReferenceData() {
        return getStringFromAdObject("omid_custom_ref_data", "");
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase, com.applovin.impl.r3
    public List<VerificationScriptResource> getOpenMeasurementVerificationScriptResources() {
        List<VerificationScriptResource> list;
        if (this.sdk.d0().e()) {
            return Collections.singletonList(VerificationScriptResource.createVerificationScriptResourceWithParameters(x3.c(), x3.b(), x3.a()));
        }
        final Function function = new Function() { // from class: com.applovin.impl.sdk.nativeAd.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // androidx.arch.core.util.Function
            public final Object apply(Object obj) {
                return AppLovinNativeAdImpl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AppLovinNativeAdImpl.this, (JSONArray) obj);
            }
        };
        v4 v4Var = this.synchronizedAdObject;
        if (v4Var != null) {
            return (List) v4Var.a(new Function() { // from class: com.applovin.impl.sdk.nativeAd.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    return AppLovinNativeAdImpl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Function.this, (v4) obj);
                }
            });
        }
        synchronized (this.adObjectLock) {
            list = (List) function.apply(getJsonArrayFromAdObject("omid_verification_script_resources", null));
        }
        return list;
    }

    @Override // com.applovin.impl.sdk.nativeAd.AppLovinNativeAd
    public AppLovinOptionsView getOptionsView() {
        return this.optionsView;
    }

    public Uri getPrivacyDestinationUri() {
        return this.privacyDestinationUri;
    }

    public Uri getPrivacyIconUri() {
        return this.privacyIconUri;
    }

    @Override // com.applovin.impl.sdk.nativeAd.AppLovinNativeAd
    public Double getStarRating() {
        return this.starRating;
    }

    @Override // com.applovin.impl.sdk.nativeAd.AppLovinNativeAd
    public String getTitle() {
        return this.title;
    }

    public String getType() {
        return getStringFromAdObject("type", "undefined");
    }

    public a7 getVastAd() {
        return this.vastAd;
    }

    public void handleNativeAdClick(Uri uri, @Nullable Uri uri2, MotionEvent motionEvent, Context context) {
        if (this.sdk.g0() != null) {
            this.sdk.g0().b(getPrivacySandboxClickAttributionUrls(), motionEvent);
        }
        handleNativeAdClick(uri, uri2, context);
    }

    @Override // com.applovin.impl.sdk.array.ArrayDirectDownloadAd
    public boolean isDirectDownloadEnabled() {
        return StringUtils.isValidString(getDirectDownloadToken());
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase, com.applovin.impl.r3
    public boolean isOpenMeasurementEnabled() {
        if (this.sdk.d0().e()) {
            return true;
        }
        return getBooleanFromAdObject("omsdk_enabled", Boolean.FALSE);
    }

    @Override // android.view.View.OnClickListener
    @SensorsDataInstrumented
    public void onClick(View view) {
        Context context;
        this.sdk.O();
        if (o.a()) {
            this.sdk.O().a(this.tag, "Handle view clicked");
        }
        this.sdk.k().maybeSubmitPersistentPostbacks(getDirectClickTrackingPostbacks());
        if (((Boolean) this.sdk.a(l4.x)).booleanValue()) {
            context = q7.b(this.nativeAdView, this.sdk);
            if (context == null) {
                context = view.getContext();
            }
        } else {
            context = view.getContext();
        }
        handleNativeAdClick(this.clickDestinationUri, this.clickDestinationBackupUri, context);
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    @Override // com.applovin.impl.sdk.nativeAd.AppLovinNativeAd
    public void registerViewsForInteraction(List<View> list, ViewGroup viewGroup) {
        this.nativeAdView = viewGroup;
        if (viewGroup.isAttachedToWindow()) {
            maybeHandleOnAttachedToWindow(this.nativeAdView);
        } else {
            this.nativeAdView.addOnAttachStateChangeListener(this.onAttachStateChangeHandler);
        }
        this.sdk.O();
        if (o.a()) {
            o O = this.sdk.O();
            String str = this.tag;
            O.a(str, "Registered ad view for impressions: " + this.nativeAdView);
        }
        if (this.clickDestinationUri == null && this.clickDestinationBackupUri == null) {
            this.sdk.O();
            if (o.a()) {
                this.sdk.O().a(this.tag, "Skipping click registration - no click URLs provided");
                return;
            }
            return;
        }
        for (View view : list) {
            if (view.hasOnClickListeners()) {
                this.sdk.O();
                if (o.a()) {
                    o O2 = this.sdk.O();
                    String str2 = this.tag;
                    O2.k(str2, "View has an onClickListener already - " + view);
                }
            }
            if (!view.isClickable()) {
                this.sdk.O();
                if (o.a()) {
                    o O3 = this.sdk.O();
                    String str3 = this.tag;
                    O3.k(str3, "View is not clickable - " + view);
                }
            }
            if (!view.isEnabled()) {
                this.sdk.O();
                if (o.a()) {
                    o O4 = this.sdk.O();
                    String str4 = this.tag;
                    O4.b(str4, "View is not enabled - " + view);
                }
            }
            if (view instanceof Button) {
                this.sdk.O();
                if (o.a()) {
                    o O5 = this.sdk.O();
                    String str5 = this.tag;
                    O5.a(str5, "Registering click for button: " + view);
                }
            } else {
                this.sdk.O();
                if (o.a()) {
                    o O6 = this.sdk.O();
                    String str6 = this.tag;
                    O6.a(str6, "Registering click for view: " + view);
                }
            }
            if (((Boolean) this.sdk.a(l4.z2)).booleanValue()) {
                view.setOnTouchListener(new AppLovinTouchToClickListener(this.sdk, l4.k0, viewGroup.getContext(), this));
            } else {
                view.setOnClickListener(this);
            }
            this.registeredViews.add(view);
        }
        this.sdk.O();
        if (o.a()) {
            o O7 = this.sdk.O();
            String str7 = this.tag;
            O7.a(str7, "Registered views: " + this.registeredViews);
        }
    }

    public void setEventListener(AppLovinNativeAdEventListener appLovinNativeAdEventListener) {
        this.eventListener = appLovinNativeAdEventListener;
    }

    public void setIconUri(Uri uri) {
        this.iconUri = uri;
    }

    public void setMainImageAspectRatio(float f) {
        this.mainImageAspectRatio = f;
    }

    public void setMainImageUri(Uri uri) {
        this.mainImageUri = uri;
    }

    public void setPrivacyIconUri(Uri uri) {
        this.privacyIconUri = uri;
    }

    public void setUpNativeAdViewComponents() {
        a7 a7Var = this.vastAd;
        if (a7Var != null && a7Var.hasVideoUrl()) {
            try {
                this.mediaView = new AppLovinVastMediaView(this, this.sdk, k.o());
            } catch (Throwable th) {
                this.sdk.O();
                if (o.a()) {
                    this.sdk.O().d(this.tag, "Failed to create MediaPlayer VAST media view. Falling back to static image for media view.", th);
                }
                this.sdk.E().a(TAG, "createMediaPlayerVASTMediaView", th);
                this.mediaView = new AppLovinMediaView(this, this.sdk, k.o());
            }
        } else {
            this.mediaView = new AppLovinMediaView(this, this.sdk, k.o());
        }
        if (this.privacyDestinationUri != null) {
            this.optionsView = new AppLovinOptionsView(this, this.sdk, k.o());
            return;
        }
        this.sdk.O();
        if (o.a()) {
            this.sdk.O().a(this.tag, "Privacy icon will not render because no native ad privacy URL is provided.");
        }
    }

    public void setVideoView(@Nullable View view) {
        this.videoView = view;
    }

    @NonNull
    public String toString() {
        return "AppLovinNativeAd{adIdNumber=" + getAdIdNumber() + " - " + getTitle() + "}";
    }

    @Override // com.applovin.impl.sdk.nativeAd.AppLovinNativeAd
    public void unregisterViewsForInteraction() {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.nativeAd.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                AppLovinNativeAdImpl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AppLovinNativeAdImpl.this);
            }
        });
    }

    private AppLovinNativeAdImpl(Builder builder) {
        super(builder.adObject, builder.fullResponse, builder.sdk);
        this.impressionTracked = new AtomicBoolean();
        this.registeredViews = new ArrayList();
        this.onAttachStateChangeHandler = new b(this);
        this.adEventTracker = new v3(this);
        this.title = builder.title;
        this.advertiser = builder.advertiser;
        this.body = builder.body;
        this.callToAction = builder.callToAction;
        this.iconUri = builder.iconUri;
        this.mainImageUri = builder.mainImageUri;
        this.mainImageAspectRatio = builder.mainImageAspectRatio;
        this.privacyIconUri = builder.privacyIconUri;
        a7 a7Var = builder.vastAd;
        this.vastAd = a7Var;
        this.clickDestinationUri = builder.clickDestinationUri;
        this.clickDestinationBackupUri = builder.clickDestinationBackupUri;
        this.clickTrackingUrls = builder.clickTrackingUrls;
        this.jsTrackers = builder.jsTrackers;
        this.clickTrackingRequests = builder.clickTrackingRequests;
        this.impressionRequests = builder.impressionRequests;
        Double d = builder.starRating;
        this.starRating = (d == null || d.doubleValue() < 3.0d) ? null : null;
        if (builder.privacyDestinationUri != null) {
            this.privacyDestinationUri = builder.privacyDestinationUri;
        } else if (!isDspAd() || getSdk().s0().c()) {
            this.privacyDestinationUri = Uri.parse(DEFAULT_APPLOVIN_PRIVACY_URL);
        }
        this.viewableMRC50Callback = new c(builder.viewableMRC50Requests);
        this.viewableMRC100Callback = new c(builder.viewableMRC100Requests);
        if (a7Var != null && a7Var.hasVideoUrl()) {
            this.viewableVideoMRC50Callback = new c(builder.viewableVideo50Requests);
        }
        this.tag = "AppLovinNativeAd:" + getAdIdNumber();
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase, com.applovin.impl.r3
    public v3 getAdEventTracker() {
        return this.adEventTracker;
    }

    private void handleNativeAdClick(Uri uri, @Nullable Uri uri2, Context context) {
        if (this.clickTrackingRequests.size() > 0) {
            for (e eVar : this.clickTrackingRequests) {
                this.sdk.f0().dispatchPostbackRequest(eVar, null);
            }
        } else {
            for (String str : this.clickTrackingUrls) {
                this.sdk.f0().dispatchPostbackAsync(str, null);
            }
        }
        l2.b(this.eventListener, this);
        if (isDirectDownloadEnabled()) {
            this.sdk.p().startDirectInstallOrDownloadProcess(this, null, new a(uri, uri2, context));
        } else {
            launchUri(uri, uri2, context);
        }
    }

    @Override // com.applovin.impl.adview.AppLovinTouchToClickListener.OnClickListener
    public void onClick(View view, MotionEvent motionEvent) {
        Context context;
        this.sdk.O();
        if (o.a()) {
            this.sdk.O().a(this.tag, "Handle view clicked");
        }
        this.sdk.k().maybeSubmitPersistentPostbacks(getDirectClickTrackingPostbacks());
        if (((Boolean) this.sdk.a(l4.x)).booleanValue()) {
            context = q7.b(this.nativeAdView, this.sdk);
            if (context == null) {
                context = view.getContext();
            }
        } else {
            context = view.getContext();
        }
        handleNativeAdClick(this.clickDestinationUri, this.clickDestinationBackupUri, motionEvent, context);
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class a implements ArrayService.DirectDownloadListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Uri f3698a;
        final /* synthetic */ Uri b;
        final /* synthetic */ Context c;

        public a(Uri uri, Uri uri2, Context context) {
            this.f3698a = uri;
            this.b = uri2;
            this.c = context;
        }

        @Override // com.applovin.impl.sdk.array.ArrayService.DirectDownloadListener
        public void onFailure() {
            AppLovinNativeAdImpl.this.launchUri(this.f3698a, this.b, this.c);
        }

        @Override // com.applovin.impl.sdk.array.ArrayService.DirectDownloadListener
        public void onEvent(String str, Bundle bundle) {
        }
    }
}
