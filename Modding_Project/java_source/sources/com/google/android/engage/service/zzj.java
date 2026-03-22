package com.google.android.engage.service;

import androidx.work.ListenableWorker;
import com.google.common.base.Function;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final /* synthetic */ class zzj implements Function {
    @Override // com.google.common.base.Function
    public final Object apply(Object obj) {
        Void r1 = (Void) obj;
        return ListenableWorker.Result.success();
    }
}
