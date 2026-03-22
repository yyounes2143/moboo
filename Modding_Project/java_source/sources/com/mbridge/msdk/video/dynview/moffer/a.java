package com.mbridge.msdk.video.dynview.moffer;

import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.video.dynview.listener.g;
import com.mbridge.msdk.video.module.MBridgeNativeEndCardView;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class a {
    private static volatile a c;

    /* renamed from: a  reason: collision with root package name */
    private Map<String, SoftReference<MOfferModel>> f9777a = new ConcurrentHashMap();
    private int b = 500;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MOfferModel f9779a;

        public b(MOfferModel mOfferModel) {
            this.f9779a = mOfferModel;
        }

        @Override // java.lang.Runnable
        public void run() {
            MOfferModel mOfferModel = this.f9779a;
            if (mOfferModel != null) {
                mOfferModel.checkViewVisiableState();
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class c implements g {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MOfferModel f9780a;
        final /* synthetic */ ViewGroup b;

        public c(MOfferModel mOfferModel, ViewGroup viewGroup) {
            this.f9780a = mOfferModel;
            this.b = viewGroup;
        }

        @Override // com.mbridge.msdk.video.dynview.listener.g
        public void a(int i, String str) {
        }

        @Override // com.mbridge.msdk.video.dynview.listener.g
        public void a(ViewGroup viewGroup, CampaignUnit campaignUnit) {
            if (viewGroup == null || campaignUnit == null) {
                return;
            }
            try {
                a.this.a(this.f9780a, this.b, viewGroup, campaignUnit);
            } catch (Exception e) {
                o0.b("MOfferEnergize", e.getMessage());
            }
        }
    }

    private a() {
    }

    public boolean b(String str) {
        if (this.f9777a == null || TextUtils.isEmpty(str)) {
            return false;
        }
        return this.f9777a.containsKey(str);
    }

    public static a a() {
        a aVar;
        if (c == null) {
            synchronized (a.class) {
                try {
                    if (c == null) {
                        c = new a();
                    }
                    aVar = c;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return aVar;
        }
        return c;
    }

    /* compiled from: Proguard */
    /* renamed from: com.mbridge.msdk.video.dynview.moffer.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public class C0173a implements g {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ViewGroup f9778a;
        final /* synthetic */ MOfferModel b;

        public C0173a(ViewGroup viewGroup, MOfferModel mOfferModel) {
            this.f9778a = viewGroup;
            this.b = mOfferModel;
        }

        @Override // com.mbridge.msdk.video.dynview.listener.g
        public void a(ViewGroup viewGroup, CampaignUnit campaignUnit) {
            ViewGroup viewGroup2;
            if (viewGroup == null || (viewGroup2 = this.f9778a) == null) {
                return;
            }
            try {
                a.this.a(this.b, viewGroup2, viewGroup, campaignUnit);
            } catch (Exception e) {
                o0.b("MOfferEnergize", e.getMessage());
            }
        }

        @Override // com.mbridge.msdk.video.dynview.listener.g
        public void a(int i, String str) {
            o0.b("MOfferEnergize", str);
        }
    }

    public void b() {
        MOfferModel mOfferModel;
        try {
            Map<String, SoftReference<MOfferModel>> map = this.f9777a;
            if (map != null) {
                for (SoftReference<MOfferModel> softReference : map.values()) {
                    if (softReference != null && (mOfferModel = softReference.get()) != null) {
                        mOfferModel.mofDestroy();
                    }
                }
                this.f9777a.clear();
            }
        } catch (Exception e) {
            o0.b("MOfferEnergize", e.getMessage());
        }
    }

    public void a(ViewGroup viewGroup, String str, com.mbridge.msdk.video.module.listener.a aVar) {
        if (viewGroup == null || aVar == null || this.f9777a == null || TextUtils.isEmpty(str) || !this.f9777a.containsKey(str)) {
            return;
        }
        SoftReference<MOfferModel> softReference = this.f9777a.get(str);
        MOfferModel mOfferModel = (softReference == null || softReference.get() == null) ? null : softReference.get();
        if (mOfferModel == null) {
            return;
        }
        a(mOfferModel, viewGroup, aVar);
    }

    private void a(MOfferModel mOfferModel, ViewGroup viewGroup, com.mbridge.msdk.video.module.listener.a aVar) {
        if (mOfferModel == null) {
            return;
        }
        mOfferModel.setMoreOfferListener(new C0173a(viewGroup, mOfferModel), aVar);
        mOfferModel.showView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(MOfferModel mOfferModel, ViewGroup viewGroup, ViewGroup viewGroup2, CampaignUnit campaignUnit) {
        if (mOfferModel == null || viewGroup == null || viewGroup2 == null || campaignUnit == null) {
            return;
        }
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) viewGroup2.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        }
        layoutParams.addRule(12, -1);
        int a2 = t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 5.0f);
        layoutParams.setMargins(a2, a2, a2, a2);
        a(viewGroup2);
        viewGroup2.setLayoutParams(layoutParams);
        ViewGroup viewGroup3 = (ViewGroup) viewGroup2.getParent();
        if (viewGroup3 != null) {
            viewGroup3.removeAllViews();
        }
        if (mOfferModel.getECParentTemplateCode() == 1302) {
            a(mOfferModel, viewGroup, viewGroup2);
        } else {
            a(viewGroup, viewGroup2);
        }
        new com.mbridge.msdk.video.dynview.ui.b().a(viewGroup2, 0, t0.g(com.mbridge.msdk.foundation.controller.c.m().d()), 0, t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 100.0f), 0L);
        if (viewGroup instanceof MBridgeNativeEndCardView) {
            ((MBridgeNativeEndCardView) viewGroup).setMoreOfferCampaignUnit(campaignUnit);
        }
        viewGroup.postDelayed(new b(mOfferModel), this.b + 500);
    }

    private void a(ViewGroup viewGroup, ViewGroup viewGroup2) {
        RelativeLayout relativeLayout;
        try {
            if (viewGroup instanceof MBridgeNativeEndCardView) {
                if (((MBridgeNativeEndCardView) viewGroup).isDyXmlSuccess()) {
                    relativeLayout = (RelativeLayout) viewGroup.findViewById(-1642631508);
                } else {
                    relativeLayout = (RelativeLayout) viewGroup.findViewById(a("mbridge_native_ec_layout"));
                }
                ArrayList arrayList = new ArrayList();
                arrayList.add(relativeLayout);
                new com.mbridge.msdk.video.dynview.ui.b().a(arrayList, 0, t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 100.0f), this.b);
            }
            RelativeLayout relativeLayout2 = (RelativeLayout) viewGroup.findViewById(a("mbridge_reward_moreoffer_layout"));
            if (relativeLayout2 == null) {
                relativeLayout2 = (RelativeLayout) viewGroup.findViewById(-82036151);
            }
            if (relativeLayout2 != null) {
                if (viewGroup.isShown()) {
                    relativeLayout2.setVisibility(0);
                    relativeLayout2.addView(viewGroup2);
                    return;
                }
                return;
            }
            viewGroup.addView(viewGroup2);
        } catch (Exception e) {
            o0.b("MOfferEnergize", e.getMessage());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0042 A[Catch: Exception -> 0x002e, TryCatch #0 {Exception -> 0x002e, blocks: (B:4:0x0003, B:6:0x0009, B:8:0x0013, B:10:0x0021, B:15:0x0035, B:17:0x0039, B:19:0x0042, B:21:0x0058, B:20:0x004c, B:22:0x0084, B:24:0x0088, B:26:0x0091, B:28:0x00d1, B:30:0x00f8, B:32:0x0107, B:27:0x00ad), top: B:38:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x004c A[Catch: Exception -> 0x002e, TryCatch #0 {Exception -> 0x002e, blocks: (B:4:0x0003, B:6:0x0009, B:8:0x0013, B:10:0x0021, B:15:0x0035, B:17:0x0039, B:19:0x0042, B:21:0x0058, B:20:0x004c, B:22:0x0084, B:24:0x0088, B:26:0x0091, B:28:0x00d1, B:30:0x00f8, B:32:0x0107, B:27:0x00ad), top: B:38:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0088 A[Catch: Exception -> 0x002e, TryCatch #0 {Exception -> 0x002e, blocks: (B:4:0x0003, B:6:0x0009, B:8:0x0013, B:10:0x0021, B:15:0x0035, B:17:0x0039, B:19:0x0042, B:21:0x0058, B:20:0x004c, B:22:0x0084, B:24:0x0088, B:26:0x0091, B:28:0x00d1, B:30:0x00f8, B:32:0x0107, B:27:0x00ad), top: B:38:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0107 A[Catch: Exception -> 0x002e, TRY_LEAVE, TryCatch #0 {Exception -> 0x002e, blocks: (B:4:0x0003, B:6:0x0009, B:8:0x0013, B:10:0x0021, B:15:0x0035, B:17:0x0039, B:19:0x0042, B:21:0x0058, B:20:0x004c, B:22:0x0084, B:24:0x0088, B:26:0x0091, B:28:0x00d1, B:30:0x00f8, B:32:0x0107, B:27:0x00ad), top: B:38:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(com.mbridge.msdk.video.dynview.moffer.MOfferModel r8, android.view.ViewGroup r9, android.view.ViewGroup r10) {
        /*
            Method dump skipped, instructions count: 275
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.video.dynview.moffer.a.a(com.mbridge.msdk.video.dynview.moffer.MOfferModel, android.view.ViewGroup, android.view.ViewGroup):void");
    }

    private void a(ViewGroup viewGroup) {
        View findViewById;
        if (viewGroup != null && viewGroup.getBackground() == null) {
            try {
                Drawable drawable = com.mbridge.msdk.foundation.controller.c.m().d().getResources().getDrawable(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_more_offer_default_bg", "drawable"));
                if (drawable != null && (findViewById = viewGroup.findViewById(a("mbridge_moreoffer_hls"))) != null) {
                    findViewById.setBackground(drawable);
                }
            } catch (Exception e) {
                o0.b("MOfferEnergize", e.getMessage());
            }
        }
    }

    public void a(CampaignEx campaignEx, int i) {
        if (campaignEx == null) {
            return;
        }
        String str = campaignEx.getRequestId() + "_" + campaignEx.getId();
        if (this.f9777a == null) {
            this.f9777a = new ConcurrentHashMap();
        }
        if (this.f9777a.containsKey(str)) {
            return;
        }
        try {
            MOfferModel mOfferModel = new MOfferModel();
            mOfferModel.setFromType(i);
            SoftReference<MOfferModel> softReference = new SoftReference<>(mOfferModel);
            if (softReference.get() != null) {
                this.f9777a.put(str, softReference);
                softReference.get().buildMofferAd(campaignEx);
            }
        } catch (Exception e) {
            o0.b("MOfferEnergize", e.getMessage());
        }
    }

    public void a(CampaignEx campaignEx, ViewGroup viewGroup, com.mbridge.msdk.video.module.listener.a aVar, int i) {
        if (campaignEx == null) {
            return;
        }
        String str = campaignEx.getRequestId() + "_" + campaignEx.getId();
        if (this.f9777a == null) {
            this.f9777a = new ConcurrentHashMap();
        }
        try {
            MOfferModel mOfferModel = new MOfferModel();
            mOfferModel.setFromType(i);
            SoftReference<MOfferModel> softReference = new SoftReference<>(mOfferModel);
            if (softReference.get() != null) {
                this.f9777a.put(str, softReference);
                MOfferModel mOfferModel2 = softReference.get();
                mOfferModel2.setMoreOfferListener(new c(mOfferModel2, viewGroup), aVar);
                mOfferModel2.setIsRetry(true);
                mOfferModel2.buildMofferAd(campaignEx);
            }
        } catch (Exception e) {
            o0.b("MOfferEnergize", e.getMessage());
        }
    }

    private int a(String str) {
        return g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), str, "id");
    }
}
