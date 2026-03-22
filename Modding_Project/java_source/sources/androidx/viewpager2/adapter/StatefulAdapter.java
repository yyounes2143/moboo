package androidx.viewpager2.adapter;

import android.os.Parcelable;
import androidx.annotation.NonNull;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public interface StatefulAdapter {
    void restoreState(@NonNull Parcelable parcelable);

    @NonNull
    Parcelable saveState();
}
