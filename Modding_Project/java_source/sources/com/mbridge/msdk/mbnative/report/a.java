package com.mbridge.msdk.mbnative.report;

import android.content.Context;
import android.text.TextUtils;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.metrics.c;
import com.mbridge.msdk.foundation.same.report.metrics.d;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.out.Campaign;
import com.tencent.thumbplayer.tcmedia.core.downloadproxy.api.TPDownloadProxyEnum;
import java.util.List;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class a {
    public static void a(Context context, CampaignEx campaignEx, String str) {
        Context context2;
        CampaignEx campaignEx2;
        String str2;
        if (campaignEx != null) {
            try {
                if (campaignEx.getNativeVideoTracking() == null || campaignEx.getNativeVideoTracking().h() == null) {
                    return;
                }
                String[] h = campaignEx.getNativeVideoTracking().h();
                int length = h.length;
                int i = 0;
                while (i < length) {
                    String str3 = h[i];
                    if (TextUtils.isEmpty(str3)) {
                        context2 = context;
                        campaignEx2 = campaignEx;
                        str2 = str;
                    } else {
                        context2 = context;
                        campaignEx2 = campaignEx;
                        str2 = str;
                        com.mbridge.msdk.click.a.a(context2, campaignEx2, str2, str3, false, true);
                    }
                    i++;
                    context = context2;
                    campaignEx = campaignEx2;
                    str = str2;
                }
            } catch (Exception e) {
                o0.b("NativeReport", e.getMessage());
            }
        }
    }

    public static void a(Context context, List<Campaign> list, String str) {
        if (context == null || list == null) {
            return;
        }
        try {
            if (list.isEmpty() || TextUtils.isEmpty(str)) {
                return;
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("key", "2000048");
            jSONObject.put(CmcdConfiguration.KEY_STREAM_TYPE, System.currentTimeMillis());
            CampaignEx campaignEx = (CampaignEx) list.get(0);
            jSONObject.put("cid", campaignEx.getId());
            jSONObject.put(TPDownloadProxyEnum.USER_NETWORK_TYPE, k0.s(context));
            jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, str);
            jSONObject.put(CampaignEx.JSON_KEY_HB, "1");
            if (t0.c(campaignEx)) {
                jSONObject.put(CampaignEx.JSON_KEY_RETARGET_TYPE, campaignEx.getRtinsType());
            }
            jSONObject.put("rid", campaignEx.getRequestId());
            jSONObject.put("rid_n", campaignEx.getRequestIdNotice());
            d.b().a(jSONObject);
        } catch (Throwable th) {
            o0.b("NativeReport", th.getMessage());
        }
    }

    public static void a(Context context, String str, String str2, boolean z, CampaignEx campaignEx) {
        if (context != null) {
            try {
                if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                    return;
                }
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("key", "2000047");
                jSONObject.put(TPDownloadProxyEnum.USER_NETWORK_TYPE, k0.s(context));
                jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, str2);
                jSONObject.put(CmcdConfiguration.KEY_STREAM_TYPE, System.currentTimeMillis());
                if (campaignEx != null) {
                    jSONObject.put("cid", campaignEx.getId());
                    jSONObject.put("adtp", campaignEx.getAdType());
                    jSONObject.put("rid", campaignEx.getRequestId());
                    jSONObject.put("rid_n", campaignEx.getRequestIdNotice());
                }
                if (!TextUtils.isEmpty(str2)) {
                    String str3 = com.mbridge.msdk.foundation.controller.a.r.get(str2);
                    if (str3 == null) {
                        str3 = "";
                    }
                    jSONObject.put("u_stid", str3);
                }
                if (!TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.V)) {
                    jSONObject.put(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, com.mbridge.msdk.foundation.same.a.V);
                }
                if (!TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.g)) {
                    jSONObject.put("c", com.mbridge.msdk.foundation.same.a.g);
                }
                jSONObject.put(CampaignEx.JSON_KEY_HB, z ? 1 : 0);
                jSONObject.put("reason", str);
                d.b().a(jSONObject);
            } catch (Throwable th) {
                o0.b("NativeReport", th.getMessage());
            }
        }
    }

    public static void a(String str, c cVar, CampaignEx campaignEx, Context context, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
        try {
            d.b().a(str, cVar, campaignEx, context, aVar);
        } catch (Exception e) {
            o0.b("NativeReport", e.getMessage());
        }
    }
}
