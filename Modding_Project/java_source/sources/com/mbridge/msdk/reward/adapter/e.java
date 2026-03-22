package com.mbridge.msdk.reward.adapter;

import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.j;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import com.mbridge.msdk.out.MBSupportMuteAdType;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private final String f9400a;
    private final String b;
    private final boolean c;
    private final com.mbridge.msdk.videocommon.setting.c d;
    private final String e;

    public e(String str, String str2, boolean z, com.mbridge.msdk.videocommon.setting.c cVar, String str3) {
        this.f9400a = str;
        this.b = str2;
        this.c = z;
        this.d = cVar;
        this.e = str3;
    }

    public com.mbridge.msdk.foundation.same.net.wrapper.e a(boolean z, String str, int i, String str2, String str3, String str4, String str5, boolean z2, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        String str6;
        String str7;
        String b = com.mbridge.msdk.foundation.controller.c.m().b();
        String md5 = SameMD5.getMD5(com.mbridge.msdk.foundation.controller.c.m().b() + com.mbridge.msdk.foundation.controller.c.m().c());
        if (z) {
            i3 = 2;
        } else {
            i3 = 3;
        }
        com.mbridge.msdk.videocommon.setting.c cVar = this.d;
        if (cVar != null) {
            i4 = cVar.e();
            i5 = this.d.b();
        } else {
            i4 = 0;
            i5 = 0;
        }
        String a2 = com.mbridge.msdk.foundation.same.buffer.b.a(this.b, "reward");
        if (this.c) {
            i6 = MBSupportMuteAdType.INTERSTITIAL_VIDEO;
        } else {
            i6 = 94;
        }
        com.mbridge.msdk.foundation.same.net.wrapper.e eVar = new com.mbridge.msdk.foundation.same.net.wrapper.e();
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "app_id", b);
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, MBridgeConstans.PROPERTIES_UNIT_ID, this.b);
        if (!TextUtils.isEmpty(this.f9400a)) {
            com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, MBridgeConstans.PLACEMENT_ID, this.f9400a);
        }
        String str8 = "";
        if (com.mbridge.msdk.util.b.a()) {
            if (str4 == null) {
                str6 = "";
            } else {
                str6 = str4;
            }
            com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "ttc_ids", str6);
            if (str3 == null) {
                str7 = "";
            } else {
                str7 = str3;
            }
            com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "install_ids", str7);
        }
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "sign", md5);
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "req_type", String.valueOf(i3));
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "ad_num", String.valueOf(i4));
        if (this.c) {
            i5 = 1;
        }
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "tnum", String.valueOf(i5));
        String str9 = "1";
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "only_impression", "1");
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "ping_mode", "1");
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, com.mbridge.msdk.foundation.same.net.wrapper.e.g, a2);
        String str10 = com.mbridge.msdk.foundation.same.net.wrapper.e.h;
        if (str == null) {
            str = "";
        }
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, str10, str);
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, CampaignEx.JSON_KEY_AD_SOURCE_ID, String.valueOf(1));
        String str11 = com.mbridge.msdk.foundation.same.net.wrapper.e.i;
        if (str2 == null) {
            str2 = "";
        }
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, str11, str2);
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "ad_type", String.valueOf(i6));
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, TypedValues.CycleType.S_WAVE_OFFSET, String.valueOf(i));
        if (!TextUtils.isEmpty(str5)) {
            com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, BidResponsed.KEY_TOKEN, str5);
        }
        if (this.c) {
            if (i2 != com.mbridge.msdk.foundation.same.a.I && i2 != com.mbridge.msdk.foundation.same.a.H) {
                com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "ivrwd", "0");
            } else {
                com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "ivrwd", "1");
            }
        }
        com.mbridge.msdk.videocommon.setting.c cVar2 = this.d;
        if (cVar2 != null && !TextUtils.isEmpty(cVar2.a())) {
            com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "u_stid", this.d.a());
        }
        com.mbridge.msdk.videocommon.setting.a c = com.mbridge.msdk.videocommon.setting.b.b().c();
        if (c != null && !TextUtils.isEmpty(c.a())) {
            com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "r_stid", c.a());
        }
        if (!z2) {
            str9 = "0";
        }
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "rw_plus", str9);
        String d = t0.d(this.b);
        if (!TextUtils.isEmpty(d)) {
            com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, j.b, d);
        }
        String str12 = this.e;
        if (str12 != null) {
            str8 = str12;
        }
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, CampaignEx.JSON_KEY_LOCAL_REQUEST_ID, str8);
        return eVar;
    }
}
