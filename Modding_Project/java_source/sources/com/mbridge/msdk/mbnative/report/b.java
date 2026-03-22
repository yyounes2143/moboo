package com.mbridge.msdk.mbnative.report;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.db.j;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.mbnative.controller.NativeController;
import com.mbridge.msdk.setting.h;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class b {

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f9257a;
        final /* synthetic */ CampaignEx b;

        public a(Context context, CampaignEx campaignEx) {
            this.f9257a = context;
            this.b = campaignEx;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                j.a(g.a(this.f9257a)).b(this.b.getId());
            } catch (Exception unused) {
                o0.b("NativeReportUtils", "campain can't insert db");
            }
        }
    }

    public static synchronized void a(CampaignEx campaignEx, Context context, String str, com.mbridge.msdk.mbnative.listener.a aVar) {
        synchronized (b.class) {
            if (campaignEx == null) {
                return;
            }
            try {
                com.mbridge.msdk.setting.g b = h.b().b(c.m().b());
                boolean z = b == null || b.n() == 1;
                if (!campaignEx.isReport()) {
                    campaignEx.setReport(true);
                    a(campaignEx, context, str);
                    a(campaignEx, context, str, aVar, z);
                    a(a(campaignEx), campaignEx, context, str);
                    b(campaignEx, context, str);
                }
                if (aVar != null && !campaignEx.isCallBackImpression()) {
                    if (!z) {
                        try {
                            aVar.onLoggingImpression(campaignEx.getType());
                        } catch (Exception e) {
                            e.getMessage();
                        }
                    }
                    campaignEx.setCallBackImpression(true);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static synchronized void b(CampaignEx campaignEx, Context context, String str) {
        synchronized (b.class) {
            if (campaignEx != null) {
                try {
                    List<String> pv_urls = campaignEx.getPv_urls();
                    if (pv_urls != null && pv_urls.size() > 0) {
                        for (String str2 : pv_urls) {
                            CampaignEx campaignEx2 = campaignEx;
                            Context context2 = context;
                            String str3 = str;
                            com.mbridge.msdk.click.a.a(context2, campaignEx2, str3, str2, false, true);
                            context = context2;
                            campaignEx = campaignEx2;
                            str = str3;
                        }
                    }
                } finally {
                }
            }
        }
    }

    private static synchronized void a(CampaignEx campaignEx, Context context, String str) {
        synchronized (b.class) {
            try {
                c.m().a(context);
                if (!TextUtils.isEmpty(campaignEx.getImpressionURL())) {
                    com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new a(context, campaignEx));
                    com.mbridge.msdk.click.a.a(context, campaignEx, str, campaignEx.getImpressionURL(), false, true, com.mbridge.msdk.click.retry.a.m);
                }
                if (!TextUtils.isEmpty(str) && campaignEx.getNativeVideoTracking() != null && campaignEx.getNativeVideoTracking().k() != null) {
                    com.mbridge.msdk.click.a.a(context, campaignEx, str, campaignEx.getNativeVideoTracking().k(), false, false);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private static synchronized void a(CampaignEx campaignEx, Context context, String str, com.mbridge.msdk.mbnative.listener.a aVar, boolean z) {
        Map<String, Long> map;
        synchronized (b.class) {
            if (!TextUtils.isEmpty(campaignEx.getOnlyImpressionURL()) && (map = NativeController.d0) != null && !map.containsKey(campaignEx.getOnlyImpressionURL())) {
                if (z && aVar != null) {
                    try {
                        aVar.onLoggingImpression(campaignEx.getAdType());
                    } catch (Exception e) {
                        e.getMessage();
                    }
                }
                NativeController.d0.put(campaignEx.getOnlyImpressionURL(), Long.valueOf(System.currentTimeMillis()));
                com.mbridge.msdk.click.a.a(context, campaignEx, str, campaignEx.getOnlyImpressionURL(), false, true, com.mbridge.msdk.click.retry.a.n);
            }
        }
    }

    private static void a(List<String> list, CampaignEx campaignEx, Context context, String str) {
        CampaignEx campaignEx2;
        Context context2;
        String str2;
        if (list == null || list.size() == 0) {
            return;
        }
        int i = 0;
        while (i < list.size()) {
            String str3 = list.get(i);
            if (TextUtils.isEmpty(str3)) {
                campaignEx2 = campaignEx;
                context2 = context;
                str2 = str;
            } else {
                campaignEx2 = campaignEx;
                context2 = context;
                str2 = str;
                com.mbridge.msdk.click.a.a(context2, campaignEx2, str2, str3, false, false);
            }
            i++;
            context = context2;
            campaignEx = campaignEx2;
            str = str2;
        }
    }

    public static List<String> a(CampaignEx campaignEx) {
        ArrayList arrayList = new ArrayList();
        if (campaignEx != null) {
            String ad_url_list = campaignEx.getAd_url_list();
            if (!TextUtils.isEmpty(ad_url_list)) {
                try {
                    JSONArray jSONArray = new JSONArray(ad_url_list);
                    for (int i = 0; i < jSONArray.length(); i++) {
                        arrayList.add((String) jSONArray.get(i));
                    }
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        }
        return arrayList;
    }
}
