package android.support.v4.os;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.support.v4.os.IResultReceiver;
import androidx.annotation.RestrictTo;
/* compiled from: Proguard */
@SuppressLint({"BanParcelableUsage"})
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class ResultReceiver implements Parcelable {
    public static final Parcelable.Creator<ResultReceiver> CREATOR = new Parcelable.Creator<ResultReceiver>() { // from class: android.support.v4.os.ResultReceiver.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public ResultReceiver[] newArray(int i) {
            return new ResultReceiver[i];
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public ResultReceiver createFromParcel(Parcel parcel) {
            return new ResultReceiver(parcel);
        }
    };

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public IResultReceiver f390Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f392Wwwwwwwwwwwwwwwwwwwwwwwww = false;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Handler f391Wwwwwwwwwwwwwwwwwwwwwwww = null;

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public class MyResultReceiver extends IResultReceiver.Stub {
        public MyResultReceiver() {
        }

        @Override // android.support.v4.os.IResultReceiver
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, Bundle bundle) {
            ResultReceiver resultReceiver = ResultReceiver.this;
            Handler handler = resultReceiver.f391Wwwwwwwwwwwwwwwwwwwwwwww;
            if (handler != null) {
                handler.post(new MyRunnable(i, bundle));
            } else {
                resultReceiver.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, bundle);
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public class MyRunnable implements Runnable {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Bundle f395Wwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f396Wwwwwwwwwwwwwwwwwwwwwwwww;

        public MyRunnable(int i, Bundle bundle) {
            this.f396Wwwwwwwwwwwwwwwwwwwwwwwww = i;
            this.f395Wwwwwwwwwwwwwwwwwwwwwwww = bundle;
        }

        @Override // java.lang.Runnable
        public void run() {
            ResultReceiver.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f396Wwwwwwwwwwwwwwwwwwwwwwwww, this.f395Wwwwwwwwwwwwwwwwwwwwwwww);
        }
    }

    public ResultReceiver(Parcel parcel) {
        this.f390Wwwwwwwwwwwwwwwwwwwwwww = IResultReceiver.Stub.Kkkkkkkkkk(parcel.readStrongBinder());
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, Bundle bundle) {
        if (this.f392Wwwwwwwwwwwwwwwwwwwwwwwww) {
            Handler handler = this.f391Wwwwwwwwwwwwwwwwwwwwwwww;
            if (handler != null) {
                handler.post(new MyRunnable(i, bundle));
                return;
            } else {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, bundle);
                return;
            }
        }
        IResultReceiver iResultReceiver = this.f390Wwwwwwwwwwwwwwwwwwwwwww;
        if (iResultReceiver != null) {
            try {
                iResultReceiver.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i, bundle);
            } catch (RemoteException unused) {
            }
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        synchronized (this) {
            try {
                if (this.f390Wwwwwwwwwwwwwwwwwwwwwww == null) {
                    this.f390Wwwwwwwwwwwwwwwwwwwwwww = new MyResultReceiver();
                }
                parcel.writeStrongBinder(this.f390Wwwwwwwwwwwwwwwwwwwwwww.asBinder());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, Bundle bundle) {
    }
}
