package com.mbridge.msdk.reward.report.metrics;

import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.metrics.c;
import com.mbridge.msdk.foundation.same.report.metrics.d;
import com.mbridge.msdk.videocommon.setting.b;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static volatile a f9427a;

    private a() {
    }

    public static a a() {
        if (f9427a == null) {
            synchronized (a.class) {
                try {
                    if (f9427a == null) {
                        f9427a = new a();
                    }
                } finally {
                }
            }
        }
        return f9427a;
    }

    private void b(c cVar) {
        List<CampaignEx> j;
        if (cVar != null) {
            try {
                int a2 = cVar.a();
                String w = cVar.w();
                boolean z = false;
                if (TextUtils.isEmpty(w) && (j = cVar.j()) != null && j.size() > 0 && j.get(0) != null) {
                    w = j.get(0).getCampaignUnitId();
                    a2 = j.get(0).getAdType();
                    cVar.a(a2);
                    cVar.m(w);
                }
                if (a2 == 287) {
                    z = true;
                }
                com.mbridge.msdk.videocommon.setting.c a3 = b.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), w, z);
                if (a3 != null) {
                    cVar.l(a3.x());
                    cVar.n(a3.a());
                }
            } catch (Exception e) {
                if (MBridgeConstans.DEBUG) {
                    e.printStackTrace();
                }
            }
        }
    }

    public void a(String str, c cVar) {
        try {
            a(cVar);
            b(cVar);
            d.b().b(cVar);
            d.b().b(str, cVar, null);
        } catch (Exception e) {
            if (MBridgeConstans.DEBUG) {
                e.printStackTrace();
            }
        }
    }

    private void a(c cVar) {
        if (cVar == null) {
            try {
                cVar = new c();
            } catch (Exception e) {
                if (MBridgeConstans.DEBUG) {
                    e.printStackTrace();
                    return;
                }
                return;
            }
        }
        com.mbridge.msdk.videocommon.setting.a c = b.b().c();
        if (c != null) {
            cVar.k(c.a());
            cVar.j(c.f());
        }
    }
}
