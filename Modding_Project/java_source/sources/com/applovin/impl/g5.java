package com.applovin.impl;

import android.net.Uri;
import android.text.TextUtils;
import com.applovin.impl.a0;
import java.util.ArrayList;
import java.util.Arrays;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class g5 extends w4 {
    private final b g;
    private final String h;
    private String i;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface b {
        void a(a0.b bVar, String str);

        void a(String str, String str2);
    }

    public g5(com.applovin.impl.sdk.k kVar, String str, b bVar) {
        super("TaskFetchAppAdsContent", kVar);
        this.h = str;
        this.g = bVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        ArrayList arrayList = new ArrayList(Arrays.asList(Uri.parse(this.h).getAuthority().split("\\.")));
        if (arrayList.size() > 0) {
            String str = (String) arrayList.get(0);
            if ("www".equals(str) || "m".equals(str)) {
                arrayList.remove(0);
            }
        }
        String join = TextUtils.join(".", arrayList);
        Uri build = new Uri.Builder().scheme("https").authority(join).appendPath("app-ads.txt").build();
        com.applovin.impl.sdk.network.a a2 = com.applovin.impl.sdk.network.a.a(this.f3803a).c("GET").b(build.toString()).a(new Uri.Builder().scheme("http").authority(join).appendPath("app-ads.txt").build().toString()).a((Object) "").a(false).a();
        this.i = build.toString();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.c;
            String str2 = this.b;
            oVar.a(str2, "Looking up app-ads.txt at " + this.i);
        }
        this.f3803a.q0().a(new a(a2, this.f3803a));
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class a extends z5 {
        public a(com.applovin.impl.sdk.network.a aVar, com.applovin.impl.sdk.k kVar) {
            super(aVar, kVar);
        }

        @Override // com.applovin.impl.z5, com.applovin.impl.m0.e
        public void a(String str, String str2, int i) {
            if (TextUtils.isEmpty(str2)) {
                if (com.applovin.impl.sdk.o.a()) {
                    this.c.b(this.b, "No app-ads.txt found");
                }
                g5.this.g.a(a0.b.APPADSTXT_NOT_FOUND, g5.this.i);
                return;
            }
            if (com.applovin.impl.sdk.o.a()) {
                this.c.a(this.b, "Found app-ads.txt");
            }
            g5.this.g.a(str2, g5.this.i);
        }

        @Override // com.applovin.impl.z5, com.applovin.impl.m0.e
        public void a(String str, int i, String str2, String str3) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.c;
                String str4 = this.b;
                oVar.b(str4, "Unable to fetch app-ads.txt due to: " + str2 + ", and received error code: " + i);
            }
            g5.this.g.a(a0.b.APPADSTXT_NOT_FOUND, g5.this.i);
        }
    }
}
