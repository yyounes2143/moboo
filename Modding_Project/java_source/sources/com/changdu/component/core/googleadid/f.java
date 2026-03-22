package com.changdu.component.core.googleadid;

import android.content.Context;
import java.lang.reflect.Method;
import java.util.concurrent.Callable;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class f implements Callable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Object f5305a;

    public f(Context context, Object obj) {
        this.f5305a = obj;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        Object invoke;
        Object obj = this.f5305a;
        try {
            Method method = obj.getClass().getMethod("getId", null);
            if (method == null) {
                invoke = null;
            } else {
                invoke = method.invoke(obj, null);
            }
            return (String) invoke;
        } catch (Throwable unused) {
            return null;
        }
    }
}
