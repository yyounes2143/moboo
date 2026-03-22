package com.google.android.play.core.integrity;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.tasks.TaskCompletionSource;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public final class at {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.play.integrity.internal.an f7698a;
    private final com.google.android.play.integrity.internal.an b;

    public at(com.google.android.play.integrity.internal.an anVar, com.google.android.play.integrity.internal.an anVar2) {
        this.f7698a = anVar;
        this.b = anVar2;
    }

    public final as a(Activity activity, TaskCompletionSource taskCompletionSource, com.google.android.play.integrity.internal.ae aeVar) {
        Object a2 = this.f7698a.a();
        a2.getClass();
        k kVar = (k) this.b.a();
        kVar.getClass();
        activity.getClass();
        aeVar.getClass();
        return new as((Context) a2, kVar, activity, taskCompletionSource, aeVar);
    }
}
