package com.google.android.play.core.integrity;

import com.google.android.gms.tasks.Task;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
final class aa implements IntegrityManager {

    /* renamed from: a  reason: collision with root package name */
    private final aj f7682a;

    public aa(aj ajVar) {
        this.f7682a = ajVar;
    }

    @Override // com.google.android.play.core.integrity.IntegrityManager
    public final Task<IntegrityTokenResponse> requestIntegrityToken(IntegrityTokenRequest integrityTokenRequest) {
        return this.f7682a.c(integrityTokenRequest);
    }
}
