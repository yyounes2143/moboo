package com.facebook.ads.redexgen.X;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.TextInformationFrame;
/* renamed from: com.facebook.ads.redexgen.X.Hh  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C0692Hh implements Parcelable.Creator<TextInformationFrame> {
    /* JADX INFO: Access modifiers changed from: private */
    @Override // android.os.Parcelable.Creator
    /* renamed from: A00 */
    public final TextInformationFrame createFromParcel(Parcel parcel) {
        return new TextInformationFrame(parcel, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // android.os.Parcelable.Creator
    /* renamed from: A01 */
    public final TextInformationFrame[] newArray(int i) {
        return new TextInformationFrame[i];
    }
}
