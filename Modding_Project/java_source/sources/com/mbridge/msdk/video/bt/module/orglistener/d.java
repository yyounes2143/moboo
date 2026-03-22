package com.mbridge.msdk.video.bt.module.orglistener;

import android.content.Context;
import com.mbridge.msdk.foundation.entity.CampaignEx;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class d extends b {
    private h c;
    private com.mbridge.msdk.videocommon.setting.c d;
    private String e;
    private String f;
    private boolean g;
    private Context h;
    private boolean i = false;
    private boolean j = false;
    private boolean k = false;

    public d(Context context, boolean z, com.mbridge.msdk.videocommon.setting.c cVar, CampaignEx campaignEx, h hVar, String str, String str2) {
        this.c = hVar;
        this.d = cVar;
        this.e = str2;
        this.f = str;
        this.g = z;
        this.h = context;
        a(cVar, campaignEx);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0037 A[Catch: Exception -> 0x005c, TryCatch #0 {Exception -> 0x005c, blocks: (B:2:0x0000, B:4:0x0010, B:6:0x001a, B:8:0x0024, B:10:0x002d, B:12:0x0037, B:14:0x003d, B:16:0x0044, B:18:0x004e, B:20:0x0052, B:22:0x0056), top: B:25:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003d A[Catch: Exception -> 0x005c, TryCatch #0 {Exception -> 0x005c, blocks: (B:2:0x0000, B:4:0x0010, B:6:0x001a, B:8:0x0024, B:10:0x002d, B:12:0x0037, B:14:0x003d, B:16:0x0044, B:18:0x004e, B:20:0x0052, B:22:0x0056), top: B:25:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(com.mbridge.msdk.videocommon.setting.c r7, com.mbridge.msdk.foundation.entity.CampaignEx r8) {
        /*
            r6 = this;
            com.mbridge.msdk.foundation.controller.c r0 = com.mbridge.msdk.foundation.controller.c.m()     // Catch: java.lang.Exception -> L5c
            java.lang.String r0 = r0.b()     // Catch: java.lang.Exception -> L5c
            boolean r1 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Exception -> L5c
            r2 = 0
            if (r1 != 0) goto L2c
            com.mbridge.msdk.setting.h r1 = com.mbridge.msdk.setting.h.b()     // Catch: java.lang.Exception -> L5c
            com.mbridge.msdk.setting.g r0 = r1.d(r0)     // Catch: java.lang.Exception -> L5c
            if (r0 != 0) goto L22
            com.mbridge.msdk.setting.h r0 = com.mbridge.msdk.setting.h.b()     // Catch: java.lang.Exception -> L5c
            com.mbridge.msdk.setting.g r0 = r0.a()     // Catch: java.lang.Exception -> L5c
        L22:
            if (r0 == 0) goto L2c
            long r0 = r0.a0()     // Catch: java.lang.Exception -> L5c
            r4 = 1000(0x3e8, double:4.94E-321)
            long r0 = r0 * r4
            goto L2d
        L2c:
            r0 = r2
        L2d:
            com.mbridge.msdk.videocommon.setting.b r4 = com.mbridge.msdk.videocommon.setting.b.b()     // Catch: java.lang.Exception -> L5c
            com.mbridge.msdk.videocommon.setting.a r4 = r4.c()     // Catch: java.lang.Exception -> L5c
            if (r4 == 0) goto L3b
            long r2 = r4.e()     // Catch: java.lang.Exception -> L5c
        L3b:
            if (r8 == 0) goto L5c
            boolean r0 = r8.isSpareOffer(r2, r0)     // Catch: java.lang.Exception -> L5c
            r1 = 0
            if (r0 == 0) goto L56
            r0 = 1
            r8.setSpareOfferFlag(r0)     // Catch: java.lang.Exception -> L5c
            int r7 = r7.A()     // Catch: java.lang.Exception -> L5c
            if (r7 != r0) goto L52
            r8.setCbt(r0)     // Catch: java.lang.Exception -> L5c
            return
        L52:
            r8.setCbt(r1)     // Catch: java.lang.Exception -> L5c
            return
        L56:
            r8.setSpareOfferFlag(r1)     // Catch: java.lang.Exception -> L5c
            r8.setCbt(r1)     // Catch: java.lang.Exception -> L5c
        L5c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.video.bt.module.orglistener.d.a(com.mbridge.msdk.videocommon.setting.c, com.mbridge.msdk.foundation.entity.CampaignEx):void");
    }

    @Override // com.mbridge.msdk.video.bt.module.orglistener.b, com.mbridge.msdk.video.bt.module.orglistener.h
    public void b(String str, String str2) {
        super.b(str, str2);
        h hVar = this.c;
        if (hVar != null) {
            hVar.b(str, str2);
            this.c.a(5, str, str2);
        }
    }

    @Override // com.mbridge.msdk.video.bt.module.orglistener.b, com.mbridge.msdk.video.bt.module.orglistener.h
    public void a(com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        super.a(cVar);
        if (this.c == null || this.i) {
            return;
        }
        this.i = true;
        b();
        this.c.a(cVar);
        this.c.a(2, this.f, this.e);
    }

    @Override // com.mbridge.msdk.video.bt.module.orglistener.b, com.mbridge.msdk.video.bt.module.orglistener.h
    public void a(com.mbridge.msdk.foundation.same.report.metrics.c cVar, boolean z, com.mbridge.msdk.videocommon.entity.c cVar2) {
        super.a(cVar, z, cVar2);
        h hVar = this.c;
        if (hVar == null || this.k) {
            return;
        }
        this.k = true;
        hVar.a(7, this.f, this.e);
        this.c.a(cVar, z, cVar2);
    }

    @Override // com.mbridge.msdk.video.bt.module.orglistener.b, com.mbridge.msdk.video.bt.module.orglistener.h
    public void a(boolean z, int i) {
        super.a(z, i);
        h hVar = this.c;
        if (hVar == null || this.k) {
            return;
        }
        hVar.a(z, i);
    }

    @Override // com.mbridge.msdk.video.bt.module.orglistener.b, com.mbridge.msdk.video.bt.module.orglistener.h
    public void a(com.mbridge.msdk.foundation.same.report.metrics.c cVar, String str) {
        super.a(cVar, str);
        if (this.c == null || this.j) {
            return;
        }
        this.j = true;
        a();
        this.c.a(cVar, str);
        this.c.a(4, this.f, this.e);
    }

    @Override // com.mbridge.msdk.video.bt.module.orglistener.b, com.mbridge.msdk.video.bt.module.orglistener.h
    public void a(boolean z, String str, String str2) {
        super.a(z, str, str2);
        h hVar = this.c;
        if (hVar != null) {
            hVar.a(z, str, str2);
        }
    }

    @Override // com.mbridge.msdk.video.bt.module.orglistener.b, com.mbridge.msdk.video.bt.module.orglistener.h
    public void a(String str, String str2) {
        super.a(str, str2);
        h hVar = this.c;
        if (hVar != null) {
            hVar.a(str, str2);
            this.c.a(6, str, str2);
        }
    }
}
