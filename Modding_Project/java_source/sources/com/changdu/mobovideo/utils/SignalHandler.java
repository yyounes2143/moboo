package com.changdu.mobovideo.utils;

import android.content.Context;
import com.changdu.component.nativeguard.OnNativeGuardListener;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016¨\u0006\n"}, d2 = {"Lcom/changdu/mobovideo/utils/SignalHandler;", "Lcom/changdu/component/nativeguard/OnNativeGuardListener;", "<init>", "()V", "onReceiveNativeCrash", "", "context", "Landroid/content/Context;", "signal", "", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SignalHandler implements OnNativeGuardListener {
    @Override // com.changdu.component.nativeguard.OnNativeGuardListener
    public void onReceiveNativeCrash(@NotNull Context context, int i) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("bizType", "CDNativeCrash");
            jSONObject.put("bizMsg", String.valueOf(i));
            SensorsDataAPI.sharedInstance().track("CdAppClientBiz", jSONObject);
        } catch (Throwable unused) {
        }
        Thread.sleep(500L);
        Runtime.getRuntime().exit(0);
    }
}
