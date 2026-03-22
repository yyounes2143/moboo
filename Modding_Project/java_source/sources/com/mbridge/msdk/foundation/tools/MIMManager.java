package com.mbridge.msdk.foundation.tools;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyEnum;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public final class MIMManager {
    private static volatile String i;

    /* renamed from: a  reason: collision with root package name */
    private final AtomicBoolean f9078a;
    private int b;
    private CopyOnWriteArrayList<CampaignEx> c;
    private Context d;
    private volatile Boolean e;
    private CampaignEx f;
    private volatile g g;
    private volatile MiOverseaMiniCardBroadcasterReceiver h;

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public static class MiOverseaMiniCardBroadcasterReceiver extends BroadcastReceiver {
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            int i;
            PushAutoTrackHelper.onBroadcastReceiver(this, context, intent);
            if (i0.a("DFKwWgtuDkKwLZPwD+z8H+N/xjK+n3eyNVx6ZVPn5jcincKZx5f5ncN=").equals(intent.getAction())) {
                String stringExtra = intent.getStringExtra("packageName");
                int intExtra = intent.getIntExtra("errorCode", 0);
                if (intExtra < 0) {
                    i = intent.getIntExtra("reason", 0);
                } else {
                    i = -1;
                }
                o0.b("MIMManager", stringExtra + " " + intExtra + " " + i);
                if (intExtra == 1 || intExtra == 2 || intExtra == 3 || intExtra == 4 || intExtra == 7) {
                    try {
                        com.mbridge.msdk.foundation.same.report.metrics.c cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
                        com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                        eVar.a("key", URLEncoder.encode("m_mini_card", "utf-8"));
                        CampaignEx a2 = MIMManager.b().a(stringExtra);
                        if (a2 != null) {
                            eVar.a("rid", a2.getRequestId());
                            eVar.a("rid_n", a2.getRequestIdNotice());
                            eVar.a(MBridgeConstans.PROPERTIES_UNIT_ID, a2.getCampaignUnitId());
                            eVar.a("u_stid", com.mbridge.msdk.foundation.controller.a.r.get(a2.getCampaignUnitId()));
                            cVar.a(a2);
                        }
                        eVar.a("event", String.valueOf(intExtra));
                        eVar.a("pkg_name", stringExtra);
                        if (i != -1) {
                            eVar.a("reasonCode", String.valueOf(i));
                        }
                        cVar.a("m_mini_card", eVar);
                        com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_mini_card", cVar);
                    } catch (Exception e) {
                        o0.b("MIMManager", e.getMessage());
                    }
                }
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f9079a;

        public a(Context context) {
            this.f9079a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (MIMManager.this.f9078a.compareAndSet(false, true)) {
                try {
                    MIMManager mIMManager = MIMManager.this;
                    mIMManager.e = mIMManager.a();
                } catch (Exception e) {
                    o0.a("MIMManager", e.getMessage());
                }
                if (MIMManager.this.e != null && MIMManager.this.e.booleanValue() && this.f9079a != null) {
                    try {
                        MIMManager.this.g = new g(null);
                        IntentFilter intentFilter = new IntentFilter();
                        intentFilter.addAction(i0.a("DFKwWgtuDkKwLZPwD+z8H+N/xj26Vjcdx5KyVj5GxVN="));
                        intentFilter.addAction(i0.a("DFKwWgtuDkKwLZPwD+z8H+N/xj26Vjcdx5KanjKnxVN="));
                        intentFilter.addAction(i0.a("DFKwWgtuDkKwLZPwD+z8H+N/xjQZxVfV+T2SZVe6V2xS5c5n"));
                        this.f9079a.registerReceiver(MIMManager.this.g, intentFilter);
                    } catch (Exception e2) {
                        o0.a("MIMManager", e2.getMessage());
                    }
                }
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f9080a;
        final /* synthetic */ CampaignEx b;

        public b(Context context, CampaignEx campaignEx) {
            this.f9080a = context;
            this.b = campaignEx;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                MIMManager.this.e(this.f9080a, this.b);
            } catch (Exception e) {
                o0.b("MIMManager", e.getMessage());
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f9081a;
        final /* synthetic */ CampaignEx b;

        public c(Context context, CampaignEx campaignEx) {
            this.f9081a = context;
            this.b = campaignEx;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                MIMManager.this.d(this.f9081a, this.b);
            } catch (Exception e) {
                o0.b("MIMManager", e.getMessage());
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f9082a;
        final /* synthetic */ CampaignEx b;

        public d(Context context, CampaignEx campaignEx) {
            this.f9082a = context;
            this.b = campaignEx;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                try {
                    MIMManager.this.f(this.f9082a, this.b);
                    if (MIMManager.this.c == null || !MIMManager.this.c.contains(this.b)) {
                        return;
                    }
                } catch (Exception e) {
                    o0.b("MIMManager", e.getMessage());
                    if (MIMManager.this.c == null || !MIMManager.this.c.contains(this.b)) {
                        return;
                    }
                }
                MIMManager.this.c.remove(this.b);
            } catch (Throwable th) {
                if (MIMManager.this.c != null && MIMManager.this.c.contains(this.b)) {
                    MIMManager.this.c.remove(this.b);
                }
                throw th;
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f9083a;
        final /* synthetic */ String b;
        final /* synthetic */ CampaignEx c;
        final /* synthetic */ int d;

        public e(Context context, String str, CampaignEx campaignEx, int i) {
            this.f9083a = context;
            this.b = str;
            this.c = campaignEx;
            this.d = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (this.f9083a != null && !TextUtils.isEmpty(this.b) && this.c != null) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("key", "2000100");
                    jSONObject.put(TPDownloadProxyEnum.USER_NETWORK_TYPE, k0.s(this.f9083a));
                    jSONObject.put("rid", this.c.getRequestId());
                    jSONObject.put("rid_n", this.c.getRequestIdNotice());
                    if (!TextUtils.isEmpty(this.c.getCampaignUnitId())) {
                        jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, this.c.getCampaignUnitId());
                        String str = com.mbridge.msdk.foundation.controller.a.r.get(this.c.getCampaignUnitId());
                        if (str == null) {
                            str = "";
                        }
                        jSONObject.put("u_stid", str);
                    }
                    jSONObject.put("cid", this.c.getId());
                    jSONObject.put(NotificationCompat.CATEGORY_STATUS, this.b);
                    jSONObject.put("code", this.d);
                    com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
                }
            } catch (Throwable th) {
                o0.b("MIMManager", th.getMessage());
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public static final class f {

        /* renamed from: a  reason: collision with root package name */
        private static final MIMManager f9084a = new MIMManager(null);
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public static class g extends BroadcastReceiver {
        private g() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            CampaignEx a2;
            PushAutoTrackHelper.onBroadcastReceiver(this, context, intent);
            String action = intent.getAction();
            if (!TextUtils.isEmpty(action) && !action.equals(i0.a("DFKwWgtuDkKwLZPwD+z8H+N/xj26Vjcdx5KyVj5GxVN=")) && !action.equals(i0.a("DFKwWgtuDkKwLZPwD+z8H+N/xj26Vjcdx5KanjKnxVN=")) && action.equals(i0.a("DFKwWgtuDkKwLZPwD+z8H+N/xjQZxVfV+T2SZVe6V2xS5c5n"))) {
                try {
                    Bundle extras = intent.getExtras();
                    if (extras != null) {
                        int i = extras.getInt("statusCode", -1);
                        String string = extras.getString("packageName", "");
                        if (i != -1 && !TextUtils.isEmpty(string) && (a2 = MIMManager.b().a(string)) != null) {
                            MIMManager.b().a(context, a2, i);
                            MIMManager.b().a(context, "dm_page_status", i, MIMManager.b().c());
                        }
                    }
                } catch (Exception e) {
                    o0.b("MIMManager", e.getMessage());
                }
            }
        }

        public /* synthetic */ g(a aVar) {
            this();
        }
    }

    public /* synthetic */ MIMManager(a aVar) {
        this();
    }

    public void f() {
        this.b++;
    }

    public void g() {
        int i2 = this.b - 1;
        this.b = i2;
        if (i2 <= 0) {
            a(this.d);
        }
    }

    public void h() {
        try {
            if (this.h == null) {
                this.h = new MiOverseaMiniCardBroadcasterReceiver();
            }
            IntentFilter intentFilter = new IntentFilter(i0.a("DFKwWgtuDkKwLZPwD+z8H+N/xjK+n3eyNVx6ZVPn5jcincKZx5f5ncN="));
            Context d2 = com.mbridge.msdk.foundation.controller.c.m().d();
            if (d2 != null) {
                d2.registerReceiver(this.h, intentFilter);
            }
        } catch (Exception e2) {
            o0.a("MIMManager", e2.getMessage());
        }
    }

    public void i() {
        try {
            if (this.h != null) {
                Context d2 = com.mbridge.msdk.foundation.controller.c.m().d();
                if (d2 != null) {
                    d2.unregisterReceiver(this.h);
                }
                this.f = null;
                CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = this.c;
                if (copyOnWriteArrayList != null) {
                    copyOnWriteArrayList.clear();
                }
                this.c = null;
                this.h = null;
            }
        } catch (Exception e2) {
            o0.a("MIMManager", e2.getMessage());
        }
    }

    private MIMManager() {
        this.b = 0;
        this.c = new CopyOnWriteArrayList<>();
        this.f9078a = new AtomicBoolean(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(Context context, CampaignEx campaignEx) {
        String[] w;
        if (campaignEx != null) {
            try {
                com.mbridge.msdk.foundation.entity.j nativeVideoTracking = campaignEx.getNativeVideoTracking();
                if (nativeVideoTracking == null || (w = nativeVideoTracking.w()) == null) {
                    return;
                }
                int length = w.length;
                int i2 = 0;
                while (i2 < length) {
                    Context context2 = context;
                    CampaignEx campaignEx2 = campaignEx;
                    com.mbridge.msdk.click.a.a(context2, campaignEx2, campaignEx.getCampaignUnitId(), w[i2], false, false);
                    i2++;
                    context = context2;
                    campaignEx = campaignEx2;
                }
            } catch (Exception e2) {
                o0.b("MIMManager", e2.getMessage());
            }
        }
    }

    public String d() {
        try {
            return i == null ? "" : String.format("[%s]", i);
        } catch (Exception unused) {
            return "";
        }
    }

    public Boolean e() {
        return this.e;
    }

    public static MIMManager b() {
        return f.f9084a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(Context context, CampaignEx campaignEx) {
        String[] u;
        if (campaignEx != null) {
            try {
                com.mbridge.msdk.foundation.entity.j nativeVideoTracking = campaignEx.getNativeVideoTracking();
                if (nativeVideoTracking == null || (u = nativeVideoTracking.u()) == null) {
                    return;
                }
                int length = u.length;
                int i2 = 0;
                while (i2 < length) {
                    Context context2 = context;
                    CampaignEx campaignEx2 = campaignEx;
                    com.mbridge.msdk.click.a.a(context2, campaignEx2, campaignEx.getCampaignUnitId(), u[i2], false, false);
                    i2++;
                    context = context2;
                    campaignEx = campaignEx2;
                }
            } catch (Exception e2) {
                o0.b("MIMManager", e2.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(Context context, CampaignEx campaignEx) {
        String[] v;
        if (campaignEx != null) {
            try {
                com.mbridge.msdk.foundation.entity.j nativeVideoTracking = campaignEx.getNativeVideoTracking();
                if (nativeVideoTracking == null || (v = nativeVideoTracking.v()) == null) {
                    return;
                }
                int length = v.length;
                int i2 = 0;
                while (i2 < length) {
                    Context context2 = context;
                    CampaignEx campaignEx2 = campaignEx;
                    com.mbridge.msdk.click.a.a(context2, campaignEx2, campaignEx.getCampaignUnitId(), v[i2], false, false);
                    i2++;
                    context = context2;
                    campaignEx = campaignEx2;
                }
            } catch (Exception e2) {
                o0.b("MIMManager", e2.getMessage());
            }
        }
    }

    public CampaignEx c() {
        return this.f;
    }

    private Runnable c(Context context, CampaignEx campaignEx) {
        return new d(context, campaignEx);
    }

    public void b(Context context) {
        this.d = context;
        com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new a(context));
    }

    public void a(CampaignEx campaignEx) {
        try {
            if (this.e != null && campaignEx != null && this.e.booleanValue()) {
                this.f = campaignEx;
                this.c.add(campaignEx);
            }
            if (com.mbridge.msdk.util.b.b() && campaignEx != null && campaignEx.getDeepLinkURL().startsWith("mimarket")) {
                if (this.h == null) {
                    h();
                }
                this.f = campaignEx;
                this.c.add(campaignEx);
            }
        } catch (Exception e2) {
            o0.b("MIMManager", e2.getMessage());
        }
    }

    public void b(CampaignEx campaignEx) {
        try {
            if (this.e == null || campaignEx == null || !this.e.booleanValue()) {
                return;
            }
            this.f = null;
            try {
                this.c.remove(campaignEx);
            } catch (Exception e2) {
                o0.a("MIMManager", e2.getMessage());
            }
        } catch (Exception e3) {
            o0.b("MIMManager", e3.getMessage());
        }
    }

    private Runnable b(Context context, CampaignEx campaignEx) {
        return new b(context, campaignEx);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public CampaignEx a(String str) {
        try {
            CampaignEx campaignEx = this.f;
            if (campaignEx != null && TextUtils.equals(campaignEx.getPackageName(), str)) {
                return this.f;
            }
            CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = this.c;
            if (copyOnWriteArrayList == null || copyOnWriteArrayList.size() <= 0) {
                return null;
            }
            Iterator<CampaignEx> it = this.c.iterator();
            while (it.hasNext()) {
                CampaignEx next = it.next();
                if (next != null && TextUtils.equals(next.getPackageName(), str)) {
                    return next;
                }
            }
            return null;
        } catch (Exception e2) {
            o0.b("MIMManager", e2.getMessage());
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Boolean a() {
        Cursor cursor;
        Context d2 = com.mbridge.msdk.foundation.controller.c.m().d();
        Boolean bool = null;
        if (d2 != null) {
            try {
                if (d2.getContentResolver() != null) {
                    try {
                        cursor = d2.getContentResolver().query(Uri.parse(i0.a("DFK/J75/JaEXWFfXYZP9LkcXYk3/YkcBLF5TWgSBYbHuH75BW3xuhr5UJj2tLkeNhrKFLkxQhl==")), null, null, null, null);
                    } catch (Exception unused) {
                        cursor = null;
                    }
                    if (cursor != null) {
                        while (cursor.moveToNext()) {
                            try {
                                String string = cursor.getString(cursor.getColumnIndex("support"));
                                if (!TextUtils.isEmpty(string)) {
                                    if (!string.equalsIgnoreCase(AbstractJsonLexerKt.NULL)) {
                                        if (!string.equalsIgnoreCase("false")) {
                                            if (string.equalsIgnoreCase("true")) {
                                            }
                                        }
                                        bool = Boolean.valueOf(Boolean.parseBoolean(string));
                                    }
                                }
                            } catch (Exception e2) {
                                o0.a("MIMManager", e2.getMessage());
                            }
                            try {
                                i = cursor.getString(cursor.getColumnIndex("detailStyle"));
                            } catch (Exception e3) {
                                o0.a("MIMManager", e3.getMessage());
                            }
                        }
                        try {
                            cursor.close();
                        } catch (Exception e4) {
                            o0.a("MIMManager", e4.getMessage());
                        }
                    }
                }
            } catch (Exception e5) {
                o0.b("MIMManager", e5.getMessage());
            }
        }
        return bool;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0020, code lost:
        if (r4 != null) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x002e, code lost:
        if (r4 == null) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0030, code lost:
        r4.clear();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0033, code lost:
        r3.c = null;
        r3.g = null;
        r3.d = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(android.content.Context r4) {
        /*
            r3 = this;
            java.lang.String r0 = "MIMManager"
            if (r4 == 0) goto L4a
            r1 = 0
            com.mbridge.msdk.foundation.tools.MIMManager$g r2 = r3.g     // Catch: java.lang.Throwable -> Lf java.lang.Exception -> L11
            if (r2 == 0) goto L13
            com.mbridge.msdk.foundation.tools.MIMManager$g r2 = r3.g     // Catch: java.lang.Throwable -> Lf java.lang.Exception -> L11
            r4.unregisterReceiver(r2)     // Catch: java.lang.Throwable -> Lf java.lang.Exception -> L11
            goto L13
        Lf:
            r4 = move-exception
            goto L3a
        L11:
            r4 = move-exception
            goto L23
        L13:
            com.mbridge.msdk.foundation.tools.MIMManager$MiOverseaMiniCardBroadcasterReceiver r2 = r3.h     // Catch: java.lang.Throwable -> Lf java.lang.Exception -> L11
            if (r2 == 0) goto L1c
            com.mbridge.msdk.foundation.tools.MIMManager$MiOverseaMiniCardBroadcasterReceiver r2 = r3.h     // Catch: java.lang.Throwable -> Lf java.lang.Exception -> L11
            r4.unregisterReceiver(r2)     // Catch: java.lang.Throwable -> Lf java.lang.Exception -> L11
        L1c:
            r3.f = r1
            java.util.concurrent.CopyOnWriteArrayList<com.mbridge.msdk.foundation.entity.CampaignEx> r4 = r3.c
            if (r4 == 0) goto L33
            goto L30
        L23:
            java.lang.String r4 = r4.getMessage()     // Catch: java.lang.Throwable -> Lf
            com.mbridge.msdk.foundation.tools.o0.a(r0, r4)     // Catch: java.lang.Throwable -> Lf
            r3.f = r1
            java.util.concurrent.CopyOnWriteArrayList<com.mbridge.msdk.foundation.entity.CampaignEx> r4 = r3.c
            if (r4 == 0) goto L33
        L30:
            r4.clear()
        L33:
            r3.c = r1
            r3.g = r1
            r3.d = r1
            goto L4a
        L3a:
            r3.f = r1
            java.util.concurrent.CopyOnWriteArrayList<com.mbridge.msdk.foundation.entity.CampaignEx> r0 = r3.c
            if (r0 == 0) goto L43
            r0.clear()
        L43:
            r3.c = r1
            r3.g = r1
            r3.d = r1
            throw r4
        L4a:
            r3.i()     // Catch: java.lang.Throwable -> L4e
            goto L56
        L4e:
            r4 = move-exception
            java.lang.String r4 = r4.getMessage()
            com.mbridge.msdk.foundation.tools.o0.b(r0, r4)
        L56:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.tools.MIMManager.a(android.content.Context):void");
    }

    public void a(Context context, CampaignEx campaignEx, int i2) {
        Runnable b2;
        if (i2 == 3001) {
            b2 = b(context, campaignEx);
        } else if (i2 != 3002) {
            b2 = i2 != 3008 ? null : c(context, campaignEx);
        } else {
            b2 = a(context, campaignEx);
        }
        if (b2 != null) {
            com.mbridge.msdk.foundation.same.threadpool.a.b().execute(b2);
        }
    }

    private Runnable a(Context context, CampaignEx campaignEx) {
        return new c(context, campaignEx);
    }

    public void a(Context context, String str, int i2, CampaignEx campaignEx) {
        com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new e(context, str, campaignEx, i2));
    }
}
