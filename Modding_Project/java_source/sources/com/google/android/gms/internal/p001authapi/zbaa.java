package com.google.android.gms.internal.p001authapi;

import android.content.Intent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.auth.api.identity.AuthorizationClient;
import com.google.android.gms.auth.api.identity.AuthorizationRequest;
import com.google.android.gms.auth.api.identity.AuthorizationResult;
import com.google.android.gms.auth.api.identity.zbc;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelableSerializer;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
/* compiled from: Proguard */
/* renamed from: com.google.android.gms.internal.auth-api.zbaa  reason: invalid package */
/* loaded from: classes4.dex */
public final class zbaa extends GoogleApi implements AuthorizationClient {
    private static final Api.ClientKey zba;
    private static final Api.AbstractClientBuilder zbb;
    private static final Api zbc;

    static {
        Api.ClientKey clientKey = new Api.ClientKey();
        zba = clientKey;
        zby zbyVar = new zby();
        zbb = zbyVar;
        zbc = new Api("Auth.Api.Identity.Authorization.API", zbyVar, clientKey);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zbaa(@androidx.annotation.NonNull android.app.Activity r3, @androidx.annotation.NonNull com.google.android.gms.auth.api.identity.zbc r4) {
        /*
            r2 = this;
            com.google.android.gms.common.api.Api r0 = com.google.android.gms.internal.p001authapi.zbaa.zbc
            com.google.android.gms.auth.api.identity.zbb r4 = com.google.android.gms.auth.api.identity.zbb.zbc(r4)
            java.lang.String r1 = com.google.android.gms.internal.p001authapi.zbat.zba()
            r4.zba(r1)
            com.google.android.gms.auth.api.identity.zbc r4 = r4.zbb()
            com.google.android.gms.common.api.GoogleApi$Settings r1 = com.google.android.gms.common.api.GoogleApi.Settings.DEFAULT_SETTINGS
            r2.<init>(r3, r0, r4, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.p001authapi.zbaa.<init>(android.app.Activity, com.google.android.gms.auth.api.identity.zbc):void");
    }

    @Override // com.google.android.gms.auth.api.identity.AuthorizationClient
    public final Task<AuthorizationResult> authorize(@NonNull AuthorizationRequest authorizationRequest) {
        Preconditions.checkNotNull(authorizationRequest);
        AuthorizationRequest.Builder zba2 = AuthorizationRequest.zba(authorizationRequest);
        zba2.zbb(((zbc) getApiOptions()).zbb());
        final AuthorizationRequest build = zba2.build();
        return doRead(TaskApiCall.builder().setFeatures(zbas.zbc).run(new RemoteCall() { // from class: com.google.android.gms.internal.auth-api.zbx
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                ((zbk) ((zbg) obj).getService()).zbc(new zbz(zbaa.this, (TaskCompletionSource) obj2), (AuthorizationRequest) Preconditions.checkNotNull(build));
            }
        }).setAutoResolveMissingFeatures(false).setMethodKey(1534).build());
    }

    @Override // com.google.android.gms.auth.api.identity.AuthorizationClient
    public final AuthorizationResult getAuthorizationResultFromIntent(@Nullable Intent intent) throws ApiException {
        if (intent != null) {
            Status status = (Status) SafeParcelableSerializer.deserializeFromIntentExtra(intent, NotificationCompat.CATEGORY_STATUS, Status.CREATOR);
            if (status != null) {
                if (status.isSuccess()) {
                    AuthorizationResult authorizationResult = (AuthorizationResult) SafeParcelableSerializer.deserializeFromIntentExtra(intent, "authorization_result", AuthorizationResult.CREATOR);
                    if (authorizationResult != null) {
                        return authorizationResult;
                    }
                    throw new ApiException(Status.RESULT_INTERNAL_ERROR);
                }
                throw new ApiException(status);
            }
            throw new ApiException(Status.RESULT_CANCELED);
        }
        throw new ApiException(Status.RESULT_INTERNAL_ERROR);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zbaa(@androidx.annotation.NonNull android.content.Context r3, @androidx.annotation.NonNull com.google.android.gms.auth.api.identity.zbc r4) {
        /*
            r2 = this;
            com.google.android.gms.common.api.Api r0 = com.google.android.gms.internal.p001authapi.zbaa.zbc
            com.google.android.gms.auth.api.identity.zbb r4 = com.google.android.gms.auth.api.identity.zbb.zbc(r4)
            java.lang.String r1 = com.google.android.gms.internal.p001authapi.zbat.zba()
            r4.zba(r1)
            com.google.android.gms.auth.api.identity.zbc r4 = r4.zbb()
            com.google.android.gms.common.api.GoogleApi$Settings r1 = com.google.android.gms.common.api.GoogleApi.Settings.DEFAULT_SETTINGS
            r2.<init>(r3, r0, r4, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.p001authapi.zbaa.<init>(android.content.Context, com.google.android.gms.auth.api.identity.zbc):void");
    }
}
