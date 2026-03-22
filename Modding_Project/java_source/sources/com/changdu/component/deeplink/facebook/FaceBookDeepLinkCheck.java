package com.changdu.component.deeplink.facebook;

import android.content.Context;
import com.changdu.component.core.CDComponent;
import com.changdu.component.deeplink.base.CDInstallCallBack;
import com.changdu.component.deeplink.base.CDInstallChannel;
import com.changdu.component.deeplink.base.DeepLinkBase;
import com.changdu.component.deeplink.base.DeepLinkManager;
import com.changdu.component.deeplink.base.util.SharedPrefsHelper;
import com.changdu.component.deeplink.facebook.FaceBookDeepLinkCheck;
import com.didi.drouter.annotation.Service;
import com.facebook.FacebookSdk;
import com.facebook.applinks.AppLinkData;
import kotlin.Metadata;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Service(cache = 2, function = {DeepLinkBase.class})
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¨\u0006\r"}, d2 = {"Lcom/changdu/component/deeplink/facebook/FaceBookDeepLinkCheck;", "Lcom/changdu/component/deeplink/base/DeepLinkBase;", "Lcom/changdu/component/deeplink/base/CDInstallCallBack;", "installCallBack", "", "setCDInstallCallBack", "Landroid/content/Context;", "context", "init", "retry", "sdkInit", "<init>", "()V", "deeplink-facebook_release"}, k = 1, mv = {1, 9, 0})
/* loaded from: classes3.dex */
public final class FaceBookDeepLinkCheck extends DeepLinkBase {

    /* renamed from: a  reason: collision with root package name */
    public CDInstallCallBack f5325a;
    public long b;
    public String c;
    public boolean e;
    public CDInstallChannel d = CDInstallChannel.FaceBook;
    public final String f = "FaceBookDeepLinkCheck";

    /* JADX WARN: Code restructure failed: missing block: B:7:0x000e, code lost:
        if (r5 != null) goto L4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void a(com.changdu.component.deeplink.facebook.FaceBookDeepLinkCheck r4, com.facebook.applinks.AppLinkData r5) {
        /*
            java.lang.String r0 = "onDeepLinkReceived:  targetUriStr: "
            if (r5 == 0) goto L10
            android.net.Uri r5 = r5.Wwwwwwwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Exception -> L38
            if (r5 == 0) goto L10
            java.lang.String r5 = r5.toString()     // Catch: java.lang.Exception -> L38
            if (r5 != 0) goto L12
        L10:
            java.lang.String r5 = ""
        L12:
            java.lang.String r1 = r4.f     // Catch: java.lang.Exception -> L38
            boolean r1 = r4.e     // Catch: java.lang.Exception -> L38
            if (r1 == 0) goto L19
            return
        L19:
            com.changdu.component.deeplink.base.CDInstallChannel r1 = com.changdu.component.deeplink.base.CDInstallChannel.FaceBookServer     // Catch: java.lang.Exception -> L38
            r4.d = r1     // Catch: java.lang.Exception -> L38
            r0.concat(r5)     // Catch: java.lang.Exception -> L38
            com.changdu.component.deeplink.base.CDInstallCallBack r0 = r4.f5325a     // Catch: java.lang.Exception -> L38
            if (r0 == 0) goto L35
            long r0 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Exception -> L38
            long r2 = r4.b     // Catch: java.lang.Exception -> L38
            long r0 = r0 - r2
            r4.b = r0     // Catch: java.lang.Exception -> L38
            com.changdu.component.deeplink.base.CDInstallCallBack r2 = r4.f5325a     // Catch: java.lang.Exception -> L38
            com.changdu.component.deeplink.base.CDInstallChannel r4 = r4.d     // Catch: java.lang.Exception -> L38
            r2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r5, r4, r0)     // Catch: java.lang.Exception -> L38
            return
        L35:
            r4.c = r5     // Catch: java.lang.Exception -> L38
            return
        L38:
            r4 = move-exception
            r4.printStackTrace()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.changdu.component.deeplink.facebook.FaceBookDeepLinkCheck.a(com.changdu.component.deeplink.facebook.FaceBookDeepLinkCheck, com.facebook.applinks.AppLinkData):void");
    }

    @Override // com.changdu.component.deeplink.base.DeepLinkBase
    public void init(@NotNull Context context) {
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        try {
            this.b = System.currentTimeMillis();
            SharedPrefsHelper sharedPrefsHelper = new SharedPrefsHelper(context.getApplicationContext(), "deepLinkPrefs", 0, 4, null);
            try {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = SharedPrefsHelper.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(sharedPrefsHelper, "url", null, 2, null);
            } catch (Exception e) {
                e.printStackTrace();
            }
            sharedPrefsHelper.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww("url");
            if (!StringsKt.isBlank(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
                this.e = true;
                this.d = CDInstallChannel.FaceBook;
                if (this.f5325a != null) {
                    long currentTimeMillis = System.currentTimeMillis() - this.b;
                    this.b = currentTimeMillis;
                    this.f5325a.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, this.d, currentTimeMillis);
                } else {
                    this.c = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                }
            }
            this.b = System.currentTimeMillis();
            AppLinkData.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(CDComponent.context, new AppLinkData.CompletionHandler() { // from class: Wwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // com.facebook.applinks.AppLinkData.CompletionHandler
                public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AppLinkData appLinkData) {
                    FaceBookDeepLinkCheck.a(FaceBookDeepLinkCheck.this, appLinkData);
                }
            });
        } catch (Exception unused) {
        }
    }

    @Override // com.changdu.component.deeplink.base.DeepLinkBase
    public void retry(@NotNull Context context) {
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        try {
            this.b = System.currentTimeMillis();
            SharedPrefsHelper sharedPrefsHelper = new SharedPrefsHelper(context.getApplicationContext(), "deepLinkPrefs", 0, 4, null);
            try {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = SharedPrefsHelper.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(sharedPrefsHelper, "url", null, 2, null);
            } catch (Exception e) {
                e.printStackTrace();
            }
            sharedPrefsHelper.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww("url");
            if (!StringsKt.isBlank(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
                this.e = true;
                this.d = CDInstallChannel.FaceBook;
                if (this.f5325a != null) {
                    long currentTimeMillis = System.currentTimeMillis() - this.b;
                    this.b = currentTimeMillis;
                    this.f5325a.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, this.d, currentTimeMillis);
                    return;
                }
                this.c = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            }
        } catch (Exception unused) {
        }
    }

    @Override // com.changdu.component.deeplink.base.DeepLinkBase
    public void sdkInit(@NotNull Context context) {
        FacebookSdk.Kkkkkkkkk(DeepLinkManager.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        FacebookSdk.Kkkkkkkkkkkkkkkkkkk(context);
    }

    @Override // com.changdu.component.deeplink.base.DeepLinkBase
    public void setCDInstallCallBack(@NotNull CDInstallCallBack cDInstallCallBack) {
        try {
            this.f5325a = cDInstallCallBack;
            if (this.c != null) {
                long currentTimeMillis = System.currentTimeMillis() - this.b;
                this.b = currentTimeMillis;
                CDInstallCallBack cDInstallCallBack2 = this.f5325a;
                if (cDInstallCallBack2 != null) {
                    String str = this.c;
                    if (str == null) {
                        str = "";
                    }
                    cDInstallCallBack2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, this.d, currentTimeMillis);
                }
                this.c = null;
            }
        } catch (Exception unused) {
        }
    }
}
