package com.mbridge.msdk.reward.controller;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.metrics.d;
import com.mbridge.msdk.out.MBSupportMuteAdType;
import com.mbridge.msdk.out.MBridgeIds;
import com.mbridge.msdk.reward.controller.a;
import com.mbridge.msdk.videocommon.listener.InterVideoOutListener;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class b extends Handler {

    /* renamed from: a  reason: collision with root package name */
    private final a f9419a;

    public b(a aVar) {
        super(Looper.getMainLooper());
        this.f9419a = aVar;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        boolean z;
        String str;
        int i;
        int i2 = message.what;
        Object obj = message.obj;
        com.mbridge.msdk.foundation.same.report.metrics.c a2 = this.f9419a.a(message);
        CopyOnWriteArrayList<CampaignEx> i3 = this.f9419a.i();
        List<CampaignEx> h = this.f9419a.h();
        com.mbridge.msdk.reward.adapter.c n = this.f9419a.n();
        boolean s = this.f9419a.s();
        String l = this.f9419a.l();
        String p = this.f9419a.p();
        a.h k = this.f9419a.k();
        InterVideoOutListener o = this.f9419a.o();
        boolean r = this.f9419a.r();
        MBridgeIds g = this.f9419a.g();
        boolean t = this.f9419a.t();
        switch (i2) {
            case 8:
                if (i3 != null && i3.size() > 0) {
                    if (h != null && h.size() > 0) {
                        z = !TextUtils.isEmpty(h.get(0).getCMPTEntryUrl());
                    } else {
                        z = false;
                    }
                    int nscpt = i3.get(0).getNscpt();
                    if (n != null && n.a(i3, z, nscpt)) {
                        if (k != null && s) {
                            k.c(l, p, a2);
                            return;
                        }
                        return;
                    } else if (k != null && s) {
                        com.mbridge.msdk.videocommon.a.a(p);
                        com.mbridge.msdk.videocommon.a.a();
                        com.mbridge.msdk.foundation.error.b a3 = com.mbridge.msdk.foundation.error.a.a(880010, "load timeout");
                        if (a2 != null) {
                            a2.a(a3);
                        }
                        k.a(a3, a2);
                        return;
                    } else {
                        return;
                    }
                }
                return;
            case 9:
                if (o != null && s) {
                    if (r) {
                        this.f9419a.a();
                    }
                    o.onVideoLoadSuccess(g);
                    return;
                }
                return;
            case 16:
            case 18:
                if (o != null && s) {
                    if (obj instanceof String) {
                        str = obj.toString();
                    } else {
                        str = "";
                    }
                    if (a2 != null && a2.p() != null) {
                        str = a2.p().g();
                    }
                    com.mbridge.msdk.videocommon.a.a(p);
                    com.mbridge.msdk.videocommon.a.a();
                    if (r) {
                        this.f9419a.a();
                    }
                    o.onVideoLoadFail(g, str);
                    return;
                }
                return;
            case 17:
                if (o != null && s) {
                    if (r) {
                        this.f9419a.a();
                    }
                    o.onLoadSuccess(g);
                    return;
                }
                return;
            case 1001001:
                d b = d.b();
                if (t) {
                    i = MBSupportMuteAdType.INTERSTITIAL_VIDEO;
                } else {
                    i = 94;
                }
                this.f9419a.a(false, b.a(0, i, p, true, 1));
                return;
            case 1001002:
                if (n != null) {
                    if (n.l()) {
                        if (k != null) {
                            CopyOnWriteArrayList<CampaignEx> h2 = n.h();
                            if (h2 != null && h2.size() == 0) {
                                h2 = n.f();
                            }
                            this.f9419a.a(h2);
                            com.mbridge.msdk.foundation.same.report.metrics.c a4 = this.f9419a.a(h2, a2);
                            if (a4 != null) {
                                a4.b(h2);
                            }
                            k.d(l, p, a4);
                            return;
                        }
                        return;
                    } else if (n.g(false)) {
                        if (n.l()) {
                            if (k != null) {
                                n.f(false);
                                CopyOnWriteArrayList<CampaignEx> h3 = n.h();
                                if (h3 != null && h3.size() == 0) {
                                    h3 = n.f();
                                }
                                this.f9419a.a(h3);
                                com.mbridge.msdk.foundation.same.report.metrics.c a5 = this.f9419a.a(h3, a2);
                                if (a5 != null) {
                                    a5.b(h3);
                                }
                                k.d(l, p, a5);
                                return;
                            }
                            return;
                        }
                        n.h(false);
                        if (n.g(true)) {
                            if (n.l()) {
                                if (k != null) {
                                    n.f(true);
                                    CopyOnWriteArrayList<CampaignEx> h4 = n.h();
                                    if (h4 != null && h4.size() == 0) {
                                        h4 = n.f();
                                    }
                                    this.f9419a.a(h4);
                                    com.mbridge.msdk.foundation.same.report.metrics.c a6 = this.f9419a.a(h4, a2);
                                    if (a6 != null) {
                                        a6.b(h4);
                                    }
                                    k.d(l, p, a6);
                                    return;
                                }
                                return;
                            }
                            n.h(true);
                            return;
                        }
                        return;
                    } else if (n.g(true)) {
                        if (n.l()) {
                            if (k != null) {
                                n.f(true);
                                CopyOnWriteArrayList<CampaignEx> h5 = n.h();
                                if (h5 != null && h5.size() == 0) {
                                    h5 = n.f();
                                }
                                this.f9419a.a(h5);
                                com.mbridge.msdk.foundation.same.report.metrics.c a7 = this.f9419a.a(h5, a2);
                                if (a7 != null) {
                                    a7.b(h5);
                                }
                                k.d(l, p, a7);
                                return;
                            }
                            return;
                        }
                        n.h(true);
                        return;
                    } else {
                        return;
                    }
                }
                return;
            default:
                return;
        }
    }
}
