package com.google.android.play.core.integrity;

import android.app.Activity;
import android.os.Bundle;
import com.google.android.gms.tasks.Task;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
final class bj extends y {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ bk f7712a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bj(bk bkVar, String str, long j) {
        super(str, j);
        this.f7712a = bkVar;
    }

    @Override // com.google.android.play.core.integrity.y
    public final Task b(Activity activity, Bundle bundle) {
        long j;
        j = this.f7712a.e;
        bundle.putLong("cloud.prj", j);
        return this.f7712a.c.c(activity, bundle);
    }
}
