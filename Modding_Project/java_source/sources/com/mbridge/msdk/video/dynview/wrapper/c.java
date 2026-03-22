package com.mbridge.msdk.video.dynview.wrapper;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.m0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.x;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class c {
    public com.mbridge.msdk.video.dynview.c a(Context context, List<CampaignEx> list) {
        String str;
        int i;
        int i2;
        int i3;
        if (list == null) {
            return null;
        }
        try {
            float g = t0.g(com.mbridge.msdk.foundation.controller.c.m().d());
            float f = t0.f(com.mbridge.msdk.foundation.controller.c.m().d());
            List<String> arrayList = new ArrayList<>();
            if (list.size() <= 0 || list.get(0) == null) {
                str = "";
                i = 1;
                i2 = 0;
                i3 = 0;
            } else {
                i = com.mbridge.msdk.video.dynview.util.a.a(list.get(0));
                i2 = list.get(0).getMof_tplid();
                str = list.get(0).getMof_template_url();
                i3 = list.get(0).getDynamicTempCode();
            }
            if (i2 != 0 && !TextUtils.isEmpty(str)) {
                arrayList = m0.a(x.a(0, i2 + "", str), "template_" + i2 + "_" + i);
            }
            String str2 = "mbridge_same_choice_one_layout_portrait";
            if (i != 1) {
                if (i == 2) {
                    str2 = "mbridge_same_choice_one_layout_landscape";
                } else if (com.mbridge.msdk.video.dynview.util.a.a(context)) {
                    str2 = "mbridge_same_choice_one_layout_landscape";
                    i = 2;
                } else {
                    i = 1;
                }
            }
            return com.mbridge.msdk.video.dynview.c.a().a(context).c(str2).b(1).b(f).a(g).a(list).orientation(i).fileDirs(arrayList).d(i3).a(i2).build();
        } catch (Exception e) {
            o0.b("ViewOptionWrapper", e.getMessage());
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0058 A[Catch: Exception -> 0x0027, TryCatch #0 {Exception -> 0x0027, blocks: (B:5:0x0004, B:8:0x0016, B:12:0x002c, B:19:0x003e, B:21:0x0052, B:23:0x0058, B:24:0x0081, B:26:0x009d, B:27:0x00a1), top: B:31:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x009d A[Catch: Exception -> 0x0027, TryCatch #0 {Exception -> 0x0027, blocks: (B:5:0x0004, B:8:0x0016, B:12:0x002c, B:19:0x003e, B:21:0x0052, B:23:0x0058, B:24:0x0081, B:26:0x009d, B:27:0x00a1), top: B:31:0x0004 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.mbridge.msdk.video.dynview.c b(android.view.View r12, com.mbridge.msdk.foundation.entity.CampaignEx r13) {
        /*
            r11 = this;
            r0 = 0
            if (r13 != 0) goto L4
            return r0
        L4:
            java.util.ArrayList r1 = new java.util.ArrayList     // Catch: java.lang.Exception -> L27
            r1.<init>()     // Catch: java.lang.Exception -> L27
            java.lang.String r2 = r13.getCampaignUnitId()     // Catch: java.lang.Exception -> L27
            com.mbridge.msdk.foundation.entity.CampaignEx$c r3 = r13.getRewardTemplateMode()     // Catch: java.lang.Exception -> L27
            java.lang.String r4 = ""
            r5 = 0
            if (r3 == 0) goto L2a
            com.mbridge.msdk.foundation.entity.CampaignEx$c r3 = r13.getRewardTemplateMode()     // Catch: java.lang.Exception -> L27
            int r3 = r3.f()     // Catch: java.lang.Exception -> L27
            com.mbridge.msdk.foundation.entity.CampaignEx$c r6 = r13.getRewardTemplateMode()     // Catch: java.lang.Exception -> L27
            java.lang.String r6 = r6.e()     // Catch: java.lang.Exception -> L27
            goto L2c
        L27:
            r12 = move-exception
            goto Lf7
        L2a:
            r6 = r4
            r3 = r5
        L2c:
            java.lang.String r7 = "ia_tp"
            r8 = -5
            int r7 = com.mbridge.msdk.foundation.tools.t0.a(r6, r7, r8)     // Catch: java.lang.Exception -> L27
            if (r3 == 0) goto L50
            r8 = 102(0x66, float:1.43E-43)
            if (r3 == r8) goto L50
            r8 = 202(0xca, float:2.83E-43)
            if (r3 != r8) goto L3e
            goto L50
        L3e:
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L27
            r8.<init>()     // Catch: java.lang.Exception -> L27
            java.lang.String r9 = "mbridge_reward_layer_floor_"
            r8.append(r9)     // Catch: java.lang.Exception -> L27
            r8.append(r3)     // Catch: java.lang.Exception -> L27
            java.lang.String r8 = r8.toString()     // Catch: java.lang.Exception -> L27
            goto L52
        L50:
            java.lang.String r8 = "mbridge_reward_layer_floor"
        L52:
            boolean r9 = android.text.TextUtils.isEmpty(r6)     // Catch: java.lang.Exception -> L27
            if (r9 != 0) goto L81
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L27
            r1.<init>()     // Catch: java.lang.Exception -> L27
            r1.append(r3)     // Catch: java.lang.Exception -> L27
            r1.append(r4)     // Catch: java.lang.Exception -> L27
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Exception -> L27
            r4 = 1
            java.lang.String r1 = com.mbridge.msdk.foundation.tools.x.a(r4, r1, r6)     // Catch: java.lang.Exception -> L27
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L27
            r4.<init>()     // Catch: java.lang.Exception -> L27
            java.lang.String r9 = "template_"
            r4.append(r9)     // Catch: java.lang.Exception -> L27
            r4.append(r3)     // Catch: java.lang.Exception -> L27
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Exception -> L27
            java.util.List r1 = com.mbridge.msdk.foundation.tools.m0.a(r1, r4)     // Catch: java.lang.Exception -> L27
        L81:
            boolean r4 = com.mbridge.msdk.video.dynview.util.a.a(r6)     // Catch: java.lang.Exception -> L27
            java.lang.String r9 = "whs_chn"
            java.lang.String r6 = com.mbridge.msdk.video.dynview.util.a.a(r6, r9)     // Catch: java.lang.Exception -> L27
            com.mbridge.msdk.videocommon.setting.b r9 = com.mbridge.msdk.videocommon.setting.b.b()     // Catch: java.lang.Exception -> L27
            com.mbridge.msdk.foundation.controller.c r10 = com.mbridge.msdk.foundation.controller.c.m()     // Catch: java.lang.Exception -> L27
            java.lang.String r10 = r10.b()     // Catch: java.lang.Exception -> L27
            com.mbridge.msdk.videocommon.setting.c r2 = r9.a(r10, r2, r5)     // Catch: java.lang.Exception -> L27
            if (r2 == 0) goto La1
            int r5 = r2.D()     // Catch: java.lang.Exception -> L27
        La1:
            java.util.ArrayList r2 = new java.util.ArrayList     // Catch: java.lang.Exception -> L27
            r2.<init>()     // Catch: java.lang.Exception -> L27
            r2.add(r13)     // Catch: java.lang.Exception -> L27
            com.mbridge.msdk.video.dynview.c$b r9 = com.mbridge.msdk.video.dynview.c.a()     // Catch: java.lang.Exception -> L27
            com.mbridge.msdk.video.dynview.c$c r8 = r9.c(r8)     // Catch: java.lang.Exception -> L27
            r9 = 2
            com.mbridge.msdk.video.dynview.c$c r8 = r8.b(r9)     // Catch: java.lang.Exception -> L27
            com.mbridge.msdk.video.dynview.c$c r2 = r8.a(r2)     // Catch: java.lang.Exception -> L27
            android.content.Context r8 = r12.getContext()     // Catch: java.lang.Exception -> L27
            com.mbridge.msdk.video.dynview.c$c r2 = r2.a(r8)     // Catch: java.lang.Exception -> L27
            com.mbridge.msdk.video.dynview.c$c r2 = r2.a(r12)     // Catch: java.lang.Exception -> L27
            com.mbridge.msdk.video.dynview.c$c r2 = r2.c(r5)     // Catch: java.lang.Exception -> L27
            com.mbridge.msdk.video.dynview.c$c r2 = r2.f(r7)     // Catch: java.lang.Exception -> L27
            android.content.Context r12 = r12.getContext()     // Catch: java.lang.Exception -> L27
            int r12 = com.mbridge.msdk.foundation.tools.k0.F(r12)     // Catch: java.lang.Exception -> L27
            com.mbridge.msdk.video.dynview.c$c r12 = r2.orientation(r12)     // Catch: java.lang.Exception -> L27
            com.mbridge.msdk.video.dynview.c$c r12 = r12.a(r3)     // Catch: java.lang.Exception -> L27
            com.mbridge.msdk.video.dynview.c$c r12 = r12.a(r4)     // Catch: java.lang.Exception -> L27
            com.mbridge.msdk.video.dynview.c$c r12 = r12.b(r6)     // Catch: java.lang.Exception -> L27
            com.mbridge.msdk.video.dynview.c$c r12 = r12.fileDirs(r1)     // Catch: java.lang.Exception -> L27
            int r13 = r13.getDynamicTempCode()     // Catch: java.lang.Exception -> L27
            com.mbridge.msdk.video.dynview.c$c r12 = r12.d(r13)     // Catch: java.lang.Exception -> L27
            com.mbridge.msdk.video.dynview.c r12 = r12.build()     // Catch: java.lang.Exception -> L27
            return r12
        Lf7:
            java.lang.String r12 = r12.getMessage()
            java.lang.String r13 = "ViewOptionWrapper"
            com.mbridge.msdk.foundation.tools.o0.b(r13, r12)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.video.dynview.wrapper.c.b(android.view.View, com.mbridge.msdk.foundation.entity.CampaignEx):com.mbridge.msdk.video.dynview.c");
    }

    public com.mbridge.msdk.video.dynview.c a(View view, CampaignEx campaignEx) {
        if (campaignEx == null) {
            return null;
        }
        try {
            com.mbridge.msdk.videocommon.setting.c a2 = com.mbridge.msdk.videocommon.setting.b.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), campaignEx.getCampaignUnitId(), false);
            int D = a2 != null ? a2.D() : 0;
            ArrayList arrayList = new ArrayList();
            arrayList.add(campaignEx);
            return com.mbridge.msdk.video.dynview.c.a().c("mbridge_reward_layer_floor_bottom").b(3).a(arrayList).a(view.getContext()).a(view).c(D).orientation(k0.F(view.getContext())).build();
        } catch (Exception e) {
            o0.b("ViewOptionWrapper", e.getMessage());
            return null;
        }
    }

    public com.mbridge.msdk.video.dynview.c b(Context context, List<CampaignEx> list) {
        if (list != null) {
            try {
                if (list.size() != 0) {
                    float g = t0.g(com.mbridge.msdk.foundation.controller.c.m().d());
                    float f = t0.f(com.mbridge.msdk.foundation.controller.c.m().d());
                    List<String> arrayList = new ArrayList<>();
                    int dynamicTempCode = list.get(0).getDynamicTempCode();
                    int mof_tplid = list.get(0).getMof_tplid();
                    String mof_template_url = list.get(0).getMof_template_url();
                    int F = k0.F(context);
                    if (mof_tplid != 0 && !TextUtils.isEmpty(mof_template_url)) {
                        arrayList = m0.a(x.a(0, mof_tplid + "", mof_template_url), "template_" + mof_tplid + "_" + F);
                    }
                    return com.mbridge.msdk.video.dynview.c.a().c(F == 1 ? "mbridge_order_layout_list_portrait" : "mbridge_order_layout_list_landscape").b(5).a(context).b(f).a(g).a(list).orientation(F).fileDirs(arrayList).d(dynamicTempCode).a(mof_tplid).build();
                }
            } catch (Exception e) {
                o0.b("ViewOptionWrapper", e.getMessage());
            }
        }
        return null;
    }

    public com.mbridge.msdk.video.dynview.c a(Context context, CampaignEx campaignEx, int i, String str) {
        String str2;
        String str3;
        StringBuilder sb;
        if (campaignEx == null) {
            return null;
        }
        try {
            long ecTemplateId = campaignEx.getEcTemplateId();
            int F = k0.F(context);
            int a2 = t0.a(campaignEx.getendcard_url(), "n_logo", 1);
            if (ecTemplateId == 1302) {
                if (F == 1) {
                    sb = new StringBuilder();
                    sb.append("mbridge_reward_end_card_layout_portrait_");
                } else {
                    sb = new StringBuilder();
                    sb.append("mbridge_reward_end_card_layout_landscape_");
                }
                sb.append(ecTemplateId);
                str2 = sb.toString();
                str3 = "template_" + str + F + "_" + ecTemplateId;
            } else {
                str2 = F == 1 ? "mbridge_reward_end_card_layout_portrait" : "mbridge_reward_end_card_layout_landscape";
                str3 = "template_" + str + F;
            }
            List<String> arrayList = new ArrayList<>();
            if (!TextUtils.isEmpty(campaignEx.getendcard_url())) {
                arrayList = m0.a(x.a(2, i + "", campaignEx.getendcard_url()), str3);
            }
            return com.mbridge.msdk.video.dynview.c.a().c(str2).b(4).a(context).orientation(k0.F(context)).fileDirs(arrayList).d(campaignEx.getDynamicTempCode()).a(i).a(str).e(a2).build();
        } catch (Exception e) {
            o0.b("ViewOptionWrapper", e.getMessage());
            return null;
        }
    }
}
