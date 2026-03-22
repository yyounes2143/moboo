package com.changdu.component.core.googleadid;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import java.lang.reflect.Method;
import java.util.concurrent.Callable;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class e implements Callable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Context f5304a;

    public e(Context context) {
        this.f5304a = context;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        try {
            Object[] objArr = {this.f5304a};
            Method method = AdvertisingIdClient.class.getMethod("getAdvertisingIdInfo", Context.class);
            if (method == null) {
                return null;
            }
            return method.invoke(null, objArr);
        } catch (Exception unused) {
            return null;
        }
    }
}
