package com.tencent.liteav.base.util;

import android.text.TextUtils;
import java.util.concurrent.Callable;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class r<T> {

    /* renamed from: a  reason: collision with root package name */
    private T f10260a;
    private Callable<T> b;

    public r(Callable<T> callable) {
        this.b = callable;
    }

    public final void a(T t) {
        synchronized (this) {
            this.f10260a = t;
        }
    }

    public final T a() {
        T t = this.f10260a;
        if (t instanceof String) {
            if (!TextUtils.isEmpty((CharSequence) t)) {
                return this.f10260a;
            }
        } else if (t != null) {
            return t;
        }
        synchronized (this) {
            try {
                T t2 = this.f10260a;
                if (t2 instanceof String) {
                    if (!TextUtils.isEmpty((CharSequence) t2)) {
                        return this.f10260a;
                    }
                } else if (t2 != null) {
                    return t2;
                }
                try {
                    this.f10260a = this.b.call();
                } catch (Exception e) {
                    e.printStackTrace();
                    LiteavLog.e("Stash", "Get value failed. msg:" + e.getMessage());
                }
                return this.f10260a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
