package com.google.android.gms.internal.p001authapi;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.auth.api.identity.AuthorizationResult;
import com.google.android.gms.common.api.Status;
/* compiled from: Proguard */
/* renamed from: com.google.android.gms.internal.auth-api.zbj  reason: invalid package */
/* loaded from: classes4.dex */
public interface zbj extends IInterface {
    void zbb(Status status, AuthorizationResult authorizationResult) throws RemoteException;
}
