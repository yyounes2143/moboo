package com.facebook.ads.internal.util.parcelable;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.facebook.infer.annotation.Nullsafe;
/* compiled from: Proguard */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes3.dex */
public class WrappedParcelable implements Parcelable {
    public static final Parcelable.Creator<WrappedParcelable> CREATOR = new Parcelable.Creator<WrappedParcelable>() { // from class: com.facebook.ads.internal.util.parcelable.WrappedParcelable.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public WrappedParcelable[] newArray(int i) {
            return new WrappedParcelable[i];
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public WrappedParcelable createFromParcel(Parcel parcel) {
            return new WrappedParcelable(parcel);
        }
    };
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final byte[] f6171Wwwwwwwwwwwwwwwwwwwwwwwww;

    public WrappedParcelable(Parcel parcel) {
        this.f6171Wwwwwwwwwwwwwwwwwwwwwwwww = parcel.createByteArray();
    }

    public static byte[] marshallParcelable(Parcelable parcelable) {
        Parcel obtain = Parcel.obtain();
        obtain.writeParcelable(parcelable, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        return marshall;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Nullable
    public Parcelable unwrap(ClassLoader classLoader) {
        Parcel obtain = Parcel.obtain();
        byte[] bArr = this.f6171Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (bArr != null) {
            obtain.unmarshall(bArr, 0, bArr.length);
            obtain.setDataPosition(0);
            Parcelable readParcelable = obtain.readParcelable(classLoader);
            obtain.recycle();
            return readParcelable;
        }
        return null;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeByteArray(this.f6171Wwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public WrappedParcelable(Parcelable parcelable) {
        this.f6171Wwwwwwwwwwwwwwwwwwwwwwwww = marshallParcelable(parcelable);
    }

    public WrappedParcelable(@Nullable byte[] bArr) {
        this.f6171Wwwwwwwwwwwwwwwwwwwwwwwww = bArr;
    }
}
