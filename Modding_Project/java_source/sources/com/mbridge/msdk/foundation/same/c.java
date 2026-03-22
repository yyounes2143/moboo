package com.mbridge.msdk.foundation.same;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class c {

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public static abstract class a {
        public abstract void a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar);
    }

    public static long a(long j, long j2) {
        return j >= 0 ? j : j2;
    }

    public static String b(List<CampaignEx> list) {
        if (list == null || list.isEmpty()) {
            return "";
        }
        ArrayList arrayList = new ArrayList();
        for (CampaignEx campaignEx : list) {
            if (campaignEx != null && campaignEx.getCreativeId() != 0) {
                arrayList.add(campaignEx);
            }
        }
        if (arrayList.size() == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < arrayList.size(); i++) {
            try {
                CampaignEx campaignEx2 = (CampaignEx) arrayList.get(i);
                if (campaignEx2 != null) {
                    long creativeId = campaignEx2.getCreativeId();
                    if (i == arrayList.size() - 1) {
                        sb.append(creativeId);
                    } else {
                        sb.append(creativeId);
                        sb.append(",");
                    }
                }
            } catch (Exception e) {
                o0.b("SameCommon", "getCreativeID", e);
            }
        }
        return sb.toString();
    }

    public static boolean a(Context context, CampaignEx campaignEx) {
        if (context == null || campaignEx == null) {
            return false;
        }
        boolean c = t0.c(context, campaignEx.getPackageName());
        boolean c2 = t0.c(campaignEx);
        return campaignEx.getWtick() == 1 || (c2 && c) || !(c2 || c);
    }

    public static void a(CampaignEx campaignEx, Context context, com.mbridge.msdk.foundation.same.report.metrics.c cVar, a aVar) {
        a(campaignEx, context, cVar, aVar, 1);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0093  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(com.mbridge.msdk.foundation.entity.CampaignEx r9, android.content.Context r10, com.mbridge.msdk.foundation.same.report.metrics.c r11, com.mbridge.msdk.foundation.same.c.a r12, int r13) {
        /*
            java.lang.String r0 = "m_campaign_ind_unretarget"
            java.lang.String r1 = "m_campaign_ind_retarget"
            if (r9 == 0) goto Lab
            if (r12 == 0) goto Lab
            if (r11 != 0) goto Lf
            com.mbridge.msdk.foundation.same.report.metrics.c r11 = new com.mbridge.msdk.foundation.same.report.metrics.c     // Catch: java.lang.Exception -> La3
            r11.<init>()     // Catch: java.lang.Exception -> La3
        Lf:
            boolean r2 = com.mbridge.msdk.foundation.tools.t0.c(r9)     // Catch: java.lang.Exception -> La3
            java.lang.String r3 = r9.getPackageName()     // Catch: java.lang.Exception -> La3
            int r3 = com.mbridge.msdk.foundation.tools.t0.d(r10, r3)     // Catch: java.lang.Exception -> La3
            r4 = 0
            r5 = 1
            if (r10 == 0) goto L33
            boolean r10 = com.mbridge.msdk.foundation.tools.f.b(r10)     // Catch: java.lang.Exception -> L29
            if (r10 == 0) goto L27
            r10 = r5
            goto L34
        L27:
            r10 = 2
            goto L34
        L29:
            r10 = move-exception
            java.lang.String r6 = "SameCommon"
            java.lang.String r10 = r10.getMessage()     // Catch: java.lang.Exception -> La3
            com.mbridge.msdk.foundation.tools.o0.b(r6, r10)     // Catch: java.lang.Exception -> La3
        L33:
            r10 = r4
        L34:
            com.mbridge.msdk.foundation.same.report.metrics.e r6 = new com.mbridge.msdk.foundation.same.report.metrics.e     // Catch: java.lang.Exception -> La3
            r6.<init>()     // Catch: java.lang.Exception -> La3
            java.lang.String r7 = "cid"
            java.lang.String r8 = r9.getId()     // Catch: java.lang.Exception -> La3
            r6.a(r7, r8)     // Catch: java.lang.Exception -> La3
            java.lang.String r7 = "wtick"
            int r8 = r9.getWtick()     // Catch: java.lang.Exception -> La3
            java.lang.Integer r8 = java.lang.Integer.valueOf(r8)     // Catch: java.lang.Exception -> La3
            r6.a(r7, r8)     // Catch: java.lang.Exception -> La3
            java.lang.String r7 = "retarget_offer"
            int r9 = r9.getRetarget_offer()     // Catch: java.lang.Exception -> La3
            java.lang.Integer r9 = java.lang.Integer.valueOf(r9)     // Catch: java.lang.Exception -> La3
            r6.a(r7, r9)     // Catch: java.lang.Exception -> La3
            java.lang.String r9 = "ind"
            java.lang.Integer r7 = java.lang.Integer.valueOf(r3)     // Catch: java.lang.Exception -> La3
            r6.a(r9, r7)     // Catch: java.lang.Exception -> La3
            java.lang.String r9 = "stage"
            java.lang.Integer r13 = java.lang.Integer.valueOf(r13)     // Catch: java.lang.Exception -> La3
            r6.a(r9, r13)     // Catch: java.lang.Exception -> La3
            java.lang.String r9 = "ac"
            java.lang.Integer r13 = java.lang.Integer.valueOf(r4)     // Catch: java.lang.Exception -> La3
            r6.a(r9, r13)     // Catch: java.lang.Exception -> La3
            java.lang.String r9 = "per"
            java.lang.Integer r10 = java.lang.Integer.valueOf(r10)     // Catch: java.lang.Exception -> La3
            r6.a(r9, r10)     // Catch: java.lang.Exception -> La3
            java.lang.String r9 = "m_campaign_filtered"
            if (r2 == 0) goto L93
            if (r3 == r5) goto L8c
            r11.a(r9, r6)     // Catch: java.lang.Exception -> La3
            r12.a(r9, r11)     // Catch: java.lang.Exception -> La3
        L8c:
            r11.a(r1, r6)     // Catch: java.lang.Exception -> La3
            r12.a(r1, r11)     // Catch: java.lang.Exception -> La3
            goto Lab
        L93:
            if (r3 == r5) goto L96
            goto L9c
        L96:
            r11.a(r9, r6)     // Catch: java.lang.Exception -> La3
            r12.a(r9, r11)     // Catch: java.lang.Exception -> La3
        L9c:
            r11.a(r0, r6)     // Catch: java.lang.Exception -> La3
            r12.a(r0, r11)     // Catch: java.lang.Exception -> La3
            goto Lab
        La3:
            r9 = move-exception
            boolean r10 = com.mbridge.msdk.MBridgeConstans.DEBUG
            if (r10 == 0) goto Lab
            r9.printStackTrace()
        Lab:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.same.c.a(com.mbridge.msdk.foundation.entity.CampaignEx, android.content.Context, com.mbridge.msdk.foundation.same.report.metrics.c, com.mbridge.msdk.foundation.same.c$a, int):void");
    }

    public static boolean b(Context context, CampaignEx campaignEx) {
        if (context == null || campaignEx == null) {
            return false;
        }
        return t0.c(campaignEx) || campaignEx.getWtick() == 1 || !t0.c(context, campaignEx.getPackageName());
    }

    public static byte[] b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            String[] split = str.split("\\.");
            if (split.length != 4) {
                return null;
            }
            byte[] bArr = new byte[4];
            for (int i = 0; i < 4; i++) {
                int parseInt = Integer.parseInt(split[i]);
                if (parseInt >= 0 && parseInt <= 255) {
                    bArr[i] = (byte) parseInt;
                }
                return null;
            }
            return bArr;
        } catch (Exception unused) {
            return null;
        }
    }

    public static JSONObject a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            for (String str2 : str.split("&")) {
                String[] split = str2.split("=");
                String str3 = "";
                if (split.length == 2) {
                    String str4 = split[0];
                    if (!TextUtils.isEmpty(str4)) {
                        String str5 = split[1];
                        if (str5 != null) {
                            str3 = str5;
                        }
                        jSONObject.put(str4, str3);
                    }
                } else if (split.length == 1) {
                    String str6 = split[0];
                    if (!TextUtils.isEmpty(str6)) {
                        jSONObject.put(str6, "");
                    }
                }
            }
            return jSONObject;
        } catch (Exception e) {
            o0.a("SameCommon", "coverReportMessage", e);
            return null;
        } catch (Throwable th) {
            o0.a("SameCommon", "coverReportMessage", th);
            return null;
        }
    }

    public static String a(List<CampaignEx> list) {
        if (list != null && !list.isEmpty()) {
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < list.size(); i++) {
                try {
                    CampaignEx campaignEx = list.get(i);
                    if (campaignEx != null) {
                        String id = campaignEx.getId();
                        if (i == list.size() - 1) {
                            sb.append(id);
                        } else {
                            sb.append(id);
                            sb.append(",");
                        }
                    }
                } catch (Exception unused) {
                }
            }
            return sb.toString();
        }
        return "";
    }

    public static String a(InputStream inputStream) {
        if (inputStream == null) {
            return null;
        }
        try {
            byte[] bArr = new byte[1024];
            StringBuilder sb = new StringBuilder();
            while (true) {
                int read = inputStream.read(bArr);
                if (read != -1) {
                    sb.append(new String(bArr, 0, read));
                } else {
                    return sb.toString();
                }
            }
        } catch (Exception unused) {
            return null;
        }
    }
}
