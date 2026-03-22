package com.applovin.impl;

import android.text.TextUtils;
import android.webkit.URLUtil;
import com.applovin.impl.a0;
import com.applovin.impl.sdk.network.a;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class i5 extends w4 {
    private final b g;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface b {
        void a(a0.b bVar);

        void a(String str);
    }

    public i5(com.applovin.impl.sdk.k kVar, b bVar) {
        super("TaskFetchDeveloperUri", kVar);
        this.g = bVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        String valueOf = String.valueOf(this.f3803a.B().D().get(CampaignEx.JSON_KEY_PACKAGE_NAME));
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.c;
            String str = this.b;
            oVar.a(str, "Looking up developer URI for package name: " + valueOf);
        }
        a.C0024a c = com.applovin.impl.sdk.network.a.a(this.f3803a).c("GET");
        this.f3803a.q0().a(new a(c.b("https://play.google.com/store/apps/details?id=" + valueOf).a((Object) "").a(false).a(), this.f3803a));
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
                    this.c.b(this.b, "No developer URI found - response from the Play Store is empty");
                }
                i5.this.g.a(a0.b.APP_DETAILS_NOT_FOUND);
                return;
            }
            Matcher matcher = Pattern.compile("(?<=\"appstore:developer_url\" content=\").*?(?=\">)").matcher(str2);
            if (!matcher.find()) {
                if (com.applovin.impl.sdk.o.a()) {
                    this.c.b(this.b, "No developer URI found - unable to find the developer_url meta tag from the Play Store listing");
                }
                i5.this.g.a(a0.b.INVALID_DEVELOPER_URI);
                return;
            }
            String group = matcher.group();
            if (!URLUtil.isValidUrl(group)) {
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o oVar = this.c;
                    String str3 = this.b;
                    oVar.b(str3, "Developer URI (" + group + ") is not valid");
                }
                i5.this.g.a(a0.b.INVALID_DEVELOPER_URI);
                return;
            }
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar2 = this.c;
                String str4 = this.b;
                oVar2.a(str4, "Found developer URI: " + group);
            }
            i5.this.g.a(group);
        }

        @Override // com.applovin.impl.z5, com.applovin.impl.m0.e
        public void a(String str, int i, String str2, String str3) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.c;
                String str4 = this.b;
                oVar.b(str4, "Unable to fetch app details due to: " + str2 + ", and received error code: " + i);
            }
            i5.this.g.a(a0.b.APP_DETAILS_NOT_FOUND);
        }
    }
}
