package com.changdu.component.deeplink.base;

import android.content.Context;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\b&\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000bH&¨\u0006\f"}, d2 = {"Lcom/changdu/component/deeplink/base/DeepLinkBase;", "", "()V", "init", "", "context", "Landroid/content/Context;", "retry", "sdkInit", "setCDInstallCallBack", "installCallBack", "Lcom/changdu/component/deeplink/base/CDInstallCallBack;", "deeplink-base_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public abstract class DeepLinkBase {
    public abstract void init(@NotNull Context context);

    public abstract void retry(@NotNull Context context);

    public abstract void sdkInit(@NotNull Context context);

    public abstract void setCDInstallCallBack(@NotNull CDInstallCallBack cDInstallCallBack);
}
