package com.tencent.rtmp.downloader.a;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.tencent.rtmp.TXPlayerDrmBuilder;
import com.tencent.rtmp.downloader.TXVodDownloadMediaInfo;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class c extends TXVodDownloadMediaInfo implements Parcelable {
    public static final Parcelable.Creator<c> CREATOR = new Parcelable.Creator<c>() { // from class: com.tencent.rtmp.downloader.a.c.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ c createFromParcel(Parcel parcel) {
            return new c(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ c[] newArray(int i) {
            return new c[i];
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private static final String f10472a = "com.tencent.rtmp.downloader.a.c";

    public c() {
    }

    public final void a(a aVar) {
        this.dataSource = aVar;
    }

    public final void b(int i) {
        this.playableDuration = i;
    }

    public final void c(int i) {
        this.tid = i;
    }

    public final void d(int i) {
        this.downloadState = i;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final void e(int i) {
        this.speed = i;
    }

    public final void f(int i) {
        this.mEncryptedLevel = i;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        String str;
        parcel.writeParcelable(this.dataSource, 0);
        parcel.writeInt(this.duration);
        parcel.writeInt(this.size);
        parcel.writeInt(this.downloadSize);
        parcel.writeInt(this.segments);
        parcel.writeInt(this.downloadSegments);
        parcel.writeString(this.playPath);
        parcel.writeString(this.url);
        if (this.dataSource == null) {
            parcel.writeString(this.userName);
        }
        parcel.writeInt(this.downloadState);
        parcel.writeInt(this.playableDuration);
        parcel.writeLong(this.preferredResolution);
        TXPlayerDrmBuilder tXPlayerDrmBuilder = this.drmBuilder;
        if (tXPlayerDrmBuilder != null) {
            str = tXPlayerDrmBuilder.getKeyLicenseUrl();
        } else {
            str = "";
        }
        parcel.writeString(str);
        parcel.writeInt(this.speed);
        parcel.writeLong(this.totalSize);
        parcel.writeLong(this.playableSize);
    }

    public c(Parcel parcel) {
        int i;
        int i2;
        this.dataSource = (a) parcel.readParcelable(a.class.getClassLoader());
        this.duration = parcel.readInt();
        this.size = parcel.readInt();
        this.downloadSize = parcel.readInt();
        this.segments = parcel.readInt();
        this.downloadSegments = parcel.readInt();
        this.playPath = parcel.readString();
        this.url = parcel.readString();
        if (this.dataSource == null) {
            this.userName = parcel.readString();
        }
        this.downloadState = parcel.readInt();
        this.playableDuration = parcel.readInt();
        long readLong = parcel.readLong();
        this.preferredResolution = readLong;
        if (readLong <= 0) {
            this.preferredResolution = -1L;
        }
        String readString = parcel.readString();
        if (!TextUtils.isEmpty(readString)) {
            this.drmBuilder = new TXPlayerDrmBuilder(readString, this.url);
        }
        this.speed = parcel.readInt();
        this.totalSize = parcel.readLong();
        long readLong2 = parcel.readLong();
        this.playableSize = readLong2;
        if (this.totalSize <= 0 && (i2 = this.size) > 0) {
            this.totalSize = i2;
        }
        if (readLong2 > 0 || (i = this.downloadSize) <= 0) {
            return;
        }
        this.playableSize = i;
    }

    public final void a(int i) {
        this.duration = i;
    }

    public final void b(long j) {
        this.playableSize = j;
    }

    public final void c(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.userName = str;
    }

    public final void a(long j) {
        this.totalSize = j;
    }

    public final void b(String str) {
        this.url = str;
    }

    public final void a(String str) {
        this.playPath = str;
    }

    public final void c(long j) {
        if (j > 0) {
            this.preferredResolution = j;
        }
    }

    public final void a(TXPlayerDrmBuilder tXPlayerDrmBuilder) {
        this.drmBuilder = tXPlayerDrmBuilder;
    }

    public final void a(com.tencent.liteav.txcvodplayer.b.d dVar) {
        this.netApi = dVar;
    }

    public final void a(float f) {
        this.progress = f;
    }

    public final void a() {
        this.isResourceBroken = true;
    }
}
