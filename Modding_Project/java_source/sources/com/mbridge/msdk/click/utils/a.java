package com.mbridge.msdk.click.utils;

import android.content.Context;
import android.webkit.URLUtil;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.metrics.d;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.m0;
import com.mbridge.msdk.foundation.tools.o0;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyEnum;
import com.vungle.ads.internal.model.AdPayload;
import java.io.File;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static int f8800a = 1;
    public static int b = 2;
    public static int c = 1500;

    public static boolean a(CampaignEx campaignEx, String str, int i) {
        boolean z = false;
        if (campaignEx != null && campaignEx.getTpOffer() == 1) {
            if (campaignEx.getFac() != 0) {
                z = true;
            }
            b(campaignEx, str, i);
        }
        return z;
    }

    private static void b(CampaignEx campaignEx, String str, int i) {
        try {
            Context d = c.m().d();
            if (d != null && campaignEx != null) {
                if (URLUtil.isFileUrl(str)) {
                    File file = new File(str.replace("file:////", "").replace("file:///", "").replace(AdPayload.FILE_SCHEME, ""));
                    if (file.exists()) {
                        str = m0.e(file);
                    }
                }
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("key", "2000109");
                jSONObject.put("type", i);
                jSONObject.put("html", str);
                jSONObject.put(TPDownloadProxyEnum.USER_NETWORK_TYPE, k0.s(d));
                jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, campaignEx.getCampaignUnitId());
                jSONObject.put("rid", campaignEx.getRequestId());
                jSONObject.put("rid_n", campaignEx.getRequestIdNotice());
                jSONObject.put("cid", campaignEx.getId());
                if (campaignEx.isBidCampaign()) {
                    jSONObject.put(CampaignEx.JSON_KEY_HB, 1);
                }
                d.b().a(jSONObject);
            }
        } catch (Throwable th) {
            o0.b("DspFilterUtils", th.getMessage());
        }
    }
}
