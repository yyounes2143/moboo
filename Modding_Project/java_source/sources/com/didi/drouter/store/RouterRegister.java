package com.didi.drouter.store;

import androidx.annotation.RestrictTo;
import com.didi.drouter.router.IRouterHandler;
/* compiled from: Proguard */
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public class RouterRegister implements IRegister {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Object f5813Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public ServiceKey<?> f5814Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public IRouterHandler f5815Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public RouterKey f5816Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public RouterRegister(RouterKey routerKey, IRouterHandler iRouterHandler) {
        this.f5816Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = routerKey;
        this.f5815Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = iRouterHandler;
    }

    @Override // com.didi.drouter.store.IRegister
    public void unregister() {
        RouterStore.Wwwwwwwwwwwwwwwwwww(this.f5816Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f5815Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        RouterStore.Wwwwwwwwwwwwwwwwww(this.f5814Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f5813Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public RouterRegister(ServiceKey<?> serviceKey, Object obj) {
        this.f5814Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = serviceKey;
        this.f5813Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = obj;
    }
}
