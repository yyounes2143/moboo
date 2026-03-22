package com.cd_core4.cd_deep_link;

import android.app.Activity;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.appsflyer.AppsFlyerProperties;
import com.cd_core4.cd_deep_link.CdDeepLinkPlugin;
import com.cd_core4.cd_deep_link.CdDeepLinkPlugin$init$1$1;
import com.changdu.component.deeplink.base.CDInstallCallBack;
import com.changdu.component.deeplink.base.CDInstallChannel;
import io.flutter.plugin.common.MethodChannel;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ'\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"com/cd_core4/cd_deep_link/CdDeepLinkPlugin$init$1$1", "Lcom/changdu/component/deeplink/base/CDInstallCallBack;", "", "referrerStr", "Lcom/changdu/component/deeplink/base/CDInstallChannel;", AppsFlyerProperties.CHANNEL, "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Lcom/changdu/component/deeplink/base/CDInstallChannel;)V", "", TypedValues.TransitionType.S_DURATION, "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Lcom/changdu/component/deeplink/base/CDInstallChannel;J)V", "cd_deep_link_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class CdDeepLinkPlugin$init$1$1 implements CDInstallCallBack {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final /* synthetic */ CdDeepLinkPlugin f5271Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public CdDeepLinkPlugin$init$1$1(CdDeepLinkPlugin cdDeepLinkPlugin) {
        this.f5271Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = cdDeepLinkPlugin;
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(CdDeepLinkPlugin cdDeepLinkPlugin, String str, CDInstallChannel cDInstallChannel, long j) {
        MethodChannel methodChannel;
        String unused;
        methodChannel = cdDeepLinkPlugin.f5270Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (methodChannel != null) {
            methodChannel.invokeMethod("handleDeepLink", MapsKt.mapOf(TuplesKt.to("referrerStr", str), TuplesKt.to(AppsFlyerProperties.CHANNEL, Integer.valueOf(cDInstallChannel.getValue())), TuplesKt.to(TypedValues.TransitionType.S_DURATION, Long.valueOf(j))));
        }
        unused = cdDeepLinkPlugin.f5268Wwwwwwwwwwwwwwwwwwwwwww;
        cDInstallChannel.getValue();
    }

    @Override // com.changdu.component.deeplink.base.CDInstallCallBack
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, CDInstallChannel cDInstallChannel) {
        MethodChannel methodChannel;
        String unused;
        methodChannel = this.f5271Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f5270Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (methodChannel != null) {
            methodChannel.invokeMethod("decryptInstallReferrer", MapsKt.mapOf(TuplesKt.to("referrerStr", str), TuplesKt.to(AppsFlyerProperties.CHANNEL, Integer.valueOf(cDInstallChannel.getValue()))));
        }
        unused = this.f5271Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f5268Wwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // com.changdu.component.deeplink.base.CDInstallCallBack
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(final String str, final CDInstallChannel cDInstallChannel, final long j) {
        Activity activity;
        try {
            activity = this.f5271Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.f5269Wwwwwwwwwwwwwwwwwwwwwwww;
            if (activity != null) {
                final CdDeepLinkPlugin cdDeepLinkPlugin = this.f5271Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                activity.runOnUiThread(new Runnable() { // from class: Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        CdDeepLinkPlugin$init$1$1.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(CdDeepLinkPlugin.this, str, cDInstallChannel, j);
                    }
                });
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
