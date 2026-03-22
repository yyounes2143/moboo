package com.mbridge.msdk.click;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.click.entity.JumpLoaderResult;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.s0;
import com.mbridge.msdk.foundation.tools.z0;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.out.LoadingActivity;
import com.mbridge.msdk.out.NativeListener;
import com.mbridge.msdk.scheme.applet.AppletSchemeCallBack;
import com.mbridge.msdk.scheme.applet.AppletsModel;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class a {
    public static boolean n = false;
    public static Map<String, Long> o = new HashMap();
    public static Set<String> p = new HashSet();

    /* renamed from: a  reason: collision with root package name */
    private String f8770a;
    private long b;
    private com.mbridge.msdk.foundation.db.g c;
    private Context d;
    private com.mbridge.msdk.click.e e;
    private final com.mbridge.msdk.foundation.same.report.h g;
    private com.mbridge.msdk.setting.g h;
    private final boolean i;
    private boolean l;
    private j m;
    private NativeListener.NativeTrackingListener f = null;
    private boolean j = false;
    private boolean k = true;

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class b implements g {
        @Override // com.mbridge.msdk.click.g
        public void a(Object obj) {
        }

        @Override // com.mbridge.msdk.click.g
        public void a(Object obj, String str) {
        }

        @Override // com.mbridge.msdk.click.g
        public void b(Object obj) {
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f8772a;
        final /* synthetic */ boolean b;
        final /* synthetic */ CampaignEx c;

        public c(boolean z, boolean z2, CampaignEx campaignEx) {
            this.f8772a = z;
            this.b = z2;
            this.c = campaignEx;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f8772a && !a.n && !a.this.l && MBridgeConstans.NATIVE_SHOW_LOADINGPAGER && !this.b) {
                a.this.c(this.c);
            }
            if (!this.f8772a && a.this.f != null && !a.n && !a.this.l && MBridgeConstans.NATIVE_SHOW_LOADINGPAGER) {
                a.this.f.onShowLoading(this.c);
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f8774a;
        final /* synthetic */ Campaign b;

        public e(boolean z, Campaign campaign) {
            this.f8774a = z;
            this.b = campaign;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f8774a && !a.n && MBridgeConstans.NATIVE_SHOW_LOADINGPAGER) {
                a.this.a();
            }
            if (a.this.f != null && !a.n && MBridgeConstans.NATIVE_SHOW_LOADINGPAGER) {
                a.this.f.onDismissLoading(this.b);
            }
        }
    }

    public a(Context context, String str) {
        this.c = null;
        this.d = null;
        com.mbridge.msdk.setting.g d2 = com.mbridge.msdk.setting.h.b().d(str);
        this.h = d2;
        if (d2 == null) {
            this.h = com.mbridge.msdk.setting.h.b().a();
        }
        this.i = this.h.J0();
        Context applicationContext = context.getApplicationContext();
        this.d = applicationContext;
        this.f8770a = str;
        if (this.c == null) {
            this.c = com.mbridge.msdk.foundation.db.g.a(applicationContext);
        }
        this.g = new com.mbridge.msdk.foundation.same.report.h(this.d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(int i) {
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        return "";
                    }
                    return "2000138";
                }
                return "2000139";
            }
            return "2000137";
        }
        return "2000136";
    }

    public void c() {
        try {
            this.f = null;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(CampaignEx campaignEx) {
        try {
            Intent intent = new Intent(this.d, LoadingActivity.class);
            intent.setFlags(268435456);
            intent.putExtra(CampaignEx.JSON_KEY_ICON_URL, campaignEx.getIconUrl());
            this.d.startActivity(intent);
        } catch (Exception e2) {
            if (MBridgeConstans.DEBUG) {
                o0.b("CommonClickControl", "Exception", e2);
            }
        }
    }

    public static void a(Context context, CampaignEx campaignEx, String str, String str2, boolean z, boolean z2) {
        if (context == null) {
            return;
        }
        new com.mbridge.msdk.click.e(context.getApplicationContext()).a(str, campaignEx, null, str2, z, z2, com.mbridge.msdk.click.retry.a.l);
    }

    public boolean b(CampaignEx campaignEx) {
        Long l;
        if (campaignEx != null) {
            try {
                if (2 != campaignEx.getLinkType() && 3 != campaignEx.getLinkType()) {
                    return true;
                }
                String id = campaignEx.getId();
                Map<String, Long> map = o;
                if (map != null) {
                    if (map.containsKey(id) && (l = o.get(id)) != null) {
                        if (l.longValue() > System.currentTimeMillis() || p.contains(campaignEx.getId())) {
                            return false;
                        }
                    }
                    o.put(campaignEx.getId(), Long.valueOf(System.currentTimeMillis() + (campaignEx.getClickTimeOutInterval() * 1000)));
                    return true;
                }
                return true;
            } catch (Exception e2) {
                if (MBridgeConstans.DEBUG) {
                    e2.printStackTrace();
                    return true;
                }
                return true;
            }
        }
        return true;
    }

    public static void a(Context context, CampaignEx campaignEx, String str, String str2, boolean z, boolean z2, int i) {
        if (context == null) {
            return;
        }
        int i2 = TextUtils.isEmpty(str2) ? -1 : str2.startsWith("tcp") ? 1 : 0;
        a(i, campaignEx, i2);
        new com.mbridge.msdk.click.e(context.getApplicationContext()).a(str, campaignEx, new C0089a(i2, str2, i, campaignEx), str2, z, z2, i);
    }

    private static void a(int i, CampaignEx campaignEx, int i2) {
        if (campaignEx != null) {
            try {
                String b2 = b(i);
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("net_ty", Integer.valueOf(i2));
                eVar.a("result", 3);
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a(b2, campaignEx, eVar);
            } catch (Exception e2) {
                if (MBridgeConstans.DEBUG) {
                    e2.printStackTrace();
                }
            }
        }
    }

    private int b() {
        try {
            com.mbridge.msdk.setting.g gVar = this.h;
            if (gVar != null) {
                return gVar.V();
            }
            return 1;
        } catch (Exception e2) {
            e2.printStackTrace();
            return 1;
        }
    }

    /* compiled from: Proguard */
    /* renamed from: com.mbridge.msdk.click.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public class C0089a implements g {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f8771a;
        final /* synthetic */ String b;
        final /* synthetic */ int c;
        final /* synthetic */ CampaignEx d;

        public C0089a(int i, String str, int i2, CampaignEx campaignEx) {
            this.f8771a = i;
            this.b = str;
            this.c = i2;
            this.d = campaignEx;
        }

        @Override // com.mbridge.msdk.click.g
        public void a(Object obj) {
            try {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("result", 2);
                eVar.a("net_ty", String.valueOf(this.f8771a));
                if (obj != null && (obj instanceof JumpLoaderResult)) {
                    JumpLoaderResult jumpLoaderResult = (JumpLoaderResult) obj;
                    String str = jumpLoaderResult.getStatusCode() + "";
                    eVar.a("status_code", str);
                    if (str.startsWith("2")) {
                        eVar.a("result", 1);
                    } else {
                        String exceptionMsg = jumpLoaderResult.getExceptionMsg();
                        if (TextUtils.isEmpty(exceptionMsg)) {
                            exceptionMsg = "UNKNOWN EXCEPTION and Status Code is : " + str;
                        }
                        eVar.a("failingURL", z0.d(this.b));
                        eVar.a("reason", exceptionMsg);
                    }
                }
                String b = a.b(this.c);
                if (this.d != null) {
                    com.mbridge.msdk.foundation.same.report.metrics.d.b().a(b, this.d, eVar);
                }
            } catch (Exception e) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("CommonClickControl", e.getMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.click.g
        public void a(Object obj, String str) {
            try {
                String b = a.b(this.c);
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("result", 2);
                if (obj instanceof JumpLoaderResult) {
                    JumpLoaderResult jumpLoaderResult = (JumpLoaderResult) obj;
                    String exceptionMsg = jumpLoaderResult.getExceptionMsg();
                    if (!TextUtils.isEmpty(exceptionMsg)) {
                        str = exceptionMsg;
                    }
                    eVar.a("reason", str);
                    eVar.a("status_code", Integer.valueOf(jumpLoaderResult.getStatusCode()));
                }
                eVar.a("code", "");
                eVar.a("failingURL", z0.d(this.b));
                eVar.a("net_ty", String.valueOf(this.f8771a));
                if (this.d != null) {
                    com.mbridge.msdk.foundation.same.report.metrics.d.b().a(b, this.d, eVar);
                }
            } catch (Exception e) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("CommonClickControl", e.getMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.click.g
        public void b(Object obj) {
        }
    }

    public static void a(Context context, CampaignEx campaignEx, String str, String[] strArr, boolean z, boolean z2) {
        if (context == null || campaignEx == null || TextUtils.isEmpty(str) || strArr == null) {
            return;
        }
        com.mbridge.msdk.click.e eVar = new com.mbridge.msdk.click.e(context.getApplicationContext());
        for (String str2 : strArr) {
            eVar.a(str, campaignEx, new b(), str2, z, z2, com.mbridge.msdk.click.retry.a.l);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class d implements g {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CampaignEx f8773a;
        final /* synthetic */ boolean b;
        final /* synthetic */ Boolean c;
        final /* synthetic */ List d;
        final /* synthetic */ boolean e;

        public d(CampaignEx campaignEx, boolean z, Boolean bool, List list, boolean z2) {
            this.f8773a = campaignEx;
            this.b = z;
            this.c = bool;
            this.d = list;
            this.e = z2;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:22:0x0071 A[Catch: all -> 0x007f, TryCatch #2 {all -> 0x007f, blocks: (B:20:0x0063, B:22:0x0071, B:25:0x0082, B:27:0x0086, B:29:0x0090, B:31:0x0098), top: B:41:0x0063 }] */
        /* JADX WARN: Removed duplicated region for block: B:27:0x0086 A[Catch: all -> 0x007f, TryCatch #2 {all -> 0x007f, blocks: (B:20:0x0063, B:22:0x0071, B:25:0x0082, B:27:0x0086, B:29:0x0090, B:31:0x0098), top: B:41:0x0063 }] */
        /* JADX WARN: Type inference failed for: r0v17 */
        /* JADX WARN: Type inference failed for: r0v5 */
        /* JADX WARN: Type inference failed for: r0v6, types: [int] */
        @Override // com.mbridge.msdk.click.g
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void a(java.lang.Object r11) {
            /*
                r10 = this;
                java.util.Set<java.lang.String> r0 = com.mbridge.msdk.click.a.p
                if (r0 == 0) goto Ld
                com.mbridge.msdk.foundation.entity.CampaignEx r1 = r10.f8773a
                java.lang.String r1 = r1.getId()
                r0.remove(r1)
            Ld:
                java.lang.String r1 = "CommonClickControl"
                r2 = 0
                if (r11 == 0) goto L63
                boolean r0 = r11 instanceof com.mbridge.msdk.click.entity.JumpLoaderResult     // Catch: java.lang.Throwable -> L5a
                if (r0 == 0) goto L63
                r5 = r11
                com.mbridge.msdk.click.entity.JumpLoaderResult r5 = (com.mbridge.msdk.click.entity.JumpLoaderResult) r5     // Catch: java.lang.Throwable -> L5a
                com.mbridge.msdk.foundation.entity.CampaignEx r11 = r10.f8773a     // Catch: java.lang.Throwable -> L4b
                r11.setJumpResult(r5)     // Catch: java.lang.Throwable -> L4b
                com.mbridge.msdk.click.a r3 = com.mbridge.msdk.click.a.this     // Catch: java.lang.Throwable -> L4b
                com.mbridge.msdk.foundation.entity.CampaignEx r4 = r10.f8773a     // Catch: java.lang.Throwable -> L4b
                boolean r6 = r10.b     // Catch: java.lang.Throwable -> L4b
                boolean r7 = com.mbridge.msdk.click.a.d(r3)     // Catch: java.lang.Throwable -> L4b
                java.lang.Boolean r8 = r10.c     // Catch: java.lang.Throwable -> L4b
                java.util.List r9 = r10.d     // Catch: java.lang.Throwable -> L4b
                com.mbridge.msdk.click.a.a(r3, r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L4b
                boolean r11 = r5.isjumpDone()     // Catch: java.lang.Throwable -> L4b
                if (r11 == 0) goto L4f
                com.mbridge.msdk.click.a r11 = com.mbridge.msdk.click.a.this     // Catch: java.lang.Throwable -> L4b
                com.mbridge.msdk.foundation.db.g r11 = com.mbridge.msdk.click.a.e(r11)     // Catch: java.lang.Throwable -> L4b
                com.mbridge.msdk.foundation.db.d r11 = com.mbridge.msdk.foundation.db.d.a(r11)     // Catch: java.lang.Throwable -> L4b
                com.mbridge.msdk.foundation.entity.CampaignEx r0 = r10.f8773a     // Catch: java.lang.Throwable -> L4b
                com.mbridge.msdk.click.a r2 = com.mbridge.msdk.click.a.this     // Catch: java.lang.Throwable -> L4b
                java.lang.String r2 = com.mbridge.msdk.click.a.f(r2)     // Catch: java.lang.Throwable -> L4b
                com.mbridge.msdk.click.b.a(r11, r0, r2)     // Catch: java.lang.Throwable -> L4b
                goto L4f
            L4b:
                r0 = move-exception
                r11 = r0
                r2 = r5
                goto L5c
            L4f:
                com.mbridge.msdk.click.a r11 = com.mbridge.msdk.click.a.this     // Catch: java.lang.Throwable -> L4b
                boolean r0 = r10.e     // Catch: java.lang.Throwable -> L4b
                com.mbridge.msdk.foundation.entity.CampaignEx r2 = r10.f8773a     // Catch: java.lang.Throwable -> L4b
                com.mbridge.msdk.click.a.a(r11, r0, r2)     // Catch: java.lang.Throwable -> L4b
                r2 = r5
                goto L63
            L5a:
                r0 = move-exception
                r11 = r0
            L5c:
                java.lang.String r11 = r11.getMessage()
                com.mbridge.msdk.foundation.tools.o0.b(r1, r11)
            L63:
                com.mbridge.msdk.foundation.same.report.metrics.e r11 = new com.mbridge.msdk.foundation.same.report.metrics.e     // Catch: java.lang.Throwable -> L7f
                r11.<init>()     // Catch: java.lang.Throwable -> L7f
                java.lang.String r0 = "result"
                java.lang.String r3 = "1"
                r11.a(r0, r3)     // Catch: java.lang.Throwable -> L7f
                if (r2 == 0) goto L82
                java.lang.String r0 = "status_code"
                int r2 = r2.getStatusCode()     // Catch: java.lang.Throwable -> L7f
                java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch: java.lang.Throwable -> L7f
                r11.a(r0, r2)     // Catch: java.lang.Throwable -> L7f
                goto L82
            L7f:
                r0 = move-exception
                r11 = r0
                goto Lad
            L82:
                com.mbridge.msdk.foundation.entity.CampaignEx r0 = r10.f8773a     // Catch: java.lang.Throwable -> L7f
                if (r0 == 0) goto L97
                java.lang.String r0 = r0.getClickURL()     // Catch: java.lang.Throwable -> L7f
                boolean r2 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Throwable -> L7f
                if (r2 != 0) goto L97
                java.lang.String r2 = "tcp"
                boolean r0 = r0.startsWith(r2)     // Catch: java.lang.Throwable -> L7f
                goto L98
            L97:
                r0 = -1
            L98:
                java.lang.String r2 = "net_ty"
                java.lang.Integer r0 = java.lang.Integer.valueOf(r0)     // Catch: java.lang.Throwable -> L7f
                r11.a(r2, r0)     // Catch: java.lang.Throwable -> L7f
                com.mbridge.msdk.foundation.same.report.metrics.d r0 = com.mbridge.msdk.foundation.same.report.metrics.d.b()     // Catch: java.lang.Throwable -> L7f
                java.lang.String r2 = "2000138"
                com.mbridge.msdk.foundation.entity.CampaignEx r3 = r10.f8773a     // Catch: java.lang.Throwable -> L7f
                r0.a(r2, r3, r11)     // Catch: java.lang.Throwable -> L7f
                goto Lb8
            Lad:
                boolean r0 = com.mbridge.msdk.MBridgeConstans.DEBUG
                if (r0 == 0) goto Lb8
                java.lang.String r11 = r11.getMessage()
                com.mbridge.msdk.foundation.tools.o0.b(r1, r11)
            Lb8:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.click.a.d.a(java.lang.Object):void");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0052 A[Catch: all -> 0x0063, TryCatch #0 {all -> 0x0063, blocks: (B:22:0x004e, B:24:0x0052, B:26:0x005c, B:30:0x0066, B:32:0x007d, B:33:0x008a), top: B:39:0x004e }] */
        /* JADX WARN: Removed duplicated region for block: B:32:0x007d A[Catch: all -> 0x0063, TryCatch #0 {all -> 0x0063, blocks: (B:22:0x004e, B:24:0x0052, B:26:0x005c, B:30:0x0066, B:32:0x007d, B:33:0x008a), top: B:39:0x004e }] */
        /* JADX WARN: Type inference failed for: r6v10, types: [int] */
        /* JADX WARN: Type inference failed for: r6v21 */
        /* JADX WARN: Type inference failed for: r6v9 */
        @Override // com.mbridge.msdk.click.g
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void a(java.lang.Object r6, java.lang.String r7) {
            /*
                r5 = this;
                java.util.Set<java.lang.String> r0 = com.mbridge.msdk.click.a.p
                if (r0 == 0) goto Ld
                com.mbridge.msdk.foundation.entity.CampaignEx r1 = r5.f8773a
                java.lang.String r1 = r1.getId()
                r0.remove(r1)
            Ld:
                java.lang.String r0 = "CommonClickControl"
                r1 = 0
                if (r6 == 0) goto L2a
                boolean r2 = r6 instanceof com.mbridge.msdk.click.entity.JumpLoaderResult     // Catch: java.lang.Throwable -> L28
                if (r2 == 0) goto L2a
                r2 = r6
                com.mbridge.msdk.click.entity.JumpLoaderResult r2 = (com.mbridge.msdk.click.entity.JumpLoaderResult) r2     // Catch: java.lang.Throwable -> L28
                com.mbridge.msdk.click.a r1 = com.mbridge.msdk.click.a.this     // Catch: java.lang.Throwable -> L25
                com.mbridge.msdk.click.entity.JumpLoaderResult r6 = (com.mbridge.msdk.click.entity.JumpLoaderResult) r6     // Catch: java.lang.Throwable -> L25
                com.mbridge.msdk.foundation.entity.CampaignEx r3 = r5.f8773a     // Catch: java.lang.Throwable -> L25
                r4 = 1
                com.mbridge.msdk.click.a.a(r1, r6, r3, r4)     // Catch: java.lang.Throwable -> L25
                r1 = r2
                goto L2a
            L25:
                r6 = move-exception
                r1 = r2
                goto L47
            L28:
                r6 = move-exception
                goto L47
            L2a:
                com.mbridge.msdk.click.a r6 = com.mbridge.msdk.click.a.this     // Catch: java.lang.Throwable -> L28
                com.mbridge.msdk.out.NativeListener$NativeTrackingListener r6 = com.mbridge.msdk.click.a.c(r6)     // Catch: java.lang.Throwable -> L28
                if (r6 == 0) goto L3d
                com.mbridge.msdk.click.a r6 = com.mbridge.msdk.click.a.this     // Catch: java.lang.Throwable -> L28
                com.mbridge.msdk.out.NativeListener$NativeTrackingListener r6 = com.mbridge.msdk.click.a.c(r6)     // Catch: java.lang.Throwable -> L28
                com.mbridge.msdk.foundation.entity.CampaignEx r2 = r5.f8773a     // Catch: java.lang.Throwable -> L28
                r6.onRedirectionFailed(r2, r7)     // Catch: java.lang.Throwable -> L28
            L3d:
                com.mbridge.msdk.click.a r6 = com.mbridge.msdk.click.a.this     // Catch: java.lang.Throwable -> L28
                boolean r7 = r5.e     // Catch: java.lang.Throwable -> L28
                com.mbridge.msdk.foundation.entity.CampaignEx r2 = r5.f8773a     // Catch: java.lang.Throwable -> L28
                com.mbridge.msdk.click.a.a(r6, r7, r2)     // Catch: java.lang.Throwable -> L28
                goto L4e
            L47:
                java.lang.String r6 = r6.getMessage()
                com.mbridge.msdk.foundation.tools.o0.b(r0, r6)
            L4e:
                com.mbridge.msdk.foundation.entity.CampaignEx r6 = r5.f8773a     // Catch: java.lang.Throwable -> L63
                if (r6 == 0) goto L65
                java.lang.String r6 = r6.getClickURL()     // Catch: java.lang.Throwable -> L63
                boolean r7 = android.text.TextUtils.isEmpty(r6)     // Catch: java.lang.Throwable -> L63
                if (r7 != 0) goto L65
                java.lang.String r7 = "tcp"
                boolean r6 = r6.startsWith(r7)     // Catch: java.lang.Throwable -> L63
                goto L66
            L63:
                r6 = move-exception
                goto L96
            L65:
                r6 = -1
            L66:
                com.mbridge.msdk.foundation.same.report.metrics.e r7 = new com.mbridge.msdk.foundation.same.report.metrics.e     // Catch: java.lang.Throwable -> L63
                r7.<init>()     // Catch: java.lang.Throwable -> L63
                java.lang.String r2 = "result"
                java.lang.String r3 = "2"
                r7.a(r2, r3)     // Catch: java.lang.Throwable -> L63
                java.lang.String r2 = "net_ty"
                java.lang.Integer r6 = java.lang.Integer.valueOf(r6)     // Catch: java.lang.Throwable -> L63
                r7.a(r2, r6)     // Catch: java.lang.Throwable -> L63
                if (r1 == 0) goto L8a
                java.lang.String r6 = "status_code"
                int r1 = r1.getStatusCode()     // Catch: java.lang.Throwable -> L63
                java.lang.Integer r1 = java.lang.Integer.valueOf(r1)     // Catch: java.lang.Throwable -> L63
                r7.a(r6, r1)     // Catch: java.lang.Throwable -> L63
            L8a:
                com.mbridge.msdk.foundation.same.report.metrics.d r6 = com.mbridge.msdk.foundation.same.report.metrics.d.b()     // Catch: java.lang.Throwable -> L63
                java.lang.String r1 = "2000138"
                com.mbridge.msdk.foundation.entity.CampaignEx r2 = r5.f8773a     // Catch: java.lang.Throwable -> L63
                r6.a(r1, r2, r7)     // Catch: java.lang.Throwable -> L63
                goto La1
            L96:
                boolean r7 = com.mbridge.msdk.MBridgeConstans.DEBUG
                if (r7 == 0) goto La1
                java.lang.String r6 = r6.getMessage()
                com.mbridge.msdk.foundation.tools.o0.b(r0, r6)
            La1:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.click.a.d.a(java.lang.Object, java.lang.String):void");
        }

        @Override // com.mbridge.msdk.click.g
        public void b(Object obj) {
        }
    }

    public void a(String str) {
        this.f8770a = str;
    }

    public void a(NativeListener.NativeTrackingListener nativeTrackingListener) {
        this.f = nativeTrackingListener;
    }

    public void a(j jVar) {
        this.m = jVar;
    }

    public void a(boolean z) {
        this.k = z;
    }

    public void a(CampaignEx campaignEx, NativeListener.NativeAdListener nativeAdListener) {
        if (nativeAdListener != null && campaignEx != null) {
            nativeAdListener.onAdClick(campaignEx);
        }
        a(campaignEx);
    }

    /* JADX WARN: Removed duplicated region for block: B:135:0x02ad A[Catch: all -> 0x003f, TryCatch #2 {all -> 0x003f, blocks: (B:5:0x000a, B:8:0x0012, B:10:0x0035, B:12:0x003b, B:15:0x0042, B:16:0x004a, B:19:0x0064, B:21:0x007c, B:23:0x0080, B:24:0x0087, B:26:0x00a4, B:27:0x00ab, B:29:0x00af, B:30:0x00c5, B:32:0x00ce, B:34:0x00d2, B:35:0x00d9, B:37:0x00e9, B:40:0x00f3, B:42:0x00f9, B:44:0x00ff, B:46:0x010b, B:48:0x010f, B:49:0x0116, B:51:0x011a, B:52:0x0124, B:55:0x012b, B:57:0x012f, B:58:0x0136, B:60:0x0153, B:61:0x015c, B:62:0x016c, B:64:0x0172, B:66:0x0176, B:67:0x017d, B:69:0x0187, B:71:0x018d, B:73:0x0193, B:75:0x019d, B:76:0x01a5, B:78:0x01a9, B:79:0x01b0, B:81:0x01ba, B:83:0x01c0, B:84:0x01c7, B:86:0x01cd, B:88:0x01d9, B:90:0x01e8, B:91:0x01f1, B:93:0x01f5, B:94:0x01fc, B:96:0x0202, B:98:0x020b, B:100:0x020f, B:97:0x0208, B:102:0x021c, B:105:0x022c, B:113:0x0243, B:115:0x024d, B:117:0x0255, B:119:0x025d, B:121:0x0266, B:122:0x026d, B:124:0x027b, B:126:0x0282, B:127:0x0289, B:129:0x028d, B:131:0x02a2, B:135:0x02ad, B:137:0x02b5, B:138:0x02b8, B:140:0x02be, B:142:0x02c2, B:143:0x02c5, B:146:0x02cb, B:148:0x02d1, B:150:0x02db, B:152:0x02df, B:154:0x02e3, B:155:0x02e6, B:164:0x0306, B:161:0x02f8, B:163:0x0303, B:167:0x030c, B:169:0x031a, B:173:0x0322, B:174:0x032a, B:175:0x0331, B:177:0x0335, B:178:0x0338, B:181:0x033e, B:183:0x0344, B:185:0x034a, B:189:0x0351, B:191:0x035c, B:193:0x0365, B:195:0x0369, B:197:0x0371, B:198:0x0374, B:200:0x037a, B:202:0x037e, B:203:0x0381, B:205:0x0385, B:207:0x0389, B:208:0x038c, B:210:0x0399, B:212:0x039d), top: B:222:0x000a, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:180:0x033c  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x03a5  */
    /* JADX WARN: Removed duplicated region for block: B:230:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(com.mbridge.msdk.foundation.entity.CampaignEx r19) {
        /*
            Method dump skipped, instructions count: 941
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.click.a.a(com.mbridge.msdk.foundation.entity.CampaignEx):void");
    }

    private AppletSchemeCallBack a(NativeListener.NativeTrackingListener nativeTrackingListener, CampaignEx campaignEx, AppletsModel appletsModel, a aVar) {
        return new h(nativeTrackingListener, campaignEx, appletsModel, aVar);
    }

    private void a(Context context, CampaignEx campaignEx, List<String> list) {
        if (context == null) {
            com.mbridge.msdk.foundation.same.report.j.a(com.mbridge.msdk.foundation.controller.c.m().d(), campaignEx, 2, "context is null", this.f8770a);
            return;
        }
        boolean z = k0.D() == 1;
        boolean z2 = k0.D(context) == 1;
        if (z && z2) {
            String ghId = campaignEx.getGhId();
            String ghPath = campaignEx.getGhPath();
            String bindId = campaignEx.getBindId();
            String i = com.mbridge.msdk.foundation.controller.c.m().i();
            if (!TextUtils.isEmpty(ghId)) {
                try {
                    if (!TextUtils.isEmpty(i)) {
                        bindId = i;
                    }
                    Object d2 = k0.d(bindId);
                    Class<?> cls = Class.forName("com.tencent.mm.opensdk.modelbiz.WXLaunchMiniProgram$Req");
                    Object newInstance = cls.newInstance();
                    cls.getField("userName").set(newInstance, ghId);
                    cls.getField(MBridgeConstans.DYNAMIC_VIEW_WX_PATH).set(newInstance, ghPath);
                    cls.getField("miniprogramType").set(newInstance, cls.getField("MINIPTOGRAM_TYPE_RELEASE").get(null));
                    Class.forName("com.tencent.mm.opensdk.openapi.IWXAPI").getMethod("sendReq", Class.forName("com.tencent.mm.opensdk.modelbase.BaseReq")).invoke(d2, newInstance);
                    com.mbridge.msdk.foundation.same.report.j.a(context, campaignEx, 1, "", this.f8770a);
                    return;
                } catch (Throwable th) {
                    com.mbridge.msdk.foundation.same.report.j.a(context, campaignEx, 2, th.getMessage(), this.f8770a);
                    a(campaignEx, list);
                    return;
                }
            }
            a(campaignEx, list);
            com.mbridge.msdk.foundation.same.report.j.a(context, campaignEx, 2, "ghid is empty", this.f8770a);
            return;
        }
        com.mbridge.msdk.foundation.same.report.j.a(context, campaignEx, 2, "integrated:" + z + "-hasWx:" + z2, this.f8770a);
        a(campaignEx, list);
    }

    private void a(CampaignEx campaignEx, List<String> list) {
        if (b() == 2) {
            s0.a(this.d, campaignEx.getClickURL(), campaignEx, this.f, list);
        } else {
            s0.a(this.d, campaignEx.getClickURL(), this.f, campaignEx, list);
        }
    }

    private void a(CampaignEx campaignEx, boolean z, Boolean bool, List<String> list) {
        boolean z2;
        boolean z3;
        try {
            this.b = System.currentTimeMillis();
            NativeListener.NativeTrackingListener nativeTrackingListener = this.f;
            if (nativeTrackingListener == null || z) {
                z2 = true;
            } else {
                nativeTrackingListener.onStartRedirection(campaignEx, campaignEx.getClickURL());
                z2 = !this.f.onInterceptDefaultLoadingDialog();
            }
            this.l = false;
            boolean z4 = true;
            if (campaignEx.getJumpResult() != null) {
                if (!z) {
                    a(campaignEx, campaignEx.getJumpResult(), true, this.j, bool, list);
                }
                this.l = true;
                this.j = false;
                z4 = false;
            }
            if (!com.mbridge.msdk.foundation.db.d.a(this.c).c(campaignEx.getId(), this.f8770a) || campaignEx.getJumpResult() == null) {
                com.mbridge.msdk.foundation.db.d a2 = com.mbridge.msdk.foundation.db.d.a(this.c);
                a2.a();
                JumpLoaderResult b2 = a2.b(campaignEx.getId(), this.f8770a);
                if (b2 != null && !z) {
                    campaignEx.setJumpResult(b2);
                    if (z4) {
                        a(campaignEx, b2, z4, this.j, bool, list);
                        this.l = true;
                        this.j = false;
                        z3 = false;
                    }
                    z3 = z4;
                } else {
                    if (campaignEx.getClick_mode().equals("6") && !campaignEx.getPackageName().isEmpty() && campaignEx.getLinkType() == 2 && !z) {
                        boolean a3 = s0.a.a(this.d, "market://details?id=" + campaignEx.getPackageName(), this.f);
                        if (list != null) {
                            list.add("google_play");
                        }
                        if (a3) {
                            a(campaignEx, 1, 1, list);
                        }
                        NativeListener.NativeTrackingListener nativeTrackingListener2 = this.f;
                        if (nativeTrackingListener2 != null && z4) {
                            nativeTrackingListener2.onDismissLoading(campaignEx);
                            this.f.onFinishRedirection(campaignEx, null);
                        }
                        this.l = true;
                        z4 = false;
                    }
                    if (z) {
                        this.l = true;
                        this.j = false;
                        z3 = false;
                    }
                    z3 = z4;
                }
                new Handler(Looper.getMainLooper()).post(new c(z2, z, campaignEx));
                com.mbridge.msdk.click.e eVar = this.e;
                if (eVar != null) {
                    eVar.a();
                }
                Set<String> set = p;
                if (set != null && set.contains(campaignEx.getId())) {
                    NativeListener.NativeTrackingListener nativeTrackingListener3 = this.f;
                    if (nativeTrackingListener3 != null) {
                        nativeTrackingListener3.onDismissLoading(campaignEx);
                        this.f.onFinishRedirection(campaignEx, campaignEx.getClickURL());
                        return;
                    }
                    return;
                }
                Set<String> set2 = p;
                if (set2 != null) {
                    set2.add(campaignEx.getId());
                }
                com.mbridge.msdk.click.e eVar2 = new com.mbridge.msdk.click.e(this.d);
                this.e = eVar2;
                eVar2.a(this.f8770a, campaignEx, new d(campaignEx, z3, bool, list, z2));
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z, Campaign campaign) {
        new Handler(Looper.getMainLooper()).post(new e(z, campaign));
    }

    public void a(JumpLoaderResult jumpLoaderResult, CampaignEx campaignEx, int i, boolean z) {
        if (campaignEx == null || jumpLoaderResult == null) {
            return;
        }
        try {
            long currentTimeMillis = System.currentTimeMillis() - this.b;
            com.mbridge.msdk.foundation.entity.e eVar = new com.mbridge.msdk.foundation.entity.e();
            int s = k0.s(this.d);
            eVar.e(s);
            eVar.h(k0.a(this.d, s));
            eVar.i(campaignEx.getRequestId());
            eVar.j(campaignEx.getRequestIdNotice());
            eVar.a(i);
            eVar.c(currentTimeMillis + "");
            eVar.a(campaignEx.getId());
            eVar.f(jumpLoaderResult.getType());
            if (!TextUtils.isEmpty(jumpLoaderResult.getUrl())) {
                eVar.g(URLEncoder.encode(jumpLoaderResult.getUrl(), "utf-8"));
            }
            eVar.b((this.b / 1000) + "");
            eVar.c(Integer.parseInt(campaignEx.getLandingType()));
            eVar.d(campaignEx.getLinkType());
            eVar.k(this.f8770a);
            eVar.f(jumpLoaderResult.getType());
            if (!TextUtils.isEmpty(jumpLoaderResult.getUrl())) {
                eVar.g(URLEncoder.encode(jumpLoaderResult.getUrl(), "utf-8"));
            }
            if (this.i) {
                eVar.b(jumpLoaderResult.getStatusCode());
                if (!TextUtils.isEmpty(jumpLoaderResult.getHeader())) {
                    eVar.f(URLEncoder.encode(jumpLoaderResult.getHeader(), "utf-8"));
                }
                if (!TextUtils.isEmpty(jumpLoaderResult.getContent())) {
                    eVar.d(URLEncoder.encode(jumpLoaderResult.getContent(), "UTF-8"));
                }
                if (!TextUtils.isEmpty(jumpLoaderResult.getExceptionMsg())) {
                    eVar.e(URLEncoder.encode(jumpLoaderResult.getExceptionMsg(), "utf-8"));
                }
            }
            if (z) {
                this.g.a("click_jump_error", eVar, this.f8770a);
                return;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(eVar);
            ArrayList<JSONObject> a2 = com.mbridge.msdk.foundation.entity.e.a(arrayList);
            if (a2 == null || a2.isEmpty()) {
                return;
            }
            int size = a2.size();
            int i2 = 0;
            while (i2 < size) {
                JSONObject jSONObject = a2.get(i2);
                i2++;
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
            }
        } catch (Throwable th) {
            o0.b("CommonClickControl", th.getMessage());
        }
    }

    public void a(Campaign campaign, String str) {
        try {
            if (!TextUtils.isEmpty(str) && campaign != null) {
                CampaignEx campaignEx = campaign instanceof CampaignEx ? (CampaignEx) campaign : null;
                if (!str.startsWith("market://") && !str.startsWith("https://play.google.com/")) {
                    com.mbridge.msdk.click.b.a(str, this.d, this.f8770a, campaignEx, this.f);
                    return;
                }
                if (s0.a.a(this.d, str, this.f) || campaignEx == null) {
                    return;
                }
                if (!TextUtils.isEmpty(campaignEx.getPackageName())) {
                    Context context = this.d;
                    s0.a.a(context, "market://details?id=" + campaignEx.getPackageName(), this.f);
                } else if (b() == 2) {
                    s0.a(this.d, campaignEx.getClickURL(), campaignEx, this.f, new ArrayList());
                } else {
                    s0.a(this.d, campaignEx.getClickURL(), this.f, campaignEx, new ArrayList());
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(JumpLoaderResult jumpLoaderResult, CampaignEx campaignEx, boolean z) {
        a(jumpLoaderResult, campaignEx, 1, z);
    }

    private void a(int i, String str, CampaignEx campaignEx, NativeListener.NativeTrackingListener nativeTrackingListener, List<String> list) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            if (i == 2) {
                s0.a(this.d, str, campaignEx, nativeTrackingListener, list);
            } else {
                s0.a(this.d, str, nativeTrackingListener, campaignEx, list);
            }
        } catch (Throwable th) {
            if (MBridgeConstans.DEBUG) {
                o0.b("CommonClickControl", th.getMessage(), th);
            }
        }
    }

    private boolean a(CampaignEx campaignEx, JumpLoaderResult jumpLoaderResult, boolean z, int i, List<String> list) {
        boolean z2 = true;
        boolean z3 = false;
        if (z) {
            try {
                int parseInt = Integer.parseInt(campaignEx.getLandingType());
                if (parseInt == 1) {
                    s0.a(this.d, jumpLoaderResult.getUrl(), this.f, campaignEx, list);
                } else if (parseInt == 2) {
                    s0.a(this.d, jumpLoaderResult.getUrl(), campaignEx, this.f, list);
                } else if (campaignEx.getPackageName() != null) {
                    if (s0.a.a(this.d, "market://details?id=" + campaignEx.getPackageName(), this.f)) {
                        if (list != null) {
                            try {
                                list.add("google_play");
                            } catch (Throwable th) {
                                th = th;
                                if (MBridgeConstans.DEBUG) {
                                    o0.b("CommonClickControl", th.getMessage(), th);
                                }
                                return z2;
                            }
                        }
                        a(campaignEx, 1, 1, list);
                    } else {
                        a(i, jumpLoaderResult.getUrl(), campaignEx, this.f, list);
                    }
                } else {
                    a(i, jumpLoaderResult.getUrl(), campaignEx, this.f, list);
                }
                z3 = true;
            } catch (Throwable th2) {
                th = th2;
                z2 = false;
            }
        }
        if (z3) {
            a(jumpLoaderResult, campaignEx, true);
            NativeListener.NativeTrackingListener nativeTrackingListener = this.f;
            if (nativeTrackingListener != null) {
                nativeTrackingListener.onFinishRedirection(campaignEx, jumpLoaderResult.getUrl());
                return z3;
            }
        } else {
            a(jumpLoaderResult, campaignEx, true);
            NativeListener.NativeTrackingListener nativeTrackingListener2 = this.f;
            if (nativeTrackingListener2 != null && z) {
                nativeTrackingListener2.onRedirectionFailed(campaignEx, jumpLoaderResult.getUrl());
            }
        }
        return z3;
    }

    private boolean a(CampaignEx campaignEx, JumpLoaderResult jumpLoaderResult, boolean z, List<String> list) {
        boolean z2 = false;
        if (z) {
            try {
                if (com.mbridge.msdk.util.b.a()) {
                    com.mbridge.msdk.click.b.a(this.d, this.f8770a, campaignEx, campaignEx.getNoticeUrl(), com.mbridge.msdk.foundation.same.a.M);
                }
                s0.a(this.d, campaignEx.getClickURL(), this.f, campaignEx, list);
                z2 = true;
            } catch (Throwable th) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("CommonClickControl", th.getMessage(), th);
                }
                return false;
            }
        }
        a(jumpLoaderResult, campaignEx, true);
        if (z2) {
            NativeListener.NativeTrackingListener nativeTrackingListener = this.f;
            if (nativeTrackingListener != null) {
                nativeTrackingListener.onFinishRedirection(campaignEx, jumpLoaderResult.getUrl());
                return z2;
            }
        } else {
            if (com.mbridge.msdk.util.b.a()) {
                a(jumpLoaderResult, campaignEx, true);
            }
            NativeListener.NativeTrackingListener nativeTrackingListener2 = this.f;
            if (nativeTrackingListener2 != null) {
                nativeTrackingListener2.onRedirectionFailed(campaignEx, jumpLoaderResult.getUrl());
            }
        }
        return z2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00de, code lost:
        if (com.mbridge.msdk.foundation.tools.s0.a.a(r0, "market://details?id=" + r10.getPackageName(), r9.f) == false) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0176, code lost:
        a(r11, r10, true);
        r0 = r9.f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x017b, code lost:
        if (r0 == null) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x017d, code lost:
        r0.onRedirectionFailed(null, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0181, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:?, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(com.mbridge.msdk.foundation.entity.CampaignEx r10, com.mbridge.msdk.click.entity.JumpLoaderResult r11, boolean r12, boolean r13, java.lang.Boolean r14, java.util.List<java.lang.String> r15) {
        /*
            Method dump skipped, instructions count: 390
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.click.a.a(com.mbridge.msdk.foundation.entity.CampaignEx, com.mbridge.msdk.click.entity.JumpLoaderResult, boolean, boolean, java.lang.Boolean, java.util.List):void");
    }

    private boolean a(int i, String str) {
        try {
            return i == 2 ? s0.a.b(str) : !TextUtils.isEmpty(str);
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        try {
            Intent intent = new Intent();
            intent.setAction("ExitApp");
            this.d.sendBroadcast(intent);
        } catch (Exception e2) {
            if (MBridgeConstans.DEBUG) {
                o0.b("CommonClickControl", "Exception", e2);
            }
        }
    }

    private void a(CampaignEx campaignEx, int i, int i2, List<String> list) {
        try {
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a("type", Integer.valueOf(i));
            eVar.a("result", Integer.valueOf(i2));
            if (list != null) {
                eVar.a("click_path", list.toString());
            }
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000150", campaignEx, eVar);
        } catch (Exception e2) {
            if (MBridgeConstans.DEBUG) {
                o0.b("CommonClickControl", e2.getMessage());
            }
        }
    }
}
