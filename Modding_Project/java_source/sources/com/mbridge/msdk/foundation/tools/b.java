package com.mbridge.msdk.foundation.tools;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.os.RemoteException;
import java.io.IOException;
import java.util.concurrent.LinkedBlockingQueue;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class b {

    /* compiled from: Proguard */
    /* renamed from: com.mbridge.msdk.foundation.tools.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public final class C0111b {

        /* renamed from: a  reason: collision with root package name */
        private final String f9088a;
        private final boolean b;

        public C0111b(String str, boolean z) {
            this.f9088a = str;
            this.b = z;
        }

        public String a() {
            return this.f9088a;
        }

        public boolean b() {
            return this.b;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public final class d implements IInterface {

        /* renamed from: a  reason: collision with root package name */
        private IBinder f9090a;

        public d(IBinder iBinder) {
            this.f9090a = iBinder;
        }

        public boolean a(boolean z) throws RemoteException {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            boolean z2 = false;
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                obtain.writeInt(z ? 1 : 0);
                this.f9090a.transact(2, obtain, obtain2, 0);
                obtain2.readException();
                if (obtain2.readInt() != 0) {
                    z2 = true;
                }
                return z2;
            } catch (Throwable th) {
                try {
                    o0.b("AdvertisingIdClient", th.getMessage());
                    return false;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this.f9090a;
        }

        public String getId() throws RemoteException {
            String str;
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                this.f9090a.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                str = obtain2.readString();
            } catch (Throwable th) {
                try {
                    o0.b("AdvertisingIdClient", th.getMessage());
                    str = null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
            return str;
        }
    }

    public C0111b a(Context context) throws Exception {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            context.getPackageManager().getPackageInfo("com.android.vending", 0);
            c cVar = new c();
            Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
            intent.setPackage("com.google.android.gms");
            if (context.bindService(intent, cVar, 1)) {
                try {
                    try {
                        d dVar = new d(cVar.a());
                        return new C0111b(dVar.getId(), dVar.a(true));
                    } catch (Exception e) {
                        throw e;
                    }
                } finally {
                    context.unbindService(cVar);
                }
            }
            throw new IOException("Google Play connection failed");
        }
        throw new IllegalStateException("Cannot be called from the main thread");
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public final class c implements ServiceConnection {

        /* renamed from: a  reason: collision with root package name */
        private final LinkedBlockingQueue<IBinder> f9089a;
        boolean b;

        private c() {
            this.f9089a = new LinkedBlockingQueue<>(1);
            this.b = false;
        }

        public IBinder a() throws InterruptedException {
            if (!this.b) {
                this.b = true;
                return this.f9089a.take();
            }
            throw new IllegalStateException();
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                this.f9089a.put(iBinder);
            } catch (InterruptedException e) {
                o0.b("AdvertisingIdClient", e.getMessage());
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }
}
