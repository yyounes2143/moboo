package com.google.android.material.sidesheet;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public abstract class SheetDelegate {
    public abstract float calculateSlideOffsetBasedOnOutwardEdge(int i);

    public abstract int calculateTargetStateOnViewReleased(@NonNull View view, float f, float f2);

    public abstract int getExpandedOffset();

    public abstract int getHiddenOffset();

    public abstract <V extends View> int getOutwardEdge(@NonNull V v);

    public abstract int getSheetEdge();

    public abstract boolean isSettling(View view, int i, boolean z);

    public abstract boolean shouldHide(@NonNull View view, float f);

    public abstract void updateCoplanarSiblingLayoutParams(@NonNull ViewGroup.MarginLayoutParams marginLayoutParams, int i, int i2);
}
