package com.changdu.component.deeplink.base;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.util.ArrayList;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001J\u001d\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/changdu/component/deeplink/base/CDInstallReferrerReceiverManager;", "", "Landroid/content/Context;", "context", "Landroid/content/Intent;", "intent", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Landroid/content/Intent;)V", "deeplink-base_release"}, k = 1, mv = {1, 9, 0})
/* loaded from: classes3.dex */
public final class CDInstallReferrerReceiverManager {
    @NotNull
    public static final CDInstallReferrerReceiverManager INSTANCE = new CDInstallReferrerReceiverManager();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final ArrayList f5313Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull Intent intent) {
        ArrayList arrayList = f5313Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ((BroadcastReceiver) obj).onReceive(context, intent);
        }
    }
}
