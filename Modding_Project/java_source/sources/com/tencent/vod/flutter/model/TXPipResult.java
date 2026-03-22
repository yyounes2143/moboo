package com.tencent.vod.flutter.model;

import android.os.Parcel;
import android.os.Parcelable;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class TXPipResult implements Parcelable {
    public static final Parcelable.Creator<TXPipResult> CREATOR = new Parcelable.Creator<TXPipResult>() { // from class: com.tencent.vod.flutter.model.TXPipResult.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TXPipResult createFromParcel(Parcel parcel) {
            return new TXPipResult(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TXPipResult[] newArray(int i) {
            return new TXPipResult[i];
        }
    };
    private boolean mIsPlaying;
    private Float mPlayTime;
    private int mPlayerId;

    public TXPipResult() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Float getPlayTime() {
        Float f = this.mPlayTime;
        if (f == null) {
            return Float.valueOf(0.0f);
        }
        return f;
    }

    public int getPlayerId() {
        return this.mPlayerId;
    }

    public boolean isPlaying() {
        return this.mIsPlaying;
    }

    public void setPlayTime(Float f) {
        this.mPlayTime = f;
    }

    public void setPlayerId(int i) {
        this.mPlayerId = i;
    }

    public void setPlaying(boolean z) {
        this.mIsPlaying = z;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        if (this.mPlayTime == null) {
            parcel.writeByte((byte) 0);
        } else {
            parcel.writeByte((byte) 1);
            parcel.writeFloat(this.mPlayTime.floatValue());
        }
        parcel.writeByte(this.mIsPlaying ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.mPlayerId);
    }

    public TXPipResult(Parcel parcel) {
        if (parcel.readByte() == 0) {
            this.mPlayTime = null;
        } else {
            this.mPlayTime = Float.valueOf(parcel.readFloat());
        }
        this.mIsPlaying = parcel.readByte() != 0;
        this.mPlayerId = parcel.readInt();
    }
}
