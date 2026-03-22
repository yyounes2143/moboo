package com.unity3d.scar.adapter.common.signals;

import com.unity3d.scar.adapter.common.DispatchGroup;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class SignalCallbackListener<T> implements ISignalCallbackListener<T> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public SignalsResult f10875Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public SignalsStorage<T> f10876Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public DispatchGroup f10877Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public SignalCallbackListener(DispatchGroup dispatchGroup, SignalsResult signalsResult) {
        this(dispatchGroup, null, signalsResult);
    }

    @Override // com.unity3d.scar.adapter.common.signals.ISignalCallbackListener
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, String str2, T t) {
        this.f10875Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, str2);
        SignalsStorage<T> signalsStorage = this.f10876Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (signalsStorage != null) {
            signalsStorage.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, t);
        }
        this.f10877Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // com.unity3d.scar.adapter.common.signals.ISignalCallbackListener
    public void onFailure(String str) {
        this.f10875Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
        this.f10877Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public SignalCallbackListener(DispatchGroup dispatchGroup, SignalsStorage<T> signalsStorage, SignalsResult signalsResult) {
        this.f10877Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = dispatchGroup;
        this.f10876Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = signalsStorage;
        this.f10875Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = signalsResult;
    }
}
