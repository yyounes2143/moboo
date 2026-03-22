package com.applovin.impl;

import android.text.TextUtils;
import android.webkit.WebView;
import com.applovin.impl.sdk.utils.StringUtils;
import com.iab.omid.library.applovin.adsession.AdSession;
import com.iab.omid.library.applovin.adsession.AdSessionConfiguration;
import com.iab.omid.library.applovin.adsession.AdSessionContext;
import com.iab.omid.library.applovin.adsession.CreativeType;
import com.iab.omid.library.applovin.adsession.ImpressionType;
import com.iab.omid.library.applovin.adsession.Owner;
import com.iab.omid.library.applovin.adsession.VerificationScriptResource;
import com.iab.omid.library.applovin.adsession.media.InteractionType;
import com.iab.omid.library.applovin.adsession.media.MediaEvents;
import com.iab.omid.library.applovin.adsession.media.Position;
import com.iab.omid.library.applovin.adsession.media.VastProperties;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class y3 extends s3 {
    static final /* synthetic */ boolean p = true;
    private final a7 h;
    private final AtomicBoolean i;
    private MediaEvents j;
    private final VastProperties k;
    private final AtomicBoolean l;
    private final AtomicBoolean m;
    private final AtomicBoolean n;
    private final AtomicBoolean o;

    public y3(a7 a7Var) {
        super(a7Var);
        this.i = new AtomicBoolean();
        this.l = new AtomicBoolean();
        this.m = new AtomicBoolean();
        this.n = new AtomicBoolean();
        this.o = new AtomicBoolean();
        this.h = a7Var;
        float u1 = (float) a7Var.u1();
        if (a7Var.u1() == -1) {
            this.k = VastProperties.createVastPropertiesForNonSkippableMedia(true, Position.STANDALONE);
        } else {
            this.k = VastProperties.createVastPropertiesForSkippableMedia(u1, true, Position.STANDALONE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k() {
        this.j.bufferFinish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l() {
        this.j.bufferStart();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void m() {
        this.j.adUserInteraction(InteractionType.CLICK);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n() {
        this.j.complete();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void o() {
        this.j.firstQuartile();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void p() {
        this.g.loaded(this.k);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void q() {
        this.j.midpoint();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void r() {
        this.j.pause();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void s() {
        this.j.resume();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t() {
        this.j.skipped();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void u() {
        this.j.thirdQuartile();
    }

    public void A() {
        b("track resumed", new Runnable() { // from class: com.applovin.impl.Cccccc
            @Override // java.lang.Runnable
            public final void run() {
                y3.this.s();
            }
        });
    }

    public void B() {
        b("track skipped", new Runnable() { // from class: com.applovin.impl.Zzzz
            @Override // java.lang.Runnable
            public final void run() {
                y3.this.t();
            }
        });
    }

    public void C() {
        if (this.o.compareAndSet(false, true)) {
            b("track third quartile", new Runnable() { // from class: com.applovin.impl.Ccccccccc
                @Override // java.lang.Runnable
                public final void run() {
                    y3.this.u();
                }
            });
        }
    }

    @Override // com.applovin.impl.s3
    public AdSessionContext a(WebView webView) {
        VerificationScriptResource createVerificationScriptResourceWithoutParameters;
        if (p || this.h.n1() != null) {
            ArrayList arrayList = new ArrayList();
            for (b7 b7Var : this.h.n1().b()) {
                List<h7> c = b7Var.c();
                if (c.isEmpty()) {
                    m7.a(b7Var.b(), f7.FAILED_TO_LOAD_RESOURCE, this.b);
                } else {
                    ArrayList arrayList2 = new ArrayList();
                    for (h7 h7Var : c) {
                        if (CampaignEx.KEY_OMID.equalsIgnoreCase(h7Var.b())) {
                            arrayList2.add(h7Var);
                        }
                    }
                    if (arrayList2.isEmpty()) {
                        m7.a(b7Var.b(), f7.API_FRAMEWORK_OR_LANGUAGE_TYPE_NOT_SUPPORTED, this.b);
                    } else {
                        ArrayList arrayList3 = new ArrayList();
                        int size = arrayList2.size();
                        int i = 0;
                        int i2 = 0;
                        while (i2 < size) {
                            Object obj = arrayList2.get(i2);
                            i2++;
                            try {
                                arrayList3.add(new URL(((h7) obj).c()));
                            } catch (Throwable th) {
                                if (com.applovin.impl.sdk.o.a()) {
                                    this.c.a(this.d, "Failed to parse JavaScript resource url", th);
                                }
                            }
                        }
                        if (arrayList3.isEmpty()) {
                            m7.a(b7Var.b(), f7.FAILED_TO_LOAD_RESOURCE, this.b);
                        } else {
                            String e = b7Var.e();
                            String d = b7Var.d();
                            if (StringUtils.isValidString(e) && !StringUtils.isValidString(d)) {
                                m7.a(b7Var.b(), f7.FAILED_TO_LOAD_RESOURCE, this.b);
                            } else {
                                int size2 = arrayList3.size();
                                while (i < size2) {
                                    Object obj2 = arrayList3.get(i);
                                    i++;
                                    URL url = (URL) obj2;
                                    if (StringUtils.isValidString(e)) {
                                        createVerificationScriptResourceWithoutParameters = VerificationScriptResource.createVerificationScriptResourceWithParameters(d, url, e);
                                    } else {
                                        createVerificationScriptResourceWithoutParameters = VerificationScriptResource.createVerificationScriptResourceWithoutParameters(url);
                                    }
                                    arrayList.add(createVerificationScriptResourceWithoutParameters);
                                }
                            }
                        }
                    }
                }
            }
            String a2 = this.b.d0().a();
            if (TextUtils.isEmpty(a2)) {
                if (com.applovin.impl.sdk.o.a()) {
                    this.c.b(this.d, "JavaScript SDK content not loaded successfully");
                }
                return null;
            }
            try {
                return AdSessionContext.createNativeAdSessionContext(this.b.d0().b(), a2, arrayList, this.h.getOpenMeasurementContentUrl(), this.h.getOpenMeasurementCustomReferenceData());
            } catch (Throwable th2) {
                if (com.applovin.impl.sdk.o.a()) {
                    this.c.a(this.d, "Failed to create ad session context", th2);
                    return null;
                }
                return null;
            }
        }
        throw new AssertionError();
    }

    public void b(final float f, final boolean z) {
        if (this.l.compareAndSet(false, true)) {
            b("track started", new Runnable() { // from class: com.applovin.impl.Cccccccc
                @Override // java.lang.Runnable
                public final void run() {
                    y3.this.a(f, z);
                }
            });
        }
    }

    @Override // com.applovin.impl.s3
    public void h() {
        b("track loaded", new Runnable() { // from class: com.applovin.impl.Cccccccccc
            @Override // java.lang.Runnable
            public final void run() {
                y3.this.p();
            }
        });
    }

    public void i() {
        if (this.i.compareAndSet(true, false)) {
            b("buffer finished", new Runnable() { // from class: com.applovin.impl.Zzz
                @Override // java.lang.Runnable
                public final void run() {
                    y3.this.k();
                }
            });
        }
    }

    public void j() {
        if (this.i.compareAndSet(false, true)) {
            b("buffer started", new Runnable() { // from class: com.applovin.impl.Zz
                @Override // java.lang.Runnable
                public final void run() {
                    y3.this.l();
                }
            });
        }
    }

    public void v() {
        b("track clicked", new Runnable() { // from class: com.applovin.impl.Zzzzzz
            @Override // java.lang.Runnable
            public final void run() {
                y3.this.m();
            }
        });
    }

    public void w() {
        b("track completed", new Runnable() { // from class: com.applovin.impl.Ccccc
            @Override // java.lang.Runnable
            public final void run() {
                y3.this.n();
            }
        });
    }

    public void x() {
        if (this.m.compareAndSet(false, true)) {
            b("track first quartile", new Runnable() { // from class: com.applovin.impl.Cccc
                @Override // java.lang.Runnable
                public final void run() {
                    y3.this.o();
                }
            });
        }
    }

    public void y() {
        if (this.n.compareAndSet(false, true)) {
            b("track midpoint", new Runnable() { // from class: com.applovin.impl.Zzzzz
                @Override // java.lang.Runnable
                public final void run() {
                    y3.this.q();
                }
            });
        }
    }

    public void z() {
        b("track paused", new Runnable() { // from class: com.applovin.impl.Ccccccccccc
            @Override // java.lang.Runnable
            public final void run() {
                y3.this.r();
            }
        });
    }

    public void b(final boolean z) {
        b("track volume changed", new Runnable() { // from class: com.applovin.impl.Ccccccc
            @Override // java.lang.Runnable
            public final void run() {
                y3.this.a(z);
            }
        });
    }

    @Override // com.applovin.impl.s3
    public AdSessionConfiguration a() {
        try {
            CreativeType creativeType = CreativeType.VIDEO;
            ImpressionType impressionType = ImpressionType.BEGIN_TO_RENDER;
            Owner owner = Owner.NATIVE;
            return AdSessionConfiguration.createAdSessionConfiguration(creativeType, impressionType, owner, owner, false);
        } catch (Throwable th) {
            if (com.applovin.impl.sdk.o.a()) {
                this.c.a(this.d, "Failed to create ad session configuration", th);
                return null;
            }
            return null;
        }
    }

    @Override // com.applovin.impl.s3
    public void a(AdSession adSession) {
        try {
            this.j = MediaEvents.createMediaEvents(adSession);
        } catch (Throwable th) {
            if (com.applovin.impl.sdk.o.a()) {
                this.c.a(this.d, "Failed to create media events", th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(float f, boolean z) {
        this.j.start(f, z ? 0.0f : 1.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(boolean z) {
        this.j.volumeChange(z ? 0.0f : 1.0f);
    }
}
