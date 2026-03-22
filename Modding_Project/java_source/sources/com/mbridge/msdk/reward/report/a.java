package com.mbridge.msdk.reward.report;

import android.content.Context;
import android.text.TextUtils;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.db.n;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.m;
import com.mbridge.msdk.foundation.same.d;
import com.mbridge.msdk.foundation.same.report.o;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyEnum;
import java.util.List;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class a {
    public static void a(Context context, String str) {
        if (context != null) {
            try {
                n a2 = n.a(g.a(context));
                if (TextUtils.isEmpty(str) || a2 == null || a2.a() <= 0) {
                    return;
                }
                List<m> a3 = a2.a("m_download_end");
                List<m> a4 = a2.a("2000021");
                List<m> a5 = a2.a("2000039");
                List<m> a6 = a2.a("m_download_end");
                List<m> a7 = a2.a("m_download_end");
                List<m> a8 = a2.a("2000044");
                o.e(a4);
                o.a(a3);
                o.c(a5);
                o.b(a6);
                o.f(a7);
                o.d(a8);
            } catch (Exception e) {
                o0.b("RewardReport", e.getMessage());
            }
        }
    }

    public static void a(Context context, CampaignEx campaignEx, String str) {
        int a2;
        if (context == null || campaignEx == null) {
            return;
        }
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("key", "2000048");
            jSONObject.put(CmcdConfiguration.KEY_STREAM_TYPE, System.currentTimeMillis());
            jSONObject.put("cid", campaignEx.getId());
            jSONObject.put(TPDownloadProxyEnum.USER_NETWORK_TYPE, k0.s(context));
            jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, str);
            if (t0.c(campaignEx)) {
                jSONObject.put(CampaignEx.JSON_KEY_RETARGET_TYPE, campaignEx.getRtinsType());
            }
            jSONObject.put(CampaignEx.JSON_KEY_HB, campaignEx.isBidCampaign() ? 1 : 0);
            jSONObject.put("rid", campaignEx.getRequestId());
            jSONObject.put("rid_n", campaignEx.getRequestIdNotice());
            jSONObject.put(CampaignEx.JSON_KEY_NEW_INTERSTITIAL_AD_SPACE_T, campaignEx.getAdSpaceT());
            if (campaignEx.getRewardTemplateMode() != null && (a2 = d.a(campaignEx, campaignEx.getRewardTemplateMode().e())) != -1) {
                jSONObject.put(MBridgeConstans.DYNAMIC_VIEW_KEY_DY_VIEW, a2);
            }
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
        } catch (Throwable th) {
            o0.b("RewardReport", th.getMessage());
        }
    }
}
