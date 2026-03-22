package com.tencent.rtmp.downloader.a;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.tencent.rtmp.TXPlayerAuthBuilder;
import com.tencent.rtmp.downloader.TXVodDownloadDataSource;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class a extends TXVodDownloadDataSource implements Parcelable {
    public static final Parcelable.Creator<a> CREATOR = new Parcelable.Creator<a>() { // from class: com.tencent.rtmp.downloader.a.a.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ a createFromParcel(Parcel parcel) {
            return new a(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ a[] newArray(int i) {
            return new a[i];
        }
    };

    public a(int i, String str, int i2, String str2, String str3) {
        super(i, str, i2, str2, str3);
    }

    public static int a(int i) {
        if (i != 1000) {
            switch (i) {
                case 0:
                    return 0;
                case 1:
                    return TXVodDownloadDataSource.QUALITY_360P;
                case 2:
                    return TXVodDownloadDataSource.QUALITY_540P;
                case 3:
                    return TXVodDownloadDataSource.QUALITY_720P;
                case 4:
                    return TXVodDownloadDataSource.QUALITY_1080P;
                case 5:
                    return 1800;
                case 6:
                    return 3112;
                default:
                    return i;
            }
        }
        return 0;
    }

    public final void b(String str) {
        this.overlayIv = str;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.appId);
        parcel.writeString(this.fileId);
        parcel.writeString(this.pSign);
        parcel.writeInt(this.quality);
        parcel.writeString(this.userName);
        if (!TextUtils.isEmpty(this.pSign)) {
            parcel.writeString(this.overlayKey);
            parcel.writeString(this.overlayIv);
        }
    }

    public a(TXPlayerAuthBuilder tXPlayerAuthBuilder, int i) {
        super(tXPlayerAuthBuilder, i);
    }

    public static String b(int i) {
        if (i == 1) {
            return "FLU";
        }
        if (i == 2) {
            return "SD";
        }
        if (i == 3) {
            return "HD";
        }
        if (i == 4) {
            return "FHD";
        }
        if (i == 5) {
            return "2K";
        }
        if (i == 6) {
            return "4K";
        }
        return "";
    }

    public final void a(String str) {
        this.overlayKey = str;
    }

    public a(TXPlayerAuthBuilder tXPlayerAuthBuilder, String str) {
        super(tXPlayerAuthBuilder, str);
    }

    public a(Parcel parcel) {
        this.appId = parcel.readInt();
        this.fileId = parcel.readString();
        this.pSign = parcel.readString();
        this.quality = parcel.readInt();
        this.userName = parcel.readString();
        if (TextUtils.isEmpty(this.pSign)) {
            return;
        }
        this.overlayKey = parcel.readString();
        this.overlayIv = parcel.readString();
    }
}
