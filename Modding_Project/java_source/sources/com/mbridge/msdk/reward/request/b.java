package com.mbridge.msdk.reward.request;

import android.content.Context;
import android.os.Build;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.net.wrapper.e;
import com.mbridge.msdk.foundation.tools.f;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.t;
import com.mbridge.msdk.out.MBConfiguration;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyEnum;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class b extends com.mbridge.msdk.foundation.same.net.wrapper.b {
    public b(Context context) {
        super(context);
    }

    @Override // com.mbridge.msdk.foundation.same.net.wrapper.a, com.mbridge.msdk.foundation.same.net.wrapper.c
    public void addExtraParams(String str, e eVar) {
        super.addExtraParams(str, eVar);
        eVar.a(TPDownloadProxyEnum.USER_PLATFORM, "1");
        eVar.a(TPDownloadProxyEnum.USER_OS_VERSION, Build.VERSION.RELEASE);
        eVar.a(CampaignEx.JSON_KEY_PACKAGE_NAME, k0.t(this.mContext));
        eVar.a(TPDownloadProxyEnum.USER_APP_VERSION, k0.B(this.mContext));
        eVar.a(TPDownloadProxyEnum.USER_APP_VERSION_CODE, k0.A(this.mContext) + "");
        eVar.a("orientation", k0.F(this.mContext) + "");
        eVar.a("model", k0.n());
        eVar.a("brand", k0.s());
        eVar.a("gaid", "");
        eVar.a("gaid2", f.c());
        int s = k0.s(this.mContext);
        eVar.a(TPDownloadProxyEnum.USER_NETWORK_TYPE, s + "");
        eVar.a("network_str", k0.a(this.mContext, s) + "");
        eVar.a("language", k0.p(this.mContext));
        eVar.a("timezone", k0.w());
        eVar.a("useragent", k0.i());
        eVar.a("sdk_version", MBConfiguration.SDK_VERSION);
        eVar.a("screen_size", k0.n(this.mContext) + "x" + k0.m(this.mContext));
        if (com.mbridge.msdk.util.b.a()) {
            eVar.a("gp_version", t.d(this.mContext));
        }
        eVar.a("version_flag", "1");
        com.mbridge.msdk.foundation.same.net.wrapper.f.a(eVar, this.mContext);
        com.mbridge.msdk.foundation.same.net.wrapper.f.b(eVar);
        com.mbridge.msdk.foundation.same.net.wrapper.f.d(eVar);
        com.mbridge.msdk.foundation.same.net.wrapper.f.j(eVar);
    }
}
