package com.changdu.component.core.googleadid;

import android.content.Context;
import android.content.Intent;
import android.os.Looper;
import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class o {
    public static m a(Context context) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            context.getPackageManager().getPackageInfo("com.android.vending", 0);
            l lVar = new l();
            Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
            intent.setPackage("com.google.android.gms");
            try {
                if (context.bindService(intent, lVar, 1)) {
                    try {
                        n nVar = new n(lVar.a());
                        String a2 = nVar.a();
                        nVar.b();
                        return new m(a2);
                    } catch (Exception e) {
                        throw e;
                    }
                }
                throw new IOException("Google Play connection failed");
            } finally {
                context.unbindService(lVar);
            }
        }
        throw new IllegalStateException("Google Play Services info can't be accessed from the main thread");
    }
}
