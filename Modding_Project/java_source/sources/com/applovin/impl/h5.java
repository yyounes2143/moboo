package com.applovin.impl;

import android.net.Uri;
import android.os.SystemClock;
import androidx.browser.trusted.sharing.ShareTarget;
import com.applovin.impl.i4;
import com.applovin.impl.r5;
import com.applovin.impl.sdk.network.a;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.sdk.AppLovinWebViewActivity;
import com.google.android.gms.security.ProviderInstaller;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class h5 extends w4 {
    private static final AtomicBoolean j = new AtomicBoolean();
    private final int g;
    private final Object h;
    private b i;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface b {
        void a(JSONObject jSONObject);
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class c extends w4 {
        public c(com.applovin.impl.sdk.k kVar) {
            super("TaskTimeoutFetchBasicSettings", kVar, true);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (h5.this.i != null) {
                if (com.applovin.impl.sdk.o.a()) {
                    this.c.b(this.b, "Timing out fetch basic settings...");
                }
                h5.this.a(new JSONObject());
            }
        }
    }

    public h5(int i, com.applovin.impl.sdk.k kVar, b bVar) {
        super("TaskFetchBasicSettings", kVar, true);
        this.h = new Object();
        this.g = i;
        this.i = bVar;
    }

    private HashMap b(String str) {
        return a(str, 0L, 0, null, null);
    }

    private String f() {
        return n0.a((String) this.f3803a.a(l4.o0), "5.0/i", b());
    }

    private String g() {
        return n0.a((String) this.f3803a.a(l4.n0), "5.0/i", b());
    }

    /* JADX WARN: Can't wrap try/catch for region: R(40:1|2|3|(37:5|(1:7)|8|(1:10)|11|(1:13)|14|(1:16)(1:78)|(1:20)|21|(1:23)|24|(1:26)|27|(1:29)|30|31|(1:33)|35|(1:41)|42|(1:47)|48|(1:50)|51|(1:53)|54|(1:56)|57|(1:59)|60|(1:64)|65|(1:67)|68|(3:70|(1:72)|73)|75)|79|8|(0)|11|(0)|14|(0)(0)|(2:18|20)|21|(0)|24|(0)|27|(0)|30|31|(0)|35|(3:37|39|41)|42|(2:45|47)|48|(0)|51|(0)|54|(0)|57|(0)|60|(2:62|64)|65|(0)|68|(0)|75) */
    /* JADX WARN: Removed duplicated region for block: B:13:0x00a1 A[Catch: JSONException -> 0x0062, TryCatch #0 {JSONException -> 0x0062, blocks: (B:3:0x0041, B:5:0x0053, B:11:0x0072, B:13:0x00a1, B:14:0x00a6, B:16:0x00ae, B:17:0x00b3, B:19:0x0139, B:22:0x0147, B:24:0x014d, B:25:0x015e, B:27:0x0174, B:28:0x0179, B:30:0x01f9, B:31:0x01fc, B:33:0x020c, B:37:0x024d, B:39:0x0289, B:41:0x0293, B:43:0x029b, B:44:0x02a4, B:47:0x02c0, B:49:0x02c8, B:50:0x02d6, B:52:0x02e6, B:53:0x02f1, B:55:0x0301, B:56:0x030c, B:58:0x031c, B:59:0x0327, B:61:0x033e, B:62:0x0344, B:64:0x0350, B:66:0x0356, B:67:0x035b, B:69:0x037b, B:70:0x0385, B:72:0x038a, B:74:0x0396, B:75:0x039f, B:10:0x0065), top: B:83:0x0041 }] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00ae A[Catch: JSONException -> 0x0062, TryCatch #0 {JSONException -> 0x0062, blocks: (B:3:0x0041, B:5:0x0053, B:11:0x0072, B:13:0x00a1, B:14:0x00a6, B:16:0x00ae, B:17:0x00b3, B:19:0x0139, B:22:0x0147, B:24:0x014d, B:25:0x015e, B:27:0x0174, B:28:0x0179, B:30:0x01f9, B:31:0x01fc, B:33:0x020c, B:37:0x024d, B:39:0x0289, B:41:0x0293, B:43:0x029b, B:44:0x02a4, B:47:0x02c0, B:49:0x02c8, B:50:0x02d6, B:52:0x02e6, B:53:0x02f1, B:55:0x0301, B:56:0x030c, B:58:0x031c, B:59:0x0327, B:61:0x033e, B:62:0x0344, B:64:0x0350, B:66:0x0356, B:67:0x035b, B:69:0x037b, B:70:0x0385, B:72:0x038a, B:74:0x0396, B:75:0x039f, B:10:0x0065), top: B:83:0x0041 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0139 A[Catch: JSONException -> 0x0062, TryCatch #0 {JSONException -> 0x0062, blocks: (B:3:0x0041, B:5:0x0053, B:11:0x0072, B:13:0x00a1, B:14:0x00a6, B:16:0x00ae, B:17:0x00b3, B:19:0x0139, B:22:0x0147, B:24:0x014d, B:25:0x015e, B:27:0x0174, B:28:0x0179, B:30:0x01f9, B:31:0x01fc, B:33:0x020c, B:37:0x024d, B:39:0x0289, B:41:0x0293, B:43:0x029b, B:44:0x02a4, B:47:0x02c0, B:49:0x02c8, B:50:0x02d6, B:52:0x02e6, B:53:0x02f1, B:55:0x0301, B:56:0x030c, B:58:0x031c, B:59:0x0327, B:61:0x033e, B:62:0x0344, B:64:0x0350, B:66:0x0356, B:67:0x035b, B:69:0x037b, B:70:0x0385, B:72:0x038a, B:74:0x0396, B:75:0x039f, B:10:0x0065), top: B:83:0x0041 }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0174 A[Catch: JSONException -> 0x0062, TryCatch #0 {JSONException -> 0x0062, blocks: (B:3:0x0041, B:5:0x0053, B:11:0x0072, B:13:0x00a1, B:14:0x00a6, B:16:0x00ae, B:17:0x00b3, B:19:0x0139, B:22:0x0147, B:24:0x014d, B:25:0x015e, B:27:0x0174, B:28:0x0179, B:30:0x01f9, B:31:0x01fc, B:33:0x020c, B:37:0x024d, B:39:0x0289, B:41:0x0293, B:43:0x029b, B:44:0x02a4, B:47:0x02c0, B:49:0x02c8, B:50:0x02d6, B:52:0x02e6, B:53:0x02f1, B:55:0x0301, B:56:0x030c, B:58:0x031c, B:59:0x0327, B:61:0x033e, B:62:0x0344, B:64:0x0350, B:66:0x0356, B:67:0x035b, B:69:0x037b, B:70:0x0385, B:72:0x038a, B:74:0x0396, B:75:0x039f, B:10:0x0065), top: B:83:0x0041 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x01f9 A[Catch: JSONException -> 0x0062, TryCatch #0 {JSONException -> 0x0062, blocks: (B:3:0x0041, B:5:0x0053, B:11:0x0072, B:13:0x00a1, B:14:0x00a6, B:16:0x00ae, B:17:0x00b3, B:19:0x0139, B:22:0x0147, B:24:0x014d, B:25:0x015e, B:27:0x0174, B:28:0x0179, B:30:0x01f9, B:31:0x01fc, B:33:0x020c, B:37:0x024d, B:39:0x0289, B:41:0x0293, B:43:0x029b, B:44:0x02a4, B:47:0x02c0, B:49:0x02c8, B:50:0x02d6, B:52:0x02e6, B:53:0x02f1, B:55:0x0301, B:56:0x030c, B:58:0x031c, B:59:0x0327, B:61:0x033e, B:62:0x0344, B:64:0x0350, B:66:0x0356, B:67:0x035b, B:69:0x037b, B:70:0x0385, B:72:0x038a, B:74:0x0396, B:75:0x039f, B:10:0x0065), top: B:83:0x0041 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x020c A[Catch: JSONException -> 0x0062, TRY_LEAVE, TryCatch #0 {JSONException -> 0x0062, blocks: (B:3:0x0041, B:5:0x0053, B:11:0x0072, B:13:0x00a1, B:14:0x00a6, B:16:0x00ae, B:17:0x00b3, B:19:0x0139, B:22:0x0147, B:24:0x014d, B:25:0x015e, B:27:0x0174, B:28:0x0179, B:30:0x01f9, B:31:0x01fc, B:33:0x020c, B:37:0x024d, B:39:0x0289, B:41:0x0293, B:43:0x029b, B:44:0x02a4, B:47:0x02c0, B:49:0x02c8, B:50:0x02d6, B:52:0x02e6, B:53:0x02f1, B:55:0x0301, B:56:0x030c, B:58:0x031c, B:59:0x0327, B:61:0x033e, B:62:0x0344, B:64:0x0350, B:66:0x0356, B:67:0x035b, B:69:0x037b, B:70:0x0385, B:72:0x038a, B:74:0x0396, B:75:0x039f, B:10:0x0065), top: B:83:0x0041 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x022e A[Catch: all -> 0x024d, TRY_LEAVE, TryCatch #1 {all -> 0x024d, blocks: (B:34:0x021b, B:36:0x022e), top: B:85:0x021b }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x02e6 A[Catch: JSONException -> 0x0062, TryCatch #0 {JSONException -> 0x0062, blocks: (B:3:0x0041, B:5:0x0053, B:11:0x0072, B:13:0x00a1, B:14:0x00a6, B:16:0x00ae, B:17:0x00b3, B:19:0x0139, B:22:0x0147, B:24:0x014d, B:25:0x015e, B:27:0x0174, B:28:0x0179, B:30:0x01f9, B:31:0x01fc, B:33:0x020c, B:37:0x024d, B:39:0x0289, B:41:0x0293, B:43:0x029b, B:44:0x02a4, B:47:0x02c0, B:49:0x02c8, B:50:0x02d6, B:52:0x02e6, B:53:0x02f1, B:55:0x0301, B:56:0x030c, B:58:0x031c, B:59:0x0327, B:61:0x033e, B:62:0x0344, B:64:0x0350, B:66:0x0356, B:67:0x035b, B:69:0x037b, B:70:0x0385, B:72:0x038a, B:74:0x0396, B:75:0x039f, B:10:0x0065), top: B:83:0x0041 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0301 A[Catch: JSONException -> 0x0062, TryCatch #0 {JSONException -> 0x0062, blocks: (B:3:0x0041, B:5:0x0053, B:11:0x0072, B:13:0x00a1, B:14:0x00a6, B:16:0x00ae, B:17:0x00b3, B:19:0x0139, B:22:0x0147, B:24:0x014d, B:25:0x015e, B:27:0x0174, B:28:0x0179, B:30:0x01f9, B:31:0x01fc, B:33:0x020c, B:37:0x024d, B:39:0x0289, B:41:0x0293, B:43:0x029b, B:44:0x02a4, B:47:0x02c0, B:49:0x02c8, B:50:0x02d6, B:52:0x02e6, B:53:0x02f1, B:55:0x0301, B:56:0x030c, B:58:0x031c, B:59:0x0327, B:61:0x033e, B:62:0x0344, B:64:0x0350, B:66:0x0356, B:67:0x035b, B:69:0x037b, B:70:0x0385, B:72:0x038a, B:74:0x0396, B:75:0x039f, B:10:0x0065), top: B:83:0x0041 }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x031c A[Catch: JSONException -> 0x0062, TryCatch #0 {JSONException -> 0x0062, blocks: (B:3:0x0041, B:5:0x0053, B:11:0x0072, B:13:0x00a1, B:14:0x00a6, B:16:0x00ae, B:17:0x00b3, B:19:0x0139, B:22:0x0147, B:24:0x014d, B:25:0x015e, B:27:0x0174, B:28:0x0179, B:30:0x01f9, B:31:0x01fc, B:33:0x020c, B:37:0x024d, B:39:0x0289, B:41:0x0293, B:43:0x029b, B:44:0x02a4, B:47:0x02c0, B:49:0x02c8, B:50:0x02d6, B:52:0x02e6, B:53:0x02f1, B:55:0x0301, B:56:0x030c, B:58:0x031c, B:59:0x0327, B:61:0x033e, B:62:0x0344, B:64:0x0350, B:66:0x0356, B:67:0x035b, B:69:0x037b, B:70:0x0385, B:72:0x038a, B:74:0x0396, B:75:0x039f, B:10:0x0065), top: B:83:0x0041 }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x033e A[Catch: JSONException -> 0x0062, TryCatch #0 {JSONException -> 0x0062, blocks: (B:3:0x0041, B:5:0x0053, B:11:0x0072, B:13:0x00a1, B:14:0x00a6, B:16:0x00ae, B:17:0x00b3, B:19:0x0139, B:22:0x0147, B:24:0x014d, B:25:0x015e, B:27:0x0174, B:28:0x0179, B:30:0x01f9, B:31:0x01fc, B:33:0x020c, B:37:0x024d, B:39:0x0289, B:41:0x0293, B:43:0x029b, B:44:0x02a4, B:47:0x02c0, B:49:0x02c8, B:50:0x02d6, B:52:0x02e6, B:53:0x02f1, B:55:0x0301, B:56:0x030c, B:58:0x031c, B:59:0x0327, B:61:0x033e, B:62:0x0344, B:64:0x0350, B:66:0x0356, B:67:0x035b, B:69:0x037b, B:70:0x0385, B:72:0x038a, B:74:0x0396, B:75:0x039f, B:10:0x0065), top: B:83:0x0041 }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x037b A[Catch: JSONException -> 0x0062, TryCatch #0 {JSONException -> 0x0062, blocks: (B:3:0x0041, B:5:0x0053, B:11:0x0072, B:13:0x00a1, B:14:0x00a6, B:16:0x00ae, B:17:0x00b3, B:19:0x0139, B:22:0x0147, B:24:0x014d, B:25:0x015e, B:27:0x0174, B:28:0x0179, B:30:0x01f9, B:31:0x01fc, B:33:0x020c, B:37:0x024d, B:39:0x0289, B:41:0x0293, B:43:0x029b, B:44:0x02a4, B:47:0x02c0, B:49:0x02c8, B:50:0x02d6, B:52:0x02e6, B:53:0x02f1, B:55:0x0301, B:56:0x030c, B:58:0x031c, B:59:0x0327, B:61:0x033e, B:62:0x0344, B:64:0x0350, B:66:0x0356, B:67:0x035b, B:69:0x037b, B:70:0x0385, B:72:0x038a, B:74:0x0396, B:75:0x039f, B:10:0x0065), top: B:83:0x0041 }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x038a A[Catch: JSONException -> 0x0062, TryCatch #0 {JSONException -> 0x0062, blocks: (B:3:0x0041, B:5:0x0053, B:11:0x0072, B:13:0x00a1, B:14:0x00a6, B:16:0x00ae, B:17:0x00b3, B:19:0x0139, B:22:0x0147, B:24:0x014d, B:25:0x015e, B:27:0x0174, B:28:0x0179, B:30:0x01f9, B:31:0x01fc, B:33:0x020c, B:37:0x024d, B:39:0x0289, B:41:0x0293, B:43:0x029b, B:44:0x02a4, B:47:0x02c0, B:49:0x02c8, B:50:0x02d6, B:52:0x02e6, B:53:0x02f1, B:55:0x0301, B:56:0x030c, B:58:0x031c, B:59:0x0327, B:61:0x033e, B:62:0x0344, B:64:0x0350, B:66:0x0356, B:67:0x035b, B:69:0x037b, B:70:0x0385, B:72:0x038a, B:74:0x0396, B:75:0x039f, B:10:0x0065), top: B:83:0x0041 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.json.JSONObject e() {
        /*
            Method dump skipped, instructions count: 992
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.h5.e():org.json.JSONObject");
    }

    public Map h() {
        HashMap hashMap = new HashMap();
        if (!((Boolean) this.f3803a.a(l4.Z4)).booleanValue() && !((Boolean) this.f3803a.a(l4.Y4)).booleanValue()) {
            hashMap.put("rid", UUID.randomUUID().toString());
        }
        if (!((Boolean) this.f3803a.a(l4.L4)).booleanValue()) {
            hashMap.put(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.f3803a.i0());
        }
        CollectionUtils.putStringIfValid("connectEventKey", this.f3803a.r(), hashMap);
        Boolean b2 = l0.b().b(a());
        if (b2 != null) {
            hashMap.put("huc", b2.toString());
        }
        Boolean b3 = l0.c().b(a());
        if (b3 != null) {
            hashMap.put("aru", b3.toString());
        }
        Boolean b4 = l0.a().b(a());
        if (b4 != null) {
            hashMap.put("dns", b4.toString());
        }
        return hashMap;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!k0.i() && j.compareAndSet(false, true)) {
            try {
                ProviderInstaller.installIfNeeded(com.applovin.impl.sdk.k.o());
            } catch (Throwable th) {
                if (com.applovin.impl.sdk.o.a()) {
                    this.c.a(this.b, "Cannot update security provider", th);
                }
            }
        }
        this.f3803a.v0().d(y1.f, b(g()));
        long elapsedRealtime = SystemClock.elapsedRealtime();
        Map h = h();
        a.C0024a b2 = com.applovin.impl.sdk.network.a.a(this.f3803a).b(g()).a(f()).b(h).a(e()).b(((Boolean) this.f3803a.a(l4.k5)).booleanValue()).c(ShareTarget.METHOD_POST).a((Object) new JSONObject()).a(((Integer) this.f3803a.a(l4.U2)).intValue()).b(((Integer) this.f3803a.a(l4.X2)).intValue());
        com.applovin.impl.sdk.k kVar = this.f3803a;
        l4 l4Var = l4.T2;
        com.applovin.impl.sdk.network.a a2 = b2.c(((Integer) kVar.a(l4Var)).intValue()).e(((Boolean) this.f3803a.a(l4.g3)).booleanValue()).a(i4.a.a(((Integer) this.f3803a.a(l4.Q4)).intValue())).f(true).a();
        this.f3803a.q0().a(new c(this.f3803a), r5.b.TIMEOUT, ((Integer) this.f3803a.a(l4Var)).intValue() + 250);
        a aVar = new a(a2, this.f3803a, d(), elapsedRealtime);
        aVar.c(l4.n0);
        aVar.b(l4.o0);
        this.f3803a.q0().a(aVar);
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class a extends z5 {
        final /* synthetic */ long m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(com.applovin.impl.sdk.network.a aVar, com.applovin.impl.sdk.k kVar, boolean z, long j) {
            super(aVar, kVar, z);
            this.m = j;
        }

        @Override // com.applovin.impl.z5, com.applovin.impl.m0.e
        public void a(String str, JSONObject jSONObject, int i) {
            long elapsedRealtime = SystemClock.elapsedRealtime() - this.m;
            h5.this.a(jSONObject);
            this.f3803a.v0().d(y1.g, h5.this.a(str, elapsedRealtime, i, jSONObject, null));
        }

        @Override // com.applovin.impl.z5, com.applovin.impl.m0.e
        public void a(String str, int i, String str2, JSONObject jSONObject) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.c;
                String str3 = this.b;
                oVar.b(str3, "Unable to fetch basic SDK settings: server returned " + i);
            }
            long elapsedRealtime = SystemClock.elapsedRealtime() - this.m;
            h5.this.a(jSONObject != null ? jSONObject : new JSONObject());
            this.f3803a.v0().d(y1.h, h5.this.a(str, elapsedRealtime, i, jSONObject, str2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public HashMap a(String str, long j2, int i, JSONObject jSONObject, String str2) {
        Uri build = Uri.parse(str).buildUpon().clearQuery().build();
        JSONObject jSONObject2 = new JSONObject();
        JsonUtils.putString(jSONObject2, "domain", build.getHost());
        if (jSONObject != null) {
            JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "signal_providers", null);
            JSONArray jSONArray2 = JsonUtils.getJSONArray(jSONObject, "auto_init_adapters", null);
            if (jSONArray != null) {
                JsonUtils.putInt(jSONObject2, "signal_provider_count", jSONArray.length());
            }
            if (jSONArray2 != null) {
                JsonUtils.putInt(jSONObject2, "auto_init_adapter_count", jSONArray2.length());
            }
        }
        HashMap hashMap = new HashMap();
        hashMap.put("attempt_number", Integer.toString(this.g));
        hashMap.put("error_message", str2);
        hashMap.put("url", build.toString());
        hashMap.put("details", jSONObject2.toString());
        hashMap.put("duration_ms", Long.toString(j2));
        hashMap.put("code", Integer.toString(i));
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(JSONObject jSONObject) {
        b bVar;
        synchronized (this.h) {
            bVar = this.i;
            this.i = null;
        }
        if (bVar != null) {
            bVar.a(jSONObject);
        }
    }
}
