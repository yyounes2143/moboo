package com.mbridge.msdk.video.module.listener.impl;

import android.net.Uri;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class d extends k {
    public d(CampaignEx campaignEx, com.mbridge.msdk.videocommon.download.a aVar, com.mbridge.msdk.videocommon.entity.c cVar, String str, String str2, com.mbridge.msdk.video.module.listener.a aVar2, int i, boolean z) {
        super(campaignEx, aVar, cVar, str, str2, aVar2, i, z);
    }

    @Override // com.mbridge.msdk.video.module.listener.impl.k, com.mbridge.msdk.video.module.listener.impl.f, com.mbridge.msdk.video.module.listener.a
    public void a(int i, Object obj) {
        super.a(i, obj);
        if (this.f9886a) {
            try {
                CampaignEx campaignEx = this.b;
                if (campaignEx != null && campaignEx.getDynamicTempCode() == 5) {
                    a(obj.toString());
                }
            } catch (Exception unused) {
            }
            if (i != 105 && i != 106 && i != 113) {
                if (i != 122) {
                    switch (i) {
                        case 109:
                            a(2);
                            b(2);
                            return;
                        case 110:
                            a(1);
                            b(1);
                            return;
                        case 111:
                            b(1);
                            return;
                        default:
                            return;
                    }
                }
                g();
                return;
            }
            com.mbridge.msdk.video.module.report.b.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.b);
            if (i != 105) {
                String noticeUrl = this.b.getNoticeUrl();
                if (!TextUtils.isEmpty(noticeUrl)) {
                    if (!noticeUrl.contains(com.mbridge.msdk.foundation.same.a.m)) {
                        noticeUrl = noticeUrl + "&" + com.mbridge.msdk.foundation.same.a.m + "=2";
                    } else {
                        noticeUrl = noticeUrl.replace(com.mbridge.msdk.foundation.same.a.m + "=" + Uri.parse(noticeUrl).getQueryParameter(com.mbridge.msdk.foundation.same.a.m), com.mbridge.msdk.foundation.same.a.m + "=2");
                    }
                }
                com.mbridge.msdk.click.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.b, this.g, noticeUrl, true, false, com.mbridge.msdk.click.retry.a.o);
            }
        }
    }
}
