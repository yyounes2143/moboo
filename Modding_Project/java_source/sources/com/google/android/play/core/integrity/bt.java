package com.google.android.play.core.integrity;

import com.google.android.gms.tasks.Task;
import com.google.android.play.core.integrity.StandardIntegrityManager;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public final class bt {

    /* renamed from: a  reason: collision with root package name */
    private final bn f7718a;

    public bt(bn bnVar) {
        this.f7718a = bnVar;
    }

    public final /* synthetic */ Task a(long j, long j2, int i, StandardIntegrityManager.StandardIntegrityTokenRequest standardIntegrityTokenRequest) {
        return this.f7718a.d(standardIntegrityTokenRequest.a(), j, j2, 0);
    }
}
