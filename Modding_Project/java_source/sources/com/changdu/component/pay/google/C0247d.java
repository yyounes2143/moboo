package com.changdu.component.pay.google;

import android.content.Context;
/* compiled from: Proguard */
/* renamed from: com.changdu.component.pay.google.d  reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0247d {
    public final x a(Context context) {
        x xVar;
        x xVar2 = x.g;
        if (xVar2 == null) {
            synchronized (this) {
                xVar = x.g;
                if (xVar == null) {
                    xVar = new x(context);
                    x.g = xVar;
                }
            }
            return xVar;
        }
        return xVar2;
    }
}
