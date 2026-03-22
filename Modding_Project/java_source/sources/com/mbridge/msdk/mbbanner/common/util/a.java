package com.mbridge.msdk.mbbanner.common.util;

import android.os.Handler;
import android.os.Looper;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.tools.o0;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class a {
    private static final String c = "a";

    /* renamed from: a  reason: collision with root package name */
    private final Handler f9209a = new Handler(Looper.getMainLooper());
    private boolean b;

    /* compiled from: Proguard */
    /* renamed from: com.mbridge.msdk.mbbanner.common.util.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public class RunnableC0120a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.mbbanner.common.listener.b f9210a;
        final /* synthetic */ String b;
        final /* synthetic */ CampaignUnit c;

        public RunnableC0120a(com.mbridge.msdk.mbbanner.common.listener.b bVar, String str, CampaignUnit campaignUnit) {
            this.f9210a = bVar;
            this.b = str;
            this.c = campaignUnit;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.mbridge.msdk.mbbanner.common.listener.b bVar = this.f9210a;
            if (bVar != null) {
                bVar.a(this.b, this.c, a.this.b);
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.mbbanner.common.listener.b f9211a;
        final /* synthetic */ com.mbridge.msdk.foundation.error.b b;

        public b(com.mbridge.msdk.mbbanner.common.listener.b bVar, com.mbridge.msdk.foundation.error.b bVar2) {
            this.f9211a = bVar;
            this.b = bVar2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f9211a != null) {
                this.b.a(a.this.b);
                this.f9211a.a(this.b);
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.mbbanner.common.listener.b f9212a;
        final /* synthetic */ String b;
        final /* synthetic */ int c;

        public c(com.mbridge.msdk.mbbanner.common.listener.b bVar, String str, int i) {
            this.f9212a = bVar;
            this.b = str;
            this.c = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.mbridge.msdk.mbbanner.common.listener.b bVar = this.f9212a;
            if (bVar != null) {
                bVar.a(this.b, this.c, a.this.b);
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.mbbanner.common.listener.b f9213a;
        final /* synthetic */ com.mbridge.msdk.foundation.error.b b;

        public d(com.mbridge.msdk.mbbanner.common.listener.b bVar, com.mbridge.msdk.foundation.error.b bVar2) {
            this.f9213a = bVar;
            this.b = bVar2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f9213a != null) {
                this.b.a(a.this.b);
                this.f9213a.b(this.b);
            }
        }
    }

    public void b(com.mbridge.msdk.mbbanner.common.listener.b bVar, com.mbridge.msdk.foundation.error.b bVar2) {
        String str = c;
        o0.b(str, "postResourceFail unitId=" + bVar2);
        this.f9209a.post(new d(bVar, bVar2));
    }

    public void a(boolean z) {
        this.b = z;
    }

    public void a(com.mbridge.msdk.mbbanner.common.listener.b bVar, CampaignUnit campaignUnit, String str) {
        String str2 = c;
        o0.b(str2, "postCampaignSuccess unitId=" + str);
        this.f9209a.post(new RunnableC0120a(bVar, str, campaignUnit));
    }

    public void a(com.mbridge.msdk.mbbanner.common.listener.b bVar, com.mbridge.msdk.foundation.error.b bVar2) {
        this.f9209a.post(new b(bVar, bVar2));
    }

    public void a(com.mbridge.msdk.mbbanner.common.listener.b bVar, String str, int i) {
        String str2 = c;
        o0.b(str2, "postResourceSuccess unitId=" + str);
        this.f9209a.post(new c(bVar, str, i));
    }
}
