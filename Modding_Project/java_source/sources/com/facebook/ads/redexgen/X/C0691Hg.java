package com.facebook.ads.redexgen.X;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.PrivFrame;
/* renamed from: com.facebook.ads.redexgen.X.Hg  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C0691Hg implements Parcelable.Creator<PrivFrame> {
    /* JADX INFO: Access modifiers changed from: private */
    @Override // android.os.Parcelable.Creator
    /* renamed from: A00 */
    public final PrivFrame createFromParcel(Parcel parcel) {
        return new PrivFrame(parcel);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // android.os.Parcelable.Creator
    /* renamed from: A01 */
    public final PrivFrame[] newArray(int i) {
        return new PrivFrame[i];
    }
}
