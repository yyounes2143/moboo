package com.applovin.impl.sdk;

import android.app.ActivityManager;
import android.app.ApplicationExitInfo;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.StrictMode;
import android.text.TextUtils;
import android.view.MotionEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.applovin.adview.AppLovinAdView;
import com.applovin.impl.g2;
import com.applovin.impl.j;
import com.applovin.impl.l2;
import com.applovin.impl.l4;
import com.applovin.impl.m5;
import com.applovin.impl.n0;
import com.applovin.impl.n4;
import com.applovin.impl.o1;
import com.applovin.impl.o5;
import com.applovin.impl.q7;
import com.applovin.impl.r1;
import com.applovin.impl.r5;
import com.applovin.impl.s5;
import com.applovin.impl.sdk.AppLovinAdServiceImpl;
import com.applovin.impl.sdk.a;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.sdk.array.ArrayService;
import com.applovin.impl.sdk.d;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.t;
import com.applovin.impl.w4;
import com.applovin.impl.w6;
import com.applovin.impl.y1;
import com.applovin.impl.z6;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdService;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import com.applovin.sdk.AppLovinBidTokenCollectionListener;
import com.applovin.sdk.AppLovinSdkUtils;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class AppLovinAdServiceImpl implements AppLovinAdService, a.InterfaceC0020a {

    /* renamed from: a  reason: collision with root package name */
    private final k f3540a;
    private final o b;
    private final Map c;
    private final Object d = new Object();
    private final Map e = DesugarCollections.synchronizedMap(new HashMap());
    private final AtomicReference f = new AtomicReference();

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class a implements ArrayService.DirectDownloadListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ r1 f3541a;
        final /* synthetic */ com.applovin.impl.sdk.ad.b b;
        final /* synthetic */ Uri c;
        final /* synthetic */ Context d;

        public a(r1 r1Var, com.applovin.impl.sdk.ad.b bVar, Uri uri, Context context) {
            this.f3541a = r1Var;
            this.b = bVar;
            this.c = uri;
            this.d = context;
        }

        @Override // com.applovin.impl.sdk.array.ArrayService.DirectDownloadListener
        public void onEvent(String str, Bundle bundle) {
            if (ArrayService.DIRECT_DOWNLOAD_EVENT_APP_DETAILS_SHOWN.equals(str)) {
                AppLovinAdServiceImpl.this.f3540a.m0().pauseForClick();
            } else if (ArrayService.DIRECT_DOWNLOAD_EVENT_APP_DETAILS_DISMISSED.equals(str)) {
                AppLovinAdServiceImpl.this.f3540a.m0().resumeForClick();
            }
            if (this.f3541a != null) {
                this.f3541a.e(AppLovinAdServiceImpl.this.f3540a.p().getJavaScript(str, bundle));
            }
        }

        @Override // com.applovin.impl.sdk.array.ArrayService.DirectDownloadListener
        public void onFailure() {
            o unused = AppLovinAdServiceImpl.this.b;
            if (o.a()) {
                AppLovinAdServiceImpl.this.b.a("AppLovinAdService", "Could not execute Direct Install/Direct Download - falling back to normal click logic");
            }
            AppLovinAdServiceImpl.this.a(this.b, this.c, this.d);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class b implements ArrayService.DirectDownloadListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.applovin.impl.adview.a f3542a;
        final /* synthetic */ com.applovin.impl.sdk.ad.b b;
        final /* synthetic */ AppLovinAdView c;
        final /* synthetic */ Uri d;

        public b(com.applovin.impl.adview.a aVar, com.applovin.impl.sdk.ad.b bVar, AppLovinAdView appLovinAdView, Uri uri) {
            this.f3542a = aVar;
            this.b = bVar;
            this.c = appLovinAdView;
            this.d = uri;
        }

        @Override // com.applovin.impl.sdk.array.ArrayService.DirectDownloadListener
        public void onEvent(String str, Bundle bundle) {
            com.applovin.impl.adview.b f;
            if (ArrayService.DIRECT_DOWNLOAD_EVENT_APP_DETAILS_SHOWN.equals(str)) {
                AppLovinAdServiceImpl.this.f3540a.m0().pauseForClick();
                com.applovin.impl.adview.a aVar = this.f3542a;
                if (aVar != null) {
                    aVar.w();
                    l2.c(this.f3542a.e(), this.b, this.c);
                }
            } else if (ArrayService.DIRECT_DOWNLOAD_EVENT_APP_DETAILS_DISMISSED.equals(str) && this.f3542a != null) {
                AppLovinAdServiceImpl.this.f3540a.m0().resumeForClick();
                l2.a(this.f3542a.e(), this.b, this.c);
            }
            com.applovin.impl.adview.a aVar2 = this.f3542a;
            if (aVar2 != null && (f = aVar2.f()) != null) {
                f.a(AppLovinAdServiceImpl.this.f3540a.p().getJavaScript(str, bundle));
            }
        }

        @Override // com.applovin.impl.sdk.array.ArrayService.DirectDownloadListener
        public void onFailure() {
            o unused = AppLovinAdServiceImpl.this.b;
            if (o.a()) {
                AppLovinAdServiceImpl.this.b.a("AppLovinAdService", "Could not execute Direct Install/Direct Download - falling back to normal click logic");
            }
            AppLovinAdServiceImpl.this.a(this.b, this.c, this.f3542a, this.d);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class c implements g2 {

        /* renamed from: a  reason: collision with root package name */
        private final d f3543a;

        public /* synthetic */ c(AppLovinAdServiceImpl appLovinAdServiceImpl, d dVar, a aVar) {
            this(dVar);
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void adReceived(AppLovinAd appLovinAd) {
            if (!(appLovinAd instanceof com.applovin.impl.sdk.ad.c)) {
                AppLovinAdImpl appLovinAdImpl = (AppLovinAdImpl) appLovinAd;
                AppLovinAdServiceImpl.this.f3540a.i().a(appLovinAdImpl);
                if (appLovinAdImpl.canExpire()) {
                    AppLovinAdServiceImpl.this.f3540a.f().a(appLovinAdImpl, AppLovinAdServiceImpl.this);
                }
                appLovinAd = new com.applovin.impl.sdk.ad.c(appLovinAdImpl.getAdZone(), AppLovinAdServiceImpl.this.f3540a);
            }
            Collection<AppLovinAdLoadListener> collection = Collections.EMPTY_SET;
            synchronized (this.f3543a.f3544a) {
                try {
                    if (!this.f3543a.c) {
                        collection = new HashSet(this.f3543a.d);
                        this.f3543a.d.clear();
                    }
                    d dVar = this.f3543a;
                    dVar.b = false;
                    dVar.c = false;
                } catch (Throwable th) {
                    throw th;
                }
            }
            for (AppLovinAdLoadListener appLovinAdLoadListener : collection) {
                AppLovinAdServiceImpl.this.a(appLovinAd, appLovinAdLoadListener);
            }
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void failedToReceiveAd(int i) {
            failedToReceiveAdV2(new AppLovinError(i, ""));
        }

        @Override // com.applovin.impl.g2
        public void failedToReceiveAdV2(AppLovinError appLovinError) {
            Collection<AppLovinAdLoadListener> collection = Collections.EMPTY_SET;
            synchronized (this.f3543a.f3544a) {
                try {
                    if (!this.f3543a.c) {
                        collection = new HashSet(this.f3543a.d);
                        this.f3543a.d.clear();
                    }
                    d dVar = this.f3543a;
                    dVar.b = false;
                    dVar.c = false;
                } catch (Throwable th) {
                    throw th;
                }
            }
            for (AppLovinAdLoadListener appLovinAdLoadListener : collection) {
                AppLovinAdServiceImpl.this.b(appLovinError, appLovinAdLoadListener);
            }
        }

        private c(d dVar) {
            this.f3543a = dVar;
        }
    }

    public AppLovinAdServiceImpl(k kVar) {
        this.f3540a = kVar;
        this.b = kVar.O();
        HashMap hashMap = new HashMap(6);
        this.c = hashMap;
        hashMap.put(t.c(), new d(null));
        hashMap.put(t.k(), new d(null));
        hashMap.put(t.j(), new d(null));
        hashMap.put(t.m(), new d(null));
        hashMap.put(t.b(), new d(null));
        hashMap.put(t.h(), new d(null));
    }

    private void c(AppLovinError appLovinError, AppLovinAdLoadListener appLovinAdLoadListener) {
        if (appLovinAdLoadListener instanceof g2) {
            ((g2) appLovinAdLoadListener).failedToReceiveAdV2(appLovinError);
        } else {
            appLovinAdLoadListener.failedToReceiveAd(appLovinError.getCode());
        }
    }

    public void addCustomQueryParams(Map<String, String> map) {
        this.e.putAll(map);
    }

    @Override // com.applovin.sdk.AppLovinAdService
    public void collectBidToken(AppLovinBidTokenCollectionListener appLovinBidTokenCollectionListener) {
        if (o.a()) {
            o oVar = this.b;
            oVar.a("AppLovinAdService", "collectBidToken(listener=" + appLovinBidTokenCollectionListener + ")");
        }
        this.f3540a.B().a(appLovinBidTokenCollectionListener);
    }

    public AppLovinAd dequeueAd(t tVar) {
        AppLovinAdImpl a2 = this.f3540a.i().a(tVar);
        if (o.a()) {
            o oVar = this.b;
            oVar.a("AppLovinAdService", "Dequeued ad: " + a2 + " for zone: " + tVar + "...");
        }
        return a2;
    }

    public JSONObject getAndResetCustomPostBody() {
        return (JSONObject) this.f.getAndSet(null);
    }

    public Map<String, String> getAndResetCustomQueryParams() {
        Map<String, String> map;
        synchronized (this.e) {
            map = CollectionUtils.map(this.e);
            this.e.clear();
        }
        return map;
    }

    @Override // com.applovin.sdk.AppLovinAdService
    public String getBidToken() {
        if (o.a()) {
            this.b.a("AppLovinAdService", "getBidToken()");
        }
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        String F = this.f3540a.B().F();
        StrictMode.setThreadPolicy(allowThreadDiskReads);
        if (StringUtils.isValidString(F) && o.a()) {
            this.b.a("AppLovinAdService", "Successfully retrieved bid token");
        }
        return F;
    }

    @Override // com.applovin.sdk.AppLovinAdService
    public void loadNextAd(AppLovinAdSize appLovinAdSize, AppLovinAdLoadListener appLovinAdLoadListener) {
        a(t.a(appLovinAdSize, AppLovinAdType.REGULAR), appLovinAdLoadListener);
    }

    @Override // com.applovin.sdk.AppLovinAdService
    public void loadNextAdForAdToken(String str, final AppLovinAdLoadListener appLovinAdLoadListener) {
        String str2;
        if (str != null) {
            str2 = str.trim();
        } else {
            str2 = null;
        }
        if (TextUtils.isEmpty(str2)) {
            o.h("AppLovinAdService", "Empty ad token");
            c(new AppLovinError(-8, "Empty ad token"), appLovinAdLoadListener);
            return;
        }
        com.applovin.impl.j jVar = new com.applovin.impl.j(str2, this.f3540a);
        if (jVar.c() == j.a.REGULAR) {
            if (o.a()) {
                this.b.a("AppLovinAdService", "Loading next ad for token: " + jVar);
            }
            a(new o5(jVar, appLovinAdLoadListener, this.f3540a));
        } else if (jVar.c() == j.a.AD_RESPONSE_JSON) {
            final JSONObject a2 = jVar.a();
            if (a2 != null) {
                n0.c(a2, this.f3540a);
                n0.b(a2, this.f3540a);
                n0.a(a2, this.f3540a);
                this.f3540a.m().a();
                if (JsonUtils.getJSONArray(a2, com.mbridge.msdk.foundation.entity.b.JSON_KEY_ADS, new JSONArray()).length() > 0) {
                    if (o.a()) {
                        this.b.a("AppLovinAdService", "Rendering ad for token: " + jVar);
                    }
                    final t a3 = z6.a(a2, this.f3540a);
                    MaxAdFormat d2 = a3.d();
                    if (((Boolean) this.f3540a.a(l4.T0)).booleanValue() && d2 != null && d2.isFullscreenAd()) {
                        this.f3540a.h().a(a3, new d.a() { // from class: com.applovin.impl.sdk.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                            @Override // com.applovin.impl.sdk.d.a
                            public final void a(com.applovin.impl.sdk.ad.b bVar) {
                                AppLovinAdServiceImpl.this.a(appLovinAdLoadListener, a2, a3, bVar);
                            }
                        });
                        return;
                    } else {
                        a(new s5(a2, a3, appLovinAdLoadListener, this.f3540a));
                        return;
                    }
                }
                if (o.a()) {
                    this.b.b("AppLovinAdService", "No ad returned from the server for token: " + jVar);
                }
                c(AppLovinError.NO_FILL, appLovinAdLoadListener);
                return;
            }
            String str3 = "Unable to retrieve ad response JSON from token: " + jVar.b();
            AppLovinError appLovinError = new AppLovinError(-8, str3);
            o.h("AppLovinAdService", str3);
            c(appLovinError, appLovinAdLoadListener);
        } else {
            AppLovinError appLovinError2 = new AppLovinError(-8, "Invalid token type");
            o.h("AppLovinAdService", "Invalid token type");
            c(appLovinError2, appLovinAdLoadListener);
        }
    }

    @Override // com.applovin.sdk.AppLovinAdService
    public void loadNextAdForZoneId(String str, AppLovinAdLoadListener appLovinAdLoadListener) {
        if (!TextUtils.isEmpty(str)) {
            if (o.a()) {
                o oVar = this.b;
                oVar.a("AppLovinAdService", "Loading next ad of zone {" + str + "}");
            }
            a(t.a(str), appLovinAdLoadListener);
            return;
        }
        throw new IllegalArgumentException("No zone id specified");
    }

    public void loadNextIncentivizedAd(String str, AppLovinAdLoadListener appLovinAdLoadListener) {
        if (o.a()) {
            o oVar = this.b;
            oVar.a("AppLovinAdService", "Loading next incentivized ad of zone {" + str + "}");
        }
        a(t.b(str), appLovinAdLoadListener);
    }

    public void maybeFireAppKilledWhilePlayingAdPostback() {
        Long l;
        if (((Boolean) this.f3540a.a(l4.X1)).booleanValue() && (l = (Long) this.f3540a.b(n4.J)) != null && System.currentTimeMillis() - l.longValue() <= ((Long) this.f3540a.a(l4.b2)).longValue()) {
            if (((Boolean) this.f3540a.a(l4.a2)).booleanValue() || b()) {
                a();
            }
        }
    }

    public void maybeSubmitPersistentPostbacks(List<com.applovin.impl.e> list) {
        if (list != null && !list.isEmpty()) {
            for (com.applovin.impl.e eVar : list) {
                a(eVar);
            }
        }
    }

    @Override // com.applovin.impl.sdk.a.InterfaceC0020a
    public void onAdExpired(o1 o1Var) {
        AppLovinAdImpl appLovinAdImpl = (AppLovinAdImpl) o1Var;
        t adZone = appLovinAdImpl.getAdZone();
        if (o.a()) {
            o oVar = this.b;
            oVar.k("AppLovinAdService", "Ad expired for zone: " + adZone);
        }
        this.f3540a.i().b(appLovinAdImpl);
        if (!this.f3540a.G0() && ((Boolean) this.f3540a.a(l4.Z0)).booleanValue()) {
            d a2 = a(adZone);
            synchronized (a2.f3544a) {
                try {
                    if (!a2.b) {
                        this.f3540a.O();
                        if (o.a()) {
                            o O = this.f3540a.O();
                            O.a("AppLovinAdService", "Reloading ad after expiration for zone {" + adZone + "}...");
                        }
                        a2.b = true;
                        a2.c = true;
                        a(adZone, new c(this, a2, null));
                    } else if (o.a()) {
                        this.b.a("AppLovinAdService", "Cancelled expired ad reload. Already waiting on an ad load...");
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public void setCustomPostBody(JSONObject jSONObject) {
        this.f.set(jSONObject);
    }

    @NonNull
    public String toString() {
        return "AppLovinAdService{adLoadStates=" + this.c + AbstractJsonLexerKt.END_OBJ;
    }

    public void trackAndLaunchClick(com.applovin.impl.sdk.ad.b bVar, AppLovinAdView appLovinAdView, com.applovin.impl.adview.a aVar, Uri uri, @Nullable MotionEvent motionEvent, @Nullable Bundle bundle) {
        boolean z;
        if (bVar == null) {
            if (o.a()) {
                this.b.b("AppLovinAdService", "Unable to track ad view click. No ad specified");
                return;
            }
            return;
        }
        if (bundle != null && Boolean.parseBoolean(bundle.getString("skip_click_tracking"))) {
            if (o.a()) {
                this.b.a("AppLovinAdService", "Skipping tracking for click on an ad...");
            }
        } else {
            if (o.a()) {
                this.b.a("AppLovinAdService", "Tracking click on an ad...");
            }
            if (bundle != null && Boolean.parseBoolean(bundle.getString("install_click"))) {
                z = true;
            } else {
                z = false;
            }
            maybeSubmitPersistentPostbacks(bVar.a(motionEvent, z));
            if (this.f3540a.g0() != null) {
                this.f3540a.g0().b(bVar.d(motionEvent, false, z), motionEvent);
            }
        }
        if (appLovinAdView != null && uri != null) {
            if (bVar.isDirectDownloadEnabled()) {
                this.f3540a.p().startDirectInstallOrDownloadProcess(bVar, bundle, new b(aVar, bVar, appLovinAdView, uri));
            } else {
                a(bVar, appLovinAdView, aVar, uri);
            }
        } else if (o.a()) {
            this.b.b("AppLovinAdService", "Unable to launch click - adView has been prematurely destroyed");
        }
    }

    public void trackAndLaunchVideoClick(com.applovin.impl.sdk.ad.b bVar, Uri uri, MotionEvent motionEvent, @Nullable Bundle bundle, r1 r1Var, Context context) {
        boolean z;
        if (bVar == null) {
            if (o.a()) {
                this.b.b("AppLovinAdService", "Unable to track video click. No ad specified");
                return;
            }
            return;
        }
        if (bundle != null && Boolean.parseBoolean(bundle.getString("skip_click_tracking"))) {
            if (o.a()) {
                this.b.a("AppLovinAdService", "Skipping tracking for VIDEO click on an ad...");
            }
        } else {
            if (o.a()) {
                this.b.a("AppLovinAdService", "Tracking VIDEO click on an ad...");
            }
            if (bundle != null && Boolean.parseBoolean(bundle.getString("install_click"))) {
                z = true;
            } else {
                z = false;
            }
            maybeSubmitPersistentPostbacks(bVar.b(motionEvent, z));
            if (this.f3540a.g0() != null) {
                this.f3540a.g0().b(bVar.d(motionEvent, true, z), motionEvent);
            }
        }
        if (bVar.isDirectDownloadEnabled()) {
            this.f3540a.p().startDirectInstallOrDownloadProcess(bVar, bundle, new a(r1Var, bVar, uri, context));
        } else {
            a(bVar, uri, context);
        }
    }

    public void trackCustomTabsNavigationAborted(com.applovin.impl.sdk.ad.b bVar) {
        if (o.a()) {
            this.b.a("AppLovinAdService", "Tracking Custom Tabs navigation aborted on ad...");
        }
        maybeSubmitPersistentPostbacks(bVar.w());
    }

    public void trackCustomTabsNavigationFailed(com.applovin.impl.sdk.ad.b bVar) {
        if (o.a()) {
            this.b.a("AppLovinAdService", "Tracking Custom Tabs navigation failed on ad...");
        }
        maybeSubmitPersistentPostbacks(bVar.x());
    }

    public void trackCustomTabsNavigationFinished(com.applovin.impl.sdk.ad.b bVar) {
        if (o.a()) {
            this.b.a("AppLovinAdService", "Tracking Custom Tabs navigation finished on ad...");
        }
        maybeSubmitPersistentPostbacks(bVar.y());
    }

    public void trackCustomTabsNavigationStarted(com.applovin.impl.sdk.ad.b bVar) {
        if (o.a()) {
            this.b.a("AppLovinAdService", "Tracking Custom Tabs navigation started on ad...");
        }
        maybeSubmitPersistentPostbacks(bVar.z());
    }

    public void trackCustomTabsTabHidden(com.applovin.impl.sdk.ad.b bVar) {
        if (o.a()) {
            this.b.a("AppLovinAdService", "Tracking Custom Tabs tab hidden on ad...");
        }
        maybeSubmitPersistentPostbacks(bVar.B());
    }

    public void trackCustomTabsTabShown(com.applovin.impl.sdk.ad.b bVar) {
        if (o.a()) {
            this.b.a("AppLovinAdService", "Tracking Custom Tabs tab shown on ad...");
        }
        maybeSubmitPersistentPostbacks(bVar.C());
    }

    public void trackFullScreenAdClosed(com.applovin.impl.sdk.ad.b bVar, long j, List<Long> list, long j2, boolean z, int i) {
        if (bVar == null) {
            if (o.a()) {
                this.b.b("AppLovinAdService", "Unable to track ad closed. No ad specified.");
                return;
            }
            return;
        }
        if (o.a()) {
            this.b.a("AppLovinAdService", "Tracking ad closed...");
        }
        List<com.applovin.impl.e> e = bVar.e();
        if (e != null && !e.isEmpty()) {
            for (com.applovin.impl.e eVar : e) {
                String a2 = a(eVar.c(), j, j2, list, bVar.F(), z, i);
                String a3 = a(eVar.a(), j, j2, list, bVar.F(), z, i);
                if (StringUtils.isValidString(a2)) {
                    a(new com.applovin.impl.e(a2, a3));
                } else if (o.a()) {
                    o oVar = this.b;
                    oVar.b("AppLovinAdService", "Failed to parse url: " + eVar.c());
                }
            }
        } else if (o.a()) {
            o oVar2 = this.b;
            oVar2.k("AppLovinAdService", "Unable to track ad closed for AD #" + bVar.getAdIdNumber() + ". Missing ad close tracking URL." + bVar.getAdIdNumber());
        }
    }

    public void trackImpression(com.applovin.impl.sdk.ad.b bVar) {
        if (bVar == null) {
            if (o.a()) {
                this.b.b("AppLovinAdService", "Unable to track impression click. No ad specified");
                return;
            }
            return;
        }
        if (o.a()) {
            this.b.a("AppLovinAdService", "Tracking impression on ad...");
        }
        maybeSubmitPersistentPostbacks(bVar.J());
        if (this.f3540a.g0() != null) {
            this.f3540a.g0().b(bVar.getPrivacySandboxImpressionAttributionUrls());
        }
    }

    public void trackVideoEnd(com.applovin.impl.sdk.ad.b bVar, long j, int i, boolean z) {
        if (bVar == null) {
            if (o.a()) {
                this.b.b("AppLovinAdService", "Unable to track video end. No ad specified");
                return;
            }
            return;
        }
        if (o.a()) {
            this.b.a("AppLovinAdService", "Tracking video end on ad...");
        }
        List<com.applovin.impl.e> r0 = bVar.r0();
        if (r0 != null && !r0.isEmpty()) {
            String l = Long.toString(System.currentTimeMillis());
            for (com.applovin.impl.e eVar : r0) {
                if (StringUtils.isValidString(eVar.c())) {
                    String a2 = a(eVar.c(), j, i, l, z);
                    String a3 = a(eVar.a(), j, i, l, z);
                    if (a2 != null) {
                        a(new com.applovin.impl.e(a2, a3));
                    } else if (o.a()) {
                        o oVar = this.b;
                        oVar.b("AppLovinAdService", "Failed to parse url: " + eVar.c());
                    }
                } else if (o.a()) {
                    this.b.k("AppLovinAdService", "Requested a postback dispatch for an empty video end URL; nothing to do...");
                }
            }
        } else if (o.a()) {
            o oVar2 = this.b;
            oVar2.k("AppLovinAdService", "Unable to submit persistent postback for AD #" + bVar.getAdIdNumber() + ". Missing video end tracking URL.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(final AppLovinError appLovinError, final AppLovinAdLoadListener appLovinAdLoadListener) {
        AppLovinSdkUtils.runOnUiThread(true, new Runnable() { // from class: com.applovin.impl.sdk.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                AppLovinAdServiceImpl.this.a(appLovinError, appLovinAdLoadListener);
            }
        });
    }

    public void loadNextAd(String str, AppLovinAdSize appLovinAdSize, AppLovinAdLoadListener appLovinAdLoadListener) {
        if (o.a()) {
            o oVar = this.b;
            oVar.a("AppLovinAdService", "Loading next ad of zone {" + str + "} with size " + appLovinAdSize);
        }
        a(t.a(appLovinAdSize, AppLovinAdType.REGULAR, str), appLovinAdLoadListener);
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        final Object f3544a;
        boolean b;
        boolean c;
        final Collection d;

        private d() {
            this.f3544a = new Object();
            this.d = new HashSet();
        }

        public String toString() {
            return "AdLoadState{, isWaitingForAd=" + this.b + ", isReloadingExpiredAd=" + this.c + ", pendingAdListeners=" + this.d + AbstractJsonLexerKt.END_OBJ;
        }

        public /* synthetic */ d(a aVar) {
            this();
        }
    }

    private Uri b(Uri uri, String str) {
        try {
            return Uri.parse(uri.getQueryParameter(str));
        } catch (Throwable th) {
            this.f3540a.O();
            if (o.a()) {
                o O = this.f3540a.O();
                O.k("AppLovinAdService", "Unable to parse query parameter into Uri: " + str);
            }
            this.f3540a.E().a("AppLovinAdService", "buildDeepLinkPlusUrl", th);
            return null;
        }
    }

    private boolean b() {
        List historicalProcessExitReasons;
        int reason;
        int reason2;
        if (Build.VERSION.SDK_INT < 30) {
            return true;
        }
        Context o = k.o();
        historicalProcessExitReasons = ((ActivityManager) o.getSystemService("activity")).getHistoricalProcessExitReasons(o.getPackageName(), 0, 1);
        ApplicationExitInfo Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = androidx.work.impl.utils.Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(historicalProcessExitReasons.get(0));
        reason = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getReason();
        if (reason != 10) {
            reason2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getReason();
            if (reason2 != 11) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final AppLovinAdLoadListener appLovinAdLoadListener, JSONObject jSONObject, t tVar, final com.applovin.impl.sdk.ad.b bVar) {
        if (bVar != null) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    AppLovinAdLoadListener.this.adReceived(bVar);
                }
            });
        } else {
            a(new s5(jSONObject, tVar, appLovinAdLoadListener, this.f3540a));
        }
    }

    private void a(t tVar, AppLovinAdLoadListener appLovinAdLoadListener) {
        if (tVar == null) {
            throw new IllegalArgumentException("No zone specified");
        }
        if (appLovinAdLoadListener != null) {
            this.f3540a.O();
            if (o.a()) {
                o O = this.f3540a.O();
                O.a("AppLovinAdService", "Loading next ad of zone {" + tVar + "}...");
            }
            d a2 = a(tVar);
            synchronized (a2.f3544a) {
                try {
                    a2.d.add(appLovinAdLoadListener);
                    if (!a2.b) {
                        a2.b = true;
                        a(tVar, new c(this, a2, null));
                    } else if (o.a()) {
                        this.b.a("AppLovinAdService", "Already waiting on an ad load...");
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return;
        }
        throw new IllegalArgumentException("No callback specified");
    }

    private void a(w4 w4Var) {
        if (!this.f3540a.B0()) {
            o.j("AppLovinSdk", "Attempted to load ad before SDK initialization. Please wait until after the SDK has initialized, e.g. AppLovinSdk.initializeSdk(Context, SdkInitializationListener).");
        }
        this.f3540a.c();
        this.f3540a.q0().a(w4Var, r5.b.CORE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final AppLovinAd appLovinAd, final AppLovinAdLoadListener appLovinAdLoadListener) {
        AppLovinSdkUtils.runOnUiThread(true, new Runnable() { // from class: com.applovin.impl.sdk.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                AppLovinAdServiceImpl.this.a(appLovinAdLoadListener, appLovinAd);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(AppLovinAdLoadListener appLovinAdLoadListener, AppLovinAd appLovinAd) {
        try {
            appLovinAdLoadListener.adReceived(appLovinAd);
        } catch (Throwable th) {
            o.c("AppLovinAdService", "Unable to notify listener about a newly loaded ad", th);
            this.f3540a.E().a("AppLovinAdService", "notifyAdLoadedCallback", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(AppLovinError appLovinError, AppLovinAdLoadListener appLovinAdLoadListener) {
        try {
            c(appLovinError, appLovinAdLoadListener);
        } catch (Throwable th) {
            o.c("AppLovinAdService", "Unable to notify listener about ad load failure", th);
            StringBuilder sb = new StringBuilder();
            sb.append("notifyAdLoadFailedCallback");
            sb.append(appLovinAdLoadListener instanceof g2 ? "V2" : "");
            this.f3540a.E().a("AppLovinAdService", sb.toString(), th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.applovin.impl.sdk.ad.b bVar, Uri uri, Context context) {
        if (w6.b(uri)) {
            a(uri, bVar, null, null, context, this.f3540a);
        } else {
            w6.a(uri, bVar, context, this.f3540a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.applovin.impl.sdk.ad.b bVar, AppLovinAdView appLovinAdView, com.applovin.impl.adview.a aVar, Uri uri) {
        Context context;
        if (((Boolean) this.f3540a.a(l4.x)).booleanValue()) {
            context = q7.b(appLovinAdView, this.f3540a);
            if (context == null) {
                context = appLovinAdView.getContext();
            }
        } else {
            context = appLovinAdView.getContext();
        }
        Context context2 = context;
        if (w6.b(uri)) {
            a(uri, bVar, appLovinAdView, aVar, context2, this.f3540a);
        } else {
            a(uri, bVar, appLovinAdView, aVar, context2);
        }
    }

    private String a(String str, long j, int i, String str2, boolean z) {
        try {
            if (StringUtils.isValidString(str)) {
                return Uri.parse(str).buildUpon().appendQueryParameter("et_s", Long.toString(j)).appendQueryParameter("pv", Integer.toString((i < 0 || i > 100) ? 0 : 0)).appendQueryParameter("vid_ts", str2).appendQueryParameter("uvs", Boolean.toString(z)).build().toString();
            }
            return null;
        } catch (Throwable th) {
            if (o.a()) {
                o oVar = this.b;
                oVar.a("AppLovinAdService", "Unknown error parsing the video end url: " + str, th);
            }
            this.f3540a.E().a("AppLovinAdService", "buildVideoEndUrl", th);
            return null;
        }
    }

    private void a(Uri uri, com.applovin.impl.sdk.ad.b bVar, AppLovinAdView appLovinAdView, com.applovin.impl.adview.a aVar, Context context) {
        if (w6.a(uri, bVar, context, this.f3540a)) {
            l2.b(aVar.e(), bVar, appLovinAdView);
        }
        aVar.w();
    }

    private void a(Uri uri, com.applovin.impl.sdk.ad.b bVar, AppLovinAdView appLovinAdView, com.applovin.impl.adview.a aVar, Context context, k kVar) {
        if (uri != null && StringUtils.isValidString(uri.getQuery())) {
            Uri b2 = b(uri, "primaryUrl");
            List a2 = a(uri, "primaryTrackingUrl");
            Uri b3 = b(uri, "fallbackUrl");
            List a3 = a(uri, "fallbackTrackingUrl");
            if (b2 == null && b3 == null) {
                kVar.O();
                if (o.a()) {
                    kVar.O().b("AppLovinAdService", "Failed to parse both primary and backup URLs for Deep Link+ command");
                    return;
                }
                return;
            }
            if (!a(b2, "primary", a2, bVar, appLovinAdView, aVar, context, kVar)) {
                a(b3, "backup", a3, bVar, appLovinAdView, aVar, context, kVar);
            }
            if (aVar != null) {
                aVar.w();
                return;
            }
            return;
        }
        kVar.O();
        if (o.a()) {
            kVar.O().b("AppLovinAdService", "Failed to execute Deep Link+ command - no query parameters found");
        }
    }

    private boolean a(Uri uri, String str, List list, com.applovin.impl.sdk.ad.b bVar, AppLovinAdView appLovinAdView, com.applovin.impl.adview.a aVar, Context context, k kVar) {
        kVar.O();
        if (o.a()) {
            o O = kVar.O();
            O.a("AppLovinAdService", "Opening " + str + " URL: " + uri);
        }
        boolean a2 = w6.a(uri, bVar, context, kVar);
        if (a2) {
            kVar.O();
            if (o.a()) {
                o O2 = kVar.O();
                O2.a("AppLovinAdService", "URL opened successfully, dispatching tracking URLs: " + list);
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                kVar.f0().dispatchPostbackAsync(((Uri) it.next()).toString(), null);
            }
            if (aVar != null) {
                l2.b(aVar.e(), bVar, appLovinAdView);
                return a2;
            }
        } else {
            kVar.O();
            if (o.a()) {
                kVar.O().b("AppLovinAdService", "URL failed to open");
            }
        }
        return a2;
    }

    private List a(Uri uri, String str) {
        List<String> queryParameters = uri.getQueryParameters(str);
        ArrayList arrayList = new ArrayList(queryParameters.size());
        for (String str2 : queryParameters) {
            try {
                arrayList.add(Uri.parse(str2));
            } catch (Throwable th) {
                this.f3540a.O();
                if (o.a()) {
                    o O = this.f3540a.O();
                    O.k("AppLovinAdService", "Unable to parse query parameter into Uri: " + str);
                }
                this.f3540a.E().a("AppLovinAdService", "buildDeepLinkPlusUrlList", th);
            }
        }
        return arrayList;
    }

    private String a(String str, long j, long j2, List list, String str2, boolean z, int i) {
        if (StringUtils.isValidString(str)) {
            Uri.Builder appendQueryParameter = Uri.parse(str).buildUpon().appendQueryParameter("et_ms", Long.toString(j)).appendQueryParameter("vs_ms", Long.toString(j2));
            if (list != null && list.size() > 0) {
                appendQueryParameter.appendQueryParameter("ec_ms", list.toString());
            }
            if (StringUtils.isValidString(str2)) {
                appendQueryParameter.appendQueryParameter("ds", str2);
            }
            if (i != i.h) {
                appendQueryParameter.appendQueryParameter("musw_ch", Boolean.toString(z));
                appendQueryParameter.appendQueryParameter("musw_st", Boolean.toString(i.a(i)));
            }
            return appendQueryParameter.build().toString();
        }
        return null;
    }

    private void a() {
        Map<String, String> tryToStringMap;
        if (o.a()) {
            this.b.a("AppLovinAdService", "Tracking app killed during ad from previous run.");
        }
        String str = (String) this.f3540a.b(n4.M);
        if (TextUtils.isEmpty(str)) {
            if (o.a()) {
                this.b.a("AppLovinAdService", "Couldn't get last ad data. Tracking event with empty data.");
            }
            tryToStringMap = null;
        } else {
            tryToStringMap = JsonUtils.tryToStringMap(JsonUtils.jsonObjectFromJsonString(str, new JSONObject()));
        }
        this.f3540a.E().d(y1.m0, tryToStringMap);
        String str2 = (String) this.f3540a.b(n4.L);
        if (str2 != null) {
            JSONObject jsonObjectFromJsonString = JsonUtils.jsonObjectFromJsonString(str2, null);
            String string = JsonUtils.getString(jsonObjectFromJsonString, "app_killed_postback_url", null);
            String string2 = JsonUtils.getString(jsonObjectFromJsonString, "app_killed_postback_backup_url", null);
            Long l = (Long) this.f3540a.b(n4.K);
            if (l != null) {
                string = StringUtils.appendQueryParameter(string, "imp_duration_ms", String.valueOf(l));
                string2 = StringUtils.appendQueryParameter(string2, "imp_duration_ms", String.valueOf(l));
            }
            a(new com.applovin.impl.e(string, string2));
        } else if (o.a()) {
            this.b.k("AppLovinAdService", "Unable to track app killed during ad from previous run. Missing app killed tracking URLs.");
        }
    }

    private void a(com.applovin.impl.e eVar) {
        if (StringUtils.isValidString(eVar.c())) {
            this.f3540a.e0().e(com.applovin.impl.sdk.network.d.b().d(eVar.c()).a(StringUtils.isValidString(eVar.a()) ? eVar.a() : null).a(eVar.b()).a(false).b(eVar.d()).a());
        } else if (o.a()) {
            this.b.k("AppLovinAdService", "Requested a postback dispatch for a null URL; nothing to do...");
        }
    }

    private void a(final t tVar, final c cVar) {
        AppLovinAdImpl e = this.f3540a.i().e(tVar);
        if (e != null && !e.isExpired()) {
            if (o.a()) {
                o oVar = this.b;
                oVar.a("AppLovinAdService", "Using pre-loaded ad: " + e + " for " + tVar);
            }
            cVar.adReceived(e);
            return;
        }
        MaxAdFormat d2 = tVar.d();
        if (((Boolean) this.f3540a.a(l4.T0)).booleanValue() && d2 != null && d2.isFullscreenAd()) {
            this.f3540a.h().a(tVar, new d.a() { // from class: com.applovin.impl.sdk.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // com.applovin.impl.sdk.d.a
                public final void a(com.applovin.impl.sdk.ad.b bVar) {
                    AppLovinAdServiceImpl.this.a(cVar, tVar, bVar);
                }
            });
        } else {
            a(new m5(tVar, cVar, this.f3540a));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final c cVar, t tVar, final com.applovin.impl.sdk.ad.b bVar) {
        if (bVar != null) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    AppLovinAdServiceImpl.c.this.adReceived(bVar);
                }
            });
        } else {
            a(new m5(tVar, cVar, this.f3540a));
        }
    }

    private d a(t tVar) {
        d dVar;
        synchronized (this.d) {
            try {
                dVar = (d) this.c.get(tVar);
                if (dVar == null) {
                    dVar = new d(null);
                    this.c.put(tVar, dVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return dVar;
    }
}
