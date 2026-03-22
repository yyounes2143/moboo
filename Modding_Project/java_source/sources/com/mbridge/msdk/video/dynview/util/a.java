package com.mbridge.msdk.video.dynview.util;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.k0;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class a {
    public static int a(CampaignEx campaignEx) {
        if (campaignEx == null || campaignEx.getRewardTemplateMode() == null) {
            return 1;
        }
        return campaignEx.getRewardTemplateMode().b();
    }

    public static int b(CampaignEx campaignEx) {
        if (campaignEx != null && campaignEx.getRewardTemplateMode() != null) {
            int f = campaignEx.getRewardTemplateMode().f();
            if (f != 302 && f != 802 && f != 902) {
                if (f == 904) {
                    if (!a(campaignEx.getRewardTemplateMode().e())) {
                        return -1;
                    }
                    return -3;
                }
                return 100;
            }
            return -3;
        }
        return 100;
    }

    public static boolean a(Context context) {
        return context.getResources().getConfiguration().orientation == 2;
    }

    public static String a(long j, Context context) {
        String p = k0.p(context);
        if (p.startsWith("zh")) {
            if (!p.contains("TW") && !p.contains("HK")) {
                return j + " 秒后自动播放";
            }
            return j + " 秒後自動播放";
        } else if (p.startsWith("ja")) {
            return j + " 秒後自動的に再生 ";
        } else if (p.startsWith(DownloadCommon.DOWNLOAD_REPORT_DOWNLOAD_ERROR)) {
            return "Automatische Wiedergabe nach " + j + " Sekunden";
        } else if (p.startsWith("ko")) {
            return j + " 초 후 자동 재생 ";
        } else if (p.startsWith("fr")) {
            return "Lecture de vidéo dans " + j + " secondes";
        } else if (p.startsWith("ar")) {
            return " ثوان" + j + "لعب تلقائيا بعد ";
        } else if (p.startsWith("ru")) {
            return "Автовоспроизведение через " + j + " секунд";
        } else {
            return "Auto play after " + j + " s";
        }
    }

    public static String a(Context context, int i) {
        String str;
        if (i == 1) {
            str = "_por";
        } else {
            str = "_land";
        }
        String p = k0.p(context);
        if (p.startsWith("zh")) {
            if (!p.contains("TW") && !p.contains("HK")) {
                return "mbridge_reward_two_title_zh";
            }
            return "mbridge_reward_two_title_zh_trad";
        } else if (p.startsWith("ja")) {
            return "mbridge_reward_two_title_japan" + str;
        } else if (p.startsWith(DownloadCommon.DOWNLOAD_REPORT_DOWNLOAD_ERROR)) {
            return "mbridge_reward_two_title_germany" + str;
        } else if (p.startsWith("ko")) {
            return "mbridge_reward_two_title_korea" + str;
        } else if (p.startsWith("fr")) {
            return "mbridge_reward_two_title_france" + str;
        } else if (p.startsWith("ar")) {
            return "mbridge_reward_two_title_arabia" + str;
        } else if (p.startsWith("ru")) {
            return "mbridge_reward_two_title_russian" + str;
        } else {
            return "mbridge_reward_two_title_en" + str;
        }
    }

    public static boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            Uri parse = Uri.parse(str);
            if (parse != null) {
                String queryParameter = parse.getQueryParameter("alecfc");
                if (!TextUtils.isEmpty(queryParameter)) {
                    if (queryParameter.equals("1")) {
                        return true;
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public static String a(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            Uri parse = Uri.parse(str);
            if (parse != null) {
                String queryParameter = parse.getQueryParameter(str2);
                if (!TextUtils.isEmpty(queryParameter)) {
                    return queryParameter;
                }
            }
            return "";
        } catch (Exception e) {
            if (MBridgeConstans.DEBUG) {
                e.printStackTrace();
            }
            return "";
        }
    }
}
