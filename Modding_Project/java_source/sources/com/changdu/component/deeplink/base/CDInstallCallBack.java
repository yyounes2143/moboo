package com.changdu.component.deeplink.base;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.appsflyer.AppsFlyerProperties;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H&¢\u0006\u0004\b\u0007\u0010\bJ'\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH&¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/changdu/component/deeplink/base/CDInstallCallBack;", "", "", "referrerStr", "Lcom/changdu/component/deeplink/base/CDInstallChannel;", AppsFlyerProperties.CHANNEL, "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Lcom/changdu/component/deeplink/base/CDInstallChannel;)V", "", TypedValues.TransitionType.S_DURATION, "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Lcom/changdu/component/deeplink/base/CDInstallChannel;J)V", "deeplink-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public interface CDInstallCallBack {
    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @NotNull CDInstallChannel cDInstallChannel);

    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @NotNull CDInstallChannel cDInstallChannel, long j);
}
