package com.applovin.impl;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.browser.customtabs.CustomTabColorSchemeParams;
import androidx.browser.customtabs.CustomTabsCallback;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.browser.customtabs.CustomTabsIntent;
import androidx.browser.customtabs.CustomTabsService;
import androidx.browser.customtabs.CustomTabsServiceConnection;
import androidx.browser.customtabs.CustomTabsSession;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.sdk.R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class a1 {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f3017a;
    private CustomTabsClient b;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class a extends CustomTabsServiceConnection {
        public a() {
        }

        @Override // androidx.browser.customtabs.CustomTabsServiceConnection
        public void onCustomTabsServiceConnected(ComponentName componentName, CustomTabsClient customTabsClient) {
            a1.this.f3017a.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O = a1.this.f3017a.O();
                O.a("CustomTabsManager", "Connection successful: " + componentName);
            }
            a1.this.b = customTabsClient;
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            a1.this.f3017a.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O = a1.this.f3017a.O();
                O.a("CustomTabsManager", "Service disconnected: " + componentName);
            }
            a1.this.b = null;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class b extends CustomTabsCallback {

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference f3019a;

        public b(com.applovin.impl.adview.a aVar) {
            this.f3019a = new WeakReference(aVar);
        }

        @Override // androidx.browser.customtabs.CustomTabsCallback
        public void onNavigationEvent(int i, Bundle bundle) {
            com.applovin.impl.adview.a aVar = (com.applovin.impl.adview.a) this.f3019a.get();
            if (aVar == null) {
                a1.this.f3017a.O();
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o O = a1.this.f3017a.O();
                    O.b("CustomTabsManager", "Unable to track navigation event (" + i + "). Controller is null.");
                    return;
                }
                return;
            }
            com.applovin.impl.sdk.ad.b g = aVar.g();
            if (g == null) {
                a1.this.f3017a.O();
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o O2 = a1.this.f3017a.O();
                    O2.b("CustomTabsManager", "Unable to track navigation event (" + i + "). No ad specified.");
                    return;
                }
                return;
            }
            switch (i) {
                case 1:
                    if (g.X0()) {
                        a1.this.f3017a.k().trackCustomTabsNavigationStarted(g);
                        return;
                    }
                    return;
                case 2:
                    if (g.X0()) {
                        a1.this.f3017a.k().trackCustomTabsNavigationFinished(g);
                        return;
                    }
                    return;
                case 3:
                    if (g.X0()) {
                        a1.this.f3017a.k().trackCustomTabsNavigationFailed(g);
                        return;
                    }
                    return;
                case 4:
                    if (g.X0()) {
                        a1.this.f3017a.k().trackCustomTabsNavigationAborted(g);
                        return;
                    }
                    return;
                case 5:
                    if (g.X0()) {
                        a1.this.f3017a.k().trackCustomTabsTabShown(g);
                    }
                    AppLovinBroadcastManager.sendBroadcast(new Intent("com.applovin.custom_tabs_shown"), null);
                    l2.c(aVar.e(), g, aVar.i());
                    return;
                case 6:
                    if (g.X0()) {
                        a1.this.f3017a.k().trackCustomTabsTabHidden(g);
                    }
                    AppLovinBroadcastManager.sendBroadcast(new Intent("com.applovin.custom_tabs_hidden"), null);
                    l2.a(aVar.e(), g, aVar.i());
                    return;
                default:
                    a1.this.f3017a.O();
                    if (com.applovin.impl.sdk.o.a()) {
                        com.applovin.impl.sdk.o O3 = a1.this.f3017a.O();
                        O3.a("CustomTabsManager", "Unknown navigation event: " + i);
                        return;
                    }
                    return;
            }
        }

        @Override // androidx.browser.customtabs.CustomTabsCallback
        public void onRelationshipValidationResult(int i, Uri uri, boolean z, Bundle bundle) {
            String str;
            a1.this.f3017a.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O = a1.this.f3017a.O();
                StringBuilder sb = new StringBuilder();
                sb.append("Validation ");
                if (z) {
                    str = "succeeded";
                } else {
                    str = "failed";
                }
                sb.append(str);
                sb.append(" for session-URL relation(");
                sb.append(i);
                sb.append("), requestedOrigin(");
                sb.append(uri);
                sb.append(")");
                O.a("CustomTabsManager", sb.toString());
            }
        }
    }

    public a1(com.applovin.impl.sdk.k kVar) {
        this.f3017a = kVar;
    }

    public void b(final List list, final CustomTabsSession customTabsSession) {
        if (!list.isEmpty()) {
            if (customTabsSession == null) {
                this.f3017a.O();
                if (com.applovin.impl.sdk.o.a()) {
                    this.f3017a.O().a("CustomTabsManager", "Custom Tabs session is null, cannot warmup urls");
                    return;
                }
                return;
            }
            a("warmup urls", new Runnable() { // from class: com.applovin.impl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    a1.this.a(list, customTabsSession);
                }
            });
        }
    }

    public void a() {
        if (((Boolean) this.f3017a.a(l4.v6)).booleanValue() && this.b == null) {
            String packageName = CustomTabsClient.getPackageName(com.applovin.impl.sdk.k.o(), this.f3017a.c(l4.w6), true);
            String packageName2 = CustomTabsClient.getPackageName(com.applovin.impl.sdk.k.o(), null);
            LinkedList linkedList = new LinkedList();
            if (((Boolean) this.f3017a.a(l4.x6)).booleanValue()) {
                CollectionUtils.addUniqueObjectIfExists(packageName2, linkedList);
                CollectionUtils.addUniqueObjectIfExists(packageName, linkedList);
            } else {
                CollectionUtils.addUniqueObjectIfExists(packageName, linkedList);
                CollectionUtils.addUniqueObjectIfExists(packageName2, linkedList);
            }
            if (linkedList.isEmpty()) {
                this.f3017a.O();
                if (com.applovin.impl.sdk.o.a()) {
                    this.f3017a.O().b("CustomTabsManager", "Unable to find a supported Custom Tabs package name");
                    return;
                }
                return;
            }
            a(linkedList);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0044, code lost:
        if (com.applovin.impl.sdk.o.a() != false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x007f, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(java.util.LinkedList r7) {
        /*
            r6 = this;
            java.lang.String r0 = "Retrying with next package name..."
            java.lang.String r1 = "CustomTabsManager"
            r2 = 0
            android.content.Context r3 = com.applovin.impl.sdk.k.o()     // Catch: java.lang.Throwable -> L31
            java.lang.Object r4 = r7.poll()     // Catch: java.lang.Throwable -> L31
            java.lang.String r4 = (java.lang.String) r4     // Catch: java.lang.Throwable -> L31
            com.applovin.impl.a1$a r5 = new com.applovin.impl.a1$a     // Catch: java.lang.Throwable -> L31
            r5.<init>()     // Catch: java.lang.Throwable -> L31
            boolean r2 = androidx.browser.customtabs.CustomTabsClient.bindCustomTabsService(r3, r4, r5)     // Catch: java.lang.Throwable -> L31
            if (r2 != 0) goto L33
            com.applovin.impl.sdk.k r3 = r6.f3017a     // Catch: java.lang.Throwable -> L31
            r3.O()     // Catch: java.lang.Throwable -> L31
            boolean r3 = com.applovin.impl.sdk.o.a()     // Catch: java.lang.Throwable -> L31
            if (r3 == 0) goto L33
            com.applovin.impl.sdk.k r3 = r6.f3017a     // Catch: java.lang.Throwable -> L31
            com.applovin.impl.sdk.o r3 = r3.O()     // Catch: java.lang.Throwable -> L31
            java.lang.String r4 = "Custom Tabs service not available"
            r3.b(r1, r4)     // Catch: java.lang.Throwable -> L31
            goto L33
        L31:
            r3 = move-exception
            goto L47
        L33:
            if (r2 != 0) goto L7f
            boolean r2 = r7.isEmpty()
            if (r2 != 0) goto L7f
            com.applovin.impl.sdk.k r2 = r6.f3017a
            r2.O()
            boolean r2 = com.applovin.impl.sdk.o.a()
            if (r2 == 0) goto L7c
            goto L73
        L47:
            com.applovin.impl.sdk.k r4 = r6.f3017a     // Catch: java.lang.Throwable -> L5e
            r4.O()     // Catch: java.lang.Throwable -> L5e
            boolean r4 = com.applovin.impl.sdk.o.a()     // Catch: java.lang.Throwable -> L5e
            if (r4 == 0) goto L60
            com.applovin.impl.sdk.k r4 = r6.f3017a     // Catch: java.lang.Throwable -> L5e
            com.applovin.impl.sdk.o r4 = r4.O()     // Catch: java.lang.Throwable -> L5e
            java.lang.String r5 = "Failed to bind to service"
            r4.a(r1, r5, r3)     // Catch: java.lang.Throwable -> L5e
            goto L60
        L5e:
            r3 = move-exception
            goto L80
        L60:
            if (r2 != 0) goto L7f
            boolean r2 = r7.isEmpty()
            if (r2 != 0) goto L7f
            com.applovin.impl.sdk.k r2 = r6.f3017a
            r2.O()
            boolean r2 = com.applovin.impl.sdk.o.a()
            if (r2 == 0) goto L7c
        L73:
            com.applovin.impl.sdk.k r2 = r6.f3017a
            com.applovin.impl.sdk.o r2 = r2.O()
            r2.a(r1, r0)
        L7c:
            r6.a(r7)
        L7f:
            return
        L80:
            if (r2 != 0) goto L9f
            boolean r2 = r7.isEmpty()
            if (r2 != 0) goto L9f
            com.applovin.impl.sdk.k r2 = r6.f3017a
            r2.O()
            boolean r2 = com.applovin.impl.sdk.o.a()
            if (r2 == 0) goto L9c
            com.applovin.impl.sdk.k r2 = r6.f3017a
            com.applovin.impl.sdk.o r2 = r2.O()
            r2.a(r1, r0)
        L9c:
            r6.a(r7)
        L9f:
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.a1.a(java.util.LinkedList):void");
    }

    public CustomTabsSession a(com.applovin.impl.adview.a aVar) {
        if (this.b == null) {
            this.f3017a.O();
            if (com.applovin.impl.sdk.o.a()) {
                this.f3017a.O().a("CustomTabsManager", "Custom Tabs service is not connected, cannot start session");
            }
            return null;
        }
        this.f3017a.O();
        if (com.applovin.impl.sdk.o.a()) {
            this.f3017a.O().a("CustomTabsManager", "Starting Custom Tabs session");
        }
        try {
            CustomTabsSession newSession = this.b.newSession(new b(aVar));
            a(newSession, aVar.g());
            return newSession;
        } catch (Exception e) {
            this.f3017a.O();
            if (com.applovin.impl.sdk.o.a()) {
                this.f3017a.O().a("CustomTabsManager", "Failed to create Custom Tabs session", e);
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(List list, CustomTabsSession customTabsSession) {
        this.f3017a.O();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o O = this.f3017a.O();
            O.a("CustomTabsManager", "Warming up URLs: " + list);
        }
        String str = (String) list.remove(0);
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Bundle bundle = new Bundle();
            bundle.putParcelable(CustomTabsService.KEY_URL, Uri.parse((String) it.next()));
            arrayList.add(bundle);
        }
        boolean mayLaunchUrl = customTabsSession.mayLaunchUrl(Uri.parse(str), null, arrayList);
        this.f3017a.O();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o O2 = this.f3017a.O();
            StringBuilder sb = new StringBuilder();
            sb.append("Warmup for URLs ");
            sb.append(mayLaunchUrl ? "succeeded" : "failed");
            O2.a("CustomTabsManager", sb.toString());
        }
    }

    public void a(final String str, final com.applovin.impl.adview.a aVar, final Activity activity) {
        if (a("launch url", new Runnable() { // from class: com.applovin.impl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                a1.this.a(aVar, activity, str);
            }
        })) {
            this.f3017a.m0().pauseForClick();
        } else {
            AppLovinBroadcastManager.sendBroadcast(new Intent("com.applovin.custom_tabs_failure"), CollectionUtils.map("url", str));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(com.applovin.impl.adview.a aVar, Activity activity, String str) {
        a(aVar, activity).launchUrl(activity, Uri.parse(str));
    }

    private void a(final CustomTabsSession customTabsSession, final com.applovin.impl.sdk.ad.b bVar) {
        if (bVar == null || !bVar.H0()) {
            return;
        }
        a("client warmup", new Runnable() { // from class: com.applovin.impl.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                a1.this.a(bVar, customTabsSession);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(com.applovin.impl.sdk.ad.b bVar, CustomTabsSession customTabsSession) {
        this.b.warmup(0L);
        b1 A = bVar.A();
        if (A == null) {
            return;
        }
        Integer e = A.e();
        String b2 = A.b();
        if (e == null || TextUtils.isEmpty(b2)) {
            return;
        }
        if (customTabsSession == null) {
            this.f3017a.O();
            if (com.applovin.impl.sdk.o.a()) {
                this.f3017a.O().b("CustomTabsManager", "Cannot validate session-URL relation because the session is null");
                return;
            }
            return;
        }
        this.f3017a.O();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o O = this.f3017a.O();
            O.a("CustomTabsManager", "Validating session-URL relation: " + e + " with digital asset link: " + b2);
        }
        customTabsSession.validateRelationship(e.intValue(), Uri.parse(b2), null);
    }

    private CustomTabsIntent a(com.applovin.impl.adview.a aVar, Activity activity) {
        this.f3017a.O();
        if (com.applovin.impl.sdk.o.a()) {
            this.f3017a.O().a("CustomTabsManager", "Creating Custom Tabs intent");
        }
        com.applovin.impl.sdk.ad.b g = aVar.g();
        CustomTabsIntent.Builder builder = new CustomTabsIntent.Builder(aVar.h());
        b1 A = g != null ? g.A() : null;
        if (((Boolean) this.f3017a.a(l4.y6)).booleanValue()) {
            int i = R.anim.applovin_slide_up_animation;
            int i2 = R.anim.applovin_slide_down_animation;
            builder.setStartAnimations(activity, i, i2);
            builder.setExitAnimations(activity, i, i2);
        }
        if (A != null) {
            Integer h = A.h();
            if (h != null) {
                builder.setDefaultColorSchemeParams(new CustomTabColorSchemeParams.Builder().setToolbarColor(h.intValue()).build());
            }
            Integer a2 = A.a();
            if (a2 != null) {
                builder.setColorSchemeParams(2, new CustomTabColorSchemeParams.Builder().setToolbarColor(a2.intValue()).build());
            }
            Boolean i3 = A.i();
            if (i3 != null) {
                builder.setUrlBarHidingEnabled(i3.booleanValue());
            }
            Boolean g2 = A.g();
            if (g2 != null) {
                builder.setShowTitle(g2.booleanValue());
            }
            Boolean c = A.c();
            if (c != null) {
                builder.setInstantAppsEnabled(c.booleanValue());
            }
            Integer f = A.f();
            if (f != null) {
                builder.setShareState(f.intValue());
            }
        }
        CustomTabsIntent build = builder.build();
        if (A != null) {
            String d = A.d();
            if (d != null) {
                build.intent.putExtra("android.intent.extra.REFERRER", Uri.parse(d));
            }
            Bundle v = g.v();
            if (!v.isEmpty()) {
                build.intent.putExtra("com.android.browser.headers", v);
            }
        }
        return build;
    }

    private boolean a(String str, Runnable runnable) {
        try {
            this.f3017a.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O = this.f3017a.O();
                O.a("CustomTabsManager", "Running operation: " + str);
            }
            runnable.run();
            this.f3017a.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O2 = this.f3017a.O();
                O2.a("CustomTabsManager", "Finished operation: " + str);
                return true;
            }
            return true;
        } catch (Throwable th) {
            this.f3017a.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O3 = this.f3017a.O();
                O3.a("CustomTabsManager", "Failed to run operation: " + str, th);
            }
            this.f3017a.E().a("CustomTabsManager", str, th);
            return false;
        }
    }
}
