package com.applovin.impl;

import android.os.Bundle;
import android.text.TextUtils;
import com.applovin.communicator.AppLovinCommunicator;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.impl.r5;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.MaxAdFormat;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridge;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class i implements AppLovinCommunicatorSubscriber {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f3144a;
    private final Object b = new Object();
    private final LinkedHashMap c = new a();
    private final Set d = Collections.synchronizedSet(new HashSet());

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class a extends LinkedHashMap {
        public a() {
        }

        @Override // java.util.LinkedHashMap
        public boolean removeEldestEntry(Map.Entry entry) {
            if (size() > 16) {
                return true;
            }
            return false;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface b {
        void onCreativeIdGenerated(String str, String str2);
    }

    public i(com.applovin.impl.sdk.k kVar) {
        this.f3144a = kVar;
        if (c()) {
            AppLovinCommunicator.getInstance(com.applovin.impl.sdk.k.o()).subscribe(this, "safedk_ad_info");
        }
    }

    public Bundle a(String str) {
        Bundle bundle;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        synchronized (this.b) {
            bundle = (Bundle) this.c.get(str);
        }
        this.f3144a.O();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o O = this.f3144a.O();
            O.a("AdReviewManager", "Retrieved ad info (" + bundle + ") for serve id: " + str);
        }
        return bundle;
    }

    public void b(b bVar) {
        this.d.remove(bVar);
    }

    public void c(String str) {
        this.f3144a.O();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o O = this.f3144a.O();
            O.a("AdReviewManager", "Removing ad info for serve id: " + str);
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        synchronized (this.b) {
            this.c.remove(str);
        }
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorEntity
    public String getCommunicatorId() {
        return i.class.getSimpleName();
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        if ("safedk_ad_info".equals(appLovinCommunicatorMessage.getTopic())) {
            Bundle bundle = appLovinCommunicatorMessage.getMessageData().getBundle("public");
            if (bundle == null) {
                this.f3144a.O();
                if (com.applovin.impl.sdk.o.a()) {
                    this.f3144a.O().k("AdReviewManager", "Received SafeDK ad info without public data");
                    return;
                }
                return;
            }
            Bundle bundle2 = appLovinCommunicatorMessage.getMessageData().getBundle("private");
            if (bundle2 == null) {
                this.f3144a.O();
                if (com.applovin.impl.sdk.o.a()) {
                    this.f3144a.O().k("AdReviewManager", "Received SafeDK ad info without private data");
                }
            } else if (MaxAdFormat.formatFromString(bundle2.getString(FirebaseAnalytics.Param.AD_FORMAT)) == null) {
                this.f3144a.O();
                if (com.applovin.impl.sdk.o.a()) {
                    this.f3144a.O().k("AdReviewManager", "Received SafeDK ad info without ad format");
                }
            } else {
                final String string = bundle2.getString("id");
                if (TextUtils.isEmpty(string)) {
                    this.f3144a.O();
                    if (com.applovin.impl.sdk.o.a()) {
                        this.f3144a.O().k("AdReviewManager", "Received SafeDK ad info without serve id");
                        return;
                    }
                    return;
                }
                synchronized (this.b) {
                    try {
                        this.f3144a.O();
                        if (com.applovin.impl.sdk.o.a()) {
                            com.applovin.impl.sdk.o O = this.f3144a.O();
                            O.a("AdReviewManager", "Storing current SafeDK ad info for serve id: " + string + ", public data: " + bundle);
                        }
                        this.c.put(string, bundle);
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                final String string2 = bundle.getString("ad_review_creative_id");
                this.f3144a.O();
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o O2 = this.f3144a.O();
                    O2.a("AdReviewManager", "Received SafeDK ad info with Ad Review creative id: " + string2);
                }
                if (StringUtils.isValidString(string2) && !this.d.isEmpty()) {
                    HashSet hashSet = new HashSet(this.d);
                    this.f3144a.O();
                    if (com.applovin.impl.sdk.o.a()) {
                        com.applovin.impl.sdk.o O3 = this.f3144a.O();
                        O3.a("AdReviewManager", "Notifying listeners: " + this.d);
                    }
                    Iterator it = hashSet.iterator();
                    while (it.hasNext()) {
                        final b bVar = (b) it.next();
                        this.f3144a.q0().a((w4) new f6(this.f3144a, "creativeIdGenerated", new Runnable() { // from class: com.applovin.impl.Kkkkkkkkkkk
                            @Override // java.lang.Runnable
                            public final void run() {
                                i.this.a(bVar, string, string2);
                            }
                        }), r5.b.OTHER);
                    }
                }
            }
        }
    }

    public static String b() {
        return b(MobileAdsBridge.versionMethodName);
    }

    private static String b(String str) {
        try {
            return (String) Class.forName("com.applovin.quality.AppLovinQualityService").getMethod(str, null).invoke(null, null);
        } catch (Throwable unused) {
            return "";
        }
    }

    public static boolean c() {
        return StringUtils.isValidString(b());
    }

    public void a(b bVar) {
        this.d.add(bVar);
    }

    public static String a() {
        return b("getSdkKey");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(b bVar, String str, String str2) {
        this.f3144a.O();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o O = this.f3144a.O();
            O.a("AdReviewManager", "Notifying Ad Review creative id generated for listener: " + bVar);
        }
        bVar.onCreativeIdGenerated(str, str2);
    }
}
