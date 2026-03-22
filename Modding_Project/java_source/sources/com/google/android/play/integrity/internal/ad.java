package com.google.android.play.integrity.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public final class ad implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ae f7737a;

    public /* synthetic */ ad(ae aeVar, ac acVar) {
        this.f7737a = aeVar;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        s sVar;
        sVar = this.f7737a.c;
        sVar.d("ServiceConnectionImpl.onServiceConnected(%s)", componentName);
        this.f7737a.c().post(new aa(this, iBinder));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        s sVar;
        sVar = this.f7737a.c;
        sVar.d("ServiceConnectionImpl.onServiceDisconnected(%s)", componentName);
        this.f7737a.c().post(new ab(this));
    }
}
