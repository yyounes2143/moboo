package com.changdu.component.deeplink.google;

import android.content.Context;
import com.changdu.component.deeplink.base.CDInstallCallBack;
import com.changdu.component.deeplink.base.CDInstallChannel;
import com.changdu.component.deeplink.base.DeepLinkBase;
import com.changdu.component.deeplink.base.DeepLinkManager;
import com.changdu.component.deeplink.google.CDInstallReferrerDetails;
import com.changdu.component.deeplink.google.GoogleDeepLinkCheck;
import com.didi.drouter.annotation.Service;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Service(cache = 2, function = {DeepLinkBase.class})
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¨\u0006\r"}, d2 = {"Lcom/changdu/component/deeplink/google/GoogleDeepLinkCheck;", "Lcom/changdu/component/deeplink/base/DeepLinkBase;", "Lcom/changdu/component/deeplink/base/CDInstallCallBack;", "installCallBack", "", "setCDInstallCallBack", "Landroid/content/Context;", "context", "init", "retry", "sdkInit", "<init>", "()V", "deeplink-google_release"}, k = 1, mv = {1, 9, 0})
/* loaded from: classes3.dex */
public final class GoogleDeepLinkCheck extends DeepLinkBase {

    /* renamed from: a  reason: collision with root package name */
    public CDInstallCallBack f5326a;
    public String b;
    public final String c = "GoogleDeepLinkCheck";

    public static final void a(GoogleDeepLinkCheck googleDeepLinkCheck, CDInstallReferrerDetails cDInstallReferrerDetails) {
        if (cDInstallReferrerDetails != null) {
            String str = googleDeepLinkCheck.c;
            cDInstallReferrerDetails.toJsonStr();
            CDInstallCallBack cDInstallCallBack = googleDeepLinkCheck.f5326a;
            if (cDInstallCallBack != null) {
                cDInstallCallBack.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cDInstallReferrerDetails.toJsonStr(), CDInstallChannel.Google);
            } else {
                googleDeepLinkCheck.b = cDInstallReferrerDetails.toJsonStr();
            }
        }
    }

    @Override // com.changdu.component.deeplink.base.DeepLinkBase
    public void init(@NotNull Context context) {
        if (DeepLinkManager.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            System.currentTimeMillis();
            CDInstallReferrerHandler.startListening(context);
            CDInstallReferrerHandler.setOnInstallReferrerListener(context, new b() { // from class: Wwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                @Override // com.changdu.component.deeplink.google.b
                public final void a(CDInstallReferrerDetails cDInstallReferrerDetails) {
                    GoogleDeepLinkCheck.a(GoogleDeepLinkCheck.this, cDInstallReferrerDetails);
                }
            });
        }
    }

    @Override // com.changdu.component.deeplink.base.DeepLinkBase
    public void setCDInstallCallBack(@NotNull CDInstallCallBack cDInstallCallBack) {
        this.f5326a = cDInstallCallBack;
        String str = this.b;
        if (str != null && cDInstallCallBack != null) {
            if (str == null) {
                str = "";
            }
            cDInstallCallBack.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, CDInstallChannel.Google);
        }
    }

    @Override // com.changdu.component.deeplink.base.DeepLinkBase
    public void retry(@NotNull Context context) {
    }

    @Override // com.changdu.component.deeplink.base.DeepLinkBase
    public void sdkInit(@NotNull Context context) {
    }
}
