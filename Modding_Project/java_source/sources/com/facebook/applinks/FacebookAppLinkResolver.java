package com.facebook.applinks;

import android.net.Uri;
import com.facebook.GraphRequest;
import com.facebook.bolts.AppLink;
import com.facebook.bolts.AppLinkResolver;
import com.facebook.bolts.Continuation;
import com.facebook.bolts.Task;
import com.facebook.bolts.TaskCompletionSource;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyEnum;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class FacebookAppLinkResolver implements AppLinkResolver {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final HashMap<Uri, AppLink> f6532Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashMap<>();

    /* compiled from: Proguard */
    /* renamed from: com.facebook.applinks.FacebookAppLinkResolver$1  reason: invalid class name */
    /* loaded from: classes4.dex */
    class AnonymousClass1 implements Continuation<Map<Uri, AppLink>, AppLink> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final /* synthetic */ Uri f6533Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        @Override // com.facebook.bolts.Continuation
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public AppLink Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Task<Map<Uri, AppLink>> task) throws Exception {
            return task.Wwwwwwwwwwwwwwwwww().get(this.f6533Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }
    }

    /* compiled from: Proguard */
    /* renamed from: com.facebook.applinks.FacebookAppLinkResolver$2  reason: invalid class name */
    /* loaded from: classes4.dex */
    class AnonymousClass2 implements GraphRequest.Callback {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final /* synthetic */ FacebookAppLinkResolver f6534Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final /* synthetic */ HashSet f6535Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final /* synthetic */ Map f6536Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final /* synthetic */ TaskCompletionSource f6537Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* JADX WARN: Removed duplicated region for block: B:18:0x0035 A[Catch: all -> 0x0018, TRY_LEAVE, TryCatch #1 {all -> 0x0018, blocks: (B:5:0x0008, B:7:0x000e, B:11:0x001b, B:13:0x0021, B:15:0x0029, B:16:0x002f, B:18:0x0035, B:21:0x0046, B:23:0x0066, B:25:0x0070, B:26:0x0073, B:27:0x0076, B:28:0x008a, B:34:0x0098, B:35:0x0099), top: B:42:0x0008 }] */
        @Override // com.facebook.GraphRequest.Callback
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(com.facebook.GraphResponse r9) {
            /*
                r8 = this;
                boolean r0 = com.facebook.internal.instrument.crashshield.CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r8)
                if (r0 == 0) goto L8
                goto La0
            L8:
                com.facebook.FacebookRequestError r0 = r9.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L18
                if (r0 == 0) goto L1b
                com.facebook.bolts.TaskCompletionSource r9 = r8.f6537Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L18
                com.facebook.FacebookException r0 = r0.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L18
                r9.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r0)     // Catch: java.lang.Throwable -> L18
                return
            L18:
                r9 = move-exception
                goto La1
            L1b:
                org.json.JSONObject r9 = r9.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L18
                if (r9 != 0) goto L29
                com.facebook.bolts.TaskCompletionSource r9 = r8.f6537Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L18
                java.util.Map r0 = r8.f6536Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L18
                r9.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r0)     // Catch: java.lang.Throwable -> L18
                return
            L29:
                java.util.HashSet r0 = r8.f6535Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L18
                java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> L18
            L2f:
                boolean r1 = r0.hasNext()     // Catch: java.lang.Throwable -> L18
                if (r1 == 0) goto L99
                java.lang.Object r1 = r0.next()     // Catch: java.lang.Throwable -> L18
                android.net.Uri r1 = (android.net.Uri) r1     // Catch: java.lang.Throwable -> L18
                java.lang.String r2 = r1.toString()     // Catch: java.lang.Throwable -> L18
                boolean r2 = r9.has(r2)     // Catch: java.lang.Throwable -> L18
                if (r2 != 0) goto L46
                goto L2f
            L46:
                java.lang.String r2 = r1.toString()     // Catch: java.lang.Throwable -> L18 org.json.JSONException -> L2f
                org.json.JSONObject r2 = r9.getJSONObject(r2)     // Catch: java.lang.Throwable -> L18 org.json.JSONException -> L2f
                java.lang.String r3 = "app_links"
                org.json.JSONObject r2 = r2.getJSONObject(r3)     // Catch: java.lang.Throwable -> L18 org.json.JSONException -> L2f
                java.lang.String r3 = "android"
                org.json.JSONArray r3 = r2.getJSONArray(r3)     // Catch: java.lang.Throwable -> L18 org.json.JSONException -> L2f
                int r4 = r3.length()     // Catch: java.lang.Throwable -> L18 org.json.JSONException -> L2f
                java.util.ArrayList r5 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L18 org.json.JSONException -> L2f
                r5.<init>(r4)     // Catch: java.lang.Throwable -> L18 org.json.JSONException -> L2f
                r6 = 0
            L64:
                if (r6 >= r4) goto L76
                org.json.JSONObject r7 = r3.getJSONObject(r6)     // Catch: java.lang.Throwable -> L18 org.json.JSONException -> L2f
                com.facebook.bolts.AppLink$Target r7 = com.facebook.applinks.FacebookAppLinkResolver.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r7)     // Catch: java.lang.Throwable -> L18 org.json.JSONException -> L2f
                if (r7 == 0) goto L73
                r5.add(r7)     // Catch: java.lang.Throwable -> L18 org.json.JSONException -> L2f
            L73:
                int r6 = r6 + 1
                goto L64
            L76:
                android.net.Uri r2 = com.facebook.applinks.FacebookAppLinkResolver.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r1, r2)     // Catch: java.lang.Throwable -> L18 org.json.JSONException -> L2f
                com.facebook.bolts.AppLink r3 = new com.facebook.bolts.AppLink     // Catch: java.lang.Throwable -> L18 org.json.JSONException -> L2f
                r3.<init>(r1, r5, r2)     // Catch: java.lang.Throwable -> L18 org.json.JSONException -> L2f
                java.util.Map r2 = r8.f6536Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L18 org.json.JSONException -> L2f
                r2.put(r1, r3)     // Catch: java.lang.Throwable -> L18 org.json.JSONException -> L2f
                com.facebook.applinks.FacebookAppLinkResolver r2 = r8.f6534Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L18 org.json.JSONException -> L2f
                java.util.HashMap r2 = com.facebook.applinks.FacebookAppLinkResolver.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r2)     // Catch: java.lang.Throwable -> L18 org.json.JSONException -> L2f
                monitor-enter(r2)     // Catch: java.lang.Throwable -> L18 org.json.JSONException -> L2f
                com.facebook.applinks.FacebookAppLinkResolver r4 = r8.f6534Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L96
                java.util.HashMap r4 = com.facebook.applinks.FacebookAppLinkResolver.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r4)     // Catch: java.lang.Throwable -> L96
                r4.put(r1, r3)     // Catch: java.lang.Throwable -> L96
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L96
                goto L2f
            L96:
                r1 = move-exception
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L96
                throw r1     // Catch: java.lang.Throwable -> L18 org.json.JSONException -> L2f
            L99:
                com.facebook.bolts.TaskCompletionSource r9 = r8.f6537Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L18
                java.util.Map r0 = r8.f6536Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww     // Catch: java.lang.Throwable -> L18
                r9.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r0)     // Catch: java.lang.Throwable -> L18
            La0:
                return
            La1:
                com.facebook.internal.instrument.crashshield.CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r9, r8)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.applinks.FacebookAppLinkResolver.AnonymousClass2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(com.facebook.GraphResponse):void");
        }
    }

    public static String Wwwwwwwwwwwwwwwwwwwwwwwwwwww(JSONObject jSONObject, String str, String str2) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FacebookAppLinkResolver.class)) {
            return null;
        }
        try {
            return jSONObject.getString(str);
        } catch (JSONException unused) {
            return str2;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, FacebookAppLinkResolver.class);
            return null;
        }
    }

    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(JSONObject jSONObject, String str, boolean z) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FacebookAppLinkResolver.class)) {
            return false;
        }
        try {
            return jSONObject.getBoolean(str);
        } catch (JSONException unused) {
            return z;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, FacebookAppLinkResolver.class);
            return false;
        }
    }

    public static Uri Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Uri uri, JSONObject jSONObject) {
        JSONObject jSONObject2;
        Uri uri2 = null;
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FacebookAppLinkResolver.class)) {
            return null;
        }
        try {
            jSONObject2 = jSONObject.getJSONObject("web");
        } catch (JSONException unused) {
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, FacebookAppLinkResolver.class);
            return null;
        }
        if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject2, "should_fallback", true)) {
            return null;
        }
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject2, "url", null);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            uri2 = Uri.parse(Wwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        }
        if (uri2 != null) {
            return uri2;
        }
        return uri;
    }

    public static AppLink.Target Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JSONObject jSONObject) {
        Uri uri;
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FacebookAppLinkResolver.class)) {
            return null;
        }
        try {
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, TPDownloadProxyEnum.DLPARAM_PACKAGE, null);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                return null;
            }
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwww3 = Wwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, "class", null);
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwww4 = Wwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, "app_name", null);
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwww5 = Wwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, "url", null);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww5 != null) {
                uri = Uri.parse(Wwwwwwwwwwwwwwwwwwwwwwwwwwww5);
            } else {
                uri = null;
            }
            return new AppLink.Target(Wwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwww3, uri, Wwwwwwwwwwwwwwwwwwwwwwwwwwww4);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, FacebookAppLinkResolver.class);
            return null;
        }
    }

    public static /* synthetic */ HashMap Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FacebookAppLinkResolver facebookAppLinkResolver) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FacebookAppLinkResolver.class)) {
            return null;
        }
        try {
            return facebookAppLinkResolver.f6532Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, FacebookAppLinkResolver.class);
            return null;
        }
    }

    public static /* synthetic */ Uri Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Uri uri, JSONObject jSONObject) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FacebookAppLinkResolver.class)) {
            return null;
        }
        try {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(uri, jSONObject);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, FacebookAppLinkResolver.class);
            return null;
        }
    }

    public static /* synthetic */ AppLink.Target Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JSONObject jSONObject) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FacebookAppLinkResolver.class)) {
            return null;
        }
        try {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, FacebookAppLinkResolver.class);
            return null;
        }
    }
}
