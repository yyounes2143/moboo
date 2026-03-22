package com.mbridge.msdk.foundation.tools;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.mbridge.msdk.activity.MBCommonActivity;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.out.BaseTrackingListener;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.out.NativeListener;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class s0 extends v {

    /* renamed from: a  reason: collision with root package name */
    public static char[] f9115a = {'a', 'n', 'd', 'r', 'o', 'i', 'd', 'c', 'o', 'n', 't', 'e', 'n', 't', 'p', 'm', 'g', 'e', 't', 'C', 'o', 'n', 't', 'e', 'x', 't'};
    public static boolean b = false;
    public static LinearLayout c;

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public static class a {
        public static boolean a(Context context, String str, NativeListener.NativeTrackingListener nativeTrackingListener) {
            try {
                List<ResolveInfo> a2 = a(context);
                if (a2 != null && a2.size() > 0) {
                    String a3 = a(str);
                    if (TextUtils.isEmpty(a3)) {
                        return false;
                    }
                    Intent b = b(context);
                    b.setData(Uri.parse(a3));
                    b.addFlags(268435456);
                    Iterator<ResolveInfo> it = a2.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        } else if (it.next().activityInfo.packageName.equals("com.android.vending")) {
                            b.setPackage("com.android.vending");
                            break;
                        }
                    }
                    context.startActivity(b);
                    s0.a(nativeTrackingListener);
                    return true;
                }
                return false;
            } catch (Throwable th) {
                o0.b("SDKUtil", Log.getStackTraceString(th));
                return false;
            }
        }

        public static Intent b(Context context) {
            return new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=com.package.name"));
        }

        public static boolean c(String str) {
            Uri parse;
            try {
                if (TextUtils.isEmpty(str) || (parse = Uri.parse(str)) == null || TextUtils.isEmpty(parse.getHost())) {
                    return false;
                }
                if (!parse.getHost().equals("play.google.com")) {
                    if (!parse.getHost().equals("market.android.com")) {
                        return false;
                    }
                    return true;
                }
                return true;
            } catch (Throwable th) {
                o0.b("SDKUtil", Log.getStackTraceString(th));
            }
            return false;
        }

        public static boolean d(String str) {
            try {
                if (!TextUtils.isEmpty(str)) {
                    return Uri.parse(str).getScheme().equals("market");
                }
                return false;
            } catch (Throwable th) {
                o0.b("SDKUtil", Log.getStackTraceString(th));
                return false;
            }
        }

        public static boolean b(String str) {
            return d(str) || c(str);
        }

        public static List<ResolveInfo> a(Context context) {
            try {
                return context.getPackageManager().queryIntentActivities(b(context), 0);
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        }

        public static String a(String str) {
            if (d(str)) {
                return str;
            }
            if (c(str)) {
                String substring = str.substring(str.indexOf("details?id="));
                return "market://" + substring;
            }
            return null;
        }
    }

    public static String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return new File(com.mbridge.msdk.foundation.same.directory.e.a(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_700_IMG), b(str)).getAbsolutePath();
    }

    public static String b(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if (str.lastIndexOf("/") == -1) {
            return str.hashCode() + "";
        }
        return (str.hashCode() + str.substring(str.lastIndexOf("/") + 1).hashCode()) + "";
    }

    public static void a(Context context, String str, NativeListener.NativeTrackingListener nativeTrackingListener) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            intent.addFlags(268435456);
            List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 0);
            boolean z = queryIntentActivities.size() > 0;
            if (!str.startsWith("market://")) {
                if (str.startsWith("https://play.google.com/")) {
                    String replace = str.replace("https://play.google.com/store/apps/details?id=", "");
                    a(context, "market://details?id=" + replace, nativeTrackingListener);
                }
            } else if (!z) {
                String replace2 = str.replace("market://details?id=", "");
                a(context, "https://play.google.com/store/apps/details?id=" + replace2, (BaseTrackingListener) nativeTrackingListener);
            } else {
                for (ResolveInfo resolveInfo : queryIntentActivities) {
                    if (resolveInfo.activityInfo.packageName.equals("com.android.vending")) {
                        intent.setClassName("com.android.vending", "com.android.vending.AssetBrowserActivity");
                        break;
                    }
                }
                try {
                    context.startActivity(intent);
                    a(nativeTrackingListener);
                } catch (Exception unused) {
                    String replace3 = str.replace("market://details?id=", "");
                    a(context, "https://play.google.com/store/apps/details?id=" + replace3, (BaseTrackingListener) nativeTrackingListener);
                }
            }
        } catch (Exception e) {
            o0.b("SDKUtil", e.getMessage());
        }
    }

    public static void b(Campaign campaign, ViewGroup viewGroup) {
        a(campaign, viewGroup, 0, 0);
    }

    public static void a(Campaign campaign, ViewGroup viewGroup) {
        if (campaign != null) {
            CampaignEx campaignEx = (CampaignEx) campaign;
            if (campaignEx.getLinkType() == 8 && campaignEx.getAabEntity() != null && campaignEx.getAabEntity().getHlp() == 1) {
                if (viewGroup == null) {
                    o0.d("SDKUtil", "hide linkType==8 loading view failed. viewGroup is null");
                    return;
                }
                try {
                    LinearLayout linearLayout = c;
                    if (linearLayout == null) {
                        return;
                    }
                    viewGroup.removeView(linearLayout);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
    }

    public static void a(Context context, String str, BaseTrackingListener baseTrackingListener) {
        a(context, str, baseTrackingListener, (CampaignEx) null, new ArrayList());
    }

    public static void a(Context context, String str, CampaignEx campaignEx, NativeListener.NativeTrackingListener nativeTrackingListener, List<String> list) {
        Intent intent;
        if (context == null) {
            return;
        }
        com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
        if (list != null) {
            list.add("web_view");
        }
        if (b) {
            a(context, str, nativeTrackingListener, campaignEx, list);
            return;
        }
        try {
            int i = MBCommonActivity.e;
            intent = new Intent(context, MBCommonActivity.class);
        } catch (Exception unused) {
            eVar.a("result", 2);
            a(context, str, nativeTrackingListener, campaignEx, list);
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (a.d(str)) {
            str = "https://play.google.com/store/apps/details?id=" + str.replace("market://details?id=", "");
        }
        intent.putExtra("url", str);
        o0.c("url", "webview url = " + str);
        intent.setFlags(268435456);
        intent.putExtra("mvcommon", campaignEx);
        context.startActivity(intent);
        eVar.a("result", 1);
        eVar.a("type", 9);
        if (list != null) {
            eVar.a("click_path", list.toString());
        }
        com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000150", campaignEx, eVar);
    }

    public static void a(Context context, String str, BaseTrackingListener baseTrackingListener, CampaignEx campaignEx, List<String> list) {
        if (str == null || context == null) {
            return;
        }
        if (list != null) {
            list.add("browser");
        }
        com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
        try {
            if (a.d(str)) {
                str = "https://play.google.com/store/apps/details?id=" + str.replace("market://details?id=", "");
            }
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            intent.setComponent(null);
            intent.setSelector(null);
            intent.addFlags(268435456);
            ResolveInfo resolveActivity = context.getPackageManager().resolveActivity(intent, 65536);
            if (resolveActivity != null) {
                ActivityInfo activityInfo = resolveActivity.activityInfo;
                intent.setClassName(activityInfo.packageName, activityInfo.name);
            }
            context.startActivity(intent);
            a(baseTrackingListener);
            eVar.a("result", 1);
        } catch (Exception e) {
            e.printStackTrace();
            try {
                Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse(str));
                intent2.addFlags(268468224);
                context.startActivity(intent2);
                a(baseTrackingListener);
                eVar.a("result", 1);
            } catch (Exception e2) {
                e2.printStackTrace();
                eVar.a("result", 2);
            }
        }
        try {
            eVar.a("type", 5);
            if (list != null) {
                eVar.a("click_path", list.toString());
            }
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000150", campaignEx, eVar);
        } catch (Exception unused) {
        }
    }

    public static void a(BaseTrackingListener baseTrackingListener) {
        if (baseTrackingListener instanceof NativeListener.TrackingExListener) {
            ((NativeListener.TrackingExListener) baseTrackingListener).onLeaveApp();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x005a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(android.content.Context r10, java.lang.String r11, com.mbridge.msdk.foundation.entity.CampaignEx r12, com.mbridge.msdk.click.a r13, com.mbridge.msdk.out.BaseTrackingListener r14, java.util.List<java.lang.String> r15) {
        /*
            java.lang.String r1 = "result"
            com.mbridge.msdk.foundation.same.report.metrics.e r2 = new com.mbridge.msdk.foundation.same.report.metrics.e
            r2.<init>()
            r0 = 9
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            java.lang.String r3 = "type"
            r2.a(r3, r0)
            com.mbridge.msdk.foundation.webview.BrowserView r8 = new com.mbridge.msdk.foundation.webview.BrowserView     // Catch: java.lang.Exception -> L47
            com.mbridge.msdk.foundation.controller.c r0 = com.mbridge.msdk.foundation.controller.c.m()     // Catch: java.lang.Exception -> L47
            android.content.Context r0 = r0.d()     // Catch: java.lang.Exception -> L47
            r8.<init>(r0, r12)     // Catch: java.lang.Exception -> L47
            android.widget.LinearLayout$LayoutParams r0 = new android.widget.LinearLayout$LayoutParams     // Catch: java.lang.Exception -> L47
            int r3 = com.mbridge.msdk.foundation.tools.k0.n(r10)     // Catch: java.lang.Exception -> L47
            int r4 = com.mbridge.msdk.foundation.tools.k0.m(r10)     // Catch: java.lang.Exception -> L47
            r0.<init>(r3, r4)     // Catch: java.lang.Exception -> L47
            r8.setLayoutParams(r0)     // Catch: java.lang.Exception -> L47
            com.mbridge.msdk.foundation.webview.a r4 = new com.mbridge.msdk.foundation.webview.a     // Catch: java.lang.Exception -> L47
            r5 = r10
            r6 = r12
            r7 = r13
            r9 = r14
            r4.<init>(r5, r6, r7, r8, r9)     // Catch: java.lang.Exception -> L44
            r8.setListener(r4)     // Catch: java.lang.Exception -> L44
            r8.loadUrl(r11)     // Catch: java.lang.Exception -> L44
            java.lang.String r10 = "1"
            r2.a(r1, r10)     // Catch: java.lang.Exception -> L44
            goto L58
        L44:
            r0 = move-exception
        L45:
            r10 = r0
            goto L4a
        L47:
            r0 = move-exception
            r6 = r12
            goto L45
        L4a:
            java.lang.String r10 = r10.getMessage()
            java.lang.String r11 = "SDKUtil"
            com.mbridge.msdk.foundation.tools.o0.b(r11, r10)
            java.lang.String r10 = "2"
            r2.a(r1, r10)
        L58:
            if (r15 == 0) goto L63
            java.lang.String r10 = r15.toString()
            java.lang.String r11 = "click_path"
            r2.a(r11, r10)
        L63:
            com.mbridge.msdk.foundation.same.report.metrics.d r10 = com.mbridge.msdk.foundation.same.report.metrics.d.b()
            java.lang.String r11 = "2000150"
            r10.a(r11, r6, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.tools.s0.a(android.content.Context, java.lang.String, com.mbridge.msdk.foundation.entity.CampaignEx, com.mbridge.msdk.click.a, com.mbridge.msdk.out.BaseTrackingListener, java.util.List):void");
    }

    public static void a(Campaign campaign, ViewGroup viewGroup, int i, int i2) {
        if (campaign != null) {
            CampaignEx campaignEx = (CampaignEx) campaign;
            if (campaignEx.getLinkType() == 8 && campaignEx.getAabEntity() != null && campaignEx.getAabEntity().getHlp() == 1) {
                if (viewGroup == null) {
                    o0.d("SDKUtil", "show linkType==8 loading view failed. viewGroup is null");
                    return;
                }
                try {
                    if (c == null) {
                        Context d = com.mbridge.msdk.foundation.controller.c.m().d();
                        if (d instanceof Activity) {
                            c = (LinearLayout) LayoutInflater.from(d.getApplicationContext()).inflate(g0.a(d.getApplicationContext(), "mbridge_cm_loading_layout", "layout"), (ViewGroup) null);
                        } else {
                            c = (LinearLayout) LayoutInflater.from(d).inflate(g0.a(d, "mbridge_cm_loading_layout", "layout"), (ViewGroup) null);
                        }
                    }
                    int min = Math.min(viewGroup.getWidth(), viewGroup.getHeight());
                    int min2 = Math.min(Math.max(min / 4, 70), min);
                    if (viewGroup instanceof FrameLayout) {
                        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(min2, min2);
                        layoutParams.gravity = 17;
                        c1.a(c);
                        viewGroup.addView(c, layoutParams);
                        return;
                    }
                    RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(min2, min2);
                    if (i2 == 0 && i == 0) {
                        layoutParams2.addRule(13);
                    } else {
                        layoutParams2.leftMargin = i2;
                        layoutParams2.topMargin = i;
                    }
                    c1.a(c);
                    viewGroup.addView(c, layoutParams2);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
