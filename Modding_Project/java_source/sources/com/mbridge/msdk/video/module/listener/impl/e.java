package com.mbridge.msdk.video.module.listener.impl;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class e implements com.mbridge.msdk.foundation.same.image.c {

    /* renamed from: a  reason: collision with root package name */
    protected ImageView f9883a;
    private CampaignEx b;
    private String c;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f9884a;

        public a(String str) {
            this.f9884a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                com.mbridge.msdk.foundation.db.n a2 = com.mbridge.msdk.foundation.db.n.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
                if (e.this.b == null) {
                    o0.a("ImageLoaderListener", "campaign is null");
                    return;
                }
                com.mbridge.msdk.foundation.entity.m mVar = new com.mbridge.msdk.foundation.entity.m();
                mVar.j("2000044");
                mVar.c(k0.s(com.mbridge.msdk.foundation.controller.c.m().d()));
                mVar.b(e.this.b.getId());
                mVar.i(e.this.b.getImageUrl());
                mVar.n(e.this.b.getRequestId());
                mVar.o(e.this.b.getRequestIdNotice());
                mVar.u(e.this.c);
                mVar.m(this.f9884a);
                a2.a(mVar);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public e(ImageView imageView) {
        this.f9883a = imageView;
    }

    @Override // com.mbridge.msdk.foundation.same.image.c
    public void onFailedLoad(String str, String str2) {
        a aVar = new a(str);
        if (com.mbridge.msdk.foundation.controller.d.a().e()) {
            com.mbridge.msdk.foundation.same.threadpool.a.b().execute(aVar);
        } else {
            aVar.run();
        }
        o0.b("ImageLoaderListener", "desc:" + str);
    }

    @Override // com.mbridge.msdk.foundation.same.image.c
    public void onSuccessLoad(Bitmap bitmap, String str) {
        try {
            if (bitmap == null) {
                o0.b("ImageLoaderListener", "bitmap=null");
            } else if (this.f9883a != null && !bitmap.isRecycled()) {
                this.f9883a.setImageBitmap(bitmap);
                this.f9883a.setVisibility(0);
            }
        } catch (Throwable th) {
            if (MBridgeConstans.DEBUG) {
                th.printStackTrace();
            }
        }
    }

    public e(ImageView imageView, CampaignEx campaignEx, String str) {
        this.f9883a = imageView;
        this.b = campaignEx;
        this.c = str;
    }
}
