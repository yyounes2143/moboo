package com.applovin.impl.privacy.cmp;

import android.app.Activity;
import android.os.Bundle;
import androidx.annotation.NonNull;
import com.applovin.impl.g0;
import com.applovin.impl.privacy.cmp.a;
import com.applovin.impl.sdk.k;
import com.applovin.impl.sdk.o;
import com.applovin.impl.z6;
import com.applovin.sdk.AppLovinCmpError;
import com.applovin.sdk.AppLovinCmpService;
import com.applovin.sdk.AppLovinSdkUtils;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class CmpServiceImpl implements AppLovinCmpService, a.InterfaceC0019a {

    /* renamed from: a  reason: collision with root package name */
    private final k f3470a;
    private AppLovinCmpError e;
    private e f;
    private f g;
    private final Object c = new Object();
    private d d = d.NONE;
    private final com.applovin.impl.privacy.cmp.a b = c();

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class a implements e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AppLovinCmpService.OnCompletedListener f3471a;
        final /* synthetic */ Activity b;

        /* compiled from: Proguard */
        /* renamed from: com.applovin.impl.privacy.cmp.CmpServiceImpl$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public class C0018a implements f {
            public C0018a() {
            }

            @Override // com.applovin.impl.privacy.cmp.CmpServiceImpl.f
            public void a(AppLovinCmpError appLovinCmpError) {
                a.this.f3471a.onCompleted(appLovinCmpError);
            }
        }

        public a(AppLovinCmpService.OnCompletedListener onCompletedListener, Activity activity) {
            this.f3471a = onCompletedListener;
            this.b = activity;
        }

        @Override // com.applovin.impl.privacy.cmp.CmpServiceImpl.e
        public void a(AppLovinCmpError appLovinCmpError) {
            if (appLovinCmpError != null) {
                this.f3471a.onCompleted(appLovinCmpError);
            } else {
                CmpServiceImpl.this.showCmp(this.b, new C0018a());
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Activity f3473a;

        public b(Activity activity) {
            this.f3473a = activity;
        }

        @Override // java.lang.Runnable
        public void run() {
            CmpServiceImpl.this.b.b(this.f3473a, CmpServiceImpl.this.a(), CmpServiceImpl.this);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Activity f3474a;

        public c(Activity activity) {
            this.f3474a = activity;
        }

        @Override // java.lang.Runnable
        public void run() {
            CmpServiceImpl.this.b.a(this.f3474a, CmpServiceImpl.this.a(), CmpServiceImpl.this);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public enum d {
        NONE,
        LOADING,
        COMPLETED
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface e {
        void a(AppLovinCmpError appLovinCmpError);
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface f {
        void a(AppLovinCmpError appLovinCmpError);
    }

    public CmpServiceImpl(k kVar) {
        this.f3470a = kVar;
    }

    private com.applovin.impl.privacy.cmp.a c() {
        if (z6.a("com.google.android.ump.ConsentForm")) {
            return new com.applovin.impl.privacy.cmp.a(this.f3470a);
        }
        if (this.f3470a.y().j()) {
            o.h("AppLovinSdk", "Could not load Google UMP. Please add the Google User Messaging Platform SDK into your application. Instructions can be found here: https://developers.applovin.com/en/android/overview/terms-and-privacy-policy-flow#enabling-google-ump");
            return null;
        }
        return null;
    }

    private void d() {
        if (!hasSupportedCmp()) {
            return;
        }
        this.b.c();
    }

    @Override // com.applovin.sdk.AppLovinCmpService
    public boolean hasSupportedCmp() {
        if (this.b != null) {
            return true;
        }
        return false;
    }

    public void loadCmp(Activity activity, e eVar) {
        a(activity, eVar);
    }

    @Override // com.applovin.impl.privacy.cmp.a.InterfaceC0019a
    public void onFlowHidden(Bundle bundle) {
        b((AppLovinCmpError) null);
        b();
    }

    @Override // com.applovin.impl.privacy.cmp.a.InterfaceC0019a
    public void onFlowLoadFailed(CmpErrorImpl cmpErrorImpl) {
        b();
        synchronized (this.c) {
            try {
                if (this.f == null) {
                    this.d = d.COMPLETED;
                    this.e = cmpErrorImpl;
                    return;
                }
                this.d = d.NONE;
                a(cmpErrorImpl);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.applovin.impl.privacy.cmp.a.InterfaceC0019a
    public void onFlowLoaded(Bundle bundle) {
        synchronized (this.c) {
            try {
                if (this.f == null) {
                    this.d = d.COMPLETED;
                    return;
                }
                this.d = d.NONE;
                a((AppLovinCmpError) null);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.applovin.impl.privacy.cmp.a.InterfaceC0019a
    public void onFlowShowFailed(CmpErrorImpl cmpErrorImpl) {
        b(cmpErrorImpl);
        b();
    }

    public void preloadCmp(Activity activity) {
        a(activity, null);
    }

    public void showCmp(Activity activity, f fVar) {
        b bVar = new b(activity);
        this.g = fVar;
        if (this.b.e()) {
            AppLovinSdkUtils.runOnUiThread(bVar);
        } else {
            bVar.run();
        }
    }

    @Override // com.applovin.sdk.AppLovinCmpService
    public void showCmpForExistingUser(@NonNull Activity activity, @NonNull AppLovinCmpService.OnCompletedListener onCompletedListener) {
        this.f3470a.O();
        if (o.a()) {
            o O = this.f3470a.O();
            O.a("AppLovinCmpService", "showCmpForExistingUser(activity=" + activity + ", completedListener=" + onCompletedListener + ")");
        }
        if (!hasSupportedCmp()) {
            onCompletedListener.onCompleted(new CmpErrorImpl(AppLovinCmpError.Code.INTEGRATION_ERROR, "A supported CMP is not integrated"));
            return;
        }
        d();
        loadCmp(activity, new a(onCompletedListener, activity));
    }

    @NonNull
    public String toString() {
        return "[CmpService]";
    }

    private void a(AppLovinCmpError appLovinCmpError) {
        e eVar = this.f;
        if (eVar == null) {
            return;
        }
        eVar.a(appLovinCmpError);
        this.f = null;
        this.e = null;
    }

    private void b(AppLovinCmpError appLovinCmpError) {
        f fVar = this.g;
        if (fVar == null) {
            return;
        }
        fVar.a(appLovinCmpError);
        this.g = null;
    }

    private void b() {
        com.applovin.impl.privacy.cmp.a aVar = this.b;
        if (aVar == null) {
            return;
        }
        aVar.a();
    }

    private void a(Activity activity, e eVar) {
        boolean z;
        if (!hasSupportedCmp()) {
            if (eVar != null) {
                eVar.a(new CmpErrorImpl(AppLovinCmpError.Code.INTEGRATION_ERROR, "A supported CMP is not integrated"));
                return;
            }
            return;
        }
        synchronized (this.c) {
            if (eVar != null) {
                try {
                    this.f = eVar;
                } catch (Throwable th) {
                    throw th;
                }
            }
            d dVar = this.d;
            d dVar2 = d.NONE;
            if (dVar == dVar2) {
                this.d = d.LOADING;
                z = false;
            } else if (dVar == d.LOADING) {
                return;
            } else {
                this.d = dVar2;
                z = true;
            }
            if (z) {
                a(this.e);
                return;
            }
            c cVar = new c(activity);
            if (this.b.d()) {
                AppLovinSdkUtils.runOnUiThread(cVar);
            } else {
                cVar.run();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public g0 a() {
        return new g0(this.f3470a.y().d());
    }
}
