package android.support.v4.media.session;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
/* compiled from: Proguard */
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public class ParcelableVolumeInfo implements Parcelable {
    public static final Parcelable.Creator<ParcelableVolumeInfo> CREATOR = new Parcelable.Creator<ParcelableVolumeInfo>() { // from class: android.support.v4.media.session.ParcelableVolumeInfo.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public ParcelableVolumeInfo[] newArray(int i) {
            return new ParcelableVolumeInfo[i];
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public ParcelableVolumeInfo createFromParcel(Parcel parcel) {
            return new ParcelableVolumeInfo(parcel);
        }
    };

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f353Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f354Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f355Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f356Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f357Wwwwwwwwwwwwwwwwwwwwwwwww;

    public ParcelableVolumeInfo(int i, int i2, int i3, int i4, int i5) {
        this.f357Wwwwwwwwwwwwwwwwwwwwwwwww = i;
        this.f356Wwwwwwwwwwwwwwwwwwwwwwww = i2;
        this.f355Wwwwwwwwwwwwwwwwwwwwwww = i3;
        this.f354Wwwwwwwwwwwwwwwwwwwwww = i4;
        this.f353Wwwwwwwwwwwwwwwwwwwww = i5;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f357Wwwwwwwwwwwwwwwwwwwwwwwww);
        parcel.writeInt(this.f355Wwwwwwwwwwwwwwwwwwwwwww);
        parcel.writeInt(this.f354Wwwwwwwwwwwwwwwwwwwwww);
        parcel.writeInt(this.f353Wwwwwwwwwwwwwwwwwwwww);
        parcel.writeInt(this.f356Wwwwwwwwwwwwwwwwwwwwwwww);
    }

    public ParcelableVolumeInfo(Parcel parcel) {
        this.f357Wwwwwwwwwwwwwwwwwwwwwwwww = parcel.readInt();
        this.f355Wwwwwwwwwwwwwwwwwwwwwww = parcel.readInt();
        this.f354Wwwwwwwwwwwwwwwwwwwwww = parcel.readInt();
        this.f353Wwwwwwwwwwwwwwwwwwwww = parcel.readInt();
        this.f356Wwwwwwwwwwwwwwwwwwwwwwww = parcel.readInt();
    }
}
